INSERT INTO Utilizatori (NumeUtilizator, Email) 
VALUES ('Ion Popescu', 'ion.popescu@gmail.com'), 
       ('Maria Ionescu', 'maria.ionescu@yahoo.com'), 
       ('Andrei Vasilescu', 'andrei.vasilescu@gmail.com'),
       ('Elena Stanescu', 'elenastanescu@yahoo.com'),
       ('Radu Dumitru', 'radu.dumitru16@gmail.com'),
       ('Sorin Parcalab', 'sorinparcalab1@gmail.com'),
       ('Silviu Istrate', 'istratesilviu@gmail.com'),
       ('Ruxandra Dinca', 'ruxxdinca@yahoo.com'),
       ('Bogdan Dracea', 'draceab20@gmail.com'),
       ('Cristian Popescu', 'cristipopescu@gmail.com'),
       ('Ioana Luiza', 'ioanaluiza@yahoo.com'),
	   ('Alex Bogdan', 'bogdan.alex@gmail.com'),
       ('Anamaria Teodora', 'teo.anamaria@gmail.com'),
       ('Amalia Jurca', 'amaliajurca@gmail.com'),
       ('Malina Isac', 'malinaisac@gmail.com');
       
SELECT * FROM Utilizatori;     

INSERT INTO Recenzii (IDUtilizator, Nota, Comentariu)
VALUES (1, 4.5, 'Foarte multumit de produs'),
       (3, 3.0, 'Produsul a fost ok'),
       (10, 5.0, 'Recomand cu incredere'),
       (5, 2.5, 'Nu sunt multumit de calitate'),
       (15, 4.5, 'Livrare rapida'),
       (2, 2.0, 'Produsul a fost livrat deteriorat'),
       (13, 5.0, 'Raport calitate-pret excelent'),
       (8, 4.5, 'Foarte multumita'),
       (9, 4.0, 'Recomand'),
       (11, 3.5, 'Per total multumita');
       
DESCRIBE Recenzii;
SELECT * FROM Recenzii;
DELETE FROM Recenzii;

INSERT INTO Produse (NumeProdus, Descriere, Pret)
VALUES ('Telefon Samsung', 'Telefon mobil de ultima generatie', 2399.99),
       ('Laptop HP', 'Laptop performant pentru birou', 3000),
       ('Televizor LG', 'Televizor smart 4K', 2650),
       ('Aparat foto Canon', 'Aparat foto profesional', 1499.99),
       ('Masina de spalat Samsung', 'Masina de spalat cu functii multiple', 1000),
       ('Esspresor DeLonghi', 'Espressor automat cu functie de spumare a laptelui', 1299.90),
       ('Rochie de seara', 'Rochie eleganta cu imprimeu floral, potrivita pentru evenimente', 199),
       ('Ceas Fossil', 'Ceas de dama cu design modern', 800),
       ('Camera video Sony', 'Camera video compacta cu stabilizator de imagine', 2500),
       ('Set machiaj NYX', 'Set complet de machiaj pentru un look impecabil', 299.90),
       ('Ser iluminator', 'Ser cu efect de iluminare a pielii, imbogatit cu vitamina C', 79),
       ('Parfum Chanel Coco', 'Parfum floral pentru femei elegante', 400), 
       ('Robot de bucatarie Bosch', 'Robot de bucatarie multifunctional cu functii inteligente', 3500),
       ('Telefon mobil Iphone 12', 'Telefon elegant cu ecran OLED si camera duala', 5999),
       ('Placa de indreptat parul', 'Placa de par profesionala cu tehnologie de protectie termica', 740),
       ('Geanta de mana Michael Kors', 'Geanta eleganta din piele cu design deosebit', 1500),
       ('Laptop HP Pavillion', 'Laptop performant cu procesor Intel Core i7', 4500),
       ('Laptop MacBook Pro', 'Laptop premium cu ecran retina si tastatura iluminata', 4990);
       
SELECT * FROM Produse;      

INSERT INTO Comenzi (IDUtilizator, DataComanda, StatusComanda, TotalPlatit, TotaldePlatit, PromotieAplicata)
VALUES (1, '2022-03-10', 'Livrat', 2500, 2500, 'nu'),
       (2, '2022-03-12', 'Livrat', 2650, 2650, 'nu'),
       (2, '2022-12-15', 'Anulat', 0, 398, 'nu'),
       (3, '2022-03-18', 'Anulat', 400, 400, 'nu'),
       (4, '2022-07-20', 'Livrat', 4990, 4990, 'nu'),
       (5, '2022-04-15', 'Anulat', 0, 3139.99, 'nu'),
       (6, '2023-01-05', 'Livrat', 5399.10, 5399.1, 'da'),
       (7, '2023-05-10', 'Livrat', 479, 479, 'nu'),
       (8, '2023-06-01', 'Livrat', 1699, 1699, 'nu'),
       (9, '2023-10-10', 'Livrat', 3150, 3150, 'da'),
       (10, '2023-11-13', 'Expediat', 0, 1180, 'da'),
       (10, '2024-01-07', 'In asteptare', 0, 5799.90, 'nu'),
       (11, '2024-01-29', 'In asteptare', 0, 1499.99, 'nu'),
       (12, '2024-02-12', 'Expediat', 3000, 3000, 'nu'),
       (13, '2024-02-14', 'Expediat', 249.99, 249.99, 'da'),
       (14, '2024-02-24', 'In asteptare', 740, 740, 'nu'),
       (15, '2024-02-26', 'In asteptare', 800, 800, 'nu');
       
SELECT * FROM Comenzi;

