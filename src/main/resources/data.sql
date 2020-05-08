INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('kit_ka', 'KIT Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, 
    NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'kit_ka', 'Barcodes ', 
    'Barcodes ', 
    'DE', 1990, 3,
    'Tolles Buch für PAs'
);
-- (2) TEST2
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME,
  NAME,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'kit_ka', 'JSON',
    'JSON',
    'EN', 2020, 1,
    'Cooles Buch für PAs'
);
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('dhbw_ka', 'DHBW Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, 
    NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'dhbw_ka', 'Barcodes ', 
    'Barcodes ', 
    'DE', 1990, 3,
    'WOW'
);
-- (2) TEST2
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, 
   NAME, 
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'dhbw_ka', 'MEDION', 
    'MEDION', 
    'DE', 2008, 3,
    'WOW'
);