
--KUNDEN DATEN
INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('488252e9-b886-434c-b587-8a0a3fbdbd92', 'Eppendorfer Landstrasse 104', 'Hamburg', '20249');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('e163a19b-30ad-4654-81b1-7111e6ed0c44', '488252e9-b886-434c-b587-8a0a3fbdbd92', 'Wellensteyn', 'Kira', 'k.wellensteyn@yahoo.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('488d32d0-7afb-4b2f-ae18-2e821cec45c4', 'Ohmstraße 23', 'Hamburg', '22765');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('7f217632-6c13-4bc0-b111-d62b1ff70e01', '488d32d0-7afb-4b2f-ae18-2e821cec45c4', 'Foede', 'Dorothea', 'd.foede@web.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('bfc91729-e3ba-4ef5-af19-181d1277a838', 'Bilser Berg 6', 'Hamburg', '20459');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('d7f2f06c-735e-4d62-81b1-38972f9c9322', 'bfc91729-e3ba-4ef5-af19-181d1277a838', 'Leberer', 'Sigrid', 'sigrid@leberer.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('67120c17-a912-4b23-8a08-5378ae66f8fe', 'Alter Teichweg 95', 'Hamburg', '22049');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('3f79aef2-c444-4b25-8bcb-6e09139dc3b4', '67120c17-a912-4b23-8a08-5378ae66f8fe', 'Soerensen', 'Hanna', 'h.soerensen@yahoo.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('3b791e07-acae-4d09-8fb5-c7351514f4a3', 'Stübels 10', 'Barsbüttel', '22835');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('e957d5f8-d5c7-478a-9ada-e0ecbd88ffd3', '3b791e07-acae-4d09-8fb5-c7351514f4a3', 'Schnitter', 'Marten', 'schni_mart@gmail.com');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('d2f8e393-75f4-473c-be16-84347d55bb80', 'Grotelertwiete 4a', 'Hamburg', '21075');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('8d487b0b-e48a-4c23-a0fe-31b2feea4545', 'd2f8e393-75f4-473c-be16-84347d55bb80', 'Maurer', 'Belinda', 'belinda1978@yahoo.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('38d97381-7762-46f2-ac8e-57782fb117e3', 'Küstersweg 3', 'Hamburg', '21079');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('8b5563a8-7b2b-466a-be1d-817c00afaa9f', '38d97381-7762-46f2-ac8e-57782fb117e3', 'Gessert', 'Armin', 'armin@gessert.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('5bebe87c-658d-470b-861d-3c605b3ceb69', 'Neugrabener Bahnhofstraße 30', 'Hamburg', '21149');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('a98e7299-5eb2-4350-97c5-64b1758cbfce', '5bebe87c-658d-470b-861d-3c605b3ceb69', 'Haessig', 'Jean-Marc', 'jm@haessig.de');

INSERT INTO Adresse (id, strasse, stadt, plz) VALUES ('6d26da46-e0af-44b3-afb8-3699b1fcc0e7', 'Elbchaussee 228', 'Hamburg', '22605');
INSERT INTO Kunde (id, adresseId, name, vorname, mail) VALUES ('fd6a87f9-f01e-467e-b8d4-d9a76ec5f1a8', '6d26da46-e0af-44b3-afb8-3699b1fcc0e7', 'Urocki', 'Eric', 'urocki@outlook.de');

--LIEFERANT 1
INSERT INTO Adresse (ID, STRASSE, STADT, PLZ) VALUES ('8b50b707-6eb6-4507-a4e3-85afa5472aa0', 'Dorfstraße 74', 'Weseby', '24354');
INSERT INTO Lieferant (ID, ADRESSEID, NAME, MAIL) VALUES ('cf30fc5d-c9aa-4e64-af95-3cfe06981981', '8b50b707-6eb6-4507-a4e3-85afa5472aa0', 'Bio-Hof Müller', 'mueller@biohof.de');
--LIEFERANT 2
INSERT INTO Adresse (ID, STRASSE, STADT, PLZ) VALUES ('53fd130d-434c-464e-b28d-af8472b4fbb9', 'Westerjork 74', 'Jork', '21635');
INSERT INTO Lieferant (ID, ADRESSEID, NAME, MAIL) VALUES ('228f10fe-7dc4-4462-b925-629fef010289', '53fd130d-434c-464e-b28d-af8472b4fbb9', 'Obst-Hof Altes Land', 'info@biohof-altesland.de');
--LIEFERANT 3
INSERT INTO Adresse (ID, STRASSE, STADT, PLZ) VALUES ('adeda4df-e032-4471-bf0b-5e694cdaff3a', 'Molkereiwegkundekunde 13', 'Dechow', '19217');
INSERT INTO Lieferant (ID, ADRESSEID, NAME, MAIL) VALUES ('9f10b887-af31-4cc9-b988-46ce8384a21c', 'adeda4df-e032-4471-bf0b-5e694cdaff3a', 'Molkerei Henning', 'info@molkerei-henning.de');

--REZEPTE

--REZEPT 1 - Kartoffelsuppe 
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES ('cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 'Kartoffelsuppe', 'Kartoffeln und Karotte schälen und in grobe Würfel schneiden.\nZwiebel würfeln. Lauch in Ringe schneiden.\nZwiebeln in etwas Olivenöl glasig dünsten, Lauch dazugeben. Mit der Gemüsebrühe ablöschen.\nDie gewürfelten Kartoffeln und Karotte in die Brühe geben. Alles für ca. 20 min köcheln lassen.\nAnschließend alles mit dem Pürierstab zu einer Suppe pürieren, mit Pfeffer und Muskat abschmecken.\nDie in Scheiben geschnittenen Würstchen in den Suppenteller geben und die heiße Kartoffelsuppe darüber gießen.');

INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('57286525-b395-4145-a78b-b442d303fc74', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Kartoffel', 0, 'Stück', 4, 0, 180, 40);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('57286525-b395-4145-a78b-b442d303fc74', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 5);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('17d42e69-598a-4978-8428-ef505b9e4c00', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Karotte', 0, 'Stück', 0.5, 0, 25, 6);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('17d42e69-598a-4978-8428-ef505b9e4c00', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('e99aed01-cedd-4b57-a92d-9de54ff2e99e', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Lauch', 0, 'Stück', 1.5, 0, 40, 8);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('e99aed01-cedd-4b57-a92d-9de54ff2e99e', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('ae19eec6-2f60-4e30-a85d-856426394270', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Zwiebel', 0, 'Stück', 1, 0, 40, 10);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('ae19eec6-2f60-4e30-a85d-856426394270', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('ae1f170d-2149-4b1b-aa7d-738b3b3f1b02', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Gemüsebrühe (1000 ml)', 0, 'Stück', 1, 0, 20, 4);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('ae1f170d-2149-4b1b-aa7d-738b3b3f1b02', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('7626369f-d5e2-480f-9713-e4da53dcb61f', '228f10fe-7dc4-4462-b925-629fef010289', 'Wiener Würstchen', 0, 'Stück', 10, 35, 200, 2);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('7626369f-d5e2-480f-9713-e4da53dcb61f', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 2);


--Rezept 2 - Thaicurry mit Hähnchen
INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES ('77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 'Thaicurry mit Hähnchen', 'Die Hühnerbrust in Streifen schneiden und in einer Marinade aus Sojasauce, Pfeffer und Zucker ca. 1 Stunde marinieren.\nIm Wok oder in der Pfanne gut anbraten. Herausnehmen.\nGemischtes Gemüse und Bambussprossen waschen und sehr fein schneiden, ebenfalls anbraten, dann herausnehmen.\nDie Currypaste und die Kokosmilch im Wok verrühren und kurz (!) durchköcheln lassen. Dann Fleisch und Gemüse wieder zugeben und noch kurz köcheln lassen.\nMit Sojasauce abschmecken. In der Zwischenzeit den Reis kochen und abtropfen lassen.');

INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('66e9ff2d-2a7b-4e83-a7d3-e6403d088275', '228f10fe-7dc4-4462-b925-629fef010289', 'Hänchenbrustfilet (500g)', 0, 'Stück', 130, 0, 180, 40);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('66e9ff2d-2a7b-4e83-a7d3-e6403d088275', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('d04f8340-b204-4fb8-9200-8c39eb022852', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Reis (250g)', 0, 'Stück', 15, 1, 875, 185);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('d04f8340-b204-4fb8-9200-8c39eb022852', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('5f94e24f-9c0a-4cc4-9f2f-264d6bc68dd4', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Sojasauce (2 EL)', 0, 'Stück', 2, 0, 20, 4);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('5f94e24f-9c0a-4cc4-9f2f-264d6bc68dd4', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('9a6eed26-0f0c-4625-8113-76c706e357f2', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Zucker (1 EL)', 0, 'Stück', 0, 0, 45, 12);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('9a6eed26-0f0c-4625-8113-76c706e357f2', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('3590ef5e-a887-4e4a-9b7a-e03a0ad894a3', '228f10fe-7dc4-4462-b925-629fef010289', 'Knoblauch', 0, 'Stück', 0, 0, 5, 1);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('3590ef5e-a887-4e4a-9b7a-e03a0ad894a3', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('f7172529-9678-437d-af30-862c29a66518', '228f10fe-7dc4-4462-b925-629fef010289', 'Gemischte Gemüse (800g)', 0, 'Stück', 8, 1, 240, 48);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('f7172529-9678-437d-af30-862c29a66518', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('81224b33-6078-4927-9e3c-87f792fdb460', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Bambussprossen (200g)', 0, 'Stück', 2, 0, 40, 8);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('81224b33-6078-4927-9e3c-87f792fdb460', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('281b1db5-8e53-4ae9-b551-e2b01e6cde41', '228f10fe-7dc4-4462-b925-629fef010289', 'Kokosmilch (125ml)', 0, 'Stück', 3, 33, 330, 4);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('281b1db5-8e53-4ae9-b551-e2b01e6cde41', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('bfda3474-3e15-4fdd-a69d-4bdc3b08db10', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Currypasta, grüne (1 EL)', 0, 'Stück', 0, 1, 20, 2);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('bfda3474-3e15-4fdd-a69d-4bdc3b08db10', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 1);

INSERT INTO Rezept(ID, bezeichnung, beschreibung) VALUES ('4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 'lachslasagne', 'Den Spinat 5 min vorgaren, auspressen bis er ganz trocken ist und würzen.\nDen Lachs etwas auftauen lassen, in kleine Stücke schneiden und mit Zitrone, Salz und Pfeffer würzen.\nFür die Bechamel-Soße wird die Butter im Topf erhitzt, das Mehl verrührt und mit der Milch aufgegossen. Die Brühe dazugeben und 5 min. kochen lassen. Danach die Sahne dazurühren und nochmals aufkochen lassen.\nSchließlich den Parmesan hinzufügen und mit Pfeffer und Muskat abschmecken. Jetzt alles abwechselnd in eine feuerfeste Form schichten, zuerst die Soße, dann Lasagneblätter, Soße, Spinat, Lachs, Käse, Lasagneblätter, usw. Letzte Schicht ist Soße.\nDie Lasagne anschließend bei 200 Grad 45 min. in den Backofen.');
--Rezept 3 - Lachslasagne
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('d523da65-48b4-4bae-b855-2272ba647029', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Lasagneplatten (300g)', 0, 'Stück', 30, 3, 900, 180);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('d523da65-48b4-4bae-b855-2272ba647029', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('bce00caa-b774-4b88-81b9-6c3dca30f257', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Spinat (800g)', 0, 'Stück', 20, 20, 160, 20);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('bce00caa-b774-4b88-81b9-6c3dca30f257', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('6e726761-0019-4843-bd51-1c4865ea8f33', '228f10fe-7dc4-4462-b925-629fef010289', 'Lachs (500g)', 0, 'Stück', 100, 70, 1100, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('6e726761-0019-4843-bd51-1c4865ea8f33', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('49558cce-1f29-41c5-8a02-90857677936e', '228f10fe-7dc4-4462-b925-629fef010289', 'Käse (150g, gerieben)', 0, 'Stück', 40, 48, 600, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('49558cce-1f29-41c5-8a02-90857677936e', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('7b2a9275-1d64-4d52-8260-fb0cee461d24', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Butter', 0, 'Stück', 0, 49, 360, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('7b2a9275-1d64-4d52-8260-fb0cee461d24', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('0f395c33-8ee1-4830-b8f5-577eda83f844', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Mehl (2 EL)', 0, 'Stück', 2, 0, 60, 12);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('0f395c33-8ee1-4830-b8f5-577eda83f844', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('4b6a4c65-e3a5-41d1-9b9b-a81d9b8c8462', 'cf30fc5d-c9aa-4e64-af95-3cfe06981981', 'Brühe (125ml)', 0, 'Stück', 0, 0, 5, 1);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('4b6a4c65-e3a5-41d1-9b9b-a81d9b8c8462', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('a05455c0-a494-4ee0-9313-46c1afa073d3', '228f10fe-7dc4-4462-b925-629fef010289', 'Sahne (200)', 0, 'Stück', 4, 68, 650, 6);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('a05455c0-a494-4ee0-9313-46c1afa073d3', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('b2204459-bdd8-46b0-9342-577c02f09c0c', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Parmesan (75g, gerieben)', 0, 'Stück', 24, 20, 300, 0);
INSERT INTO zutatenInRezept(zutatId, rezeptId, menge) VALUES ('b2204459-bdd8-46b0-9342-577c02f09c0c', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 1);

--Zutaten die in keiner Bestellung sind
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('b6e6c20c-1a33-4d48-a8a8-5789d3c65551', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Mika Saft', 5, 'Stück', 1000, 2, 1, 1000);
INSERT INTO Zutat(ID, lieferantID, bezeichnung, preis, einheit, protein, fett, kalorien, kohlenhydrate) VALUES ('ca861329-2e78-46ae-8f23-a6443a26fdc6', '9f10b887-af31-4cc9-b988-46ce8384a21c', 'Conner Schenkel', 10, 'Stück', 10000, 5, 2, 20000);

--BESTELLUNGEN
INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('7ecb68d0-5e42-4e82-8421-7ef4b723365d', '7f217632-6c13-4bc0-b111-d62b1ff70e01','2020-07-08');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('cbe4313e-258f-4f96-b323-b8c7a1bf30f0', '7ecb68d0-5e42-4e82-8421-7ef4b723365d', 1);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('89f14737-fa94-41ea-8916-f38f75e72d50', 'd7f2f06c-735e-4d62-81b1-38972f9c9322','2020-08-01');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', '89f14737-fa94-41ea-8916-f38f75e72d50', 3);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('8da3bd35-bcc6-4d33-9c83-ea7fdf670c5e', '3f79aef2-c444-4b25-8bcb-6e09139dc3b4','2020-08-02');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', '8da3bd35-bcc6-4d33-9c83-ea7fdf670c5e', 5);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('8684b821-7958-4929-a69f-fd8ad6312250', 'e957d5f8-d5c7-478a-9ada-e0ecbd88ffd3','2020-08-02');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('cbe4313e-258f-4f96-b323-b8c7a1bf30f0', '8684b821-7958-4929-a69f-fd8ad6312250', 2);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('bcd9072d-3a59-492e-90d7-14fcb918d4cd', '8d487b0b-e48a-4c23-a0fe-31b2feea4545','2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 'bcd9072d-3a59-492e-90d7-14fcb918d4cd', 20);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('70ecc353-5ed1-4efa-95f7-5a6cde7e9807', '8b5563a8-7b2b-466a-be1d-817c00afaa9f','2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', '70ecc353-5ed1-4efa-95f7-5a6cde7e9807', 100);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('644afd40-604c-4029-9fe2-16d9ab8ba7ba', 'a98e7299-5eb2-4350-97c5-64b1758cbfce','2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('cbe4313e-258f-4f96-b323-b8c7a1bf30f0', '644afd40-604c-4029-9fe2-16d9ab8ba7ba', 1);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('ef2492b7-5f40-4aa3-b8a3-cecdac2c532e', 'fd6a87f9-f01e-467e-b8d4-d9a76ec5f1a8','2020-08-10');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('4ea9f377-ac19-4adf-a5c6-3ece79db8c9b', 'ef2492b7-5f40-4aa3-b8a3-cecdac2c532e', 2);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('e0f712a2-b456-45b4-ba40-f39ad8e26e74', '8b5563a8-7b2b-466a-be1d-817c00afaa9f','2020-08-15');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 'e0f712a2-b456-45b4-ba40-f39ad8e26e74', 1);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('dca3dd6d-ca09-46b1-941c-62529b8f368e', 'e957d5f8-d5c7-478a-9ada-e0ecbd88ffd3','2020-08-12');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('77c6dcd9-01a3-4252-b150-2b8e7c7de3f7', 'dca3dd6d-ca09-46b1-941c-62529b8f368e', 3);

INSERT INTO Bestellung (ID, kundeId, bestellungDatum) VALUES ('f0c8e863-5afa-4a29-b5f5-5b55ce2e1922', 'd7f2f06c-735e-4d62-81b1-38972f9c9322','2020-08-13');
INSERT INTO RezepteInBestellung(rezeptId, bestellungId, menge) VALUES ('cbe4313e-258f-4f96-b323-b8c7a1bf30f0', 'f0c8e863-5afa-4a29-b5f5-5b55ce2e1922', 5);

--Allergene
INSERT INTO allergene (id, bezeichnung) VALUES ('e4adc2c0-ff3a-494b-9909-59b1d12acc74', 'Gluten');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('e4adc2c0-ff3a-494b-9909-59b1d12acc74', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('e4adc2c0-ff3a-494b-9909-59b1d12acc74', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7');

INSERT INTO allergene (id, bezeichnung) VALUES ('6d669f5c-a279-4515-9c06-4efcd31c1941', 'Laktose');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('6d669f5c-a279-4515-9c06-4efcd31c1941', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0');

INSERT INTO allergene (id, bezeichnung) VALUES ('ec563fe0-4e71-4aaf-9233-21c03d4fe1fd', 'Stärke');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('ec563fe0-4e71-4aaf-9233-21c03d4fe1fd', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO allergene (id, bezeichnung) VALUES ('2af08b2d-4e43-4cee-b40a-966b9410314d', 'Karotte');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('2af08b2d-4e43-4cee-b40a-966b9410314d', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO allergene (id, bezeichnung) VALUES ('66f7fa26-ed51-4711-bd78-1774d49da17b', 'Ei');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('66f7fa26-ed51-4711-bd78-1774d49da17b', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO allergene (id, bezeichnung) VALUES ('d9ec687f-90b4-4f99-a45c-aa0d8ba755d4', 'Tomate');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('d9ec687f-90b4-4f99-a45c-aa0d8ba755d4', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO allergene (id, bezeichnung) VALUES ('e3b871e3-ca16-4fe4-b71e-33dfca754b38', 'Tomate');
INSERT INTO allergeneToRezept (allergeneId, rezeptId) VALUES ('e3b871e3-ca16-4fe4-b71e-33dfca754b38', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

--Ernährungskategorie
INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES ('8bf6ce6c-bd47-4549-a45a-fc23e4a50603', 'Vegan');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('8bf6ce6c-bd47-4549-a45a-fc23e4a50603', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('8bf6ce6c-bd47-4549-a45a-fc23e4a50603', '77c6dcd9-01a3-4252-b150-2b8e7c7de3f7');

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES ('135908a8-5bc3-4769-9ed5-bbd3778356a1', 'Vegetarisch');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('135908a8-5bc3-4769-9ed5-bbd3778356a1', 'cbe4313e-258f-4f96-b323-b8c7a1bf30f0');

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES ('6a3ef753-4bb9-426d-907a-aea12b7986c9', 'Frutarisch');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('6a3ef753-4bb9-426d-907a-aea12b7986c9', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES ('2776cacf-9437-4e1d-86b0-d713894f405a', 'Low Carb');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('2776cacf-9437-4e1d-86b0-d713894f405a', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES ('8382a6a5-6c04-42d6-bb6a-e61a6179d5e5', 'High Protein');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('8382a6a5-6c04-42d6-bb6a-e61a6179d5e5', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES ('90b82638-ae54-4ab4-b7f5-bc1c0d9a0d47', 'Flexitarier');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('90b82638-ae54-4ab4-b7f5-bc1c0d9a0d47', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');

INSERT INTO ernaehrungskategorie (id, bezeichnung) VALUES ('6578fb9a-f5e6-4112-908e-2beb08326f0a', 'Carnivore');
INSERT INTO ernaehrungskategorieToRezept (ernaehrungskategorieId, rezeptId) VALUES ('6578fb9a-f5e6-4112-908e-2beb08326f0a', '4ea9f377-ac19-4adf-a5c6-3ece79db8c9b');