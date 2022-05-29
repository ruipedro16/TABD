CREATE SCHEMA annp_final;

CREATE TABLE annp_final.athlete ("firstname" VARCHAR(255), 
                                 "lastname" VARCHAR(255), 
                                 "birthdate" DATE, 
                                 "gender" VARCHAR(255), 
                                 "nation" VARCHAR(255), 
                                 "license" VARCHAR(255), 
                                 "athleteid" VARCHAR(255) NOT NULL, 
                                 PRIMARY KEY ("athleteid"));


CREATE TABLE annp_final.meet ("city" VARCHAR(255), 
                              "name" VARCHAR(255), 
                              "course" VARCHAR(255), 
                              "nation" VARCHAR(255), 
                              "meetid" INT NOT NULL, 
                              PRIMARY KEY ("meetid"));


             
CREATE TABLE annp_final.club ("code" VARCHAR(255), 
                              "nation" VARCHAR(255), 
                              "region" VARCHAR(255), 
                              "name" VARCHAR(255),
                              "meetid" INT,
                              "clubid" VARCHAR(255) NOT NULL,
                              PRIMARY KEY ("clubid"));



CREATE TABLE annp_final.session ("date" DATE, 
                                 "time" TIME, 
                                 "name" VARCHAR(255), 
                                 "meetid" INT, 
                                 "sessionid" VARCHAR(255) NOT NULL,
                                 PRIMARY KEY ("sessionid"));



CREATE TABLE annp_final.event ("time" TIME, 
                               "gender" VARCHAR(255), 
                               "sessionid" VARCHAR(255), 
                               "swimstyleid" VARCHAR(255),
                               "eventid" VARCHAR(255) NOT NULL,
                               PRIMARY KEY ("eventid"));


CREATE TABLE annp_final.split ("distance" INT, 
                               "time" TIME, 
                               "resultid" VARCHAR(255), 
                               "splitid" VARCHAR(255) NOT NULL,
                               PRIMARY KEY ("splitid"));



CREATE TABLE annp_final.pool ("name" VARCHAR(255), 
                              "lanemin" VARCHAR(255), 
                              "lanemax" VARCHAR(255), 
                              "meetid" INT, 
                              "poolid" INT NOT NULL,PRIMARY KEY ("poolid"));


CREATE TABLE annp_final.result ("license" VARCHAR(255),
                                "eventid" VARCHAR(255), 
                                "swimtime" TIME, 
                                "points" INT, 
                                "resultid" VARCHAR(255) NOT NULL,
                                PRIMARY KEY ("resultid"));


CREATE TABLE annp_final.enrolls ("meetid" INT,
                                 "athleteid" VARCHAR(255),
                                 "clubid" VARCHAR(255),
                                 "license" VARCHAR(255) NOT NULL,
                                 PRIMARY KEY ("license"));

CREATE TABLE annp_final.swimstyle (
                                "relaycount" INT, 
                                "stroke" VARCHAR(255), 
                                "distance" INT, 
                                "swimstyleid" VARCHAR(255) NOT NULL,
                                PRIMARY KEY ("swimstyleid"));

