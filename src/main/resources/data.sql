
--------------------------------------------------------------------------------
-- KIT Karlsruhe
--------------------------------------------------------------------------------
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('kit_ka', 'KIT Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'kit_ka', 'Barcodes ', 
    'DE', 1990, 3,
    'Tolles Buch für PAs'
);
-- (2) TEST2
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'kit_ka', 'JSON',
    'EN', 2020, 1,
    'Cooles Buch für PAs'
);


--------------------------------------------------------------------------------
-- DHBW KA
--------------------------------------------------------------------------------
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('dhbw_ka', 'DHBW Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'dhbw_ka', 'Barcodes ', 
    'DE', 1990, 3,
    'WOW'
);
-- (2) TEST2
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'dhbw_ka', 'MEDION', 
    'DE', 2008, 3,
    'WOW'
);

