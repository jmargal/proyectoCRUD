/*Creamos las tablas*/
create table USER(
userName varchar(15),
password varchar(10),
CONSTRAINT pk_user primary key (userName)
);

create table PRODUCT (
	codProduct INT auto_increment,
	name VARCHAR(50),
	stock INT,
	price DECIMAL(6,2),
	disponibility VARCHAR(50),
	dateArrival DATE,
	CONSTRAINT pk_product primary key (codProduct)
);

/*Insertamos los datos*/
insert into USER VALUES("juanma","juanma");
insert into USER VALUES("fernando","fernando");
insert into USER VALUES("javi","javi");
select * from USER where userName="juanma" and password="juanma";
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (1, 'Syrup - Monin, Swiss Choclate', 39, 937.64, true, '2021-10-17');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (2, 'Kellogs All Bran Bars', 255, 75.08, true, '2022-07-26');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (3, 'Pastry - Banana Tea Loaf', 477, 186.75, false, '2022-09-01');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (4, 'Creme De Menthe Green', 324, 8.55, false, '2022-05-25');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (5, 'Towels - Paper / Kraft', 117, 973.59, false, '2022-08-07');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (6, 'Pepsi - 600ml', 293, 773.59, false, '2022-09-18');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (7, 'Bread - Crumbs, Bulk', 9, 416.8, true, '2021-10-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (8, 'Crab Meat Claw Pasteurise', 205, 865.9, true, '2021-10-10');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (9, 'Pail - 4l White, With Handle', 193, 189.34, false, '2021-11-04');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (10, 'Doilies - 12, Paper', 133, 966.56, true, '2022-02-23');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (11, 'Pork - Kidney', 89, 711.45, false, '2021-10-04');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (12, 'Peppercorns - Green', 147, 569.08, false, '2022-05-16');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (13, 'Clams - Bay', 397, 467.64, true, '2021-11-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (14, 'Wine - Red, Cooking', 446, 554.21, false, '2022-04-26');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (15, 'Truffle Cups - White Paper', 293, 675.03, true, '2022-03-28');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (16, 'Pork - Inside', 137, 325.91, false, '2022-06-05');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (17, 'Pork - Ham, Virginia', 421, 672.49, false, '2022-04-05');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (18, 'Cup Translucent 9 Oz', 150, 666.09, true, '2022-03-16');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (19, 'Bar Nature Valley', 56, 584.49, true, '2021-10-07');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (20, 'Ostrich - Fan Fillet', 284, 942.63, true, '2022-07-14');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (21, 'Alize Gold Passion', 133, 289.72, false, '2022-04-17');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (22, 'Tea - Herbal - 6 Asst', 291, 998.11, true, '2021-11-09');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (23, 'Wine - Fino Tio Pepe Gonzalez', 57, 376.21, false, '2022-05-31');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (24, 'Lamb - Ground', 176, 399.84, false, '2021-12-23');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (25, 'Wine - Two Oceans Sauvignon', 3, 649.04, true, '2022-07-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (26, 'Wine - Barolo Fontanafredda', 53, 542.72, true, '2022-07-02');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (27, 'Turnip - White', 468, 777.45, true, '2021-11-06');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (28, 'Dry Ice', 276, 229.92, true, '2022-03-29');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (29, 'Gelatine Powder', 421, 515.6, false, '2022-03-26');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (30, 'Nantucket - Kiwi Berry Cktl.', 305, 73.71, true, '2022-02-07');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (31, 'Eggplant - Regular', 333, 61.45, true, '2022-05-06');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (32, 'Tomatoes - Vine Ripe, Yellow', 479, 27.98, true, '2021-10-01');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (33, 'Mace Ground', 79, 315.36, false, '2022-07-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (34, 'Flour - Corn, Fine', 443, 926.64, false, '2022-02-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (35, 'Venison - Racks Frenched', 454, 845.84, false, '2022-03-05');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (36, 'Wine - Taylors Reserve', 235, 362.58, true, '2022-02-11');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (37, 'Juice - Mango', 477, 575.53, false, '2022-04-22');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (38, 'Apple - Macintosh', 296, 729.5, false, '2022-02-07');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (39, 'Dill Weed - Fresh', 41, 453.45, false, '2021-11-28');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (40, 'Nut - Pumpkin Seeds', 48, 371.99, true, '2021-12-18');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (41, 'Berry Brulee', 465, 407.44, false, '2021-10-30');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (42, 'Flax Seed', 127, 631.39, true, '2022-07-26');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (43, 'Pasta - Shells, Medium, Dry', 448, 108.74, true, '2022-09-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (44, 'Frangelico', 164, 927.2, false, '2022-02-16');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (45, 'Marjoram - Dried, Rubbed', 460, 500.16, false, '2022-01-23');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (46, 'Pear - Packum', 477, 7.15, false, '2022-01-16');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (47, 'Chicken - White Meat With Tender', 330, 791.64, true, '2021-11-27');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (48, 'Squid - U - 10 Thailand', 155, 738.06, true, '2022-07-10');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (49, 'Sour Puss Raspberry', 199, 809.4, false, '2021-12-01');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (50, 'Kohlrabi', 422, 408.04, false, '2022-07-08');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (51, 'Chips Potato Reg 43g', 313, 125.74, true, '2022-02-07');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (52, 'Sage - Fresh', 238, 524.69, true, '2022-02-22');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (53, 'Yogurt - Raspberry, 175 Gr', 423, 850.11, false, '2022-07-30');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (54, 'Chocolate - Semi Sweet', 178, 696.84, true, '2021-12-28');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (55, 'Soup - Canadian Pea, Dry Mix', 448, 511.2, false, '2021-10-21');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (56, 'Garbag Bags - Black', 373, 7.59, true, '2022-09-18');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (57, 'Extract Vanilla Pure', 146, 699.25, false, '2021-11-07');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (58, 'Island Oasis - Mango Daiquiri', 364, 768.38, true, '2021-10-31');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (59, 'Duck - Legs', 85, 233.79, true, '2022-09-15');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (60, 'Wine - Taylors Reserve', 463, 398.79, false, '2022-03-18');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (61, 'Beer - Upper Canada Lager', 422, 198.13, true, '2022-07-04');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (62, 'Rice - Jasmine Sented', 367, 332.01, true, '2021-11-29');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (63, 'Parasol Pick Stir Stick', 449, 709.37, true, '2022-03-24');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (64, 'Squash - Pattypan, Yellow', 47, 129.21, true, '2022-03-15');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (65, 'Soup - Base Broth Beef', 105, 800.21, false, '2021-12-28');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (66, 'Beans - Kidney, Canned', 474, 503.2, true, '2022-05-25');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (67, 'Compound - Strawberry', 374, 533.03, false, '2022-08-16');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (68, 'Juice - Lime', 74, 980.52, false, '2022-06-06');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (69, 'Sage - Rubbed', 450, 4.97, false, '2022-06-22');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (70, 'Bacardi Mojito', 262, 380.03, true, '2021-11-11');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (71, 'Tequila - Sauza Silver', 325, 33.68, false, '2022-08-26');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (72, 'Chinese Lemon Pork', 486, 642.45, false, '2021-10-18');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (73, 'Garlic - Primerba, Paste', 233, 382.99, false, '2022-01-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (74, 'Sword Pick Asst', 109, 990.47, true, '2022-03-03');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (75, 'Yogurt - Peach, 175 Gr', 437, 867.19, false, '2021-10-04');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (76, 'Wine - White, Ej Gallo', 417, 272.17, false, '2022-03-18');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (77, 'Cabbage - Savoy', 440, 416.7, true, '2021-12-02');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (78, 'Coffee - Dark Roast', 449, 109.2, true, '2022-03-15');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (79, 'Sauce - Soy Low Sodium - 3.87l', 492, 350.35, false, '2021-10-21');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (80, 'Soup - Chicken And Wild Rice', 48, 368.33, true, '2022-01-10');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (81, 'Pastry - Banana Tea Loaf', 415, 119.15, false, '2021-10-05');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (82, 'Seedlings - Mix, Organic', 165, 938.06, false, '2022-07-31');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (83, 'Sambuca - Ramazzotti', 375, 998.88, true, '2022-08-21');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (84, 'Sorrel - Fresh', 472, 624.64, false, '2022-06-16');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (85, 'Pails With Lids', 28, 56.45, false, '2022-04-26');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (86, 'Beer - Steamwhistle', 53, 461.77, true, '2021-10-13');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (87, 'Horseradish - Prepared', 317, 567.67, true, '2022-07-16');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (88, 'Milk Powder', 53, 228.31, false, '2022-02-27');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (89, 'Beef - Striploin', 234, 99.79, false, '2021-11-20');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (90, 'Lobster - Tail, 3 - 4 Oz', 393, 363.96, true, '2022-09-01');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (91, 'Artichoke - Fresh', 149, 103.28, false, '2022-08-26');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (92, 'Bread - Roll, Canadian Dinner', 352, 964.0, false, '2021-10-01');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (93, 'Roe - Lump Fish, Red', 165, 110.04, true, '2021-11-29');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (94, 'Tuna - Canned, Flaked, Light', 405, 575.18, false, '2022-03-09');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (95, 'Juice - Mango', 232, 507.1, false, '2021-11-09');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (96, 'Lamb - Bones', 456, 762.33, true, '2022-05-29');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (97, 'Flour - Masa De Harina Mexican', 12, 814.27, false, '2022-07-06');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (98, 'Wine - Hardys Bankside Shiraz', 487, 237.84, false, '2021-10-20');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (99, 'Nantucket - Orange Mango Cktl', 106, 674.32, false, '2022-06-17');
insert into PRODUCT (codProduct, name, stock, price, disponibility, dateArrival) values (100, 'Soup - Campbells Bean Medley', 429, 688.43, false, '2022-08-30');
