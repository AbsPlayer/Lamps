DROP DATABASE IF EXISTS Lamps;
CREATE DATABASE IF NOT EXISTS Lamps CHARACTER SET=cp1251;
USE Lamps;

DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories (CategoryID INT auto_increment NOT NULL,
                        CategoryName VARCHAR (50),
			            CategoryInfo VARCHAR (200),
                        Accomp INT,
                        PRIMARY KEY (CategoryID));
INSERT INTO Categories (CategoryID, CategoryName, CategoryInfo, Accomp) VALUES (1, "Люстры", "", 0);
INSERT INTO Categories (CategoryID, CategoryName, CategoryInfo, Accomp) VALUES (2, "Торшеры", "", 0);
INSERT INTO Categories (CategoryID, CategoryName, CategoryInfo, Accomp) VALUES (3, "Настенные светильники", "", 0);
INSERT INTO Categories (CategoryID, CategoryName, CategoryInfo, Accomp) VALUES (4, "DownLights", "", 0);
INSERT INTO Categories (CategoryID, CategoryName, CategoryInfo, Accomp) VALUES (5, "Подвесные светильники", "", 0);
INSERT INTO Categories (CategoryID, CategoryName, CategoryInfo, Accomp) VALUES (6, "Светорегуляторы", "", 1);

DROP TABLE IF EXISTS Brands;
CREATE TABLE Brands 	(BrandID INT auto_increment NOT NULL,
            BrandName VARCHAR (50),
			BrandInfo VARCHAR (200),
			PRIMARY KEY (BrandID));
INSERT INTO Brands (BrandID, BrandName, BrandInfo) VALUES (1, "XingFeng", "");
INSERT INTO Brands (BrandID, BrandName, BrandInfo) VALUES (2, "SunLush", "");
INSERT INTO Brands (BrandID, BrandName, BrandInfo) VALUES (3, "Phicans", "");
INSERT INTO Brands (BrandID, BrandName, BrandInfo) VALUES (4, "Vi-Ko", "");
INSERT INTO Brands (BrandID, BrandName, BrandInfo) VALUES (5, "Gau's", "");

DROP TABLE IF EXISTS Products;
CREATE TABLE Products	(ProductID INT  auto_increment NOT NULL,
            CategoryID INT,
			BrandID INT,
			ProductName VARCHAR (50),
			ProductPrice DEC(10,2),
			ProductInfo VARCHAR (255),
			ProductBigImage VARCHAR (200),
            ProductSmallImage VARCHAR (200),
			PRIMARY KEY (ProductID),
			INDEX (BrandID),
			FOREIGN KEY (BrandID) REFERENCES Brands (BrandID),
            FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID));


INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (5, 1, "XF32", 157.00, "Подвесной светильник, металлический, патрон Е27, диаметр плафона 320 мм, высота подвеса 1550 мм", "./images/big/XF32.jpg", "./images/small/XF32.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (5, 1, "XF35", 125.00, "Подвесной светильник, алюминиевый, патрон Е27, диаметр плафона 350 мм, высота подвеса 1560 мм", "./images/big/XF35.jpg", "./images/small/XF35.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (5, 1, "XF37A", 175.00, "Подвесной светильник, алюминиевый, патрон Е27, диаметр плафона 365 мм, высота подвеса 1610 мм", "./images/big/XF37A.jpg", "./images/small/XF37A.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (5, 1, "XF41", 624.00, "Подвесной светильник, алюминиевый, патрон Е27, диаметр плафона 410 мм, высота подвеса 1580 мм", "./images/big/XF41.jpg", "./images/small/XF41.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (5, 1, "XF44A", 220.00, "Подвесной светильник, алюминиевый, патрон Е27, диаметр плафона 450 мм, высота подвеса 1550 мм", "./images/big/XF44A.jpg", "./images/small/XF44A.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (5, 1, "XF45A", 149.00, "Подвесной светильник, алюминиевый, патрон Е27, диаметр плафона 450 мм, высота подвеса 1600 мм", "./images/big/XF45A.jpg", "./images/small/XF45A.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (5, 1, "XF47", 223.00, "Подвесной светильник, алюминиевый, патрон Е27, диаметр плафона 465 мм, высота подвеса 1550 мм", "./images/big/XF47.jpg", "./images/small/XF47.jpg");                      
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (4, 1, "XF8002", 178.00, "Светильник типа DownLight, для энергосберегающей лампы типа PL-C, патрон G24, диаметр 228 мм, высота 120 мм", "./images/big/XF8002.jpg", "./images/small/XF8002.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (4, 1, "XF8003E", 157.00, "Светильник типа DownLight, для энергосберегающей лампы типа PL-C, патрон G24, диаметр 230 мм, высота 130 мм", "./images/big/XF8003E.jpg", "./images/small/XF8003E.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (4, 1, "XF8021E", 245.00, "Светильник типа DownLight, для энергосберегающей лампы типа PL-C, патрон G24, размер 230х230 мм, высота 122 мм", "./images/big/XF8021E.jpg", "./images/small/XF8021E.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (4, 1, "XF8027B", 235.00, "Светильник типа DownLight, для металло-галогенной лампы 70-150 Вт, патрон RX7s, размер 250х250 мм, высота 130 мм", "./images/big/XF8027B.jpg", "./images/small/XF8027B.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (4, 1, "XF8032A", 233.00, "Светильник типа DownLight, для энергосберегающей лампы, патрон Е27, диаметр 350 мм, высота 125 мм", "./images/big/XF8032A.jpg", "./images/small/XF8032A.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 1, "XFWL25", 185.00, "Настенный светильник для галогенной лампы, патрон RX7s, размер 205х190х165 мм", "./images/big/XFWL25.jpg", "./images/small/XFWL25.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 1, "XF-WL7", 184.00, "Настенный светильник, металлический, патрон Е27, размер 240х300 мм", "./images/big/XF-WL7.jpg", "./images/small/XF-WL7.jpg");

INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "3AB011", 267.00, "Настенный светильник, под энергосберегающую лампу, патрон Е27, диаметр 105 мм, высота 280 мм", "./images/big/3ab011.jpg", "./images/small/3ab011.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "3AB012", 303.00, "Настенный светильник, под 2 энергосберегающие лампы, патрон Е27, диаметр 105 мм, высота 280 мм", "./images/big/3ab012.jpg", "./images/small/3ab012.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "2881", 169.00, "Настенный светильник, под галогенную лампу, патрон G27, размер 148х77 мм", "./images/big/2881.jpg", "./images/small/2881.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "2884", 211.00, "Настенный светильник, под галогенную лампу, патрон RX7s, размер 147х147 мм, высота 280 мм", "./images/big/2884.jpg", "./images/small/2884.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "2903", 199.00, "Настенный светильник, под галогенную лампу, патрон G9, диаметр 118 мм, высота 93 мм", "./images/big/2903.jpg", "./images/small/2903.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "2904", 209.00, "Настенный светильник, под галогенную лампу, патрон G9, диаметр 118 мм, высота 93 мм", "./images/big/2904.jpg", "./images/small/2904.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "51388", 330.00, "Настенный светильник цвета бронзы, под галогенную лампу, патрон G9, размер 120х120х160 мм", "./images/big/51388.jpg", "./images/small/51388.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "52500", 195.00, "Настенный светильник цвета античной бронзы, под галогенную лампу, патрон G9, размер 110х92х85 мм", "./images/big/52500.jpg", "./images/small/52500.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "52501", 195.00, "Настенный светильник, серебристый, под галогенную лампу, патрон G9, размер 110х92х85 мм", "./images/big/52501.jpg", "./images/small/52501.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "52502", 299.00, "Настенный светильник цвета античной бронзы, под галогенную лампу, патрон G9, размер 110х176х85 мм", "./images/big/52502.jpg", "./images/small/52502.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "52503", 299.00, "Настенный светильник, серебристый, под галогенную лампу, патрон G9, размер 110х176х85 мм", "./images/big/52503.jpg", "./images/small/52503.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "52941", 173.00, "Настенный светильник", "./images/big/52941.jpg", "./images/small/52941.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "90100", 43.00, "Планка рассеивания для светильника 52941", "./images/big90100.jpg", "./images/small/90100.jpg"); 
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "90102", 43.00, "Планка рассеивания для светильника 52941", "./images/big/90102.jpg", "./images/small/90102.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 2, "BG1901", 177.00, "Настенный светильник, под галогенную лампу, патрон G9, размер 195х88х85 мм", "./images/big/bg1901.jpg", "./images/small/bg1901.jpg");

INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (6, 4, "90552020", 75.00, "Светорегулятор Vi-Ko Yasemin белого цвета, до 600 Вт", "./images/big/90552020.jpg", "./images/small/90552020.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (6, 4, "90554020", 75.00, "Светорегулятор Vi-Ko Yasemin кремового цвета, до 600 Вт", "./images/big/90554020.jpg", "./images/small/90554020.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (6, 4, "90561020", 80.00, "Светорегулятор Vi-Ko Carmen белого цвета, до 600 Вт", "./images/big/90561020.jpg", "./images/small/90561020.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (6, 4, "90562020", 80.00, "Светорегулятор Vi-Ko Carmen кремового цвета, до 600 Вт", "./images/big/90562020.jpg", "./images/small/90562020.jpg");

INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306002/1W", 103.00, "", "./images/big/306002-1W.jpg", "./images/small/306002-1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306021/1W", 103.00, "", "./images/big/306021-1W.jpg", "./images/small/306021-1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306088/1W SJ", 177.00, "", "./images/big/306088_1W.jpg", "./images/small/306088_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306163/2W F GD", 520.00, "", "./images/big/306163_2W.jpg", "./images/small/306163_2W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306180/1W SN", 189.00, "", "./images/big/306180_1W.jpg", "./images/small/306180_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306183/1T SN", 278.00, "", "./images/big/306183_1T.jpg", "./images/small/306183_1T.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306196/1W", 140.00, "", "./images/big/306196_1W.jpg", "./images/small/306196_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306209/1W", 80.00, "", "./images/big/306209_1W.jpg", "./images/small/306209_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-GS-306218/1W SN", 91.00, "", "./images/big/306218_1W.jpg", "./images/small/306218_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-306256/5W CR", 820.00, "", "./images/big/306256-5W.jpg", "./images/small/306256-5W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706186/1W SN", 177.00, "", "./images/big/706186_1W.jpg", "./images/small/706186_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706208/1W SN", 177.00, "", "./images/big/706208_1W.jpg", "./images/small/706208_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706227/1W SN", 120.00, "", "./images/big/706227_1W.jpg", "./images/small/706227_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706228/1W SN", 160.00, "", "./images/big/706228_1W.jpg", "./images/small/706228_1W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706228/2W SN", 153.00, "", "./images/big/706228_2W.jpg", "./images/small/706228_2W.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706229/2W B SN", 190.00, "", "./images/big/706229_2W_B.jpg", "./images/small/706229_2W_B.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706229/6C SN", 599.00, "", "./images/big/706229_6C.jpg", "./images/small/706229_6C.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (3, 5, "GS-706237/2W SN", 151.00, "", "./images/big/706237_2W.jpg", "./images/small/706237_2W.jpg");

INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306002/3P", 230.00, "", "./images/big/306002-3P.jpg", "./images/small/306002-3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306008/1P", 243.00, "", "./images/big/306008_1P.jpg", "./images/small/306008_1P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306021/3P", 230.00, "", "./images/big/306021-3P.jpg", "./images/small/306021-3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306054/6C", 299.00, "", "./images/big/306054_6C.jpg", "./images/small/306054_6C.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306088/2C", 210.00, "", "./images/big/306088_2C.jpg", "./images/small/306088_2C.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306088/5P", 944.00, "", "./images/big/306088_5P.jpg", "./images/small/306088_5P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306117/5C SN", 265.00, "", "./images/big/306117_5C.jpg", "./images/small/306117_5C.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306130/3P SN", 260.00, "", "./images/big/306130_3P.jpg", "./images/small/306130_3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306133/5P GD", 1199.00, "", "./images/big/306133_5P.jpg", "./images/small/306133_5P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306163/3P F GD", 830.00, "", "./images/big/306163_3P.jpg", "./images/small/306163_3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306180/1P SN", 145.00, "", "./images/big/306180_1P.jpg", "./images/small/306180_1P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306180/3P SN", 230.00, "", "./images/big/306180_3P.jpg", "./images/small/306180_3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306180/5P SN", 355.00, "", "./images/big/306180_5P.jpg", "./images/small/306180_5P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306183/3P SN", 510.00, "", "./images/big/306183_3P.jpg", "./images/small/306183_3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306184/3P", 250.00, "", "./images/big/306184_3P.jpg", "./images/small/306184_3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306188/2P", 270.00, "", "./images/big/306188_2P.jpg", "./images/small/306188_2P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-GS-306196/5P", 725.00, "", "./images/big/306196_5P.jpg", "./images/small/306196_5P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306202/5P SN", 460.00, "", "./images/big/306202_5P.jpg", "./images/small/306202_5P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306209/3P", 399.00, "", "./images/big/306209_3P.jpg", "./images/small/306209_3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306218/3P SN", 257.00, "", "./images/big/306218_3P.jpg", "./images/small/306218_3P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306218/5P SN", 580.00, "", "./images/big/306218_5P.jpg", "./images/small/306218_5P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306253/6P CR", 820.00, "", "./images/big/306253_6P.jpg", "./images/small/306253_6P.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306256/5C CR", 820.00, "", "./images/big/306256_5C.jpg", "./images/small/306256_5C.jpg");
INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (1, 5, "GS-306260/6C SN", 299.00, "", "./images/big/306260_6C.jpg", "./images/small/306260_6C.jpg");

INSERT INTO Products (CategoryID, BrandID, ProductName, ProductPrice, ProductInfo, ProductBigImage, ProductSmallImage) VALUES (2, 5, "GS-306054/5F", 439.00, "", "./images/big/306054-5F.jpg", "./images/small/306054-5F.jpg");

DROP TABLE IF EXISTS Topsale;
CREATE TABLE Topsale    (TopsaleID INT  auto_increment NOT NULL,
            ProductName VARCHAR (50),
            PRIMARY KEY (TopsaleID),
            INDEX (ProductName),
            FOREIGN KEY (ProductName) REFERENCES Products (ProductName));
            
INSERT INTO Topsale (ProductID) VALUES (1);
INSERT INTO Topsale (ProductID) VALUES (2);
INSERT INTO Topsale (ProductID) VALUES (3);
