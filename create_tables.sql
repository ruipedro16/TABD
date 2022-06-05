CREATE SCHEMA annp_final;

CREATE TABLE annp_final.athlete ("athleteid" VARCHAR(255) NOT NULL,
                                 "firstname" VARCHAR(255), 
                                 "lastname" VARCHAR(255), 
                                 "birthdate" DATE, 
                                 "gender" VARCHAR(255), 
                                 "nation" VARCHAR(255),
                                 PRIMARY KEY ("athleteid"));




CREATE TABLE annp_final.meet ("meetid" INT NOT NULL, 
                              "city" VARCHAR(255), 
                              "name" VARCHAR(255), 
                              "course" VARCHAR(255), 
                              "nation" VARCHAR(255), 
                              PRIMARY KEY ("meetid"));


             
CREATE TABLE annp_final.club ("clubid" VARCHAR(255) NOT NULL,
                              "code" VARCHAR(255), 
                              "nation" VARCHAR(255), 
                              "region" VARCHAR(255), 
                              "name" VARCHAR(255),
                              PRIMARY KEY ("clubid"));



CREATE TABLE annp_final.session ("sessionid" VARCHAR(255) NOT NULL,
                                 "date" DATE, 
                                 "time" TIME, 
                                 "name" VARCHAR(255), 
                                 "meetid" INT, 
                                 PRIMARY KEY ("sessionid"));

 ALTER TABLE annp_final.session ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet (meetid) ON DELETE NO ACTION ON UPDATE NO ACTION;


CREATE TABLE annp_final.event ("eventid" VARCHAR(255) NOT NULL,
                               "time" TIME, 
                               "gender" VARCHAR(255), 
                               "sessionid" VARCHAR(255), 
                               "swimstyleid" VARCHAR(255),
                               PRIMARY KEY ("eventid"));


ALTER TABLE annp_final.event ADD CONSTRAINT fk_session FOREIGN KEY (sessionid) REFERENCES annp_final.session (sessionid) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE annp_final.event ADD CONSTRAINT fk_swimstyle FOREIGN KEY (swimstyleid) REFERENCES annp_final.swimstyle (swimstyleid) ON DELETE NO ACTION ON UPDATE NO ACTION;


CREATE TABLE annp_final.split ("splitid" VARCHAR(255) NOT NULL,
                               "distance" INT, 
                               "time" TIME, 
                               "resultid" VARCHAR(255), 
                               PRIMARY KEY ("splitid"));

ALTER TABLE annp_final.event ADD CONSTRAINT fk_result FOREIGN KEY (resultid) REFERENCES annp_final.result (resultid) ON DELETE NO ACTION ON UPDATE NO ACTION;



CREATE TABLE annp_final.result ("resultid" VARCHAR(255) NOT NULL,
                                "license" VARCHAR(255),
                                "eventid" VARCHAR(255), 
                                "swimtime" TIME, 
                                "points" INT, 
                                PRIMARY KEY ("resultid"));

ALTER TABLE annp_final.result ADD CONSTRAINT fk_license FOREIGN KEY (license) REFERENCES annp_final.enrolls (license) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE annp_final.result ADD CONSTRAINT fk_event FOREIGN KEY (eventid) REFERENCES annp_final.event (eventid) ON DELETE NO ACTION ON UPDATE NO ACTION;



CREATE TABLE annp_final.enrolls ("license" VARCHAR(255) NOT NULL,
                                 "meetid" INT,
                                 "athleteid" VARCHAR(255),
                                 "clubid" VARCHAR(255),
                                 PRIMARY KEY ("license"));

ALTER TABLE annp_final.enrolls ADD CONSTRAINT fk_athlete FOREIGN KEY (athleteid) REFERENCES annp_final.athlete (athleteid) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE annp_final.enrolls ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet (meetid) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE annp_final.enrolls ADD CONSTRAINT fk_club FOREIGN KEY (clubid) REFERENCES annp_final.club (clubid) ON DELETE NO ACTION ON UPDATE NO ACTION;



