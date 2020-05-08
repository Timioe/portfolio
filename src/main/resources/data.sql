
--------------------------------------------------------------------------------
-- KIT Karlsruhe
--------------------------------------------------------------------------------
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('kit_ka', 'KIT Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'Barcodes ', 
    'DE', 1990, 3,
    'Tolles Buch für PAs'
);
-- (2) TEST2
INSERT INTO BUECHER(
  NAME,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'JSON',
    'EN', 2020, 1,
    'Cooles Buch für PAs'
);


--------------------------------------------------------------------------------
-- DHBW KA
--------------------------------------------------------------------------------
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('dhbw_ka', 'DHBW Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'Barcodes ', 
    'DE', 1990, 3,
    'WOW'
);
-- (2) TEST2
INSERT INTO BUECHER(
   NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'MEDION', 
    'DE', 2008, 3,
    'WOW'
);

