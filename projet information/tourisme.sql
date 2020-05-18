CREATE TABLE `Categorie` (`ID` int(10) NOT NULL AUTO_INCREMENT, `Id_categorie` int(10) NOT NULL, `Catégorie_title` varchar(255), `Catégorie_icone` varchar(255), PRIMARY KEY (`ID`));
CREATE TABLE `Poste` (`ID` int(10) NOT NULL AUTO_INCREMENT, `CategorieID` int(10) NOT NULL, `ClientID2` int(10) NOT NULL, `ClientID` int(10) NOT NULL, `Id_poste` int(10) NOT NULL, `Poste_title` varchar(255), `Poste_image` varchar(255), `Poste_description` varchar(255), `Date_debut` date, `Date_fin` date, `Etat` int(10), PRIMARY KEY (`ID`));
CREATE TABLE `Client` (`ID` int(10) NOT NULL AUTO_INCREMENT, `Id_client` int(10) NOT NULL, `Client_title` varchar(255), `Client_image` varchar(255), `Client_adresse` varchar(255), `Client_CIN` varchar(255), `Client_age` varchar(255), PRIMARY KEY (`ID`));
CREATE TABLE `Demande` (`ID` int(10) NOT NULL AUTO_INCREMENT, `ClientID2` int(10) NOT NULL, `ClientID` int(10) NOT NULL, `Id_demande` int(10) NOT NULL, `Demande_title` varchar(255), `Demande_description` varchar(255), `Date_debut` date, `Date_fin` date, PRIMARY KEY (`ID`));
CREATE TABLE `Publicité nav_bar` (`ID` int(10) NOT NULL AUTO_INCREMENT, `Id_pub` int(10) NOT NULL, `Pub_image` varchar(255), `Pub_title` varchar(255), `Pub_description` varchar(255), PRIMARY KEY (`ID`));
CREATE TABLE `Publicité side_bar` (`ID` int(10) NOT NULL AUTO_INCREMENT, `Id_pub` int(10) NOT NULL, `Pub_image` varchar(255), `Pub_title` varchar(255), `Pub_description` varchar(255), PRIMARY KEY (`ID`));
ALTER TABLE `Poste` ADD CONSTRAINT `FKPoste488982` FOREIGN KEY (`ClientID`) REFERENCES `Client` (`ID`);
ALTER TABLE `Poste` ADD CONSTRAINT `FKPoste686297` FOREIGN KEY (`ClientID2`) REFERENCES `Client` (`ID`);
ALTER TABLE `Demande` ADD CONSTRAINT `FKDemande126305` FOREIGN KEY (`ClientID`) REFERENCES `Client` (`ID`);
ALTER TABLE `Demande` ADD CONSTRAINT `FKDemande928989` FOREIGN KEY (`ClientID2`) REFERENCES `Client` (`ID`);
ALTER TABLE `Poste` ADD CONSTRAINT `FKPoste642112` FOREIGN KEY (`CategorieID`) REFERENCES `Categorie` (`ID`);