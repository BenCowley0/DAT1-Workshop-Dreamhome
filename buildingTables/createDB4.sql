.open referentialAction.sqlite
-- Switchin on referentia inegrity rules (foreign key rules)
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS track; --child depends on artist
DROP TABLE IF EXISTS artist;

-- create parent table first
CREATE TABLE artist(
    artistid    INTEGER PRIMARY KEY,
    artistname  TEXT    
);

INSERT INTO artist (artistname)
VALUES ('Dean Martin'),
       ('Frank Sinatra');

create table track(
    trackid     INTEGER,
    trackname   TEXT,
    trackartist INTEGER,
    FOREIGN KEY(trackartist) REFERENCES artist(artistid) ON DELETE CASCADE
);

INSERT INTO track (trackid,trackname,trackartist)
VALUES (11,'That''s Amore',1),
       (12,'Christmas Blues',1),
       (13,'My Way',2),
       (14,'Mr Bojangles',NULL);

-- UPDATE track SET trackartist = 3 WHERE trackname = 'Mr Bojangles';
INSERT INTO artist VALUES(3, 'Sammy Davis Jr.');
UPDATE track SET trackartist = 3 WHERE trackname = 'Mr. Bojangles';


INSERT INTO track VALUES(15, 'Boogie Woogie', 3);
-- DELETE FROM artist WHERE artistname = 'Frank Sinatra'