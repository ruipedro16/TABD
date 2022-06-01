PGDMP                         z        
   annp_final    14.3    14.3 2    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    19611 
   annp_final    DATABASE     U   CREATE DATABASE annp_final WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE annp_final;
                postgres    false                        2615    20319 
   annp_final    SCHEMA        CREATE SCHEMA annp_final;
    DROP SCHEMA annp_final;
                postgres    false            �            1259    20320    athlete    TABLE     �   CREATE TABLE annp_final.athlete (
    athleteid character varying(255) NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    birthdate date,
    gender character varying(255),
    nation character varying(255)
);
    DROP TABLE annp_final.athlete;
    
   annp_final         heap    postgres    false    5            �            1259    20421    athlete_defacto    TABLE       CREATE TABLE annp_final.athlete_defacto (
    athleteid character varying(255),
    meetid integer,
    resultid character varying(255),
    from_club character varying(255),
    total_points bigint,
    total_distance bigint,
    average_swimtime numeric
);
 '   DROP TABLE annp_final.athlete_defacto;
    
   annp_final         heap    anibalsilva    false    5            �            1259    20334    club    TABLE     �   CREATE TABLE annp_final.club (
    clubid character varying(255) NOT NULL,
    code character varying(255),
    nation character varying(255),
    region character varying(255),
    name character varying(255)
);
    DROP TABLE annp_final.club;
    
   annp_final         heap    postgres    false    5            �            1259    20416    club_defacto    TABLE     �   CREATE TABLE annp_final.club_defacto (
    meetid integer,
    clubid character varying(255),
    number_of_players bigint,
    average_age numeric,
    total_points bigint,
    total_distance bigint,
    average_swimtime numeric
);
 $   DROP TABLE annp_final.club_defacto;
    
   annp_final         heap    anibalsilva    false    5            �            1259    20369    enrolls    TABLE     �   CREATE TABLE annp_final.enrolls (
    license character varying(255) NOT NULL,
    meetid integer,
    athleteid character varying(255),
    clubid character varying(255)
);
    DROP TABLE annp_final.enrolls;
    
   annp_final         heap    postgres    false    5            �            1259    20348    event    TABLE     �   CREATE TABLE annp_final.event (
    eventid character varying(255) NOT NULL,
    "time" time without time zone,
    gender character varying(255),
    sessionid character varying(255),
    swimstyleid character varying(255)
);
    DROP TABLE annp_final.event;
    
   annp_final         heap    postgres    false    5            �            1259    20327    meet    TABLE     �   CREATE TABLE annp_final.meet (
    meetid integer NOT NULL,
    city character varying(255),
    name character varying(255),
    course character varying(255),
    nation character varying(255)
);
    DROP TABLE annp_final.meet;
    
   annp_final         heap    postgres    false    5            �            1259    20362    result    TABLE     �   CREATE TABLE annp_final.result (
    resultid character varying(255) NOT NULL,
    license character varying(255),
    eventid character varying(255),
    swimtime time without time zone,
    points integer
);
    DROP TABLE annp_final.result;
    
   annp_final         heap    postgres    false    5            �            1259    20341    session    TABLE     �   CREATE TABLE annp_final.session (
    sessionid character varying(255) NOT NULL,
    date date,
    "time" time without time zone,
    name character varying(255),
    meetid integer
);
    DROP TABLE annp_final.session;
    
   annp_final         heap    postgres    false    5            �            1259    20355    split    TABLE     �   CREATE TABLE annp_final.split (
    splitid character varying(255) NOT NULL,
    distance integer,
    "time" time without time zone,
    resultid character varying(255)
);
    DROP TABLE annp_final.split;
    
   annp_final         heap    postgres    false    5            �            1259    20376 	   swimstyle    TABLE     �   CREATE TABLE annp_final.swimstyle (
    swimstyleid character varying(255) NOT NULL,
    relaycount integer,
    stroke character varying(255),
    distance integer
);
 !   DROP TABLE annp_final.swimstyle;
    
   annp_final         heap    postgres    false    5            9          0    20320    athlete 
   TABLE DATA           `   COPY annp_final.athlete (athleteid, firstname, lastname, birthdate, gender, nation) FROM stdin;
 
   annp_final          postgres    false    210   �=       C          0    20421    athlete_defacto 
   TABLE DATA           �   COPY annp_final.athlete_defacto (athleteid, meetid, resultid, from_club, total_points, total_distance, average_swimtime) FROM stdin;
 
   annp_final          anibalsilva    false    220   �f       ;          0    20334    club 
   TABLE DATA           F   COPY annp_final.club (clubid, code, nation, region, name) FROM stdin;
 
   annp_final          postgres    false    212   5�       B          0    20416    club_defacto 
   TABLE DATA           �   COPY annp_final.club_defacto (meetid, clubid, number_of_players, average_age, total_points, total_distance, average_swimtime) FROM stdin;
 
   annp_final          anibalsilva    false    219   N�       @          0    20369    enrolls 
   TABLE DATA           I   COPY annp_final.enrolls (license, meetid, athleteid, clubid) FROM stdin;
 
   annp_final          postgres    false    217   E�       =          0    20348    event 
   TABLE DATA           T   COPY annp_final.event (eventid, "time", gender, sessionid, swimstyleid) FROM stdin;
 
   annp_final          postgres    false    214   g�       :          0    20327    meet 
   TABLE DATA           F   COPY annp_final.meet (meetid, city, name, course, nation) FROM stdin;
 
   annp_final          postgres    false    211   ��       ?          0    20362    result 
   TABLE DATA           R   COPY annp_final.result (resultid, license, eventid, swimtime, points) FROM stdin;
 
   annp_final          postgres    false    216   ��       <          0    20341    session 
   TABLE DATA           L   COPY annp_final.session (sessionid, date, "time", name, meetid) FROM stdin;
 
   annp_final          postgres    false    213   �=      >          0    20355    split 
   TABLE DATA           H   COPY annp_final.split (splitid, distance, "time", resultid) FROM stdin;
 
   annp_final          postgres    false    215   {>      A          0    20376 	   swimstyle 
   TABLE DATA           R   COPY annp_final.swimstyle (swimstyleid, relaycount, stroke, distance) FROM stdin;
 
   annp_final          postgres    false    218   �[      �           2606    20326    athlete athlete_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY annp_final.athlete
    ADD CONSTRAINT athlete_pkey PRIMARY KEY (athleteid);
 B   ALTER TABLE ONLY annp_final.athlete DROP CONSTRAINT athlete_pkey;
    
   annp_final            postgres    false    210            �           2606    20340    club club_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY annp_final.club
    ADD CONSTRAINT club_pkey PRIMARY KEY (clubid);
 <   ALTER TABLE ONLY annp_final.club DROP CONSTRAINT club_pkey;
    
   annp_final            postgres    false    212            �           2606    20375    enrolls enrolls_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY annp_final.enrolls
    ADD CONSTRAINT enrolls_pkey PRIMARY KEY (license);
 B   ALTER TABLE ONLY annp_final.enrolls DROP CONSTRAINT enrolls_pkey;
    
   annp_final            postgres    false    217            �           2606    20354    event event_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY annp_final.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (eventid);
 >   ALTER TABLE ONLY annp_final.event DROP CONSTRAINT event_pkey;
    
   annp_final            postgres    false    214            �           2606    20333    meet meet_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY annp_final.meet
    ADD CONSTRAINT meet_pkey PRIMARY KEY (meetid);
 <   ALTER TABLE ONLY annp_final.meet DROP CONSTRAINT meet_pkey;
    
   annp_final            postgres    false    211            �           2606    20368    result result_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY annp_final.result
    ADD CONSTRAINT result_pkey PRIMARY KEY (resultid);
 @   ALTER TABLE ONLY annp_final.result DROP CONSTRAINT result_pkey;
    
   annp_final            postgres    false    216            �           2606    20347    session session_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY annp_final.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sessionid);
 B   ALTER TABLE ONLY annp_final.session DROP CONSTRAINT session_pkey;
    
   annp_final            postgres    false    213            �           2606    20361    split split_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY annp_final.split
    ADD CONSTRAINT split_pkey PRIMARY KEY (splitid);
 >   ALTER TABLE ONLY annp_final.split DROP CONSTRAINT split_pkey;
    
   annp_final            postgres    false    215            �           2606    20382    swimstyle swimstyle_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY annp_final.swimstyle
    ADD CONSTRAINT swimstyle_pkey PRIMARY KEY (swimstyleid);
 F   ALTER TABLE ONLY annp_final.swimstyle DROP CONSTRAINT swimstyle_pkey;
    
   annp_final            postgres    false    218            �           2606    20507    athlete_defacto club    FK CONSTRAINT     �   ALTER TABLE ONLY annp_final.athlete_defacto
    ADD CONSTRAINT club FOREIGN KEY (from_club) REFERENCES annp_final.club(clubid);
 B   ALTER TABLE ONLY annp_final.athlete_defacto DROP CONSTRAINT club;
    
   annp_final          anibalsilva    false    220    212    3475            �           2606    20452    enrolls fk_athlete    FK CONSTRAINT     �   ALTER TABLE ONLY annp_final.enrolls
    ADD CONSTRAINT fk_athlete FOREIGN KEY (athleteid) REFERENCES annp_final.athlete(athleteid);
 @   ALTER TABLE ONLY annp_final.enrolls DROP CONSTRAINT fk_athlete;
    
   annp_final          postgres    false    217    210    3471            �           2606    20492    athlete_defacto fk_athlete    FK CONSTRAINT     �   ALTER TABLE ONLY annp_final.athlete_defacto
    ADD CONSTRAINT fk_athlete FOREIGN KEY (athleteid) REFERENCES annp_final.athlete(athleteid);
 H   ALTER TABLE ONLY annp_final.athlete_defacto DROP CONSTRAINT fk_athlete;
    
   annp_final          anibalsilva    false    220    3471    210            �           2606    20462    enrolls fk_club    FK CONSTRAINT     x   ALTER TABLE ONLY annp_final.enrolls
    ADD CONSTRAINT fk_club FOREIGN KEY (clubid) REFERENCES annp_final.club(clubid);
 =   ALTER TABLE ONLY annp_final.enrolls DROP CONSTRAINT fk_club;
    
   annp_final          postgres    false    3475    217    212            �           2606    20467    club_defacto fk_club    FK CONSTRAINT     }   ALTER TABLE ONLY annp_final.club_defacto
    ADD CONSTRAINT fk_club FOREIGN KEY (clubid) REFERENCES annp_final.club(clubid);
 B   ALTER TABLE ONLY annp_final.club_defacto DROP CONSTRAINT fk_club;
    
   annp_final          anibalsilva    false    219    212    3475            �           2606    20447    result fk_event    FK CONSTRAINT     {   ALTER TABLE ONLY annp_final.result
    ADD CONSTRAINT fk_event FOREIGN KEY (eventid) REFERENCES annp_final.event(eventid);
 =   ALTER TABLE ONLY annp_final.result DROP CONSTRAINT fk_event;
    
   annp_final          postgres    false    216    3479    214            �           2606    20442    result fk_license    FK CONSTRAINT        ALTER TABLE ONLY annp_final.result
    ADD CONSTRAINT fk_license FOREIGN KEY (license) REFERENCES annp_final.enrolls(license);
 ?   ALTER TABLE ONLY annp_final.result DROP CONSTRAINT fk_license;
    
   annp_final          postgres    false    3485    217    216            �           2606    20427    session fk_meet    FK CONSTRAINT     x   ALTER TABLE ONLY annp_final.session
    ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet(meetid);
 =   ALTER TABLE ONLY annp_final.session DROP CONSTRAINT fk_meet;
    
   annp_final          postgres    false    213    3473    211            �           2606    20457    enrolls fk_meet    FK CONSTRAINT     x   ALTER TABLE ONLY annp_final.enrolls
    ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet(meetid);
 =   ALTER TABLE ONLY annp_final.enrolls DROP CONSTRAINT fk_meet;
    
   annp_final          postgres    false    217    211    3473            �           2606    20472    club_defacto fk_meet    FK CONSTRAINT     }   ALTER TABLE ONLY annp_final.club_defacto
    ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet(meetid);
 B   ALTER TABLE ONLY annp_final.club_defacto DROP CONSTRAINT fk_meet;
    
   annp_final          anibalsilva    false    3473    211    219            �           2606    20497    athlete_defacto fk_meet    FK CONSTRAINT     �   ALTER TABLE ONLY annp_final.athlete_defacto
    ADD CONSTRAINT fk_meet FOREIGN KEY (meetid) REFERENCES annp_final.meet(meetid);
 E   ALTER TABLE ONLY annp_final.athlete_defacto DROP CONSTRAINT fk_meet;
    
   annp_final          anibalsilva    false    211    3473    220            �           2606    20502    athlete_defacto fk_result    FK CONSTRAINT     �   ALTER TABLE ONLY annp_final.athlete_defacto
    ADD CONSTRAINT fk_result FOREIGN KEY (resultid) REFERENCES annp_final.result(resultid);
 G   ALTER TABLE ONLY annp_final.athlete_defacto DROP CONSTRAINT fk_result;
    
   annp_final          anibalsilva    false    220    216    3483            �           2606    20432    event fk_session    FK CONSTRAINT     �   ALTER TABLE ONLY annp_final.event
    ADD CONSTRAINT fk_session FOREIGN KEY (sessionid) REFERENCES annp_final.session(sessionid);
 >   ALTER TABLE ONLY annp_final.event DROP CONSTRAINT fk_session;
    
   annp_final          postgres    false    213    214    3477            �           2606    20437    event fk_swimstyle    FK CONSTRAINT     �   ALTER TABLE ONLY annp_final.event
    ADD CONSTRAINT fk_swimstyle FOREIGN KEY (swimstyleid) REFERENCES annp_final.swimstyle(swimstyleid);
 @   ALTER TABLE ONLY annp_final.event DROP CONSTRAINT fk_swimstyle;
    
   annp_final          postgres    false    3487    214    218            9      x����rIr��9O���IQ�ά��)�lo�R$Zdςhm`��m����O1/���"f������ltWe�ߟ��mڟ����i����f�Of�f>���J�`R�������?��ߣ���?��N���%f��j<�(x  �*Wiߵ��}����s���?�*�5t ` _�����m?�?9�xIC��ˬ��f2n��2� "����>�n�}����w}�/�Y���x�ɗ0!!��鉜v]�л�P��ϻ���`׋�d9�M�S	�ծ�a�������p9��M���
�c�ۻ�;���Хq������^5�Y�W;�� 3`�ۻ]:m�~t�=��sӿ��J�����+� #�����:K�O��O��k��=�c������=���]�k~"C;�O/���d>�Ⲯ!@�wvyA+�~P��ۦKY�3b1�ϟN�f.�ah��r��R�ڝ��D�c�ݵ�C��4�7�<oɌM�9Ct�O��K����{�����r�{{���`����]:�>��Z.���^ؾ%  d��^(�0��Z��O����k�O�Kw��ee��9�e<L�a5ޥSY�i�ew,��Ɂ�`r����ۥ�O�O�"zNx�y�\9 � ���� �+�́w�*���3G�`��g�ݮ���s�L�W��I��}:�n�O}p��W0a�  ݈���We�cS]x���c�?���ԏo�Ӑp��{l�)�L���>+p:	��)/������P�O��>�dD��O�~�v:���EJ��|>����.�0��t��-*�c���
�y����v���P�O�wF�uH;��\|�����ț���;!1�X����}:s+�����H�F�6�-�wĦhm|e�;�	��|������c���y�b(b0�jД��6�*w#*?|��X �U>w)����nۡ{��W]�u3/�����B�������fʳcsC��^D~F��Q^�ڦ��Q��9.�7wqY�Ix$�.DnO$�����֖��oV�zq_!�P�n^C����'|膮�>a=GR@��{���-�J;��Y��`�j]��i�N<ֶ��]#�ꔼ�Ҩ1�(����F���!VZsi߳y�����Jm>���a*�fޅo_R���{��c�ߚq���V�ӂtxd�0�����q�\�^�n��n�g�T���׹N���ٴQ-�p61�w�}He^�����k�W<���ɚ:=�Ǟþw���
Vd��ˌ�k���9��Tc4 ήD����ɱp��'ՀxL�Sb(��&M�K;�]a�n���&�'�	��1m���td0���!r�b�#>��R^���x�\ �'Yg�����9m=�/�t3^��L����S�{m��ے�T܌�]��B`P��x�޵������x�2ƘMy8�C^EW�K��_m�M٦$9�L.;7�=��d�6�|N��+��=s�폇��ެ�h�s��Cʒ����+�5����>
9�$��B��4����A��z�*������;<�{��\�>1c��V�GE����~d��<��H�P`T��e3�˕?L,D�_M �I�9�ߺ��{�� O�1`#Z�6&J���1�ix%��x%G�`�ӗ���KF�*�Hks��W$ 	0­���ι��C�*5�V���^P_����E����xTDT��U�i�ҷ��Ɩ�Ɂ�`r]G_���g�g+��9�����p���G��^�v��Gւ�}Dn�����I#�Z�9R�Մ�D8Lf���S9�xզ�����N�����*��e7�+G�3)��y}���)��g������-�&��� ma�l������ǫ�%��l*;@u� ��+�J��)>�
�+1"~P>f��>�����W�:�P&�}�>��v��D�t�P&�Ǉ�{���ݮc�rI>����`b�Pٹ�4Gyrsr�"��C��ڽ�g�b�ў�V-~߳Q�,Z�+��&3��lђL�!��w��k�B��
�����|.ޤ᱓�>כ�@R0i8�iE���Q����ϑP&��{�8_g�}����s83����}����|j9��D��]������'Uu�t#m(�����ѝ$��͇V7��.4��w9��*,��Wq�hٵ2:�e�9*D�gЧ��.���hЯ��.|����`��8�k�Up{A�s�����ݳ�)�C�	0´���p7k|SsZ;��a ��f�b�Rsg��*���`_	�����m�o���AQ � ���n�ێ���R���[)r0y�}��*�7
�.ѿ�0��@!0(F@�[=�����{T� � �'�^��C���(ָ��>�K@9�{0@sY�ק��I����q���~g���|����J6����[$�R��� �����8?2A��]SAr�%�D�ʆ�N�' `���a��Ӟng�&h=d ���@����4#���s��43N��uz�)a�M#CF���T����EN�Æ�
��z=v�&FX0������d����IL�=�f@  0@5t{̯���~K�hCy � ?����[0?�c��9�T��kM.��⬁��]�==KԢ��J��������ԕd~��7��1��v֘���K9P�������еٖ_�dblЕ��T�3 �|�5(��]���ɏ(Ja��D ������a����C��k�N�5�-:����C��K�(��K�=�WI�ض?��b��d�vؕ�=J���W��1���<�����6����D�2��Q���|4�7�"��ݑ]�&�A�=�HN���qi�4ZK�u���	rZ�;�t;�5��'vb@1�X�_������P�Y ���d��b���^j5O��[�{�y�X�%<:z��g�;�@٨=�`��*��u��E���Y�� `�V	�v�m�Kǡ���Hbu^I�a��X�b�]�!9~t���C��r�[�B�֜.�t�[��5�K|&���2���osA�h�v����!�C�N����R#9���7���0���U�MO)[���35g#J�Q������E+�l���0� Z�FT1YV)%����ُVm� "`Hm���w}ʧ��1So���ǜ�4b�|8��?�>s�VK�#!s��/�8��^��sv���k�$dUC@V���SCn�{n9d�Zp"��ѩ"�\�I{o�0�#"������緦
m��|G L�	���~�E�&���P�`b_SX��90�B2�ܱT#��t,6!�׏-ŕ(W�[$ 	0Bλt,FA	�t����l���!����0�Y�
��b\l����=���00D���|�-T�w��J,���+!���la�~���[�q����vy���l��[*��Q3��_���u:f�s�Š�f��b� .5���H��¥E�KV�qF��0��m��}���f/���U���.H�1��$M.qh��:�U�Ġ]�Wi�/b�R#)�*]܋�������k.��U��]J�98�خ#g�@�J��}�7|*^6"���8d�d����z���(F�����p;�$����Yٸ�� ����+�頥�e�<�2�e�d�Q�e�˙�["��mVo��R��Ufm0 v��#B��*��&�$���qn6�%+�@�e/�t��_��ٓ�o8`^1@c��˂�06����S)���]/rϥx�n{+�2���X���;�%�1h�Μ���F�V���R�l��FRu�b�WmƷ$��j��&U�X��f^���Kؒ�j� �]�mV�`?�_�S`����`~�9bƁqo�5ps�1�Ew�x���� ol����m�ͿA�m�:���ϔ{�h,�f�x`���*9����>vU�L)��8(Xr����`b�1�^�W5�/16�[�x�vև�b3M=��L('�k*	�S��s���Y�A� #��w��'sz�*��(�o$F!V3�Y�kyfa'���X�WV_�Ħ�be8X���\+
g���`R��u.�w'���w�bg_S�qޤ���le��7R�N��F��N�    �S�_���F����!E� ` pws_J�Y~L�~�L�$�H��`R�e��Me,Ο[Q�B�KxoN�؝A'VV�/��(	/>Y��!^��e���y˗|%��@b0�j~��	���֬�f"  B�������X<�1����	��ȧ���[2�%�na��``����Ղ(-> ���;�U 0�W�#��n���v��i��0��,Ա��f��W��*��|Ռ��S���#H��^ �lv���8��M/@����8kmR����Y�nE:}�$��Za�w��}	m�;����10�����C�����8@�(l�v��Xz1=5g�}��v���o��f��9�R�f��F��n��%;֘�(�Fԝ ��C���=��s*�uWZ��A��C��9�T��y31�?T�q�L�9E<�j�X&�u13�^z|�멈[�p.2���;���O���:����v�	�cf�Z��ﰲ��+�����:�"&�?�`�F��#���[���S�]�$s�W�G�Q��+��wi�R*d1ѠTMS`T�ş�djm��Mjy�ʿ����T	��Ħ��z��j�.g�ښ�9��R0i�F�ȅ�VK]���� ���yء
�ؿ�N2LW��  ���d�ܦr�:Ks��Ց���"�W�uz��$E��5��*��S�S��r�-�[�١������\1#�k
� �	�:��S�.T�F�
�P�g�"Q��7g���D�pٮG,&*���o��F1�����(j'�D6��;��*�%ɪG5Rs���i�"~��X�<-_�τT����s;�^
�h�}3�|jY�] ���OC��1���"������J����7%�@P̿�:[��3��=~E|��0�TRq�f 0&_���+���zِ��?J�ф�E��@�}QE�ْ�UхT�=-��pl�~�[��6��x��?�Z$U����o�;XK:	�#�ݽ�t��/�>�z2=R��F�q �џ�)��R��̨�v(�ª���fTnL�f�9��=D4�c�^|��~�U�?��@�ڗ�:j�w&���y��L�L�@|���"��\�kz+ה�u6|)�׻.��6qBȅ�7��t��Q�s��;**Li��lH�T�/�O����t�S��Մ,-���{��^�9Gw��o����F>��3ii�!n��O��ͳ�my��2z}lu[VB �;�KD�]�����kHdW�>���;�����ڒc��"��A� 0Hz0{I�������"�Ǜ��F��1X���	L��2����t�3��M.�h�K.�>�e�ÔP���s�Â��L�KM��2�ɇU6���(s`|LE�*�Ʌ�TMF�3�R$��Ɍ�*�z��Q�QtJ���M��3d����U�x���tY��y&[F֨=�/���K���̕�>5{���U�/K�"��i�: �>��r�Yaf�[�}�s�A�����4T��߻ICi[��6�����������	ݪ��Qk��L��{w9O��ڷ.��嘁�̅UU�u6оuf[Q��jle�Dh�M�u�$��as��x$t�1���~@�YS��mR� .��~i6���o-f`��(#H�Uw�6�I ŗ���1��?̀1�g�C�=�q� �6S�$���E�W#�(>э=/S���C�g��P~�.�H��K����N� �@�jA
���)�[>s��j,J`���j��Ob.����B�W�YL�d��(����bYl`|E3�r��ԥ!����&�gʄNa46H7��(%�� �b�k�H�P`To�_*!���i��hB�7���񔎛�L�+�P���箧��L-9π2`L�֏�/|�߼9>�t�ys}�u� �G���f�?9�u���EC���?��.giX�8�sz�-wRJo��r0y�%Go�U,1n��n�	�*��o�\Ƭ7�*�����X���8*�<[p�W@�����d�0��[.gj?
#��^�1(�8�k:w�L�r�>�MRs˵�1*B�sB���,np��	4U�ߺ;��z 9���bq�/εE= ]d�g��|)o���Z<z.$�ȖE���@���Ѡ��\�}��g$�>�[c����W��e��w%@������V���13-Qm�O����eV˵��F��V����Τ�t=сF��\ս�Z8J\��|�<��������"/|��u�H��Ac��i�M-����lb����׮��KY��+�SՎx*�i�/��T��FM��/Z��R���� �U��������`.Ɯ~>ۘr~�@��ĂѤ�4���k� )BC�T6�?��S����0mz�y�h�s�����O�c��@(0Jr��v�iq�43Z�l ��Q�d�}d�^�����iÆG��A�t3�}n�na#�8�V�`�*�"3r�2<h&3Z�6"�0朞w��b�%�A�;�G����sk5���z��C���#-XG��R�	*��使��wu���.m;�����0P�����zg�?(�~g`��fSO��-���߲�^�;`�[	y��]���J+r�3����(��8~���_SHr0y�6]w?=!�*��γ�~z>BxoQ�N�CVjG7}33�	0"�x�}�5�B׺j_ �
���8F�
1פ�Im�<�Y5�
��H����.i!��ƽ%�����L����L2�|���(�B�����8���a�tݴ�v(Ή��>ؙ�@
cS+��3��!������>����Y���Kk�,آ'Mo�o�p��Nڥ�Wr�;e�������a�{� 	u#�+_�z�D��|�iŏ:"!״�'M^��Y��<B�2X����{����v<ɅJ~ԼK��L�>/��'y�Q\ha��L,��{a���*�]�`2�#�2��v�NӪ��m����=G���'��n��C:v��Q�q-ВrQi�m�i\"����nZ	IY��ON� ��@�8Ծ��Cg����� >d���О8�1��a$ 	0"TuX�B�i�<PUu�.�s�j.�bڈ�+U.Y�2��x��۬�&L��V�-NH�DaA�Ù>�;g�^�L���PA��L�v	��T��s1V�h"�fc���#�{ֺ{uǸt�q�90.�_�!����������0a�f�����������1l�w3���`O�N{���җ��g���/u*P����a$d��5�?���*�Z/k.����q]"W�ŦF��N�ȴ� �,�ˎ-O?[ʏ�y頱�M�G  �;�7zj�w�T�����c8�����\{BS �tdNF����fǄ	����}�&�/��Ӝ���n������>,���P3(��
����z��&����mu�D�)PG�ef$XMQ:����/�1�T/�AO���g�����R.FHRY8y�9��&���͍Π��TKh��f�,�e����S`^���( k��p�]Ig]ɣ

O�g@0�l���&MU��<x%Bu}���_�gӮL)-��։��}l����q��J���z�l��JӨ��{�!�Ԩ�_����X�D	0�M�v��gM�W��h��-Ϗ�o��Shh�݌�/u9��{-4��ԡ���B3X,kFl���=tBA�A���0`����>��ӷl��ez�L��,��ICd(s~z�ԍ&a��]8�Q�����K�ᥒ	��]F$��y�?�^�^r�=|�D0$�*�z�%stmb���/_\�u��J��55,m>u@��v�N����C��+�i�I�BrĳPs�&-��6�^��8�$3K���S�N�;G �=���ʬ�Ud���ʬ���9=�<\�v�kBO��A�ס�H|���s��L�gB=�0�j�T�������H��;WD���\��c����6"O�\��~�}�X��ʲ�\���H>[���>�a��3�?~dk��"!����Ω?2K��SZ����#q�x�tdX�;x�s�?��>0�Od�S!�q,d1�X���vs�t��C�m�4�0�:ۿ 	  ��3Y�	���)�h��fL�:d�H~{�M|�V3u*8@�b0��CKS��OVs�*"av&1��
|�ýT4��=O `��ﱽ[jB�I�.ͧq�$�K�,�ƫ��V�����&Z5aV�i��<ﾢ[=��@�L�O0�����>?��M��h����M����q�t7�b�M���o�u�����H�bW��W�g�Te��q����g��q=���/~�Pzk��iw \�q���-���Q�k|B{���)0*�K�љ"�vژ�,�&t��S���YE��w?�{a�W��PY�]iw��*VY�<����RQ�Mxw2��c�jM��·H�o{�RÄ֟'�	0Bc)�6C��-�Xf��FXL�U����Z��7�x��=&a鬎�����M���0`̹<��[��C!��W�!
��,>/�*����y��0�N�j�qLAN�j݉4D9�|9��HK�7f}p�	0���L�e�gG�L��Dĝ���E�_�y�Q���
���u�Q�Y��
W�P#��ʙ�0��+�).I�䓾*帤H��>5�@��:�Y���\C�Jv�-�]<���R���
�DWX9�;Y��j�ϔ?��j�t�1�/���ix3�����>�da��z��f�8��x��|뎉pb2v�L(�l+-
�/��`������t���,����=�^�]�K�&���+���?W��y8sMeN�S�2<A�&�q������Ik���@ ������|R�0W��1D��jKh��z��A�f��G@�'zR��͚Wu�Y��l�P��
�[�n9�
;�W�Db�֧������7ٷV��(�����:��%��k��MF1��²�jǮW���O4�%+��9�M��{*�#�>5 r9�<�����2h�����j#LX\\��#./u1�u�
��\�H ?+�Mk'��e'����M���E+e'l��ON�����҄S9��/���#TY�}/�a��}���ԍgr�n��}��4�s	�z��>�*�'"�����~\fp���5��a�lЉ,ŠK��c�Mc��t"� `H��gW�����).nM6qx>2��t���맹����J��GS��\r
%V)��ON����������܌xD?��n��џ��/��G���4GG9�(ߞi��rZc/��U��7�O��v!b�3��K}�~��H�Y�0��);�s����մ
����jn9�Ig�d���j�CB>�����*���*3M(�~` ��������Ox0��{������r'�����f�y����o�������ׅK}Dl!���T���Sa
����Z���� �+l�q|�_!�
l�s|R}���y�tDF�� � ��+q�M��鵷����p{vI��d����$���iOIT��ug:C��.����ts<}�<��1��-�R�&�D)R����Q�a��cJ'f�˼�F#��"��3��O��$AQ�0�s!P&�g�Pr�_ڬh�K�<JTt�_��`���G�@���o4��fz���Yt�X�2t��A��f��j��}M�Qg�,*�!cy\9���jb��%����gi����]�^�������6i;���J�ƚ��Z���ƈ�U:AصKN4�	�/ɄU���u���������s��۬`S��F�����1K�G��{���{|^ؗzp�9�|dB.����+"�s�����5f�؇C�~F�`Kr�X\��C�E�V}[=���0`L�P4��\���5�u�F��v����N�H��5���X#�T��G�ڤ�!�r'Bf�2t�K�/tF\�Œ�Ë0#NKa�tx����ct�*���a��*��o���MZ�)HAE&/���������tbTs�E��d�M,u��D��N��@`�ĝ_�};��qa��Ьh ��\h���N���Զ�w1��G��+�O/��Ä�s��H%�O$֞�	��~8�Y��Bk6D1�8>iX��7�/�)���o�����%��xN?U��~/|��S*�}��^�dE�g@0��mF���|�F�@��3����
�׎�-�{�0F��n�<����s�6^W��Q����|��dL~Vܳ����(�����s����Ȯ~;���yn�W$ 	0"Xq�'U��6��}Ϗ��	 �*���x�t2Y$��P$�p�-N���e���J9�~uF��L^����:i(G�jJ*�[_��۷��y��G�W!O�����?�/�:��      C      x��\�rI�=_� ,���KIMR4�%��KJLQ�"U !����il��c�[Fhʬ��Te�����s���q�m�Ň��>����/j�]� bAf�2��ʤ!����������v}{7\������K+���xv׽��Cwv��v������{?B1 Z����.�w�G�O0��� �R)�/���۾��Ň~��ɂ ,�9&���ַ�� z~ge$��%�������>��p���7��pe���������<�^ϴ��xcH��$�����n�u\\��zw\��킉��2A����z5ـ��y�]*8o������ͮ{�v`��q��KL6N����_�~-q?ӌ������<����}��np�Mk<3m|6j����/3��D�#�d����-��q��,�Z1������w�s�}�/H������a9��M��y{;��3�x�/w=���y\�~<#�W�/�|�f�6�|��ML��Ј<l�o�b}�~u�P"]����	:�Z�&_3�I�+�R��C���%��/C����!$���FUe^�@����V�o��Z`���0/�t��̂�ZBbd�	�����D�Z�a7@.z�2����ϮWW�u�^]_At�xdA��O�;8�����,I�Ƈ<���tf�!�r}=j~^A��9�$���Q�^��]��m��Y�;G+lL1�y7����_�o_!?|�����܏[��T��J�"�Q�D�?1 s=��wO���m��Y�0L=͐���eZ���,L��ݮ;[��˰������L���ab�8�a�J%��y���Ƴ��n�8����K������s+�
hi�(HJ�P��^��޹���>�o����Ȍ5`�6����Cvl�N�4�j������*�����K���t�Rq���p?JE_�t�) gw={��>T|�椕1�O2�V�����p߀Q�%2	�ĕ�����(���7���C�w;e1� ���*����R�b� K.=b���m+����ɠ0�F���'�J"|,�t���@K!*�/�1$�+��V�`N�6�K�ĤG��1�&)7@9��������EՊ�l�*Td��u�e�$�r���Z�� 1�ݏ@�F_-���e��*�:�(=~�j%�n\�<��:����ڊ�q�#����
�$��&��`��j��q7 y7�������r�z"������9��$������b���%s�Rm��J������P,u b����/�Yt�~}�����j���|u�� FE
�����@�?� |����[例9�GѦm�Q�a �/>�ؐ���b7 }F�PZR2cc/ .WD^=���Z��1�T�f"���TXt��L-)�r��^23���{*��E�s���5U�E"�O�=�����{k�	p+��W�},Mt�iT,X��"�S�nq���z`V$����;.Ac��Cc`{����t�ԗ!�tA�����Y�h2�$l�
��`��-���/d���U��!��8�����![Ĝ�)��5�;��b�#��f (e��y�|7�l��V�DY�Ϋ]'�؀�����F�c�G`����T��꼠~�#p�|9n���.w5�⣙��Q������ �NȾ��;O�rg��7�pd�Q���<�G�<�&�`v�K���f����끋�`���RFe0<��R��{�; mR�U[$Eԓ�RhXfx0��K���q��.`��҇8�
�7#|4t�����1*�Z���t$y�֯�-L�������g'HGT�}���+�&&x�F�
��_��B�&.�w^3�J#�H4�o��O�~��C�ԅ�ئ�D�ͮ���gS\�� ��$ C���|�̔/���R:,
I��~")O��]R�/�b|�Ѐ?�;��`y��*�+���bCR.�9���9�6���c��%��|��z�ȕ�Z-͎qheJ��Hm�u��n�T%䞪�ӥ�DxS�ч��?��u��1��4t�ŀ��$8{�^��&����Z�/�c��j��{>�O=�̩	Q��:̈Ѕ;S��H#[r5ǚ����K���vR9�$K��t��DG�]{�A�Q�*߽��Ob_r�AW���.D"(-���oC_�wʔ���k3�K8�s	U�17,��؆54a�������*��v�}W8���1�V1B�d��X�AY1���O=��]ov(����	�T�.J��@/��Rz�^���i���7ON������U��ْ�J1�<��o�����"Z����@X'v��%�:��̫͋7��OrL+�8P�Z�0(g@�C��/�:�J�Ћ�-� $9����\�YŴC��:dl���S�T徥!���2�=(�yH���4E��>uېr0&ZlY)xiaRU�vI��M����z��Lq2[����"�;���,2��R3HJȾ��9J��ZU%$�^��J�/����:V)����&7�/[��U4�J9d��BS�ԯ �֪�R�ҐC.em��7�Z����� 씌�R��J�d/����L��Q�g6����nf��������Α)'_Ol�L503��}}�Y-�Ru�Ր�J-��	$�h���|:Ȥ�!�U���t������ʇG��7ß��.]7���I�b�#���c�X�8|�w~P�s$E�j)LFV�R��� )��c=����#�h�5��V��#Y���V��}Ui&d��P2�z% +>#kBAܰ�ͪH���k:b�`$����l����������H��V�HQb$D��_���Q(��o�<"Z��1䦖����l#���Mن�"�i�*q\���nM�����Qá�2+��(>'Qz~}����1s�b�qMY�/S@?��o/W7��!��-�nWf!���]�K�#�Mt���4�KE{f0��
v9i���MK�8�J�$?�	w_���c�a3+���͢��@=���H���M��qV �{�!��U ��� �cH�mJC�A
�{�
�h�p�TJ'C�h�����V���H��u)�_d���F ����~�M%�p�ZJ�qߍ��o��y��w���Zyi���2H���H�h[����D Xs�� k�3�c^j� "i�Is�+]�oM���:�@t�?K\`Z9��S�jk�\<���ѭXZ��
��GiG:���V��]�A#�=�?��d������(Y��Ɛ� ^�~�!$W��l�ˣ��5i��亃�����>��8�.��qߒ%������Ň�h���(a� K����f�M�0~��B'6(N�+:�1E��b�n��i+J�o-���N����K��\��'�$�*�XD;�p+8nBSƚ�9xa�g���_�*ĒS٪����D�����w�7:.n��߽4�HS��3�i��qa���L�􄐺��h!���4�`R�SF�#�at�Z�zh�wh��Gx�F����o�o/C�[�Q�2��P�D�r�����q�T#�1��E�������.�ވ�g����A9�Ǵ� �=
ؑ��-�q�	������L��CF#~�4�%�����XBϝdu������Y���{J�Y�$��iI@�F���a9	sB���D�<,ϢB� D%,遾�����j
�_�*��i�B��b+��8�������H�"�)�^�%�����q^¾ �@�.�t=���K���-|��}�������J�l�pmﵨ%�QU(k��]Cԫ���k��r�o��D1w��SitsP� v�;�%��I��(9�=����w��<l�d�c¨z� �)G
L�a�Սo����7+$n�T��L%Eح2�����6�|�5�S�`9��$��7��oM�qaOd0�}��*Ť�� ��y-li�]�#u�>H�Bq#��l.�
���;�P�;D���D�z�={T�d����QT��q��z��{�O8�נ+ه���+u��C����ܛ67��L{^��~�6B�/ v  K|6�կb�_>&ڶ��1n�Q����x��(5-M;���U�"I����_�-㸦O�v�a�Г��d�u��i1�ۇ��qL�����1��p���S	1i������o�����Q�Sŉ�:y�,�RWn.�8������}�0�&��r� �2�p�>����@7�n-C�3�|x{�g�{�$�Ŭ�a�����͝�w��Әz넋�t���q�zp|������,�^�di�	�a�|�s�Vq�����i�	��oШfe�H�O�Z�g[G���(7��)�]@�!c/&�@R(�����o�y�wg��F,�~#����`���1��)jY4,�f��>��zBKk�I�T?)J����a۠:J�0�3K�������y�@p��~��a��1[�n�N3�^�H����Y5�:@k�}��%���~C˥�ք�	m����$���uN	yn����6���|�!�,R5���k�J�@8�޼���ŭ1��M	�Ӓ�<m����K@{��MW���3�� >x���w>��M2�kl��]C�6�w= �X�;@���=>=��W6�vJ����v�_��/_!���~w��+�j9��ǹC������.;���;��(��z5�����C����jw��)�	.hL�~�%N��<�\+�g������.~���������knA׷� ��[;a<�.:�wI�j-���_��XZ�V8��wP
â�.���1rt��&-�"S|=r��^�"�LF��6Y�^��Y[�Oַ�!q��_2�SD3�ʊ:3�z��/�R�$�F�Q���.� �N�l��S����K_5p����*-]LH^O���3p��jV��\�����!���|&Y�h���y��Co��C��wB U�V��*]�Bw�� \
�T���8�����/6?b̘�V��lthu�!_ !�����I�Of4O��%��������)�\�n�k��^��nx����w���jb]�<)�
�a����x�x������>�t־����}<�9�ϒ�Ȇ}�������i�� .�G(m3O��G�(�É��a��|���Z�k�C�.�;톆!��%�"Sr�a}U�>O�&�M��E����˰���[n�J =u����zEEܞ�+p���▬�8W{ʢ~�� �Q�����At���>7s��>6�ѩ������_�
\�:��Pzr�c�x�NX��Zܟ�l���U��6]��Թ�A�����~��#Y�wݵ]0����!Mu��8��Z��f��M�A{s�%�zҾH�{��	<(�n1 h��W!��X�騍p5_o���0�ֽ�A�sZq��)��U|'D���
ڐ.��m��쭏˾%���T��7�q��|>Ł����%DS�.+����&���Ӯ?�{��_������$��xݽ�]7�׋�KP��F��U%�k~���n�L�	�M��~�U)GY����Z�o��9�9u�~�?.O�&�L���j+z?Ό�-����"[���E���IK����a}���f�tN���K�HJ	Ow]nȓ�\��$'�	&�j��r�i��*~u����Ю�i����o��Z���Hv���Q��0��?ča�7;w�w�aTd�$��**Q�5sґ�58�����IW�N�a�.���b;BЫ=l���y,ʠ�͗-���RF�0�<����~"�q�m�_�8�k��,Q���W�����v*\��5�q����0�?�o���h#N^�T��~&��X���j�*��L����!F�ݗέ������ĻY�)���a��K9���bn{�Oz.�d�\��)7�u�N"l�u���ܐ� ��"�51([S��=	<��*�U*����G�O�dI����⠲�.��UR��:2�4��c���ѳ�c��-Ph+���#��'s�}����|�Pr�z��G��;ō���8H\�S��d���{�i�W���i`��iS����G}�Nm���z�Ϡa��M�����p�Tihr�9�=�նy���^~����L}k*{u� <�#֦���Hh���_i^UԚ���/n&z �t���� ;�M�&i?k^��ߡ�����
�%r��S!�"%����\�V�������PU����q�j�_i*��e�L���b4����~�����?A'�z"뗃Tzw���#���4>�hKSݢ��Q�p/;���7V�������9hT���;ٻ%�-X;D���z��~��Qv��uxi=m.�� ���E��z��i�;P?�<?|�ʑ��@��E�������GM�{0��^�lplz�
[�JвkG=�[�H:�P�](;҉ƭWZ(V�bP&iJ �b���m�w���+k�K<fX�&+�[�_3��v���jQ�:�zmz0M�h�Y���5 9�O�й��Lд.]7uGǚ��Af�k�Kq"+��?��r+�u���1��^�ʭ���vq3l�v?|J�o��� �,�� ��#�{�q�m��I>���jk)4>G�8(�^��9<�{g4�sW�p��"�i������m2�+H���=p�}|$��78p�Qܻ ܦ�Ql[m������أ�=���-��6���7���GP��ӶL.�m0W�W���F������?�)8�EתS�Aȓ��)��F���'r��� �^�)E
���M�c�$x�!=>
pք�e�&��YJ��!CR�@�����w�F�!]v=�F���.'��N/�7]	7\���L&����S��e~K�Ew�q� ��J��5`NLpZ\j��/�k��d���˘�<�v��7P��%a�vf�A)~���y=�%)�0�ӈ
�׸�t��vp��Jt؃���4X�N0�)�v�/��p��\��^5N�������������      ;   	  x��VK��6]���bOw>�5��ĉ,�,[�E6��v3#��r��6SY����bI���=o��" xx�/��v��06<���~�Q��w����(Z���]�֣I���h8�Н�����U%��E��:�p�'��k�G��A\[�A��4�Gh�@Fm]k���3�'"�caB�'j]�7v�S�g��LVzyL;38C�%Ԫ=�P�h�b�|4J����p��ي��4�Z8�k�@^�f3�f�D�/�{��x�gEw��aa>"����s`�£5a���<{�<,iީ�%�wh��[)k�aԟ�a�79�oZ�B+c;D��|��`��
��=5U6)��{)��K1���2�tB�$�b���0.x5�g�L7đ�\f��e�9�c�>�}�z�H�MU*�M��p���W�}H7����xG�b���,���k�QV�^��)����J�Y@tSz=�	�q��w���l�Är?��K	^�l��Ƨu�ym���X\�h�f�K� ��d`G`H��7�Z7p�0.�"@�ǇV�����s�;LߜhVW� 3�L�͉*�Z�b���o��$�<��
W�bQ��0�($ѕfE_լ���v���|X�N�[94ϲoM�OȋRb�J�J�Jy~���-���`^o����rU��4��8��v7�fŃie4�+(5ZD�С����Z�
ѝ��,r)���!��5�0Cb�p�Gu�'ww�����|qw�}`p�8��/å%6s�����k2Dc\�^K�D
��3-�۝���_�mM{ST����
pT]<A�Qs�a��ʐSL�n8���	H類ah4��F`I�h�:]���@���r�(+�x�z�e7�����P7�2y�]��4s��UߖF����[:qfi؅��.,L#��p�,�C}^N�&�2=��i0�@��N���I�i��������&+���*,S�ˣGF���am9w/���7o���CiJT�I�w%���+� �Q6�mCVY�2�+ύY�Gy�G4�k���h)���-�f��:����$3E5pu,�G̥�Y�Z�S��7S`%o�xh�'���[k�E����$[�z��7�V��|��y5bw:�+�R�_9�Y�g�V�Y�'��[+K?x�~�DO��ܲ[eC��PC�����134�zɆ��XO1P�����(o��"#�ºћ_u����$l����%i�,Z�X#Oʼ�ǳ.I�7:��^�N(I�0�q-���M�9)�N="��h^��@��ߖ��� �!�K      B   �  x�eV�n�8|V���H��<z�6(���qۧ���ء�6�Y E�dDSÙ�3��!�R���؟)� !�@�R���\��xY������r[K�Zn5d�H��q�.�K ��(�)����a��;�����:"�Jqu=�
Ԃ#	��&Wu��~y`k����,�Xң꺸��_�A�T��O���M!�S��V���S��A\�mF��H[��x���O����)%���Z<���/�c�Ć�����wϠ�)��E���+n��a��C�sʾ���	+���1y�^��������UGY]a���L�E�������daBc��2	sBB�`�s:u٢��yY���$L]˩
��\�	Z�i���Q�rve�;x�Z
X�AO�������x`kB?Q2�kT�����欜Lr�t�9��N��
���;\b��9��Vn�Г���鑦���G:�D�<H�C���'U��O�^::�F 5>�U��r_�ǝL����[ϩe����k��oR0����v��gЁ���jR��
�n<�"�!���x7�W&�G]unC��͠��k�9��%/�cX���ɻ&��pY��9|1�lch��yg�U|W;�,�w�Yw$\��+ʱ�� � �e�P���Np7�d���}�l�vۖ�>��x�c͘��S���r��_��Sh]���vΥ����1�,�i�&��cn�cum�i�'��K�.�&,�a���;SS\}���ȶj(59s@��������:05==�y�P�o7��X��2h�[�=g'Dp	MѪ�N����ΰ�\h4��}�	
�������&����v#����O��>�=x]�|�Om�fT����b%����cM���P��R멳�tcuw�R�8�ӥ4��M2b;�;��XO����HU|��s���{��x@�^8x�Ӡ5v爯��S�͟�A[��}�8��'��:���U��b�E�������ӿ����?�X�      @      x��}�r#9����^#%>�)�2[Rj$��ε�@b�2�)Fv��u���jl��c��pPv�ʪ2�p�<���cݿ�c����b0ZLg���`4ǣ�s���������{,��7�}m�����������nZ5�|0��f��"�~-vu��?4��G<5��{/���1=����E�i��7��[9z6��������;ѿmv��\n�Z\L�����;7����r�t��5�����������ċ�߶�GU�j���p:8��_�ꭖ�ח��J���ڝ���^˯?TJ���AE��ت���Z��hk1���S�8�]��!U J	m�qS7���M���R��\���ѿ��&1x��q4+0�k�5���C�i뷦��V����V����a����~�P	�%����gS�`��{���7�����\4m[�5
!ϋ��g�PDfUm���Vǁ9�z+%���!�<&"�iߪ�s�w�~��W?j:���z�0o%�9�Im�>џ=ɰH�~�vNH��P��!�""�\�ֽ7�����QXHou��qJ�N��.���&�_����p���PoE���5{�"��G=z������ ��o���2y�Z�
f�,�W��D_ w���?����3���+� ���{��c#Z}g�qR���c��b������ {���9�B_8l#r�������B������,Y
!���]��Jޫ߫][�'eo����ر���S�}��h�Ʋ�3�q�B*�R6�jʳ�!�?���7�e�,D2�{C�Ƽ?��,�7;`, ����ǇSW�j'�_�o>.�������|uψ��B��.�,}~q�b�Z�z?�����v��L�.N����g��=��%�!O��}�V���_����h���%%�QjT�ԾQ�9H�lފ��Z(!�y�����K����G	xf5���T�k!a�>:�ѽ���S��=��Ｉۺ�Ƣ�;;<���F�{��-��/Avx���c' �QO1��<*N+�J��߾'�\��D$@��(�>[9ׯ8�-E���Ꮖ#M݊�z�����6����("��_���r�^�}wε���	�H\��]��<���1�a��P��J�j�0���~J	*�+Ƿ����
�OJ<ӿ�xPDf]m�cV���EyLD�J��V����{��0J�VXLo����TQ�W}�,���4��edR�=Z�����p����P:G�7ү���+�P`���7�׽�Լ�a���2'>����o}���ԍ+P;�1}�JP!�$w_9&z���Y������^�u�^o�����Y�<G����h�i��,H~{��^���B)m��!�_o�w�������T��-��x����=[�;�?Z��r;�ə���W�ؽ��Ww$|3�TAp���|�� ���|Wl����K-2�A%��(������ F��Һ�������wp�e{?xPo�������,s!~�����ǉ���ĳ�\�]�}�ZR��6��P,$"������l�m4�����n��3s��͵�zVU��b""��j��?�6�,27��߰���"�V�Y�x����#r��5��u�v�b2�� ��=�o�6� �Z�pJ$<&"�P�)A��Y1X��>@��h��=X%���G�d$OP��+��f@�x�Z)��I��cƺ��B��Q����T�}�
�G��
~��������c""OR��ۗᦪ�aQLtF\HM��^;y�J�kk~��; ����տ����Y���䦄,?>���s#ެ�kL�XH|��/��~���jW)� g!�5ک���δ�@��q�(��X�j#b�JP!x�j)�]����lsHS3�Ù�H���׻��A̲~/��n��W�n_��8�	�h󘐆�M?��BY,��qqL��E;�i@8;����(KY0zHyPHE�X��w_��h|�8=�'�)�� tJ�P�ܵ!����ü$��,fV��.�2�͉5��y�>�k���Y(�In�A[�w���)"�B��\���9��g<&��7���~��jW�!�B(P��!��~�CU{������D�ل��O�˩�_>�TH�����+��qo8��!��0���{����u|�\�"��A��_n���\߫7{�愜���"k2�%���]TD ������h+..<�B*JZ�qk���0x�;8D8�����k���a��o��.?�Erj�5g�ʂR*�j���O�E��J�c�r�Y,���`�J��o�t�[� 2�������x4$,\"~���<~�w��Fg�P#�A�Nt��;�
_�
@�)�I���r+�ؔe{D�[d������Vq�r�u�{[�9s�}w8`�juK �m]Ie{pQ���Ж	�S8D8z�^�U�ځMBqb<�A��kI�o����~4���]���:d�NÇ����T�rV?ć�R�򬌙�T��{�䡋j�W���)p�?��iGm>�o�˒AԞ!	�~����$ᯰ^���>��(6����&+�u�!�
D	)@�n��V��fs�g���KǑ�V��d�Ä4Wy3:�3!8D��g4֑�_5JeSҒ�����"n�4�����}���A�"������]�^�����V8"ά��Z(�T;�Y�.�Pˁ��Z��N�~;#�5�����Z�57A�A7������)�b�� 8N�2��E0^�US)OŭxR�GjrN+�E0��y��7���� ���(e!������v��<�˕�qr(��򘔎��;��Q�O�@j!0�xs����������F�c�l��%��Ï������EzYJP)-8���i@�B�;���t�;��;#�s�L3������!EWsj��2���,���z�_;�T�ھ�s�5͏�^"�� 4�����p�j'JY�vW���p5���V��^eC���������dD0�2\H��J��(��O8ְ�(RXW/M�2=ܡX@���AB
c&��V��U�p�B�@�q�v��	��L��A[�������[y�J��80锣�X�F���CȵA�%x0%��_LF:�4�ј�|�Z�F�9NWWM�xLH����ٷ�g*��C��)�¤9J*.A�t��F�ِ-�ߍ�R�X'��U�*�z��~�^l���B����~������=��gt�&:ǻj�	I6�e� �r�p���/{P���)�q�(�e�O�i�Qn4~��p�Wɗu$�v1�y�	iX��(�6�dԬ��B��μ��V�l[)�5�̏(7|(Y�J�j#�e�ͬDg��/���$�d��3�^�e�n]����G,$�Z1ur��I%Wwn>\n* �Tt�	�MV����)����ξ�-����oP	
㤝����C.�yTf����o�a1FX1�\Y��BD���Mk�Qo��B�����X��&FM��MȆ��m �y���2*��zu�!U�$7>���ƺ�
o�'�A��k��M��s: 37:z-?�
�:*㙲^Hu�����B�=��������GNKhR��g����DNy�g�Č���T��B��T�W��3� ��hj�<�~-��;?>�|�r�%���X!���Bt�S�l|��%�b��-��C����Un�rn\�aa*��(�Ov����w��D��B�gA42��p������|�ޫ��� Q�!���@��V>o��ZI�L���no~|4��Ѓ�tSA����!"P	��L��)�.O~|����G�?�����K��p�؝;��w��b� �D�P	�w�m�/4�s��yNA��hZ5J�+Eg��j #TNȏ�&�Msj�M��)�T�>�H�L�rg
X�h���Xg��(?�eN�b+�E�@���m31��T0ܽ�%�+���A�"�d�b�1�9L�/�v�����*r� ��5���cmg�b r{�j;p�b��)E���D�/*�q=�TG�    ��mn�$�ftJ�lml�?�c��B���
��T��ն��r������Ѵ��޽5{��H�!xm/��_�Vg9=�J�j4߿ qdFXN9DD@�I��]�
)ξ5��i}L<=E����p�}%v��L����2lY�\d�~�q?;<���;�ޭ�5-?��Z�<Ұ��ܷPzS�VTBNvx83x������fS�B󘐆6�}k��!�k>Dm�~(�C����ߦ��V(��S'tE�PHe)��A�Ɓ���}~xLH#ʳ�ꨀ7�tc3��KZ�m��<cu����D8���M�2�����|] 
������N/8YZ�#rj-H}�;S��N4��	hp��HQ�O��I�?�MzӟXl��b�?��8�Ĝ\�,&�-��Ċ�K��g\�3�|�Q*~��G���ŵR�O9�Vjy��CJj%�n����@�-M���qQuB���AtY2E��u=x��$��?���T$���ZU�i.�fq�z�JP)�/������[j�3�~ȉ�������~X)R�\?^><ٳ�e�ۍ8�ն��W��m�ա�*��x
@)Hq�q8JT�țw����W�1��ݥ����{�bnɧ���~H~|0uq9,���Z���G��Zh����yj��S�����e�����W��:u�e���;��ZI�ƈk��o<T�o������,��Q8���	U�|�uz�����-,+�YV�ї�O��X\�Уpr�C����U�^��
&�2WuJ�����p8��.��Q�ƿA~)!R_�7V��ET�����Z[7��r���&T:츑ʒ �!h�ְ�
�:��P
@�������Xǅv���b ���=���7���)�S
F?����t��x���W<	,嗶MW��r7��.s�����0Ѻ^�bH3C��h�_5�g��1BW��D[��y���)��7a�6�BV�1�WXv���CB)e �k�s������H�1�w��4N}��iANoc�`q�I~|0��0gM�wG)B��i# �|ӴG�%���U�ܙX}pyN�	-�s���um�S��G]�k݆PD"�m\�I�X��{�� �Wh;��������"b�b��z��x��~���q�I��x��=b�G�k��D�H9\��:�x�XS�Φ�H1�6�}��^�T�#���!�44�:�3�hz��=|�W��j��4l4�H�<2"�y�ީ�߅�h���ti@4���7��tſ��¾�Z���>0D�A��Ж@��Aa`�@�BJh�Q��{��*/�aN�
,$"a"\U�u�]���:�<����n���8�Ч{���[���̫�i�����H�|�v�I�d'��!u�x���=d!荿��;�w�۹�(�ؔ\�,(Y.]����4�V�J�ōD�� >�- 8ś�ݼ�����wr�Ay@�����������p���|�8�|q����h�����z/��okT���Z�8N�a*AE� �����ͣf)����=pUz��)��Di���*ڕ�"�<G,d4�^ B��k�u��5��
@xY������
]BF'3}Vp�w	��24�ś+Ccy�[V1��P�r���b���/m���	�-�k��U�����?����e� �\���9�⨢؟N��\!���R\H.���ye�f����r�'
ő%���J�2�����2y��.^�X�ѵ�����<����,*틻0 ����}4ș�X#\�. ��B��\��\7���(�g79�Yf��`>�O(�ɖa��/�6���[�V����"��\�-- �>hH:#c�r�?[�yՊ���DT߲�]A��m��w�\3�G����C0�a��+���X�r���O���֓˃�ө�l��&>�f���B��Y��f����Ӛ$*io\��<z���)�A��T�~}y�蘈i��]����q�޷��ڭ�����a�`_D�9���_ueg��`��/;�#��T��@B
wJ �u��m���0j6�o1�	i�e�]-�Ћ��%���_����Ӟ�q.��[.��ye��t��CZp�����,?j)��5����L�\�o��F��ī�I]�s�.C7���%���E�ʛ�Y�ǰ���E����� �@�;ek�1���~�Nry�R��E��[<U�֨��a�v$�LyX@���V�jW@�V�k&��5���%���:�MΣj��G8�	Hx:��?��cBH3��ȭv�����řQ�O�1R�gq�̢�a���b�����.��PÉ��tȃ�5C��X�=�VK�L+7���:�D\����mj+�/�-/�%�Lin���ϋ������wt�6��k�|N��yLBFKF�K������EI�4��$d��)�e��~=�� Fw�ڥ��"�,��xum��c����g���ᇚ�D$�vWσ���:q�����@�u�7hLǞf�Gݰ���O|���l�O��ƀ�o��1�:w����C�����Smۂ �Sڶ��s����{�v��WN��Yܤ1�'5i,m^�������u��FqgNp<���~W4�g&�Ha#��.}�};�K�Mj��vU�l�pYm�,��A�&k�%��j+*p�O�L���];c`��X�$i�bz_��˻�ac;�p�
�HH<4�f��+�l��b�𘄌-Bk-o~���:Z,&!S�>LW(�"�mQߵ(���$#v�0���s�S��[ǉf	���p�?Fe�e<EHHA������yfLPʨxLH�ؖt5`ɔ!dr�yJ�Q [#c>�w���C*���@WǶQ��
a,�Ab!!e5	��ϙh��Z���~�����*V��d��}X#{B��¶n�G�u+lј������J	�,߬��ѧ�pb������Ѐ��*�+l�Z��;OjY�r8��'��F%�ݛhY'�M��L3�X{.m�2Tx��� ۅ��fƇs��2�|۩�Q��<iX̟ٙ�}u�N)��D5ՕU���a�;*������*hhl��8p��	���7L%-ڈR]>��a �m��\�Z��"��[�NDI�\i��#.T��1P�Uʳ�@�]�)�<D|�{'|���YF�( �����j���� pJⷺ��Ƥ��\ܘ��}uZ޾��ukb�)l�Z�6��{'�M.oD���3��oj��t��Ղ��4\@*~�q�E+o@\ڼ��Nhަe��w��꾉�����uy�&�9�"*����t~�zjO��N:x?	O��lc�X�8��Y��(|�Mm��Mc:�s�����2�'y@JA_��}��C^a'U�38!/8�*!o�.!��(1J2�{����{�H�\e	%�o����*��T�É�:�A��]�e�EpL[���{�;��T�67�+f0;��ͱ����p����U����/���r�9D8���\����C��%����ȩ��l�C��4�C�#�`Q!���S���Y*��C��CZ���Q��|A�` ��@aC4A%�d�Q����5�겘8�X�KQ��i.��=��țЅ!*��(�T�:�F����ǚ���(�կ	<��'��C�O�)��_��OϏ�F����C�$1��O�C�	��?���ި���{�t\Lo��@z�Je�K�Ҁit4$�
@����Py��S.����[���S��a*"� �X�V�J�Wu�#-&�Dӛ���3B�':t�$ӻ�*�ҫڻ���XH��
���Yu�Ƅ6n󘈈ܸ��u�r�6R\�ό�&��5��)]S.?>��ھA��	�F�#* � w���|}����B�_��p�C�N��3:4?>��$��oz��EP��"g1Q._�i�mez�e�x�F`wE 2oo~��z�RnA������`^�Qԃ�?@,鴶���,mF�yT�<�o��Ov�Eվ�N��>���֕�0��o%�HϧJ�Uei;S�������lRm��nG�����dE�P�y�uό�LW��ؔw�<���O��Β�ħ��kk�)]L� �_߬�9��b7U��`���a1�/ !   i���죽���*�a�µ$y���u��y���Y6!!�_�X�e��5XHzu�/O� ��c/8�����L`9�S=8�����E�C��^�?TK�z�T#���
}��D��E8GT�]nx�Xxn� 袩����S�]_���͏G:��ح�����]��멞�Sz�����Ή=�o*�]Y���R��b��{�Z,?�F��U#&�h�B��ۺB�N�#��@�BZ�Z��U�J����)����ځ<���H�"]�f��T���������y�x�	}��Ug�T���5%�q��>��՗
�����s���#�}�{�n�%��!�t�t�iҿsI "s��tryܷ,��2dU��n%ϣ.�����߽���g¶śT�:�u����+���Ue>��{��4����Q]q��G��]�O״�<�{�\�GI9����ggt%4��N1�&� "@��Sä�����Ft�����{������|6R�+��T��1�._��r3k�Ե!53S��FD;�ڨ(&����f�'���
�0�*�f������xgu���ުfӸ^PC�5`!!������J��3 �:A$l`�~I�L�hA�uN���-:N���i6bl{��?��^�����CօnT�,�qytF��h��^{sL��z����X
�JC�����-b&��Nʋ�p���I3��A+7]q�b֝�!��c0�i*M\�*_�+��,,$~M��/)�v�sZX�1�W������Ϊ�1�	�Bϻ�>g�+Y ��2������!p�1��2�iK᣶�<D+��B�q�ñ��K�ך������μ&�T�D~����%��t�9~n��qI�C$$�n�՛=����PB(��}W��t�N�'	HD���ZǤ}� �R?��nB�W��$2t_�}]�(��P:DpP( !�ߣUӚ�~3��@n�v�D�;x>�ˑ���՗ۮ��$ v8!l�@��o�����Z�hM�V�#�p��$k��V-�����P��8D8�$%��)��H�\tj�2���d%ҰE:'�{��x�?�E�����k��$E�Us��}��&���zPHut`�w��`=I�鋭���S��D�c�J��������RJQ;sg5��h��cR:�	�r(�&E"�5H)�]�"1�(�W���8HJ�������3�O^	*���bc������������g��f�C�zH���4e�<�~(�<�p� RY�5{݌�<a�<�?�1!���'���Ą��P�
�\W���,����Q
H��f�M��pv?��V�Q	�T����pnSav#L�HS�`5M*���x�^{�F����6ND��ѷ4-tƃ�[�T�'��2��b��Ao���Vj�a�yLH#��oA��%���d�L��3������lt��(�����p^(-em�*k�@��f������nu%��C��BA֯������z+5��ߪݟ�����Av�e ��x�_�玛m@4
�d�f��o�e�	�c9�U��j���d:�0֘ͺ*��]���D$�H"4��rP:!��7���rvN����9˽��>���eb!��VU��C}/�c�}���DD��7ʌu�M�sM��g�'�kA�b�A!�y.��	�����(�nc���c""J��=��K�<��D��j��t3��1+��T���l��c""��������� "rfc�^��T>aX���8DD��(�*�+��V$�ǿ^����'͎t7�"XDJ{\l���11Y��DD���c���*�<&ݑ.�ƚ���\5�,��\��h��E%|l��!]��C�V��`�L/b]Ŋ͙�M-�"񡛳�Ƥ���>N�ȡPD�t�3�������ѕ��$K�ǎ���9g����m��d�^�@��<("�SW�E5\��}�{Rv^���_����qR����~����J>3��]��<�X�1]e����]?�7�e�.�ܶ��`jx\��z�2m@0yP��%A7�\>*&_z��M�B'�Q���`b��ݸ*T=�j/��"F���iUVFקmNW��1�����`���=�k䐎�`!	�b��Nu�����1	�[�tNr�W�!܌��9DBʶ��0�V�� ��xUI���8YK;�i�@� ��v��0��1	��zP^�'��P?g:Y���B�K����n�!Ց�m���jy�QG�Ae��"K*��^�JH�����o�L�B� ��J�u���!I���e�"�#�d'�:�Ns6= ���T�P�Yj��WP�/S;��[]y5[�zA6�jB���Ǉs��F�[Iqk��6���a
pP�<n[�=���&~�Zk��\�o݇��G���
�7�2f��x@4�obu.�!m2͏�&�zK�����9;����[5�1��6$S���.�'��/AE��|4���n4W�>yBۋ8DD@������@z���b""`��Pb�>�GD���1ؗ���=X;U�1?����z��s.��.{���!��;1�/Bf3�M$ �\���zS�	{���p�3B�( D B��9�P��H����	ƼO�FNԟ�Q���ۭJ��:�dJ�XX����Ԋ��.<�F�Oe !+W�v��b�S�fߨf%E����������~�>��Ucv��YH@��r���k��iʄ��#9D0��tQ���p�i��s�W�LNp�_�Z>��t>9��,$!�D�m������<���D����U�R�����2��?~����8 4�      =   v  x���Mr�0���]��/Ef���&�&������Q��m� ǝ�"x�����#gF������g��70)��|]~~.ߧ����G5���Q�x�|-˞�l�4���/	tB���~���~|�q&�5�pB�	��:�8��N=�K�b8�S��Y�f/Є��"^{=���{O�s�Ge9��D�����p��Z�6����-o�~쬴u�W�$4�����ҕ���yj�x\=�ል�>}����DF�����2�лo�:g��p���"����[�U=mŹ>Łs2ޙ�fF���\�eN��Qez+�97y��q aV�Ԕ�q}�;�H�iJ��ݍhm�8�������Fņ��E���]w�����#��� T�jSR]<���X��_����ZG%�q�6�ܫ��[��^;�i]9�N�O��m;q�vɺ�)��,l���p�vǒWw���Bl4{�NvP����`՛�r~\���|Zw�������!^v��B��Glw~��a��u=�_�����F��OT]�w��d���
�f�:��p��1ܭ{s���O;��<�v�s�J��i��&�i��YQ�u	z�&ɏ��L�rv�x�C�ߗ�����>�      :   �   x�5�A
�0EדS��x )*6*�7C;B 5�T/�Bz�\�P+��_<��r�ޤH�?.`ǘ��l<�Ż[��9��.��B1#o�'j�����0�ǝR�Y	�:	��Bm,�r/�6�'k��v�4E����ݝ��Z���mӥ�}BӁJ��qv_�B�/2@      ?      x���ۖǑ-����Y���� IICH���s�UI ��*��*���y�5���13�w��Ȭ0h-�%�7<=����m���¿�V����������۾}~�2luq��V��r��v3��6G7J}��w�_��1��o���j-�VpS}��uLg9��������������������pDX�Uqk�ٕ�6��ͻ�a����x���z����z��zP+�s]���;X/�mvT���7&w�A�j���j�s������PC��p�<oW���7��q�ؘ�nu:�ؔ��Z}�����Q[�@_���ѷ�1�͛�����a3l�;�1��6[�O�~�5!�﬽�f��z%" &B��s�&����5f5��+D�VqD�v��ߝ>�F{�����~ ķ�'�(�����xA�ߪ�����	�O=_þ��8��"��+i�S��<G�Bd��p��![�������ax����ӎA�&�M������5�3�q�$�n.[�7:t�Y�W_���ݎ������i�Gn8�-�_�Ohj�FS&�$���b���b��N�Մ���Ƃ��^�d�Ze��h���p`�y{7<��W����%��p�C���,������5��_��N��|��͍������_?������?��#_�`���+�`wE��ņw��5�2��f�יּ�w����o>n��χ�7w����r�m?���r?`��l��a鰙�~!rk0�1c,��b��;��6�ўA{�soNݎ��̈́�s���i5fs��f���g�î��������������c.ye���a_E���s������#�~:�5�K^.@�����]+��o �n���A������hy}�����8��wW����~��ǽ����FO�h��u�?�։`[�<\[x����`'?�������CXO'�_�w�q���lN��>�F�<g���ӟ�៭O|k���M��#6E���Z��-w��c8�����tyPtdo�k����p�CI*�����Ɗ��,x�o�2�D(�r�(�e�[��Mlw<���0<�39<<&��ӿ�{d���UH������Y�@|S��������n��l�#D~��τ�R�6���
j��N���Zp�؂�Q� �%*�����f���y�8�v`i��KaK�R�[��l,x������L%��q��ch�i6��O�(��r�:P# m|�|���J�U��A�S�(����r����8���/��H�!�+u&�=eo1�,��$�mM+Rݭ4� [GK��G���:��6|T���k��2"��8u�S9�;�����q�ǯ�R}a��dp��%�w-d5#઀��м����]�̹���霧�]�\쀑��/V	�����������p�J�����q���O�[s>t�[bkS0(�| ��uwwϼ��x<L��Yr���Әd�g-j�B����|�����p��,%5�I'��r�F}�=�5���y����t���J����|,l���?2�l,׌�m��ţ*)г[prS�j���p~����a8�ɍ8�|rZ-�h2� Y"'���,�w�@xtN[?_����t@�JA��w��~������q����aLf�E�t�P���>�ލT�1��V����X�N�4h��>�n!2i~=�⧿�R�uč����m�g�u4�M�"�&�0�����{�7��8?w�����}��J;t%L�p�is�c�|���}/֊�u��P76Q����`jW�vI6�D���Km���W����>�s1�ʘ�<� ��7%8 �e5�B��G�}��?�:��!.�v=j�LhJ�Ӹy��S����)�ח"	�T`�|W;�%��8�����q�����0��c�|�T��љ=���\�U4�+�����vcݴ�K%ճ��w(�>�Qˀ�L��/�3ᒛ�q����k�T<�ݧ�
:Q��9ص^���z5�D�ش+��#�mKDd��yt��e��a�̷Ϫ��ⷋ�6����X����^y��r\W҂���q��?���=,�v���b\5�pm^T$��� ������Y������To��w�[�Y���ka4X���%����b؁0p��?>?NE�y�w;cl��"�E��-_����m돈���P@��.ܳ��i�5<a�wv6��\°�!�]��7ϟ���=�T��=8��ې������S������ V���AL2�8�U�O��b�f���i?�.����-��b�j�,^�����ʀ�-�fݺ�| 'W��z`m���*��K��a��ߠzR��g�Y3=%���ڐ#�mxK�����	j�˿ȵ�@�B�}{x~�$�/�]/!��_�?�򶻫1����㕈N���կ�{�*On)��E:�¼5?�N�e�u��\�A� ���J�v�q?�/����ǧ�dY��~)��
�ۃ$F��w�`���%Ξ���|����Cp)�
O-8Z���MR�q�`f�WԜ����G0��v������,8�$�vX��^�ՠ��X<�p���9"��2E�hC-��4�TO`P/�	g�S�,?���E��8|⩧L_j�/R75]úl����-{��x�&�Z'Z��3��m��&څ��5�ע�L�Ñ��U�-��?�VI����~���o�O�Gr��([�ܲO_�	7�+��hVB��Vظ�8b��xn��7�5h�d�����+��:w�Y��t��E7�31v�;b#�Z g*F@�{�����ȣ�+����W��7>w_�H���f0�l�&�z"M�H��R��z7�vG�l���u�)�&v;��k��qX�n��N���k����?�_#G��K� �>�c����ɉX�d(��3��%�>�X|?��wa�P,��k��[�4o*0q�� ��p�*O҇a_��*^��ث`���I�._���q�r�h��;ZX�,��1�w���}C��T�^\j�YD<c>�.���b6g �Ċ7��9�S0��P�����w���01�<�Zhw���'�$�[��z�<o�?�O��g,p����p�?�1�������	P�P�z�6�&�NP���;�i�vSx��B���錵�� ��Մ!n�lI��c����y(yҥR)c�!I��`�_��0/��&�gIi*�WS��vlޠ��
�i��n�cq�4p�%����)ǯ��Z�z'�@�v������Ϙ��a����ג#��#4�|tK�w�X��N0 G!2�5�k8���c�k��a��&
��RɆR����w�vǧ��ߟ�!�I�q�z-�K*����4�wCI͘I�]�d�.��g�L����@�F���M����l�ԍ�ޙk�p��>g^:��0}�p���n>t-M ldn*�K������u�b
~���N�#�9�0{8K@���w~$Gub�]���뻕ZhS���8��o+��ՠ,�M���Թ�SH����a�x���#Y',�U�=��lWL��)��{�N���~�����-0 �pM_�o*x)���F�1�+�E�e.xL�dL��ϟv�h*��ַԬ۸{�q�3w�b��6�?���{n	""˭�֤��LL�Pc���pS�H��%.�HX4��|�=���Y����b�M�P֩��*7E�s��a�����p�e6��)I·�[-Cn|R$�$��8wI�۽����3�W���O��f?y�j�@5;x�h����Z���E32��Wٰ��1v|05%�˛���x���?ɛ�ug+��dY�a��,qe����������/fU���.��d�M��`$�x.ּhr~n�tĶ���RG�����	|ϻ�c(0��d�1�S�\E��=^�綾uЦc�\+L*q������vsx>�na[Cϒ���:��.���0x�"�[����J`�Roo2�����]�z��Z1��,���h��u5jCiV�+���C�������2�/���b���    ٧#���q�fË4�\	l�x���nk��`����f�%c}��Y[Z�C��j�5;�-d��&�m8&�����6l~=,{�&\;���o�T/��i�6T��������zTf&�]�	]W�������.sۤs�렻�`$�̖�k�o~{�J׺�6��E�E��a4��OD�~`���Q��'�` �XV�Z;��m'������{�;*�e>��́�b3&gpS
�pS�>;O��������c�P(:E�$�d�� 2��L�Q� ��	�ڀ)�1�c�yK?��#�}���^����Vh�3����8�A{�E�%4,�7�>K��,��49b��-#Q��%��RlDP�D�2��}'��.~�`lGF=�G�L~~�325����B'�*�Q�o�o8���:i����{8����u<]z:C� �kJ�V�¸����p�8=�?>��>O�@Z�U0� qa|�Bz# m�퀾���!����M�؆�������c�}�ڧ�������4w_�',n:)#�:���1��8�Jq�/U���3��S1�	�단�S�=
�ypk���T��XY����_���r	�.~:xbx�@�(�e���Ҕ]ĤX �燲�X	nr=��z_:O��z�FU ��u��YcDk��z�E ӹ�v�OK��Y����:`�޺��*0j��h�i����U�R�KV<��ׂ��.7�X��:���
�>1a
�*/���F{�ᏺ�OR͋�Bo;�ԋ��>m|����m�n(��hs�Š%��"�g.���M_g��u�WQ�z�.W�7Aw��XƘJZ�_v��h�
�.	�杣�R@تh�� h�\��`��@�.+1��{{���nKR\���y��m�X����
4���B5��V���t�]`�{�{��<������2�p8i�]��9j�t�HoG�Zܶ�]aQ�u�h(t�wo�`�l5���E���;r�Pk��jȦ�0��:{�ZH�(R��YIQ�����G�k����p3ܕmM�L{9jv�rw��,gٓ�|2.��!���E+�Nu�{���i��p��W��w����O�t(j�)c�x'����G��H6u$^��2���Kz8p�>:�o_v���q�+D�s����d�m˙��(���A�" ���w1����Hϣ��������=9%Y�H�e)�^/I��bד�U���\Vԫ�������|����b�y��-p��~�N
p�7��B=�5�� �9q��%%�{~=u�M�7*�@Hu����w������0S�Ԇ�;�i5?�a�i��9̮n����j�0=��t:���$T��{��6K�P��')����=�ER%�F}�E*�o�Oc�^�EwU?�Б�VѧUxmgG@>�]7w^���X��_����om-O�euGg�M�RO�V��6qf�dr����#!Zn�@�M��{���M�J�����z�cZa��K8�s�Z��>W.�\���r��9g}K���(�� �K�@P'��(y���2Q�6ax,[��ȕ>�$oXq�d��!�7�/A��l@���#����U�l�-)���a��z{�b>�X�?K��H��j�{�z��7�7�|>�N@O߲�����?.;F}���<��J,�6΍�X��=e�e/@�b��F|�9�`��	�<j"u�S���o�����Շ�鸿�S�G1�3��ח�	%�l;s�Y�����w=O�����������	=�х�t���
�RF�tub~�I|B���>$!r7��E���,Dn���K滭ݘ֨�։6Y������/�x�����_�aw�x[�&BnQz�+���)�}���.�k����:*���?����i�N�.�ި�F�����[��7?{����G]f=h�4�^���uy��2s_���{)����/��z{���&C�:� T�"O��� �'z��3#��N_��_v��{f���Y��V/��P%.����W�������6#��.��m\5�c�M�����rA՛��(Y�W��Qmsi�ﶡ�U��ǧR�l��6�����5c����9?%g���D��E����=N�S���ΐk�Q�>�
�S��]��8�<�$[p�o�H�<�b+��?���ӗ����0N�\�mcÀ���|���ː��Ha)%p�� V^�<9`:c� ��G�S�����\��4�s�kY�h�B���"6_̒+�g�V"vNV��N�)���Q+���%!	lSC	��Yh��KK������� �s��(������h|�P;�e��s�CH�J�T��S�)]ζhC���Lz5����pmvAcҢ�!����uU>���.􋔧@ox{f3�q�0<a]�8�ߕnҢvz���[��>@�Ԏh�����n�^J�k�[G������O��7!���4����_��f0,�{�7`W��t��X�]VqT����[l������r�^aU!���p�$�m�Kj��� �%�}����Hؼ��p��,��%�3祦�r�=��Gԙ�h��/�.JPg����W��ل�Rh��s��[��+�j���9�M�A[d�D�\�'A\��7��1�!�X�+ӻ�s��ٷm(�u�RCXڌ��4k)t�C\�`�-�*ެ���0�qx��cp�L+w$�}qrQ�v)���jͪ�oK� ���J^c��b7��m/(���v.�%5�UU�n�*Ϛn�qS�=^�V�g��%��4o�D��2f~#�M"�V��$�W)�pk�7cC��ޮ<��G_�$�&��Ea����yiW)%@��C/"'2+�%�m�(��`��(��"v:�t|L�r��*j)��ܑ�oS�*�e�vN�E�Vg���W/\a}!�����R�w�(��2�ɴbN�+G�.��`F=��;���ȭ4'F�ic8��X�%�*�t�N�޸�	b�h%�˽: �ƛ�'8ͻ�i�$O�OA:!dXJ�*�G���{�)�I�/��݅bJ�@��i�9j�2�F��7�F�_��ݟ�]h��r�%��_p����:��I�xl+cMRO\�s���b&���@�=ǲ\s�s\	ƈ��`�w[�g��n��'�>jQ���8t庺�"����]5�c78M/��S�ls�Q�⬖;)&���Z��9��*mtf�JJ�z��Q�#)Yf��@����Pc�7���?���=T��/���q�� JEp��!��S��$0�kR�s�JР�<+c�od9ꌸ88��2#���փ�'��Һ&]L1��evgό�;��*>��{l:Γ��+�r�(a:�\�u���,3z+MCY�,��������_H�\��W�k��X�ʍ˝(ў�E�J�8ʀ��(1��9���bފ^v����0���V�%	�_ᛍ�|,��v�)ܗ$�W�݄�������>^za�!!�>�-C/GmUTn���A~Q9(fc8�Ty/mW����m@;��������&�.����QP��V��
���5�jT1
:e!
elǄ�Q��S�s��EK�R���2j��R`l֣6~�-MĜ3�B���y�����؟]ޕ���O��%ߺ�=��Ug���_�|Fbr"�����,�\��Z�*��T�2����uۨ")��b�Ĩ��U����g�as���B*w���]~O��O̔u鑐�B6�ď�g��`���^D9��նf�t���:��U=I�T�iu��}J�e~A����]X��T�\BZ�|��,���ʠ�ly.��k�?�H&_�D\��_fW�~&� C���k*��Y������������u�=í)^�F�ɺ�h@��t����J<6ev8߃X���˄�����$��<f[�qRT�p��_���-��a;�g��"���s~��b�)5�P}�A�|�=��k!�K=F�j��!�o)B��+2<�d��8������_�Ԩ&�eg���6�0"�'�;��H �ix�r��u��D��������iR�[�%U��� ��2P&|�̮��$�m    U�r�Uӳ->�S���ާс������/j�j�n�E��ՠ3���#��[Lw�0�J�������[��7��.G�T�B1tScwV�d���3������:'"Ҩ%�u���@&����jL6��R�m�N�~�l�v�aބ��h��_�߆��q,`.N���C�:�?�Orl�����~�Y��e\^����ܬy��<�0/4���<�j!r+��Q�_�#=�,���}�����9�a�Wm�U� �h�2!L�}
�.�Q�P���ŭ^�Lo#i�Q� ��i5&32�Ge2�r^�ʺ���<]�n��s����sE1_��2=�g���׺x������,
�ÿ	P��7�g(0�&@�6�C��Nnn@�/S+�U��.5��S���l�C�g�&���mǔ�,ź������3����ۍ�gyj'q�O;�>L��x�)s}:�Ԑ$H���T@cQV�����ɝYo�����v�E��T����r��a1��m���8b�k�תT\�QJ�H��@�%Ձ�׃5>!�W�!�}�1Ț�`ۙ�;y�K���Ar�\�ޔ(��TKF��Ҵ�O����H�8��"kN�V��Z+�e&��t��k��͗3���z���k5�d��Wѿ!D���M�['��t}��kQi�E>���Q��R��Y:��62�N1
_r~Ԣ�2�V�ZQ_7��mE�'����vͻF�;�V�| +6�� ��D���S�%v��!o�����%���얽\��S�B��+�S�|T2�v�;%aG8���axB29��i��h���=��_���-���Բ��E�0<8��W#�y��� �%25���x|����������D�v��8F����<uZ����6�����-e�M�M�@�1���=k�vE�ǫs-1��p�׭�ȡ�Lg"J��B�r�BY���iV@�ڬ�C��k��c���F����~�������A�ޮ�[� ί�kw��8ml�� ��1q�4p�ԟD�k��7�ڤ54�s�֧^U!}�}J�����Z��ܩ�G��?�wf���u�O�[��Q6���f���1'ć�mE��8����B������~��fS�.���0�3-�(�<s+4oހ3�D����f�m�u����O6@�.��|@�>�ou0Z���e+	̮�\�ίn<�X�����Y�
���^a3�2^��8C���g W/��IOĎ(X�#��u��ȿI��|) xq�p�z�3G��<{
�~�^mo������KN�T�p�U�H�i,�uVY]�+��{,�=y�����F��+�,S7��!��so��e�l��8�`�f���C�+v�HT�!���� ��>�<o�?��d���tay[�m�i��&B��E�Ӷ�,
l��_mc����\.�IkƊ̴Z��>�@��(���lP"��QB������2���pO���7���I���%\�d�8�a̘٢M�8���6w��w'�,ƪ%mnnC��+�V���gC���6z5k��6� �d��:�fV$j�b�t�1��s�i�E���S>�P�R��/�a=&�����V����E�:�<�&�6}4�
`��~(�O#�rY��+#`Yz��ql���?JC�/4�t���W�a� Ý,!�N�˨��2Q�[o+Έ�-��&�zG�J�Z:v���f!n}��M�V�����ۻ��|�y�n�w���8"?}(l�o.�[�5��㘕���h����7��V�ҷ�ʽS߲���Q32qp���4�נ��m'��x�q�a;��j��Oy9�fq�	�Tk'@���L�ȡ�X3,��z	j��Zј#ͷW	juб�c
n�t���1Pq��N�A��F���=����{愃"���3��<��{%�UM�	��M�jn�$�P���52\M�>��������Qb��h��3�uz��QS�j���\#�u�ӡ.���RP����;�j�%���:�
��@�R������t}� Fv�Kj��ز����,�]�N�/����7����$ѽ��Nޤ��C?>���G�&,�ng}ZYO�q�#G���T����-	�BO�Ǒ�ۤ�rXNԬ���.zǿ=N���ê(}���Q�`'�̓F����5"�zL'6��n�������x���g��L=_�z�-��jtt��"OA0)'��R�ꧢb�kg��(ތ���:��G �¶�>|>�o��������������8���шs��QU&���y��]h@O߄^sP���bx��j�<��jJ@�ʷ�W��P��z�׮6?����������h�N�7Y�9a��H��`-n|�|�D`#�'�D�4�l������a�����GBh�6�i�����ኤ1��v�6)'�1u�굕��f�d�NAj��F��4����|�~�*�����lZ0�S0xί����Spa=�W�*T.���'+h�0��vw��O$�BX�D�6$!c3���p��Ip���i�ۧ�ѳ8�@�j0�1U���F�[��'��f^�P#�Ǵb[[U3C�)�ԊE��{�X�O����4��ܾ����X�����P8��O�QB�&6��?�.�F9�̨���ԑ~��Z"y��Ғ_\
�Ũ�f
����t����4K;��IG`�ki���9�����d�t��������<;��O��Z�º���Q���.cG�Fg��0�}����4��<4��LzR��<W���1 �֬���C���sE����O"1�$�����N�tM��.�?Z@��iwECY�CO78ux)����}Z��&��P��F��}3�g��JP'ӣ-�����ї�{u�����a���^��Q*ix�2� �mWҐ��?��;{	�P�����80"��Qk>Ėi��5R�&%�
F�f+E6n���$�g;{c'y�j�u~�eD%#�ޑ�!���M�ĔL ��6�El���C�BgA���� ��$��i�6u���9�Y<$?�NS,���u�΄�bD�,��pZ�c��Fφ���W?�w��BX�`7�+Mv�}5���_sX1�,dv� �|�D�0��;�̢�����[Ii���=<���ŅZZ�����V���?�9���6I�8F�Q���z6�ہ �Wv�Q|�k�����p?�S���a���§&>��t�,k@kx���0�УC`YZ-��Ǝv�CU_Y��,%Ey���?���!�ȱ�6�}� /bO��q�JZ$4��^�pMŁ�ط��b�T�J��a�y��g��gE��)B�Dp�-˕��pţ��!����n��$?AG���(l�w�x���z�����NK/�^ ZK�8�������z!��Ռ%&P����s���w��!��P��j����~����m&�#���cO,5�� , f��P9V�]c@e ��_�E9p�Q鮳�bʭ�Vʋ����aH�n	j=�6Qrw?��N%�@uf�jt�B���8_���){���|�S�Ҡ��F�n�U��%ax7�E�l;�sHp'��b��,���C�w� �U:�UQ�gP5�
�:h��1*���Т��m5�l�5�l��E6"��u���F�"�֊`��$�c��;���^dKM�������J��S�V�T���"��ʞ��2�Ś�)�b�b2��N���<ߗ6�����èϬ�RB���>v� F�
hkqgR��4���}P2���H�T��e��
F�w��p��>Xn�8ʻ5J�O1�v�-U���7wAm���_+Q�Uj+�Y˺���6��MI`��F&'��6�mF�f�F���t�����;N툱�;�i�&�bˑ;�&�mZMtiwV|���֐��c�q=��iF�Y4���8����Q�dC�T�N��̘���
� �)��k�-<�(-A��I�8�����HP'�͡m��ڭԊvu�}.��P��i�H���O>Zj5\�P�$A�jB4�r5���=    ���#8�
���>zSo�>=��y�s(G�G��.p��P:�"�G%D�āh�������5��
;�y�IE#E��È	5��hŻ�<%�2�C%M3���^����t�9�]gkV̆�����hT-A����/:��KPgs �a�s�g�����4�qdS�l<��q@�����+�������o��^p�`Mtl�5 �<��ӎs�3T^��7� ��L�ݩUІ����^٤��
�fH�d�IHvSzz۹��1!��C���R�gO��ɱ��*��;l/�f����ۜ �n2^���u��r�&+����8N��`� �q���8|Z��L#����ZxJ��X�	�+DQ�`da {!p���6b�$z����>�4��4h2u�/�w�Ŋ�&1r�EM���1q����~�ɯ�T85ػ�&!�l�N�f)���� �G:}�S�Z�R����4C�e�pܓ��0<�(ˮ�ܱg*2����MOF��r�aLJ �x*8J�s9c�ІU�0��{'�<R�ڭ߆�����H�F�ʂk:�pM�Q9��}�3E&�(��}������dX��D����;|L���mN�7����ԉ6��jN&C��}���ng���)(���v�<h�4Ғ��.hM5"i��6P+ eM��[;���4�]i���%�MY�4Q��^�� n���\�x�8�A<'�­�,1dQ�]�����Q�[\� �Q�����'���q�B�G�Ih1/�M��q�pv��Q�Q�5rP/ m�}<���AZi
�4�c�
EɞV�UF¤���ս-���]�r�T��DM�c�2!27��8X����:dfs�룉�����pc���IH!�{-��"�'%#]���-8�'>���!�7"�ꟕy��;oފ`�~Vr�l��;l�T�W�^K�2����ww�?��p�H��˴>�%?��&�=��6�t�z��"Xf"B�x����o|$��hC*�L�Yp�v\m7���I)nS�59���8Iin��x$�q�0�n�������,A�$�mF(�bM^�1�5�j����.M�,�Y:!n�|RȲ�o��������Ы�q��m5�(;������H��p�{���f[����HC�|g ]�62�r\���Ҽ����X�"��}(?f�� ��9�|�[��f8����q�V/t"qJ��њ ��fJ�R`ی�1�EXa��֛K�BWd��@��iLءԗ���a[���!������ �VA�����]��Yh�A�b#�L��	@+�	���﭂��i}�=��D^l��5s`N��}��N�&���[7~b!O��d`B���U)IA�'DD���s<7
[+XA�����5����&����9�"q��6z�T���������f(���ü|�ÐG�P�,=gL��`�#��|m(d�� �Ȁ��/>��jj&�5ӱ5��ߒ9	�������x��;�Z��šQl<-@#$)?2�]�/�yq���Xt��,a�A�k�NF��(�eOx!���0�����G�������Z��ّ.u�V�TA3���^։P�K�*o�T/A��U���Xh>� 4��p�L�Z�i�m�rY�>�K�E <��#P�N>v�J	@����ZqH-�d�6����h�����X��V��G@�P~+�e�@֟��`��0r���8BǱl�Q��w5k(���H�Z�<�f�g�Ӌq��i�R�:n����+!r��ڈk��<x��kn5������q��=74E�bZCX�]��%���f�?�8�o=hS߈xƼ�=kh�g
;W� L#�l�娽��ɓ���Z�-d]�$�3=_/C=KLP����wd�Sbh��}P|�N�����]\���f���]�8�i�#��Y$����3�-0��5'%n�
�=#��7Z�4�(����:�g��"��4 l���솄v�
�O��7����q��p{܏��EGwI��2r��I����� ���dd2�ܽq�<�;j�\�tx��Uk����O~����B��*��h�=�Q=�cR���M~�LC�RO1�ő��Iv����3|	�V�XQ���vmjnV�۾ٗjUќ�h+����˸��10�?ы�>��[T����֔1oc��W��V��C��
N�b���4j0�s���*Q�"��	��R����=�B�&G��)p�c�\Hۘ(f�1/��<�4ժ����M�Z璕��<��3*Hc���g+�����{'@m|�]\��h_-���4���ݗ��R~YH��c21R���z:��*��ݓ&W��<_
�Ft�����E�w@K8�vb��~iR��$y��.�绒�yD��͗��`��k�Ę��B	�*.n�Rlі�n�r2�&���hp=O��	�int1KPB�Di�B\Qfo}��[]�~���CG`/���YY�L0��� ���c6<B,�D��o�Y����東��7��iN�L>*�Cx|�(
0W��f�2�r�.5[1��)v�{"Pf��?Ж[�ek�ġ��F{�L�$C�&��V<&Y��XC�Qo�X�*1$��o�l[�I/�B�ޣ�o7�}�6j���N'e	j32ƒ��6�Jv`��u���	!lX���!���Յ2�w�m_
�1�ӳ]T�1.��k����C��՘�H�&��L�������u�J+:��#OѪ���N�e�Φ�/�j8k��٣�
�U�ސ���G��Q�R�9�L�N���iE���u�t8%:�F�8���}���	�5��׾Ks��@I8��ӝ)'�8�M���C->�L$Z�=ķϳ�
�f�<�1�j����ƚn��!n3����j4��ɀ+���<�7Iw�DgQ0�ۭ��<���� f_v�}�v�ZeF��:�)?�gx��_2�7�� ����� �*o��B�? �8#�4���:�m�W4N���1�p+W�������	�2ܙ�X��6�j�6�?��
�a���7����wW�|�,~h.�Ű�7�q'ۨ í��Z�~t�Dx5d�s��6�9c�_l%�bF#vS� 7�pk��-���qa-bG=�Q��-��U����<��$ĭ�`����� �]��F�T��m�\�Y"�F�2a�8�̺ν�du�Y]�j�r��q�:�bȯBm>V�N�د�WC~�Z����f�Ľ�%�<��0�$�M�I�6�.�3�]�1pu�1����Vs�Uw�Y�I3ufj��M�H��q��n�n=f#�B�W�uz�Og�����ɛ��q���_��0�P��,F�Z+)���Z���ª��b�E���R�E�\�k�da�=|��>��mCX��љt��6�H�]�DG	j��(�!��"�0ay�q�)4����p����濶w�����XĒ3�ķ�N�=6,ruD��E�U�ݕ^x��1�`�'nB�`�vI9Ǡ�a�9���7lq��p;��-
��y����Z�$���-�h �%���bG��F�D+�m�:#NS]�d�mD��E3�J�xn��7��џ�i�e���)R1E$Xu�'Ϙ�e�9
:�d���5O���N��x�s���m:�_��k��Lio�.���*Y����N�NkD;��C�	j�;].��x
̻ ��O2d���0`���m�8"�j��Ĩ��<e��i��ǡTL��,�����:  ү�ds�<�֨�F�w෿�s���U�T$��������7*)�d��	�|\�R�ڍ�hRz�b#�mƘ¡�hF�ըV �mB/,��|�\�W������S�s����FK��mp��&�J(1a�0�F�j��T�d��F�jmit$Wo;�$��wQU��d�CYy��tƟ�"��r>Sȶ��Jʯ�9^����2�0�r�� �/���ش�9�^	X����m8�g�ÿ>74e�����lE�UYA���	ls:��bY���j�Ar4�4qX�������2����}Q�I�,}��G9Jd��q��m���+�:�&    �e�?�8Ϩo��e�ߔơ�q=�����o��sX�+e2���mjT��/dk"Q����5sR��"D������X�ܘ1�v�A
<E�]��u��H�]�_�9�H��a�B�]�*�ʫ!6�	�9�Z���RԞġx� ��^�-Uck{H�����8&�@F�*& 9�#��WTe�4�:��j�{b��ءzj���)� $��,o^��4٬��r��>��Na6�|��[�?'Ud��i�̾�6H~�0�z�f�T A>9�k���%$Q@���� 3��l�UH���L�1�r���:y��m�������p���qֱ�$aο�/�p ���� 5R�ɵ>II������!������bS�7�8|�ЦX����"���
�1�))r=�#p]������E�t;�����h��"�����RIMߴ5�B٠�^h��|D��E����:��oM�I���jQ��E!��e�,�-_�������RVi�tB��_�`�/)v�� �������T���k'En$/��ir�勮C�,����Or0b���O��sYǽ5':fj��������5��oؤ�]f�mFV^��Ќ��d�Е��37Fw��m~x��{�OC�>���4����2R���KP/*R����A������az���7�����v��F�Er�Լ ��p�ǋ�t���ZnC늴^��:n�cT����i��y?�d~���$�/� 0C�� ���,����p&V"6%�����a%"{�(���f�6�nU��]0Z5�Ƣ��?͚���Ih�:Dz|N��F	��`/���� ��+�36�@^��@F<��I����T�׉�9OBkKe�ٸR5�����w>�N)p��i~H�ۇ,Ý���|hxWf%\o5Z��송�<޶��8�f˔��׭�p(��9	B���M��1R��?1٭�d����V�WC6�T�U�Ր����S�>��4�7����fI٨��Z����p���cA�{
��W���x�{��O�޼d�����'Ŀbl�'L��2Ƕ߰�V+2l"�k�iT��[�%|�?|��27o�����M�ZWb��/2খ�h
��B�� 	�g!>t��&r���7M�W�:�^x}d�L��E����0�#�krD��Q*/�3��˜z��&��s��O�'%�mH�H��a�/���vW���s�fQ�s����d���☊���LZ��O�,�ٿ8�L����ņک���ڷ��x<ǱB*Gs�
U����8pD�0{�e�(L[��#����?���Qʯzol":9�A~��Ym�r�3<��������4e��Y��l�`�w9��KP��:��4��6[��T�<�39��������p`�㑩�F_zlm��F�B��*��=���!� 0��C���l�:t�	 ���l�(�ŜU�Lrs¡$r~z���aV���f��Q_�h���r��{"��k�\g������~�R�7e���y���p�SG�2)f��*\w� ��B�hޜ�ƌF���]c��%����F��ݜP�Ƥ�J�FGߠAՙ�{eE�ur���r�&�	�/�NeR^��z�Ë`����{�q�J���-��Ԝi�5?�~�Ǭ<F��*��n�z�fK=����Ւ_���w;P#��		[�������gl���p'�)����$��5D�<��I�\��6�Ԯ;�Y�\9�(�n����Mj;�r+�x�_�6�����*Oׇa�ur��+�I2�WqV�$����y;��?&�����&#ǭh4�E��ۋ4 �+�&�e���!�)�|wM��A&�"3�m��u�if����/S�H��J5��uJqI[	l+@��ψ�I;l����V�^�X�jp�]7�P���ű,�9ƤiA��p�E��U�TCY�ȧ�$���ୀ��B��% e�2����h�Jk�£o��Sc${ڦݰ����'GA���<��۽�ۧJ���KP6:1ǎrb��Ur�?���� ��n��i���Zݩ-�ެ��`�,�F�ޮz���Z�e�w6�]��*��Nǳ�����{�\����9��6$F�<.$)���ia���n�	lc���UT�^���Z:���IAD*I�����E�ܴ�w��-���v�#���H��شZ�ڞ+�8�\́�7>�p�j�Z
�v�S:`#n��R��r����yZ�ZY���e�OB�>��������yD6HP��k��[k�@{v!��Dg��3�ݹs�9���� �G��(�������0�Jr�pYzc�+���\7�m�`�G�S^���SCB���0F���=o�?���0�:�jj�ԴH|.|��֡� qE��X	����<��S�h[>nw��)�~(���8�ΦP9�V'G:+��IhԺ�d
�d�U�;�S�v�1o*�m�r�~l��.�p�\$%���42�	�g�0LM�Sb:�4�y�Fa�������vjij��*{n�����BO�嶒��v%N���_vw���կt�4r��\��Y[�~�z��!�lt�@� �i
�kxS(�a+�)�͙�1�vzh��'��Z������J�l�f��"�{���}&K����L�%1Y���gK:����iq�B)���t�
��i�\p[�H��A
�1��F�3�.��!
����{�	���C6�(�+�XR�us)$�m���<}m^�Q@X�\`KR��F���j=�N!�`k;��1��Y0V"��-[u��!�9� �H��7c�L�7��_�=V��R�e�MU_a�6s�,��6bC��Y�p����b-�vu3�#k��\�>��eOܹ��'iWN{�8�f=h3�۽��� ����PH3�-[ճ�v��L�2��g��<z�m��2�&���sݡ�J��zh#^��e���V����?@�5��wW�|bUA)S�/>��
:��ͅ�"�e6�ʶ�u"����k�Y�"�m
����ɵE��=}���<���z�@B��Zq#� �r����ݾ:- ���G��`D��3��E���8���2Rb�6�0��Us Ү�lXIYI^��5[���[�Ч��BNZ�]�:uÏ �I����.�Z}���M*��mϿ>��ݨ�<�6��"�����P��6�﨑c/Kv��x1pT#B�)%xŐR�9���N�3����� �	23�?�"�,t�դ�ģL�ͤ!N����;�,����E��y�z�^z	�rt�M� r�\�8j��V_G?1n�ž�V�������f�ߪ���
G�x�ak������3I��ET>��w��i?��)1^+e�F�-�U-�+��& d��Q��Q�lJc�}r*���Oˍes��#�+��]�����By�ю�dd��������|w���v
xN��:.Kcɉ?U��-3��OD��=틼���{���B�h��1|��}Ƀ]��?!����L�.��z�H	�s؂���(7Qs��E�Zk�P�"w;�$����uS5���ɒ��������a���~�����V��)�����?_����d5MS8U�b�Z���&����Z������'������0��=U���Vq)���_w����Fz�=l���zĉ�pb�Z������<�?=�nw���3��j�� ���$
ܭe���<��}Zm$��eKݜ�Q` �
@��5Q�ޅ<���/2���Z,1*����sW4��a6ʎ
{�9�Îj\+���<g��Tt��a6@�IN���J�Vc��<��y7<�߮�`ChX����*[z��k���6yt8�y�T�kn� ��H1��(�7d���=o��Xr.h�߉Â�,�eBS88�����(�eBl�Wtn3�3J`Y�J��ȏd��f5�������Z��]�2�q@}���f3��2�s.��,�k8�(0�_�x��_�{�M"�)�5���u���2�񀑻����M�S"�晉E����"�ɅL��b6�{PW��k���DOe�Յ�f��C��4�`�̿�t�nIUF [m��=�.�̲M��(\�ɒ�� ��	%I�&�T�    ��������ti�穞�K� o�iQ%p=ޙ(7h�r�[e��3�8��c�|L�O9>��=�`̱��FI۩��Q�s=p3v	.}�?ɝ���L����v� W�'�q�����7�(�3̯k ��b@�-���K�P[q�^sW`>�P��Uȴ�%y>�P�@5qv��v �P�8���BYL��߽�{�Հ()�w_�R�]��@�C7��C�y�ì�3��Ta5dh+�'yv?<����]������_٤���t�g�d���8�R�J/DC���S�-��Ϡփ����� ��;�z�:�����@���,3wv{�&�J�LMv�͟�7���vx8�{�lX�ٗ����Nr]���o ��Q��|����l��Wl�a�:O@8�n�7ᵻM�L��������8�ul�Eޗ��K��Yk|l~��^�T?s7T��W��N��0��湈�%�MP[�o��2<Ԧ�i���xi35xOs��'��4���p���,�m��2XL��{�$��4��°�R�c�T)�TÖ�N�bF9\�����}zh�4�8��w��}zh[?����<�O�e���Rs�ۧW�)�����|���?�=ι����g
�ud^��Ҙ/򩫴���l��x�ԐN�ٙ�t�*:�.P�������y��xo����&}�2�����l5j����g�ߠ�������>(��/qQa�9���؍�Crc��S�|��Y8~|ڬž,9x�-����<!��ɔ=�V���Ŕ%�5�C�K�/nG	�^ڦ��l�3�t?!!J��wIU�/����a���
�%92x2�!�`���a���+6Q4���D'-".h�4����b��m�{A!`Uy�����yNؾ�U��bfgT�M��ޯ�qEtg�w}�����n�8�(��@�*^L�M�JJE��mj�b� ����|Ew�����G �J��L�y�";t�F3�j@�bL';dQ�dU���}�g�E�]�*��A�T�mR�H�����s�E�VI����?�&b��[�S�t�!u��I]�8�ϟi4�z�� ��Uқ������L)A�◦'����D���:�%��b� $��5zH������������(=�c�/��<�k�+��%�wQ���9������4�������?[���qט��3���2��⌽|�<��ˀk�R�D�p��J�ȕ�R�91����Ω�,	N\^w�w	o)��L��[Lv>ҙ2H�P䧙��*�:VB����6v��,�H`���"!���)Gj�<{��lZj���Kx'x����w��� �q�����y<�Vt�b'π �k�HAx�AǄ�,�y��\�+�K��徐쥠g~zR��±S��.���>P�����q ��(��W��c^ ')2�D��ƫ,E�}Θ�`>�Z+)0�7������X�zs&�&�Km�O�X��P� ��p<{�P��Nf#���|�9�jSCwX��i	@"�9'��������>�?G��4A��k�� ����JHG��!�\ZYC�ʨ�:� �)N�alg�d3[��N!]��� g`;Q_����(W$*1����WC6�=Vd#��B��(K�6�׃t��!Y� �p`��q��T!u,a�����w�	9��`���wc�^��Jbpx��[�ಹ�؁�551q/í$�H��,+���V�� v(�~d�.0ʫΙAFN�)��a	,�*8�u_͊`��g�Q���"ت�m?�+Ģ��7"cs�瓡���^���m��\3��G�� ��#mft'��/	l��0/�r�Z/���.p�O��<|�A�s��'$>g.\�Ò�J��p�'����E��E=Ml X��<</O-���%�6dQ�N�y�����0���hՃ�;̰�Ti�p�k��Z��Ԉ��urK��zL�{秷{>�Ǭ�#�w��G8�O���mG�h�z�BUcAl�Jm����
�ɼ�2���mxV� �a��i�ce`�(h���w�z%`5h�C7*�d���/�>�+���~��]�ϥAM٣N�;S'�j�z�<�0l�Q�jT6�I*�C�Ԧ��sw4-�L����>�����f��)��%��6׃a�s1)�Y�7w������u���I�JcL����H�8u�Y��4�E�����R��/#r�k���_�?��c�a��]��2��8���P��P@��.�g<^�Wƀ�X���|���c�|��0�ۣ�0�V��`[�{�jN��Z�[J���n����L���$q�Ji���n�Შeӹ56�r��+T�d	j�#^��zD��a��L��!�;=�-�C���9�D�!T�-M1�El�;��m��$��)�c�J�si�=�t_A�*�z�6��u���]��J���&��h5z����$�8��3���0B�(��Gh�����B��!Q&�%��Ȁ��,��j��� l�+���E�P�r�T=J��������vҰ9�g�k���p�cZ���B6��`�#`��iMV�!�81Tc�3 R��lfq$>�_@��z���d�87�+2��O�C+ae(3{�].�����>�5�`�:���/���q)"s�� 7�p[3��#�"u�Y�[��Cֶe���"­�T��:���"�m��:|�4��]�����q�p3	/�E�����܄����	2�IP�SC��h�7s�`͙��L��i�Bk�{Ҝ�_��9��%x���c�&?�8������J[�k�	\��$��)5Mԇ�)�Fs����2}�R��b?bF�77���`SSQ�ǥь�"���#��at�6�6�ȅ�E�V?��c����� �C�Tr��H<�GX)5�2l�Q� �<�)H-�<���N�����}��mi����V�1u��8�{�!���^Sp}^6ġ�>���MB�*�K[��Y�ۈ�'*�s���i��%�E�,	(H���e8��w/a���sz���D���K!a��*�Uqy0�Ԧ��c�kI7�	PkǕ�DU����@���JZv��Y���D�^h�U,��Y;���ҝs1�8�����v.V�Bmth#�9k	P��r�4�^�5HP��P(��KE���P����ޖ��;t3��}�(,�3ӝFk~c�IP��	�"��n�QѺsX�,(@]nr�6� ���T�ͯ;��+b+�W��4��n1�6�ԉzB|��S��A���Y���g�L�(��4�����I�o7�w6a��:�3b��ĵ`��GQ�6��jD������)��O���M9?G��K����D/�{�<mX���`��Gw�h3�ajU�� t��a���p�dO밙�I.�<,��o�w���D���p3��n�d�$�ZbΙ��C�Rd��2��[�ˤkV�5�i"�M��)���"��J��;� BcH�4LS�Sp�BZTH�9!l��� ݄.���5��M��1��" n|>�����rv._OM�U�3DR�8'@cb-�~A����@�+�e��d���q_��*�ح�y�6e!njXup���a��SN�����N\��T�,<���u*�N'pc��nDv�rtW%I�M�ӕ���![�2��o��ҝ��q���:��,X�}��v`-�4;�2o�fa�.�������ݘ=��7`�g�Q}y�ac7�>��Y��P��·ž�����0e�������˼��/b#*j;������a���)L-�\j;L#Ĝ��0�s1�^��.MF��{�RI�t��%���U��?c;X#��SP	Xh�8쵇8E�ڂt�/X��/���8�b��c�Up�q��up��ҍ!�*8�Ć�.��q�,�i�B!3�V��c����y;bGr�1��Qe4�]��1��4���֜��RX�9�4��t� �¦H�LN��w_�&C��w��_�$��R:~� ��~�1s۩�;�$���$M�(W�t�Pk�V`_C�c*�Z�e��ͣP��Ï6%@�IL��p�/�Ѷ�Xʎʓ� 3���K���~=    �3��nFô5��1k��i܋o���תMF��b�<�C	�=D/E@Ȼs��5_���xM���`6/%���p�i�*�y?!�A���ѭ�l�k��+y�b�_����2u�r�M���������u���*���C��q��\P��ZD6�8ng��W#6),�6�O4����mOC�L�j�J�u�k�"�ƶ4{��`�5*�_ D�9
Mvl� ��+KD��AG1teY�Ĵ���Mbh6<B�~������X�⛟7?��5d~6ʭ��aCx�Y&?�m�`.���_�d=������c���͆��9�O�U[�j@��:�4��_v����ӗ�Ƕ��[�V����n�By�ߵ�gW�H�N���3mQ��gܩ�h��s�i<�5�Qv�l�
��6��ٺB�+�i�?���:�, �"�����
qO�\+�(t��'A��z~����'n��C{�������d�Ħ�;nUVw�(1M.�5�9fLk�l���Q�Z�F8�,u� �D�Ս1�lC�Y�d%�rwR�Ľ����������@4��r�@�u��8�hD��M���u�Q�YqO����Q����~��2���Jm��6�;yK�����^e޹W[	��֒߻��i &��w�w7�*��)�zi쏥sny��v=f���k�<���u�4�F����l�?���N�E��n�<>��,z���y��$Am�b2��:K�����Y�uzK�mqV6����%�M��d�}hu1I�ǫڸ�|�2�|k{ ��Ћ��e��7}�֒�1o?�F}��N?�����ص�k�`�n��[�+�$іw��(s�i�zq�w�=�e=����[q��A�m���nlG�I ڄ^�};�Ա1@bC&NUO�PP��a�)VF�i�Y)�x,z���#(���|,�SP�KP?3��.�nT��2�y����*JP��<x�K�M��:�s�cf����f��7xe�Ƣw���P���bT/Ae�/f��2����>�E�(B��Vu	2x�z>MZCI%Ypi8\ xgj:mE��AE�u��o��6c72=�S����2fؐЕ��4�{����nO�N��d�gv2=�s�Ԏ�n=hC�V��Z�5�zh�Q��t�O�S��0��A���( �|��MY��EGoG��l�f�����ofsA���&x>�[#Am�8#���uc8x
`�Hv�'�H���	��)+:���N=��^�Xs!���ju���z�Ɯ��ԭѮE���^�vN���u��?���K~ϋ yjȦTJ.�v�+,ܷ�8�S1�]�B�x�pd�2��p��������e��;M͍�?�&n�&��&DnSդ��Ee�<��װ�R�?[@kV�Q����X&̳��~KX�v�#r&)t|x�����Ve�(E*�]�����]t�^�_�_M��o��?c}F���}�<7���U0�"�FI[c(cc'V<Ox}|:�ow�7w�;䝖4��$����6�3�D��'�-���瘾����2Q]��;�r��R�Z���Q��D'F�3�0��'�\�bh�zhl��'-�Ç�F�ƕ\,�Bh�R���v5dc�"z��Fr�![-C� [�c�@�����N��8^�����΅Ր��2�f��	���Ր���Β����L�!�Go�;ȼ�����[س� �����+��Ă��ʌ�{�1�	lC�t+Ɇ;K�\nCK�n�.�l�4����	<GE ��P���^��u��	����4�g&E�v�:�����I:��Dvߞ{G���@�\0T�R��ya���0A%�]Q?H�r������mM��d�gJi^McG	�ɖ.O��y猼����]X�Έt˫^���M���c9��+���a9��`X���E2����-����_�;��z���|��M��j�X�D�U��l^����2�V�%
�cg��V⣺����m8L��/l�_vx巓��R+T���2A��$����zдڮ�g�I`k�ɖ�v�F[�$�X�^w�`e��'���
��\�"�[ɲ5J2�/�.�"u�F�):� @m�2T�&��P��	�3L�t�uN�j
�b'Q�%�avՌ�y�]��A�{1������'³���m��d�=ǽ̒D�=d�$�ig�QB�#�������9�n�_X�1�y�� ��Yv�<ۭ6�`k�ހ� �?-��6��w�����2�#�D.�|��8�]�b�x��q�	�&���7Uփ�Cc����A�C�K(ՁFhs<�0ܝr�m�C�[�cr��8�eh�~�]�J��Έ�Im�Y�ء{=�o�sv�7�g	��S�^��M#����4�!9�uC^ Ү_��h2!��en5�6x�e�c��<n?>J�L)yVD@��/;�O:��q�#f4���Z�F�ޢЕ��X����`8tUY�<�"����o<��n�d~��9�a>{~�i���p��Kc���6'.�9�ۣy0�M\V�Fև��'���V9n��qއ�B�Q�'�����<I�v�~ni.K�D�Gmf�b ���<Sb��i��=�/r�F�ۨ0�k٥����
��ۥ��vMRԅ纐�#��	����~��wǦqОc�_U�^�т# í W�S���V�����$��:n��ADv��zn�n�|[�6%�#����al�8j����$���.��[���&�z����H ٌ�d�C�	.�����V�'�u�������i�g�U;k�|����]�rǱ]C_� �ޏ%I˒e��A1��E���A�5 ���ffuwUP3��5����|�<������ߡ��N8�/1�R,�R���ץ���^���E���>���O_� �4�1?�pI�-dg���ͮ�6C2f-�	v[��o�l&�D��Q�!��P���O���v��^&���/�(��JNoЖ(����ȥ����&z���j;f3{�x�:�i��v̪wdH�������!�7{��#���}@������y��ߎ�x�nc~f؎��p�:�(���o1�bv����7L�B�;�Ĭ��
ߡcz��%��Y�{���'n?~)*�1G.]��������l��I���U�Mc�Q��L��iߙ�F�P��N���=���B�F$���������`���%�V�0���*�����5GՅ���,= �[�Œxs���cg��<&d���	����<�f- ����d �rP# m̹��L��4[	��������U��Q����:���ZR�^A��{7�s��������f�0c�K<.� �m��}��Q�Z7a���/u�I[��U�`m7��Jd|n���Y�ST��/@� �)u�_|�}��Fv1�k��j�v׍�r�Z�{jXN��p,�Yh��������yU��vK�m��*�Y�xA�7��'�Rr����n*l�K?v0�1$Mz1Nc�@.�-%$����%�n��'���U1C���-��p{������q�D7����i��։`+�e_b'lP�G��"{�	A�2\vaVS��'%/a462�9)��j� )�h���p��c�������ײ��>���9-^��ݢ���Y�ԝ�Dr�$�Cr��d�q9K/!j�08K!���]�he�̉�z��l\��	A.���.s\ =}��VZ}E���ut������̐7��	�&n%WA}�lb���ne�k����h�{�+����t�o��ֶk&堑X�iR���)��c)4�������wv�.s$K��z+��D�{�!��V�B��4����_�{՝w�չS��(�e��	�y���U�x(\��,���97�0c�����N�D=o%��>\]G��pm{���<M��&%n�`E�,���B��69ו��d#�m�'!y�l�X�h�)�%�]���~|�rXcĮ�C�x�����|΄��6E�#5��Qkn3[)��    {��FAb�����"-0Z�i�$B�în �� ��_�o�M���:��,
apm+�u2صce�iM{ ��6J\�LYyW!� �m؄��@�{	Q����۽�n�5�r���p�'�+��N*������ͫ0(���)�Gܼ��o�B�G��Yn��Ć�`��^�%�f����m�l^�Fb���}�1o�@�0ݷ)�v�6q�EW�u�9	m���-*ϊ��,#�k���y�f�1�s��pc�+Nھ��2��oZ+Q5_ ܠ�
pl�I��B(���c�����_�~���B���f��v�p�'I�<���*��z�Xr$Bv�aw?=VB@�[�48��lh����#
��.1���-L������,�����;�B����OO��ñtd�9�pC$���Fp�7��o7�2W���v�f�2�r:7iǉ�v�%��ܥ����@d;(�ށߌ�,��z�ă���Ns$�Ơ�$��c�<s�B��������v�.����Q��p9�f|M����p�)�blfP ��znn59��wC�m��C�݌IJU�}jPL��������Y���x��"@�ʄ�����ҢGe� �,X,G�����V�������V%���X���[��H2���N�(~)�ݱ]��H�n��M"-f�2�e"��]�]ˢ*3ޅ@LKm�%�{p&����7�p�:_��~~n�lDz3���"�*��ɿ�kʅ�j���j�2¡����1�tQ����m�l�*Dw�~;&�U���!l3fi�Nt
�$j�˗P��cM��RH����Un;&�&�����oǬja�q�{� ��[eb�k�귿�5�s1C;MG"K��"v!mElf-�ruG�[�i�a���b�Ș�y������X������<�p�:�����ܼ?|��3�ǵ��M�����$�Mg� /�e��������S������q�Ϥ��PW?N_�w����uw����_n�sbP̩�+#kn;h�@�A^��~@!����А�h�s��<l�����l���V,2�]��R�H�x50�'�/�t�?���K�+�Д����c,�Y�rpr���b�E8�W��[���qH#�l����񵝵�&0$�����:j�vxl�:��b��O�ʒ ��7G�U��%j��շ6�e�?�`/kl;5�E.�I/�r��[��▕ڦ�L��e���-�R�:��[U��ϟM2َ�]L���\e͠�5~���Z-MRQBP:��O	Ҝ�f��m�c
 �R�Z�ϗ�,�N����b7�p�;w �e�M^Z6���s���<�W��b2X$7�3E,l��*�t�6	E&�l��r+�~A����������������FC㺔�J˱�I��|��ܺs��e�M�*�r�;
���LZDF����?<�p��o;�c6�BE�-_�@��͘Ui�k�h�S��%���37�P�z��te8�.9vs�u��8L�6�o��)�Σ��*<t�:d��g��,õ+��r�^#�m��)ǎQt���$�F1�L�Jd�w\��]qp���p��1�G�7dM ��2تA�n�i��A�[?�B�֡{�Q�[�1I�{n�d�2뚕
���Hc����a%��xp��ճ���f���.-�&mwl��uh�:e%����2�߈m<�~!�~�O������l휊��U��y f��K oTI �l ��a꥓Z�)^����E�׈�Vw��s)���$BeV�P�%5@�Ԧ��8#2�h%m���֌C���Qp������a+ѫUv��3#25O."k��ߎY?x$`����3l�V2�2����w{�A�h�����)À�S��<�CW}kC���o`�B�]=�M@�!�7��*�$x�U@*[�L���a������̡�ogU�������`땅},xɶ{\'ĭ݈R�x~.B�[q��9-��إ˒��#jj&T���0;~ؐ%�m��֤�z����-R3�4�� 	�6W.R�I@��ª1p� �)"�y�@� ��9���T��Y�*�$>uOjP!�lep�T�jUC٢Vͧ/HS��2H�}�Ϛ��Yk�Ic���P'F��6��*3�+�����+�䔭����Į՗� �Y��(�|�[y(�JYwO$>�h��0/룻����q�v�^����q��##�&�����dp4�7B��;}���=�pW�TM���p��:2�1�;VWo�Z��Y�~xx��LK{8���	��-B��Ĩe���������rn����yV�8~�T�7�p}�i7�,���.�*欽앒"3�
N. d-E�┊d�"��z�H�y��mz/�7���D\�>���̉���O�����ʵ�B�����C�����"���nq�\n�M��W��/���J	�E�Aw~�����򀖽�
����D�A�4��-���r9�`OL�W��i��4�cȽ ���ƛSo���j�D�
��I�������x�=ܐ�[1$p�������0�n۫&>XWAF��K�yf��IۈJeZ�`� g!pC����1]nu�_��p�0˵�2��X�hnѭ����͐M�鳷��#6�9���ýَ����ф�n�l��w��p.J�vѡX�Y��Au[�q�Z���~���<����J6@�Ϥ2Δl ��<i�k�0ݡ�К��U�����ő�K	�o%���5l��ּ4.�l��=�[S����D�{:�ЫW�"���d�B6�*Ε}��~3d���������2�P��ʄ�P�͈��	,Q���x�Ub\EȦ�U۬(|�34���9d�2d�����x |���_
^���)u�(�ȄW1e�LV��W��e��<��zd�����p���]R�.Z�\5��#����D)n� +q�\-�mn r�5<Xg�a��6��1k���Z��m	������fK�z��l���3vd$�0��y�;-��؆��.����dQ��n��Q�Z+x(�pe��`��a0G"s�E���m�vWVlt�d߭B:S�{n���:�q 2P���|:�]�V�L4^�P��x�����UO;|#��j_H9r������� �!�"+�)@����ϻߞ��Y�q��U�� ��$�(�f�$�cIvt?粒�Z��x0 .�ʗ� o��_�3�a�I�sC�Κ��H���͗�eJ��:�`��p�J��r��~�6d�M��I������gP�9d��(d!n�]�2���5@B�3�P!���!�ܖu ������SŔ���h���62
�|]�BB���pX�x�O��Y��<e#��h9Wu\��a�Zr���:K2V�󠻩!��B�f�]#���_��]�\��4������?=ݑ:��oߩ������3d)R��H���|͵P��FΈk�j��ۢ8�o�]
ܰH,i�w��o�]
ܰ�)���r�E����|�/5'	ɾ��X3V�D;(���G�Nl�Ԩ�y�r�ht��6��҂`�!���ᣨL�����9!ʾb<=��V5��*v���[���W5�+y�0��%�B� �F�J*���]��lluF�C����ae�
�����L�*Um��v%�Y)r�j 䈫�\�?&����
���+�.PF ���a�KڊY3����%�b���+�s� ���L��c�N�ܴ0�v̱��Wo����Nߦ���%���*����9O�)וc�Qχn�����>��ٮ7���^�,G�ǉO^�����P>5�܆��L��E����~�������� �v���C�E�Ҽ�V3��!�?Z7�����uv��o����-�뽿���ﳦ�J����X� o<ەi����"M�_�8d���zQ�]u�I����� }���L��+ۢ[�媄>�.�%�.����7� MoFc��h���.}6�!y1�͔�nFl����5\�'�Y����3���}�9�9��Y�[   �<�Ll��y�?P{��M5)r�L0��OV����<5����N�\?��P��M8��/����?��P�-b��3?���o�hT�<h!�������x�e�L�R��H�M2܆F�>��~�f�78}�Y����ܐa����n��[� ���#%d]<7֍���e�)Yqf����c�#��@��1�	�.A����F̹��/@���b�Y�%�F�{�(���uVV0Y�i����m�)��f��@������Х�U��k	�RUl�&��£��t��M�ԩ(k�C�.�����λ?߉^ji�k�׊B	a�T-C��v�4�_G1Z/B����#<iT�~���Lw7?Ow_�������1��y� ��s|{0x'n4�]�쀽x�S$�$-������g�rŞ�_w���޼����fN���J�WA��[1��B����d���i�$�F�c?f�AkO�D���**L'6�2-�����s�e��֕E�Al̈�N
:�E�~|I%f�wP ����)9ú�H����f� /�m�[���Z�E��pCI�/�2�Xv^�F��{�Q��[z����� ���^��������z�l�ۺ�\yN<�2��^TM��3��4���1�v�_�y��l?F���BC�dc8���H����qN$��}H�V�,�+�8�~��������__���?��p�Gؓ����4��9�%��#D@6���D��)�ƥ)ߕ��J`��q����F�ГU��d|��T�_���#i]�"'{���x��%���rZ�/J�]��	=��� �2i4-�p_$�v+Tv�;��5j}��r7?<>��[-���鼣��]�4�|o�[$^���uY@�L��q"�5o.R:ĥ��l�D),c�X�&j�����e��2"�ݐ��!������U\���7Z���/W�A�h��x�o�5�҈V�g����Sb���(�S�lS�A9�������q
�      <   �   x�����0��3�)Ԏ�\*��Jd$n���JMZ�T���|�cc�a	���ɀ��h���p���ځMOCZ�K�>�0�:tBj�i��q��?�>yϞ�����e�L㝺�s����ws�o�s��~�_k��1��x\]      >      x���Y�[��m��}9�"���ߎG*��9����I� 7�"�j����/���WJ��m�f��������|��WN����6_e?��W�=f���W��d����^��6�ey�%`ɽ~�.�,���#9d�y�zy$�����`�p�ϙ�\	��e�y�Vy$s�i��*�ͲH��Ӈ�E���L�V���G����&��*Y�ޖ�+:	ʂ�!���3:e��Ϩ�S?K�`K[�-+�_C�-dI g'���]���1�LJ�.�aKOTw)�WkϨ^�j�T�ܹ�w�L5B�2�l���ܦsA76�N���)��]6��}:G�?h�ܧ�oj�6���3p��P�Ȟ�c���ZU>��(�hSu.�zF;�h��M"����/ʈ]����㕟�%=[������?�~��hK���Aۿ����-���G�ot>��W�=��7��&�ij�5IN%^�b�����T)��s'�������{o	��3���<˶�:Q�{w��ʽ�r��u���d���e�zFU�8�/�gT���W$�7u}�֫�<��d���&���}��3��SM���QʽMR����x��1e�F�?�j{F��t�4!Z�R����,�҄�O�q��o5��sZ��Q��<���5=b����Q�5���������0�ş*G]S�i�y���S��4����Ħ��?��v��H�i��zF��� �٤|��?K��I7iR��+˹[�z�T8���6�OgY�U�����T�W��V�Q�7h��2��w�{���x,ܢɿn(ޥe�3��t&* Լ�^ѭf�A�|F3UȦ���,E�Ѯ|FF!��k�g��l�zJ����[OW��r0ꂦ�m���40�3z9X�cl��hk/�f����,N@5����+W���]M�e���"�hMEQU�K���YU��p˄�*}�rQ�Y"�rVm�&�3�f��ccˏ}P�2䈭?±%��P�m?B�
�~[�1�ۖ���6MS�e*:!���2=����^����C]%Qv���=ۯ�V�Y1�ܳ޳�R��2kl� �l��_����Uw�2A�U(�Y~���g�䝱�g���ГPU�����'��yuf0F�Uq���d�\�#m���6��)Q�0������I#vȍ<'wF�D?7�H�藝�����P({���o�_%X���õI�q�p�ǝWᦥkl�5~����5Zݣ���=S(�2��k�v�-���_�qs�SXѸ����s�{4������w"w�ڿ�-wъ���?�C~f���ǭw9���e��m��p?�z3~_���H���-�������߷<�,F4�QF~߸�YP{4�����\�w�,���}����S|���Kw��ʋ��x��V�)ýq�g��pl�m@}s@�1ݥ�ͣ�q�L��շ�usv���d�P�eL�[������8���0*�Z���L����j�tc��A�o[E-<��Fl�y��=a}l��������Ѫ�c���t�0��#���Lݴ�Gcӌ]�����Ώ��g��(�S$��JۧFl�����;��F�C��5#;�s>9��%�B��?ZN���<��~t�q�L	~���G�ve�î'�G9�m�ƭ?:�[��k�g��;[��?:��/J�����G�9�E�@���G��owT4���q�u���8揎s��n�{���p���?J�Q/��dp�h9�������?*θr!8��zE�pC4p��8��t
'��G�Yo��y��u��Qq�ە��~T�����ќ���S�(�G�:G~_����9�u�#U�:]����
2$jlSo�Vخްx��CL��8c��x�2��-~��#��-6^��^�}�p��x��alVo�&[�ƛ�e��j�?�d�y݅�N#�T��F�mc'����h�E?m��K�jr#opv+/`��jƹ�F^u�C��ʫ�ըV^�nu�ȫe6x�ȫ�6x�ʋOEݰ��4�ٖ��� i���O�=��,M���,���a���T��b��K��ȦU�Q��0���sV�#8ۅ�Zt���[u������?;��N>�Iwk�2��Q};�5��u/n��G�Y���kh��MV�LWK���l�t���5
Z��׵WV�n��W~F|�θ�#�?oɳd��r�5kW�Y���k5b^����e�Vn�L�xs-��,�Y|L�t&�Qr�Z��2��jt��/�pc5�V�"6V�kœ���j�VKY2Voٶ�ZN@����7��%��,.U7ceώ��������t�46��i���Є����R45��1��/��9K��i��Y� �MA���-Kt�:�{���Ǎe��]÷e':�h�Yq�S2�UV7���϶ Q�^����9`5U�y�1�����U��O~�?��ZMm~�̻�x�����<f�?�Eo���OH^�t|���� �3��:�+�f������#	1T��"7������,�,�>��G��J�Td�ʽ�/���׳�_�_�t�!�o�/!�<�6ǔ�Q��$ �z��3��v}|��~�D�r.gߨ)Щ=�%�3\E/�F��ty���"��Ie>�U3\r���X�|\��ɢ����#E
�I�1���I�F5�Q4���.�G�\��҂��Z���b�g4�fӵ��-8�EW5�-���E�xF�\�w�(Sr<&wТS)@-���gT��h��UCu�n��xD�n�MTy�@�Z2����V��ߤ����\2O�I��K���QL5�ӾQ�K��KT�R׋�KeE��ݔ �'%���':G�xF3-�:�Q�H�]��j��4��7m�4Tm���Z�耆�9h���O�A�?���f' �ր���I�ʤ��Yת�mZd��X��ѹR��E���Q5j�8��a�j=���j<�K�����X�翯�#G�g;��Mu�T5��Q��B��7ZU���+�h�d���E��j������Մ�&��@y����]����MC��Gt}���v_�g���sOf0�G|'*�繮�8߶�3)Z�M�RuYԥ�zή0 �f[�NM_TC]�
?�@7���3����S�5�h���Z�F~{�gR���0ӊh�xK���<f�&0�����r�YW$5G)���MN5�-Ei�G��$y��L6�dTĝռ�n����Wv���q5��\.bgY�5`���&.�I�T��bTh��!Qh�,Gc�b�p
Yu�k��U%�F�B�pK����eȳtEU����U�5sgeӎ]MG�4���D�E�;��)\��
�,�����PPrTh{�f�!f���)���_=@�j���l!�&\g��8�s��j�#�(����Y{_)J�CV�KF�syzf�J�V�K:�ұU_0�E��%b�l����m�����i�V��=��#�������)}�ǳ��D�z�~\�ڀT�Ȋoc��������`����_�IQ�f[�����tD��_X5ú���2H�5��4��5����L���-:���ӟٞDi/�i�4��~�� -����J���u�ߕ$*��_�Q�#O��X��qc�H��E�isƥ���-Ҧ���H"m�f���X]h!��fCB(���U�LRD�Fi��/�hp"�(���v�ot`H����D-�?��DD�ª�x��T{�/[��&Ag�Laj���ͪ,�M�h�erK�3�>L�n�#`;�RZ;T,-.��S�Ҥ����ts�nLל��,�gT�I�4��}czX8�2cP�VL+vP}w�+�"�3RW�z��9;U��T��]�x��z�;-4c7�4��;�c�3�uH&gu��#�����\<�E��Y�.�L;�Yu/e�g��bM�tV�}ݭ�RwK�Z};a6v!q����R����̸A�X�!;�l*�Q��8��Eo��g��qv����-@'5�.�EQ��q��ݬ�l��H�V�\_�r�=k�l���ᩞ+)��2�bϭ(U����D�Lו-�*a%[+:b��\���r�M�[Ml��ƟӢc�l^�8j��Ҧ��^���l^Sm�������sU5?-�����6<G����o�� S   UW�M�������D�U��W|���P��}�@�me��{�4�Yn�8�i7��l��Nu�(E�>��>���ր� �fC-@�X�V])�"po� ��qS�vV��G��ce�z�j�g���fh�Yu3���F��`𧭦����ֈ�'���+��=1bǝ0InŒ̌E�ۤE⬦�ݷ��U�`�(�L�.%�V#�e"�.�j@�cuVF،U���eΪǪ��a�P��1ew�f�H&z$�(���Yq��w���L���J�����B�/,��
(CU��L;��z�n��X�$=�l�gv"��P�uV�����,�3.cl�"���ic۳6^��2�BD�V�A�;n���Yu3�E����f�}��3���HAjl�v��dU@�Ec�/S�UA���瀅2,K�؎)d�g�ԅJ���UGb�B��I��_X�:��g�j��v�	����f��Ytѳ`&��y��0����T2XM��5���b֎���~~@��?����Y��]j����|�O�w���'�VxA��������R����Җ�/l�Y�w��
��g�nO�f�*���bﶱv�Ȏ�k����N�KJ�U��(X�dcQ�Z-��lV��v�	P��e<:[�^�;��������t:�4���Fd�9�oZ�T���G�-Jg��z	X}�z��bl�G����e�#�{�q�7P�I��TM�x��* ˰�bc5Q��%@���Z�j��9�L7v�sô�=��h�fl,�ARf}��h��Y��j�\��5�rɒ��m��bʦ���:�*�\�bֶ�Z咪�م	T���ŞM���mɼ,9`uϺyh�E��(���g��̀�=���Å�4�����y�~Ĥu�͜��-�����cկ�6UX�]��i���Yu�'ˋvV��+�V��t�vM���^�5sV��G;gꦱCEȲtLc��B?��Tk)��-��ɲL������Pχ�����E�s��b,B��j��Eȳ0p�l����Xy�e旱?�cf��� �K���B �Y������K�6�p4V]"���wy%��U^ש���W��jڙo��n,<"�N�N�۲�Xs�Чj,2��v�X�Dn��`\4]���_�b�:]�򩷋V9���t=`��륌Xj!L�/U��q�i�N��Yb�R%��c�V9TzdwR�m��mkqt�&�e7X>E#T�DJ� ��hk�ug;�J�f9�a��D���6{�ح´ڸy�������v��ɿ�ml��r�;l�ƭ?n����'�����xGqxʌ�������h\M���ê��m[��X���Y���?`�r�nZ��y��V�jbH��|������8f%тe~]	�h�2h�;�J�ں�.��̐l	�Ϊ��l0���n�l�x�[1�cP\�S�Y4^�1c+�=�e�j��v�P�[��sѰ���cs���+7��,.ڲ�c,;B1z_5��*�,[����m����6خ���Mk�ycu�Zv}�,v�Xݍ��k��8F�����3���M�D:��\�4p�\�1Vk-��O{�X[4[1c+V�N��.���i����0����ya,����]c��M�4i�ɤٞ�țB6�
����G��K>�V�fֈ����61�bq'c��-b5��t�����9���)ٚ�;����L��\�j^ύ�瀭��f��Dg���Z������4[�}�d��(t;6Z�����xې$�d,r��]_��`���%�M�(�=|_+�"*^�\Rc�Ȱ����m*ö]2c�ʰmj��Ce�4��ة2��"T�t-�W�}�qd�U�2i�X�XfVOު�/�Ғ��3Vciy{�)Y������b��Ҽ��!B�w�;Y�aE�dn�2u_��8��e꒕Oξ͈V6C[�Nl����a��0�:��zJ�N��%����9Y4��mf���Bt[�W�tc��uXf��S�p>�����P�X�ܷٛ`lQ!�Z��U�X2���M�>y������{�2�f�W-!�ɺcG�j�7�TvS����52�=��E0m�Jl,�iӂ"�V���֋�|��D���z�����/���럣�#v1��y:�j��M;	VA�d�t��tn6c���PHX~��4���{f=�Eէ5�sv0�=B���:a�Wc��󶲚�ϣNV�?�ݽ�RV��<��ꦕ��R�U�y�͠i4o�\0��g{�	Nvh�z3?�����M+�U���X�Z�!D[ROSq�٬u-̈́��E�y�2U��Lp��N��ͨ�����7c��G5E�NK���]*K�i��[=M��ړ��{�+c���ͧ�P���@�sӞ4c�]<<}��*�_M֍��[��v2blid���)����Q�K���#Q�Z��Y���[~�׻)N	؟�+�wl$g�$N{�3g���7����`��E�E�z[�ec����n�qa�԰u��4g5l�=�β��)qS�X][�\g�����}�S���ڋ����v!@�{����1'{U����c�����3V�C�;��w�#a|��T�V	@u`��l̀U�MOi�����AXG��Ѹ��:�ТE���ű]�}�vLQ|Y�(��>���$��Œ�K��F�0�'܍f,>a�c�f�7����.�ZUziE-�M��Q��[�!�cު�z�E���&�u2t�xٖn��h�R̛z�Gj8�p���v����U�U�X���V�鬊Fo��&�]j~f���n-ϝe3��a�~�ߚ�ٷ=`Ms�)�e�2zӘ�v�L�1����]�J����9kZ{F�n����ܴ�[9�R_7��g-���f8k�}����U�:��~����{��G��]����.O-7���Vo,je��j�f��D�j����8���N�N���aeDݜ�G��<�X��W�������7a�}9�٭6x�6z`�s�x���+�S绻uX���{������~p���0���Y|�렓����$�������:{�:���X���W�'K�38�iXjYX9=_�7E#�YXuxk)��~����imδ��Wbn��X�ez "(���؁����w���h\e,�Ye��rO�C�yH��[ZO��cY�� :��{k�V���Sm���'��Ş� YtO�Q�`S��w�!�l��ނ��+��IM��l<��h���f���q�Y�Ԅ��c3�U\�9Ht1C���ډ��u�),�T­�PmDq.D)��(na�X&�S��g����p�����1�H�O��	���`���@�z7`�����uF�}�yi3X��S���Z�|��e�bxN��v�c��
����T���[���w�i�+�}�>�ݪI�U#��V�G���%�p�'�l��������{���?�8G�      A   �   x�e�1� Eg|*���5i���f�����v ������s
����]y� 1�ࣟW"]�A<�4�>�����Q&�lB���e&�vW���J�o���(��C�����+�L-F�RCu���)Z�h��������]�����K��M2h���l����x ���`     