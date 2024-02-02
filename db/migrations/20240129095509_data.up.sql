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
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES (5001, 'lachslasagne', 'Den Spinat 5 min vorgaren, auspressen bis er ganz trocken ist und würzen.\nDen Lachs etwas auftauen lassen, in kleine Stücke schneiden und mit Zitrone, Salz und Pfeffer würzen.\nFür die Bechamel-Soße wird die Butter im Topf erhitzt, das Mehl verrührt und mit der Milch aufgegossen. Die Brühe dazugeben und 5 min. kochen lassen. Danach die Sahne dazurühren und nochmals aufkochen lassen.\nSchließlich den Parmesan hinzufügen und mit Pfeffer und Muskat abschmecken. Jetzt alles abwechselnd in eine feuerfeste Form schichten, zuerst die Soße, dann Lasagneblätter, Soße, Spinat, Lachs, Käse, Lasagneblätter, usw. Letzte Schicht ist Soße.\nDie Lasagne anschließend bei 200 Grad 45 min. in den Backofen.');
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES (5002, 'Thaicurry mit Hähnchen', 'Die Hühnerbrust in Streifen schneiden und in einer Marinade aus Sojasauce, Pfeffer und Zucker ca. 1 Stunde marinieren.\nIm Wok oder in der Pfanne gut anbraten. Herausnehmen.\nGemischtes Gemüse und Bambussprossen waschen und sehr fein schneiden, ebenfalls anbraten, dann herausnehmen.\nDie Currypaste und die Kokosmilch im Wok verrühren und kurz (!) durchköcheln lassen. Dann Fleisch und Gemüse wieder zugeben und noch kurz köcheln lassen.\nMit Sojasauce abschmecken. In der Zwischenzeit den Reis kochen und abtropfen lassen.');
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES (5003, 'Kartoffelsuppe', 'Kartoffeln und Karotte schälen und in grobe Würfel schneiden.\nZwiebel würfeln. Lauch in Ringe schneiden.\nZwiebeln in etwas Olivenöl glasig dünsten, Lauch dazugeben. Mit der Gemüsebrühe ablöschen.\nDie gewürfelten Kartoffeln und Karotte in die Brühe geben. Alles für ca. 20 min köcheln lassen.\nAnschließend alles mit dem Pürierstab zu einer Suppe pürieren, mit Pfeffer und Muskat abschmecken.\nDie in Scheiben geschnittenen Würstchen in den Suppenteller geben und die heiße Kartoffelsuppe darüber gießen.');

--ZUTAT
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2000, 1500, 'Kartoffel', 0, 'Stück', 4, 0, 180, 40);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2000, 5003, 5);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2001, 1502, 'Karotte', 0, 'Stück', 0.5, 0, 25, 6);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2001, 5003, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2002, 1500, 'Lauch', 0, 'Stück', 1.5, 0, 40, 8);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2002, 5003, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2003, 1500, 'Zwiebel', 0, 'Stück', 1, 0, 40, 10);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2003, 5003, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2004, 1502, 'Gemüsebrühe (1000 ml)', 0, 'Stück', 1, 0, 20, 4);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2004, 5003, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2005, 1501, 'Wiener Würstchen', 0, 'Stück', 10, 35, 200, 2);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2005, 5003, 2);

--Rezept 2
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2006, 1501, 'Hänchenbrustfilet (500g)', 0, 'Stück', 130, 0, 180, 40);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2006, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2007, 1502, 'Reis (250g)', 0, 'Stück', 15, 1, 875, 185);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2007, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2008, 1500, 'Sojasauce (2 EL)', 0, 'Stück', 2, 0, 20, 4);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2008, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2009, 1502, 'Zucker (1 EL)', 0, 'Stück', 0, 0, 45, 12);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2009, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2010, 1501, 'Knoblauch', 0, 'Stück', 0, 0, 5, 1);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2010, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2011, 1501, 'Gemischte Gemüse (800g)', 0, 'Stück', 8, 1, 240, 48);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2011, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2012, 1502, 'Bambussprossen (200g)', 0, 'Stück', 2, 0, 40, 8);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2012, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2013, 1501, 'Kokosmilch (125ml)', 0, 'Stück', 3, 33, 330, 4);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2013, 5002, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2014, 1500, 'Currypasta, grüne (1 EL)', 0, 'Stück', 0, 1, 20, 2);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2014, 5002, 1);


--Rezept 3
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2015, 1500, 'Lasagneplatten (300g)', 0, 'Stück', 30, 3, 900, 180);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2015, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2016, 1500, 'Spinat (800g)', 0, 'Stück', 20, 20, 160, 20);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2016, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2017, 1501, 'Lachs (500g)', 0, 'Stück', 100, 70, 1100, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2017, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2018, 1501, 'Käse (150g, gerieben)', 0, 'Stück', 40, 48, 600, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2018, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2019, 1502, 'Butter', 0, 'Stück', 0, 49, 360, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2019, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2020, 1502, 'Mehl (2 EL)', 0, 'Stück', 2, 0, 60, 12);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2020, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2021, 1500, 'Brühe (125ml)', 0, 'Stück', 0, 0, 5, 1);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2021, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2022, 1501, 'Sahne (200)', 0, 'Stück', 4, 68, 650, 6);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2022, 5001, 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES (2023, 1502, 'Parmesan (75g, gerieben)', 0, 'Stück', 24, 20, 300, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES (2023, 5001, 1);


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

--Allergene
INSERT INTO allergene (id, bezeichnung) VALUES (6000, 'Gluten');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6000, 5001);
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6000, 5002);

INSERT INTO allergene (id, bezeichnung) VALUES (6001, 'Laktose');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6001, 5001);

INSERT INTO allergene (id, bezeichnung) VALUES (6002, 'Stärke');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6002, 5003);

INSERT INTO allergene (id, bezeichnung) VALUES (6003, 'Karotte');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6003, 5003);

INSERT INTO allergene (id, bezeichnung) VALUES (6004, 'Ei');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6004, 5003);

INSERT INTO allergene (id, bezeichnung) VALUES (6005, 'Tomate');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6005, 5003);

INSERT INTO allergene (id, bezeichnung) VALUES (6005, 'Tomate');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES (6006, 5003);

--Ernährungskategorie
INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES (4000, 'Vegan');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4000, 8001);
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4000, 8002);

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES (4001, 'Vegetarisch');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4001, 8001);

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES (4002, 'Frutarisch');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4002, 8003);

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES (4003, 'Low Carb');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4003, 8003);

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES (4004, 'High Protein');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4004, 8003);

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES (4005, 'Flexitarier');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4005, 8003);

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES (4006, 'Carnivore');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES (4006, 8003);

