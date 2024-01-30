--KUNDEN DATEN
INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1001, 'Eppendorfer Landstrasse 104', 'Hamburg', '20249');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1001, 1001, 'Wellensteyn', 'Kira', 'k.wellensteyn@yahoo.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1002, 'Ohmstraße 23', 'Hamburg', '22765');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1002, 1002, 'Foede', 'Dorothea', 'd.foede@web.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1003, 'Bilser Berg 6', 'Hamburg', '20459');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1003, 1003, 'Leberer', 'Sigrid', 'sigrid@leberer.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1004, 'Alter Teichweg 95', 'Hamburg', '22049');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1004, 1004, 'Soerensen', 'Hanna', 'h.soerensen@yahoo.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1005, 'Stübels 10', 'Barsbüttel', '22835');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1005, 1005, 'Schnitter', 'Marten', 'schni_mart@gmail.com');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1006, 'Grotelertwiete 4a', 'Hamburg', '21075');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1006, 1006, 'Maurer', 'Belinda', 'belinda1978@yahoo.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1007, 'Küstersweg 3', 'Hamburg', '21079');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1007, 1007, 'Gessert', 'Armin', 'armin@gessert.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1008, 'Neugrabener Bahnhofstraße 30', 'Hamburg', '21149');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1008, 1008, 'Haessig', 'Jean-Marc', 'jm@haessig.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES (1009, 'Elbchaussee 228', 'Hamburg', '22605');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES (1009, 1009, 'Urocki', 'Eric', 'urocki@outlook.de');

--LIEFERANT
INSERT INTO Adresse (ID, STRASSE, STADT, PLZ) VALUES (1500, 'Dorfstraße 74', 'Weseby', '24354');
INSERT INTO Lieferant (ID, ADRESSEID, NAME, MAIL) VALUES (1500, 1500, 'Bio-Hof Müller', 'mueller@biohof.de');

INSERT INTO Adresse (ID, STRASSE, STADT, PLZ) VALUES (1501, 'Westerjork 74', 'Jork', '21635');
INSERT INTO Lieferant (ID, ADRESSEID, NAME, MAIL) VALUES (1501, 1501, 'Obst-Hof Altes Land', 'info@biohof-altesland.de');

INSERT INTO Adresse (ID, STRASSE, STADT, PLZ) VALUES (1502, 'Molkereiwegkundekunde 13', 'Dechow', '19217');
INSERT INTO Lieferant (ID, ADRESSEID, NAME, MAIL) VALUES (1502, 1502, 'Molkerei Henning', 'info@molkerei-henning.de');

--REZEPT
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES (5001, 'lachslasagne', 'Den Spinat 5 min vorgaren, auspressen bis er ganz trocken ist und würzen. Den Lachs etwas auftauen lassen, in kleine Stücke schneiden und mit Zitrone, Salz und Pfeffer würzen. Für die Bechamel-Soße wird die Butter im Topf erhitzt, das Mehl verrührt und mit der Milch aufgegossen. Die Brühe dazugeben und 5 min. kochen lassen. Danach die Sahne dazurühren und nochmals aufkochen lassen. Schließlich den Parmesan hinzufügen und mit Pfeffer und Muskat abschmecken. Jetzt alles abwechselnd in eine feuerfeste Form schichten, zuerst die Soße, dann Lasagneblätter, Soße, Spinat, Lachs, Käse, Lasagneblätter, usw. Letzte Schicht ist Soße. Die Lasagne anschließend bei 200 Grad 45 min. in den Backofen.');
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES (5002, 'Thaicurry mit Hähnchen', 'Die Hühnerbrust in Streifen schneiden und in einer Marinade aus Sojasauce, Pfeffer und Zucker ca. 1 Stunde marinieren. Im Wok oder in der Pfanne gut anbraten. Herausnehmen. Gemischtes Gemüse und Bambussprossen waschen und sehr fein schneiden, ebenfalls anbraten, dann herausnehmen. Die Currypaste und die Kokosmilch im Wok verrühren und kurz (!) durchköcheln lassen. Dann Fleisch und Gemüse wieder zugeben und noch kurz köcheln lassen. Mit Sojasauce abschmecken. In der Zwischenzeit den Reis kochen und abtropfen lassen.');
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES (5003, 'Kartoffelsuppe', 'Kartoffeln und Karotte schälen und in grobe Würfel schneiden. Zwiebel würfeln. Lauch in Ringe schneiden. Zwiebeln in etwas Olivenöl glasig dünsten, Lauch dazugeben. Mit der Gemüsebrühe ablöschen. Die gewürfelten Kartoffeln und Karotte in die Brühe geben. Alles für ca. 20 min köcheln lassen. Anschließend alles mit dem Pürierstab zu einer Suppe pürieren, mit Pfeffer und Muskat abschmecken. Die in Scheiben geschnittenen Würstchen in den Suppenteller geben und die heiße Kartoffelsuppe darüber gießen.');


--BESTELLUNGEN
INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1001, 1001,'2020-07-01');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5001, 1001, 50);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1002, 1002,'2020-07-08');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5001, 1002, 1);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1003, 1003,'2020-08-01');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5003, 1003, 3);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1004, 1004,'2020-08-02');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5002, 1004, 5);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1005, 1005,'2020-08-02');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5001, 1005, 2);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1006, 1006,'2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5003, 1006, 20);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1007, 1007,'2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5002, 1007, 100);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1008, 1008,'2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5001, 1008, 1);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1009, 1009,'2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5003, 1009, 2);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1010, 1007,'2020-08-15');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5002, 1010, 1);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1011, 1005,'2020-08-12');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5002, 1011, 3);


INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES (1012, 1003,'2020-08-13');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES (5001, 1012, 5);

