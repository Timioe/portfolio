
--------------------------------------------------------------------------------
-- KIT Karlsruhe
--------------------------------------------------------------------------------
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('kit_ka', 'KIT Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, BOOK_ID,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'kit_ka', 'Barcodes ', '01',
    'DE', 1990, 3,
    'Tooles Buch für PAs'
);


--------------------------------------------------------------------------------
-- DHBW KA
--------------------------------------------------------------------------------
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('dhbw_ka', 'DHBW Karlsruhe');

-- (1) TEST
INSERT INTO BUECHER(
    BIBLIOTHEK_ID, NAME, BOOK_ID,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'dhbw_ka', 'Barcodes ', '02',
    'DE', 1990, 3,
    'Tooles Buch für PAs in DHBW KA'
);
