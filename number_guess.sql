--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0,
    player_id integer NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES ('Tai', 0, 0, 2);
INSERT INTO public.players VALUES ('user_1710423119974', 0, 0, 3);
INSERT INTO public.players VALUES ('user_1710423119973', 0, 0, 4);
INSERT INTO public.players VALUES ('user_1710506520055', 2, 0, 11);
INSERT INTO public.players VALUES ('user_1710506520056', 5, 0, 10);
INSERT INTO public.players VALUES ('user_1710513198611', 2, 0, 25);
INSERT INTO public.players VALUES ('user_1710513198612', 5, 0, 24);
INSERT INTO public.players VALUES ('user_1710506668927', 2, 0, 13);
INSERT INTO public.players VALUES ('user_1710506668928', 5, 0, 12);
INSERT INTO public.players VALUES ('user_1710506791850', 2, 0, 15);
INSERT INTO public.players VALUES ('user_1710506791851', 5, 0, 14);
INSERT INTO public.players VALUES ('user_1710502670132', 2, 81, 7);
INSERT INTO public.players VALUES ('user_1710507165815', 2, 0, 17);
INSERT INTO public.players VALUES ('user_1710507165816', 5, 0, 16);
INSERT INTO public.players VALUES ('user_1710502670133', 5, 31, 6);
INSERT INTO public.players VALUES ('user_1710509174992', 2, 0, 19);
INSERT INTO public.players VALUES ('user_1710506132887', 2, 19, 9);
INSERT INTO public.players VALUES ('user_1710509174993', 5, 0, 18);
INSERT INTO public.players VALUES ('user_1710506132888', 5, 187, 8);
INSERT INTO public.players VALUES ('user_1710509319031', 2, 0, 21);
INSERT INTO public.players VALUES ('user_1710509319032', 5, 0, 20);
INSERT INTO public.players VALUES ('user_1710512885834', 2, 0, 23);
INSERT INTO public.players VALUES ('user_1710512885835', 5, 0, 22);
INSERT INTO public.players VALUES ('user_1710586445530', 2, 0, 61);
INSERT INTO public.players VALUES ('user_1710582222981', 2, 0, 27);
INSERT INTO public.players VALUES ('user_1710582222983', 5, 0, 26);
INSERT INTO public.players VALUES ('user_1710585276712', 2, 0, 45);
INSERT INTO public.players VALUES ('user_1710586445531', 5, 0, 60);
INSERT INTO public.players VALUES ('user_1710585276713', 5, 0, 44);
INSERT INTO public.players VALUES ('user_1710582621959', 2, 0, 29);
INSERT INTO public.players VALUES ('user_1710582621960', 5, 0, 28);
INSERT INTO public.players VALUES ('user_1710588719411', 5, 316, 72);
INSERT INTO public.players VALUES ('user_1710582661721', 2, 0, 31);
INSERT INTO public.players VALUES ('user_1710585305680', 2, 0, 47);
INSERT INTO public.players VALUES ('user_1710582661722', 5, 0, 30);
INSERT INTO public.players VALUES ('user_1710586516038', 2, 0, 63);
INSERT INTO public.players VALUES ('user_1710585305681', 5, 0, 46);
INSERT INTO public.players VALUES ('user_1710582817359', 2, 0, 33);
INSERT INTO public.players VALUES ('user_1710589015572', 5, 308, 80);
INSERT INTO public.players VALUES ('user_1710582817360', 5, 0, 32);
INSERT INTO public.players VALUES ('user_1710586516039', 5, 0, 62);
INSERT INTO public.players VALUES ('user_1710585401849', 2, 0, 49);
INSERT INTO public.players VALUES ('user_1710583027094', 2, 0, 35);
INSERT INTO public.players VALUES ('user_1710589124894', 5, 310, 86);
INSERT INTO public.players VALUES ('user_1710583027095', 5, 0, 34);
INSERT INTO public.players VALUES ('user_1710585401850', 5, 0, 48);
INSERT INTO public.players VALUES ('user_1710583033378', 2, 0, 37);
INSERT INTO public.players VALUES ('user_1710583033379', 5, 0, 36);
INSERT INTO public.players VALUES ('user_1710586879470', 2, 0, 65);
INSERT INTO public.players VALUES ('user_1710585491925', 2, 0, 51);
INSERT INTO public.players VALUES ('user_1710589809011', 2, 560, 97);
INSERT INTO public.players VALUES ('user_1710583286321', 3, 0, 39);
INSERT INTO public.players VALUES ('user_1710588927101', 2, 273, 75);
INSERT INTO public.players VALUES ('user_1710585491926', 5, 0, 50);
INSERT INTO public.players VALUES ('user_1710583286322', 6, 0, 38);
INSERT INTO public.players VALUES ('user_1710586879471', 5, 0, 64);
INSERT INTO public.players VALUES ('user_1710583336920', 3, 1, 41);
INSERT INTO public.players VALUES ('user_1710583336921', 6, 1, 40);
INSERT INTO public.players VALUES ('user_1710585502918', 2, 0, 53);
INSERT INTO public.players VALUES ('user_1710589384988', 2, 199, 93);
INSERT INTO public.players VALUES ('user_1710583349332', 3, 1, 43);
INSERT INTO public.players VALUES ('user_1710585502919', 5, 0, 52);
INSERT INTO public.players VALUES ('user_1710588927102', 5, 119, 74);
INSERT INTO public.players VALUES ('user_1710583349333', 6, 1, 42);
INSERT INTO public.players VALUES ('user_1710586896394', 2, 0, 67);
INSERT INTO public.players VALUES ('user_1710586896395', 5, 0, 66);
INSERT INTO public.players VALUES ('user_1710585874451', 2, 0, 55);
INSERT INTO public.players VALUES ('user_1710585874452', 5, 0, 54);
INSERT INTO public.players VALUES ('user_1710589025030', 2, 142, 83);
INSERT INTO public.players VALUES ('user_1710587205074', 2, 0, 69);
INSERT INTO public.players VALUES ('user_1710589977360', 5, 22, 102);
INSERT INTO public.players VALUES ('user_1710586421684', 2, 0, 57);
INSERT INTO public.players VALUES ('user_1710588983702', 2, 523, 77);
INSERT INTO public.players VALUES ('user_1710587205075', 5, 0, 68);
INSERT INTO public.players VALUES ('user_1710586421685', 5, 0, 56);
INSERT INTO public.players VALUES ('user_1710589384989', 5, 408, 92);
INSERT INTO public.players VALUES ('user_1710589025031', 5, 127, 82);
INSERT INTO public.players VALUES ('user_1710586440392', 2, 0, 59);
INSERT INTO public.players VALUES ('user_1710586440393', 5, 0, 58);
INSERT INTO public.players VALUES ('user_1710587221782', 2, 0, 71);
INSERT INTO public.players VALUES ('user_1710588983703', 5, 122, 76);
INSERT INTO public.players VALUES ('user_1710589303839', 2, 433, 89);
INSERT INTO public.players VALUES ('user_1710587221783', 5, 0, 70);
INSERT INTO public.players VALUES ('user_1710589809012', 5, 135, 96);
INSERT INTO public.players VALUES ('user_1710588995435', 2, 391, 79);
INSERT INTO public.players VALUES ('user_1710589303840', 5, 660, 88);
INSERT INTO public.players VALUES ('user_1710588719410', 2, 3, 73);
INSERT INTO public.players VALUES ('user_1710589107522', 2, 224, 85);
INSERT INTO public.players VALUES ('user_1710589822417', 2, 105, 101);
INSERT INTO public.players VALUES ('user_1710588995436', 5, 124, 78);
INSERT INTO public.players VALUES ('user_1710590008598', 5, 462, 110);
INSERT INTO public.players VALUES ('user_1710589107523', 5, 164, 84);
INSERT INTO public.players VALUES ('user_1710589015571', 2, 74, 81);
INSERT INTO public.players VALUES ('user_1710589323081', 2, 300, 91);
INSERT INTO public.players VALUES ('user_1710589666791', 2, 188, 95);
INSERT INTO public.players VALUES ('user_1710589822418', 5, 347, 100);
INSERT INTO public.players VALUES ('user_1710589124893', 2, 582, 87);
INSERT INTO public.players VALUES ('user_1710589323082', 5, 570, 90);
INSERT INTO public.players VALUES ('user_1710589666792', 5, 80, 94);
INSERT INTO public.players VALUES ('user_1710589816339', 2, 26, 99);
INSERT INTO public.players VALUES ('user_1710589995250', 2, 698, 107);
INSERT INTO public.players VALUES ('user_1710589816340', 5, 188, 98);
INSERT INTO public.players VALUES ('user_1710589985594', 2, 718, 105);
INSERT INTO public.players VALUES ('user_1710590001337', 2, 236, 109);
INSERT INTO public.players VALUES ('user_1710590015624', 5, 107, 112);
INSERT INTO public.players VALUES ('user_1710589977359', 2, 759, 103);
INSERT INTO public.players VALUES ('user_1710589985595', 5, 151, 104);
INSERT INTO public.players VALUES ('user_1710589995251', 5, 317, 106);
INSERT INTO public.players VALUES ('user_1710590001338', 5, 183, 108);
INSERT INTO public.players VALUES ('user_1710590008597', 2, 99, 111);
INSERT INTO public.players VALUES ('user_1710590015623', 2, 284, 113);
INSERT INTO public.players VALUES ('user_1710590075301', 2, 269, 115);
INSERT INTO public.players VALUES ('user_1710590075302', 5, 414, 114);
INSERT INTO public.players VALUES ('user_1710590381564', 5, 17, 116);
INSERT INTO public.players VALUES ('user_1710590381563', 2, 286, 117);
INSERT INTO public.players VALUES ('user_1710590483319', 5, 92, 118);
INSERT INTO public.players VALUES ('user_1710590483318', 2, 469, 119);
INSERT INTO public.players VALUES ('user_1710590490135', 5, 100, 120);
INSERT INTO public.players VALUES ('user_1710590490134', 2, 296, 121);
INSERT INTO public.players VALUES ('user_1710590496307', 5, 103, 122);
INSERT INTO public.players VALUES ('user_1710590496306', 2, 229, 123);
INSERT INTO public.players VALUES ('user_1710590505081', 5, 259, 124);
INSERT INTO public.players VALUES ('user_1710590505080', 2, 223, 125);
INSERT INTO public.players VALUES ('user_1710590559300', 2, 629, 127);
INSERT INTO public.players VALUES ('user_1710590559301', 5, 218, 126);
INSERT INTO public.players VALUES ('user_1710590566209', 2, 392, 129);
INSERT INTO public.players VALUES ('user_1710590566210', 5, 146, 128);
INSERT INTO public.players VALUES ('Ty', 45, 8, 1);
INSERT INTO public.players VALUES ('user_1710591802051', 5, 276, 166);
INSERT INTO public.players VALUES ('user_1710590621991', 2, 49, 131);
INSERT INTO public.players VALUES ('user_1710591009300', 3, 529, 145);
INSERT INTO public.players VALUES ('user_1710591901310', 2, 644, 181);
INSERT INTO public.players VALUES ('user_1710590621992', 5, 281, 130);
INSERT INTO public.players VALUES ('user_1710591009301', 6, 30, 144);
INSERT INTO public.players VALUES ('user_1710591019373', 3, 726, 147);
INSERT INTO public.players VALUES ('user_1710590766508', 2, 66, 133);
INSERT INTO public.players VALUES ('user_1710591901311', 5, 119, 180);
INSERT INTO public.players VALUES ('user_1710590766509', 5, 222, 132);
INSERT INTO public.players VALUES ('user_1710591836264', 2, 164, 169);
INSERT INTO public.players VALUES ('user_1710591019374', 6, 63, 146);
INSERT INTO public.players VALUES ('user_1710591836265', 5, 397, 168);
INSERT INTO public.players VALUES ('user_1710590828654', 2, 119, 135);
INSERT INTO public.players VALUES ('user_1710591026093', 3, 21, 149);
INSERT INTO public.players VALUES ('user_1710590828655', 5, 14, 134);
INSERT INTO public.players VALUES ('user_1710591026094', 6, 427, 148);
INSERT INTO public.players VALUES ('user_1710590905900', 2, 92, 137);
INSERT INTO public.players VALUES ('user_1710591972389', 2, 292, 183);
INSERT INTO public.players VALUES ('user_1710590905901', 5, 95, 136);
INSERT INTO public.players VALUES ('user_1710591866238', 2, 168, 171);
INSERT INTO public.players VALUES ('user_1710591205889', 3, 591, 151);
INSERT INTO public.players VALUES ('user_1710591972390', 5, 237, 182);
INSERT INTO public.players VALUES ('user_1710590916668', 2, 337, 139);
INSERT INTO public.players VALUES ('user_1710591866239', 5, 132, 170);
INSERT INTO public.players VALUES ('user_1710590916669', 5, 53, 138);
INSERT INTO public.players VALUES ('user_1710591205890', 6, 65, 150);
INSERT INTO public.players VALUES ('user_1710590921493', 2, 54, 141);
INSERT INTO public.players VALUES ('user_1710591263090', 2, 283, 153);
INSERT INTO public.players VALUES ('user_1710590921494', 5, 268, 140);
INSERT INTO public.players VALUES ('user_1710591263091', 5, 93, 152);
INSERT INTO public.players VALUES ('user_1710591873091', 2, 441, 173);
INSERT INTO public.players VALUES ('user_1710590926092', 2, 682, 143);
INSERT INTO public.players VALUES ('user_1710592048847', 2, 290, 185);
INSERT INTO public.players VALUES ('user_1710590926094', 5, 56, 142);
INSERT INTO public.players VALUES ('user_1710591268486', 2, 760, 155);
INSERT INTO public.players VALUES ('user_1710591873092', 5, 25, 172);
INSERT INTO public.players VALUES ('user_1710591268487', 5, 148, 154);
INSERT INTO public.players VALUES ('user_1710592048848', 5, 224, 184);
INSERT INTO public.players VALUES ('user_1710591336040', 2, 265, 157);
INSERT INTO public.players VALUES ('user_1710591878330', 2, 739, 175);
INSERT INTO public.players VALUES ('user_1710591336041', 5, 324, 156);
INSERT INTO public.players VALUES ('user_1710591473452', 0, 0, 158);
INSERT INTO public.players VALUES ('user_1710591473451', 0, 0, 159);
INSERT INTO public.players VALUES ('user_1710591507109', 0, 0, 160);
INSERT INTO public.players VALUES ('user_1710591507108', 0, 0, 161);
INSERT INTO public.players VALUES ('user_1710591523091', 0, 0, 162);
INSERT INTO public.players VALUES ('user_1710591523090', 0, 0, 163);
INSERT INTO public.players VALUES ('user_1710591878331', 5, 20, 174);
INSERT INTO public.players VALUES ('user_1710591790155', 2, 196, 165);
INSERT INTO public.players VALUES ('user_1710591790156', 5, 471, 164);
INSERT INTO public.players VALUES ('user_1710591887233', 2, 296, 177);
INSERT INTO public.players VALUES ('user_1710591887234', 5, 39, 176);
INSERT INTO public.players VALUES ('user_1710591802050', 2, 161, 167);
INSERT INTO public.players VALUES ('user_1710591894813', 2, 170, 179);
INSERT INTO public.players VALUES ('user_1710591894814', 5, 113, 178);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 185, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- PostgreSQL database dump complete
--

