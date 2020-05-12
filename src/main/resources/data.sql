-- (1) Bibliotheken erstellen
INSERT INTO BIBLIOTHEK(ID, NAME) VALUES ('kit_ka', 'KIT Karlsruhe');
INSERT INTO BIBLIOTHEK (ID, NAME) VALUES ('dhbw_ka', 'DHBW Karlsruhe');
INSERT INTO BIBLIOTHEK (ID, NAME) VALUES ('hs_ka', 'Hochschule Karlsruhe');
-- (2) Bücher stellen
INSERT INTO BUCH(
    NAME,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'Barcodes ',
    'DE', 1990, 3,
    'Tolles Buch fuer PAs'
);

INSERT INTO BUCH(
    NAME,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'BPMN 2.0 ',
    'DE', 2017, 3,
    'Super Modellierungsnotation!'
);

INSERT INTO BUCH(
    NAME,
    SPRACHE, YEAR_FROM, BAENDER, DESCRIPTION
) VALUES(
    'JSON',
    'EN', 2020, 1,
    'Cooles Buch für PAs'
);
-- (3) Join-Table erstellen

Insert INTO  BUCH_BIBLIOTHEK (BUECHER_ID, BIBLIOTHEK_ID)
VALUES (1, 'dhbw_ka');

Insert INTO  BUCH_BIBLIOTHEK (BUECHER_ID, BIBLIOTHEK_ID)
VALUES (1, 'kit_ka');

Insert INTO  BUCH_BIBLIOTHEK (BUECHER_ID, BIBLIOTHEK_ID)
VALUES (2, 'dhbw_ka');

Insert INTO  BUCH_BIBLIOTHEK (BUECHER_ID, BIBLIOTHEK_ID)
VALUES (3, 'kit_ka');