CREATE TABLE annp_final.swimstyle ("swimstyleid" VARCHAR(255) NOT NULL,
                                   "relaycount" INT, 
                                   "stroke" VARCHAR(255), 
                                   "distance" INT, 
                                   PRIMARY KEY ("swimstyleid"));


-- athlete level defacto

DROP TABLE annp_final.athlete_defacto;
CREATE TABLE annp_final.athlete_defacto AS (
SELECT
    CONCAT(e.meetid, '-', e.clubid, '-', a.athleteid) AS pk_athletefact,
    a.athleteid,
    e.clubid as from_club,
    e.meetid,
    ROUND(AVG(r.points), 1) AS average_points,
    ROUND(AVG(ss.distance), 1) AS average_distance,
    ROUND(CAST(
            AVG(EXTRACT(
                    MICROSECONDS FROM r.swimtime))/10^6 
                        AS NUMERIC), 2) as average_swimtime
FROM annp_final.athlete a
INNER JOIN annp_final.enrolls e ON e.athleteid = a.athleteid
INNER JOIN annp_final.result r ON r.license = e.license
INNER JOIN annp_final.session s ON s.meetid = e.meetid
INNER JOIN annp_final.event ev ON ev.sessionid = s.sessionid
INNER JOIN annp_final.swimstyle ss ON ss.swimstyleid = ev.swimstyleid
GROUP BY a.athleteid, from_club, e.meetid
ORDER BY a.athleteid DESC
);


ALTER TABLE annp_final.athlete_defacto ADD CONSTRAINT pk_athlete PRIMARY KEY (pk_athletefact);
ALTER TABLE annp_final.athlete_defacto ADD CONSTRAINT fk_athlete FOREIGN KEY (athleteid) REFERENCES annp_final.athlete (athleteid) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE annp_final.athlete_defacto ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet (meetid) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE annp_final.athlete_defacto ADD CONSTRAINT club FOREIGN KEY (from_club) REFERENCES annp_final.club (clubid) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- club level de facto

DROP TABLE annp_final.club_defacto;

CREATE TABLE annp_final.club_defacto AS (
SELECT
    CONCAT(m.meetid, '-', c.clubid, '-', ev.swimstyleid) AS pk_clubfact VARCHAR(255),
    m.meetid,
    c.clubid,
    ev.swimstyleid,
    COUNT(a.athleteid) as number_of_players,
    ROUND(AVG(EXTRACT(
            EPOCH FROM 
                CURRENT_TIMESTAMP - a.birthdate)/(365*24*60*60))) as average_age,
    SUM(r.points) AS total_points,
    SUM(ss.distance) AS total_distance,
    ROUND(CAST(
            AVG(EXTRACT(
                    MICROSECONDS FROM r.swimtime))/10^6 
                        AS NUMERIC), 2) as average_swimtime
FROM annp_final.meet m
INNER JOIN annp_final.session s ON s.meetid = m.meetid
INNER JOIN annp_final.event ev ON ev.sessionid = s.sessionid
INNER JOIN annp_final.result r ON r.eventid = ev.eventid
INNER JOIN annp_final.enrolls e ON e.license = r.license
INNER JOIN annp_final.athlete a ON a.athleteid = e.athleteid
INNER JOIN annp_final.split ss ON ss.resultid = r.resultid 
INNER JOIN annp_final.club c ON c.clubid = e.clubid
GROUP BY m.meetid, c.clubid, ev.swimstyleid
);

ALTER TABLE annp_final.club_defacto ADD CONSTRAINT pk_club PRIMARY KEY (pk_clubfact);
ALTER TABLE annp_final.club_defacto ADD CONSTRAINT fk_club FOREIGN KEY (clubid) REFERENCES annp_final.club (clubid) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE annp_final.club_defacto ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet (meetid) ON DELETE NO ACTION ON UPDATE NO ACTION;