INSERT INTO DetaliiComanda (IDComanda, IDProdus, Cantitate)
VALUES (35, 9, 1),
       (36, 3, 1),
       (37, 7, 2),
       (38, 12, 1),
       (39, 18, 1),
       (40, 1, 1),
       (40, 15, 1),
       (41, 14, 1),
       (42, 12, 1),
       (42, 11, 1),
       (43, 16, 1),
       (43, 7, 1),
       (44, 13, 1),
       (45, 12, 3),
       (46, 5, 1),
       (46, 6, 1),
       (46, 13, 1),
       (47, 4, 1), 
       (48, 2, 1),
       (49, 10, 1),
       (50, 15, 1),
       (51, 8, 1);

SELECT * FROM DetaliiComanda;

INSERT INTO CategoriiProduse (NumeCategorie)
VALUES ('Electronice'), ('Electrocasnice'), ('Foto&Video'), ('Fashion'), ('Beauty');

SELECT * FROM CategoriiProduse;

INSERT INTO CategoriiProduse_Mapping (IDProdus, IDCategorieProdus)
VALUES (1, 1),
       (2, 1),
       (3, 2),
       (4, 3),
       (5, 2),
       (6, 2),
       (7, 4),
       (8, 4),
       (9, 3),
       (10, 5),
       (11, 5),
       (12, 5),
       (13, 2),
       (14, 1),
       (15, 5),
       (16, 4),
       (17, 1),
       (18, 1);

INSERT INTO Adrese (IDUtilizator, Strada, Oras, Tara, CodPostal)
VALUES (1, 'Str. Victoriei', 'Bucuresti', 'Romania', 010101),
       (2, 'Bd. Unirii', 'Iasi', 'Romania', 700010),
       (3, 'Str. Republicii', 'Cluj-Napoca', 'Romania', 400001),
       (4, 'Bd. Decebal', 'Timisoara', 'Romania', 300050),
       (5, 'Str. Stefan cel Mare', 'Constanta', 'Romania', 900001),
       (6, 'Str. Episcop Ioan Suciu', 'Oradea', 'Romania', '410464'),
       (7, 'Bd. Decebal', 'Oradea', 'Romania', 417007),
       (8, 'Str. Mihai Viteazul', 'Cluj-Napoca', 'Romania', '400005'),
       (9, 'Str. Mihai Eminescu', 'Timisoara', 'Romania', 300014),
       (10, 'Str. Revolutiei', 'Cluj-Napoca', 'Romania', 400015),
       (11, 'Str. Ion C. Brătianu', 'Bucuresti', 'Romania', 010123),
       (12, 'Str. 1 Decembrie 1918', 'Alba-Iulia', 'Romania', 510098),
       (13, 'Str. Gheorghe Șincai', 'Sibiu', 'Romania', 550173),
       (14, 'Str. Mărășești', 'Iasi', 'Romania', 700035),
       (15, 'Str. Corneliu Coposu', 'Oradea', 'Romania', 465110);

SELECT * FROM Adrese; 

INSERT INTO Plati (IDUtilizator, IDComanda, MetodaPlata, SumaPlatita)
VALUES (1, 35, 'Card', 2500),
       (2, 36, 'Cash', 2650),
       (2, 37, 'Cash', 0),
       (3, 38, 'Transfer bancar', 400),
       (4, 39, 'Card', 4990),
       (5, 40, 'Cash', 0),
       (6, 41, 'Transfer bancar', 5399.1),
       (7, 42, 'Cash', 479),
       (8, 43, 'Card', 1699),
       (9, 44, 'Card', 3150),
       (10, 45, 'Cash', 0),
       (10, 46, 'Cash', 0),
       (11, 47, 'Transfer bancar', 0),
       (12, 48, 'Card', 3000),
       (13, 49, 'Card', 249.99),
       (14, 50, 'Transfer bancar', 740),
       (15, 51, 'Card', 800);
       
SELECT * FROM Plati;

INSERT INTO Promotii (CodPromotie, TipPromotie, Discount)
VALUES ('PRIMA10', 'Discount', 10),
       ('BLACKFRIDAY', 'Voucher', 20),
       ('VARA25', 'Discount', 25),
       ('REVELION2023', 'Voucher', 50),
       ('IULIE15', 'Discount', 15),
       ('FIDELITY', 'Discount', 10);

INSERT INTO Mesaje (IDUtilizator, TipMesaj, Continut, DataTrimiterii)
VALUES (1, 'Intrebare', 'Cat dureaza livrarea?', '2022-03-13 19:45:20'),
       (2, 'Reclamatie', 'Produsul a ajuns defect', '2022-03-17 12:33:10'),
       (5, 'Intrebare', 'Se accepta si plata in rate online?', '2022-02-27 20:24:10'),
       (10, 'Intrebare', 'Cand va reintra pe stoc laptopul de la HP?', '2023-04-21 16:41:22'),
       (14, 'Reclamatie', 'Nu sunt multumit de calitatea produsului', '2024-02-27 15:49:30');
       
SELECT * FROM Mesaje;

INSERT INTO Feedback (IDUtilizator, TipFeedback, Comentariu, DataFeedback)
VALUES (1, 'Pozitiv', 'Foarte multumit de produs si de procesul de livrare', '2022-03-19 12:10:10'),
       (2, 'Negativ', 'Produsul a ajuns deteriorat, iar procesul de retur consuma mult timp', '2022-03-22 18:20:18'),
       (8, 'Pozitiv', 'Recomand magazinul pentru promptitudine', '2023-06-07 13:35:21'),
       (10, 'Pozitiv', 'Recomand', '2023-11-21 11:44:20'),
       (11, 'Negativ', 'Am plasat comanda acum o luna si nu am primit-o inca, nu recomand', '2024-02-27 16:18:21');
       
SELECT * FROM Feedback;










