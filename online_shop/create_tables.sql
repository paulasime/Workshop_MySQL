CREATE DATABASE ProiectFinal;

CREATE TABLE Utilizatori (
    IDUtilizator INT PRIMARY KEY AUTO_INCREMENT,
    NumeUtilizator VARCHAR(30) NOT NULL,
    Email VARCHAR(30) NOT NULL
);

CREATE TABLE Recenzii (
    IDRecenzie INT PRIMARY KEY AUTO_INCREMENT,
    IDUtilizator INT,
    CONSTRAINT FK_Utilizatori FOREIGN KEY (IDUtilizator)
        REFERENCES Utilizatori (IDUtilizator),
    Nota FLOAT NOT NULL,
    Comentariu VARCHAR(100)
);

ALTER TABLE Recenzii MODIFY Comentariu TEXT;

CREATE TABLE Produse (
    IDProdus INT PRIMARY KEY AUTO_INCREMENT,
    NumeProdus VARCHAR(50) NOT NULL,
    Descriere TEXT,
    Pret FLOAT NOT NULL
);

CREATE TABLE Comenzi (
    IDComanda INT PRIMARY KEY AUTO_INCREMENT,
    IDUtilizator INT REFERENCES Utilizatori (IDUtilizator),
    DataComanda DATE NOT NULL,
    StatusComanda VARCHAR(15) NOT NULL,
    TotalPlatit FLOAT NOT NULL
);

ALTER TABLE Comenzi
MODIFY IDUtilizator INT,
ADD CONSTRAINT FK_Utilizatori_tabela FOREIGN KEY (IDUtilizator) 
	REFERENCES Utilizatori (IDUtilizator);

ALTER TABLE Comenzi ADD COLUMN TotaldePlatit FLOAT NOT NULL;
ALTER TABLE Comenzi ADD COLUMN PromotieAplicata VARCHAR(15);

CREATE TABLE DetaliiComanda (
    IDDetaliuComanda INT PRIMARY KEY AUTO_INCREMENT,
    IDComanda INT,
    CONSTRAINT FK_Comenzi FOREIGN KEY (IDComanda)
        REFERENCES Comenzi (IDComanda),
    IDProdus INT,
    CONSTRAINT FK_Produse FOREIGN KEY (IDProdus)
        REFERENCES Produse (IDProdus),
    Cantitate INT NOT NULL,
    PretUnitar FLOAT NOT NULL
);

ALTER TABLE DetaliiComanda DROP COLUMN PretUnitar;

CREATE TABLE CategoriiProduse (
    IDCategorieProdus INT PRIMARY KEY AUTO_INCREMENT,
    NumeCategorie VARCHAR(20)
);

CREATE TABLE CategoriiProduse_Mapping (
    IDCategorieProdusMapping INT PRIMARY KEY AUTO_INCREMENT,
    IDProdus INT,
    CONSTRAINT FK_Produse_mapping FOREIGN KEY (IDProdus)
        REFERENCES Produse (IDProdus),
    IDCategorieProdus INT,
    CONSTRAINT FK_Categorii_Produse FOREIGN KEY (IDCategorieProdus)
        REFERENCES CategoriiProduse (IDCategorieProdus)
);

CREATE TABLE Adrese (
    IDAdresa INT PRIMARY KEY AUTO_INCREMENT,
    IDUtilizator INT,
    CONSTRAINT FK_Utilizatori_adrese FOREIGN KEY (IDUtilizator)
        REFERENCES Utilizatori (IDUtilizator),
    Strada TEXT,
    Oras VARCHAR(30),
    Tara VARCHAR(20),
    CodPostal INT
);

CREATE TABLE Plati (
    IDPlata INT PRIMARY KEY AUTO_INCREMENT,
    IDUtilizator INT,
    CONSTRAINT FK_Utilizatori_plati FOREIGN KEY (IDUtilizator)
        REFERENCES Utilizatori (IDUtilizator),
    IDComanda INT,
    CONSTRAINT FK_Plati_comenzi FOREIGN KEY (IDComanda)
        REFERENCES Comenzi (IDComanda),
    MetodaPlata VARCHAR(15) NOT NULL,
    SumaPlatita FLOAT NOT NULL
);

CREATE TABLE Promotii (
    IDPromotie INT PRIMARY KEY AUTO_INCREMENT,
    CodPromotie TEXT NOT NULL,
    TipPromotie VARCHAR(20),
    Discount INT NOT NULL
); 

CREATE TABLE Mesaje (
    IDMesaj INT PRIMARY KEY AUTO_INCREMENT,
    IDUtilizator INT,
    CONSTRAINT FK_Utilizatori_mesaje FOREIGN KEY (IDUtilizator)
        REFERENCES Utilizatori (IDUtilizator),
    TipMesaj VARCHAR(20) NOT NULL,
    Continut TEXT,
    DataTrimiterii DATETIME NOT NULL
);

CREATE TABLE Feedback (
    IDFeedback INT PRIMARY KEY AUTO_INCREMENT,
    IDUtilizator INT,
    CONSTRAINT FK_Utilizatori_feedback FOREIGN KEY (IDUtilizator)
        REFERENCES Utilizatori (IDUtilizator),
    TipFeedback VARCHAR(20) NOT NULL,
    Comentariu TEXT,
    DataFeedback DATETIME NOT NULL
);




