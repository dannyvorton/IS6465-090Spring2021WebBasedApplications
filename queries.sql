'---INSERT INTO Vendor table---'
INSERT INTO `vendor` (`vendorID`, `vendorName`, `vendor_address`) VALUES
(1, 'SHEIN', 'Hong Kong, China'),
(2, 'Urban Outfitters', 'Los Angeles, USA'),
(3, 'Romwe', 'Hong Kong, China'),
(4, 'H&M', 'Los Angeles, USA'),
(5, 'Forever 21', 'Los Angeles, USA'),
(6, 'Aliexpress', 'Shanghai, China'),
(7, 'Pretty Little Thing', 'Manchester, England'),
(8, 'Nasty Gal', 'Los Angeles, USA'),
(9, 'Boohoo', 'Manchester, England'),
(10, 'ASOS', 'Manchester, England'),
(11, 'Lucy In The Sky', 'Los Angeles, USA'),
(12, 'Bellewholesale', 'Shanghai, China'),
(13, 'Cider', 'Hong Kong, China'),
(14, 'Missguided', 'Manchester, England'),
(15, 'I Saw It First', 'Manchester, England'),
(16, 'Showpo', 'Sydney, Australia'),
(17, 'Superdry', 'Manchester, England'),
(18, 'All Saints', 'Los Angeles, USA'),
(19, 'American Eagle Outfitters', 'Los Angeles, USA'),
(20, 'Lulus', 'Los Angeles, USA');


'---INSERT INTO Product table---'
INSERT INTO `product` (`vendorID`, `prodName`, `prodType`, `price`, `selection`, `imagepath1`, `imagepath2`, `imagepath3`) VALUES
(1, 'Floral Wrap Dress', 'Dress', 45, 'Featured', 'images/wrap-dress1.png', 'images/wrap-dress2.png', 'images/wrap-dress3.png'),
(1, 'Fringe Hemm Dress', 'Dress', 35, NULL, 'images/fringe-dress1.png', 'images/fringe-dress2.png', 'images/fringe-dress3.png'),
(1, 'Floral Square Neck Dress', 'Dress', 55, NULL, 'images/floral-squareneck-dress1.png', 'images/floral-squareneck-dress2.png', 'images/floral-squareneck-dress3.png'),
(1, 'Black Pattern Tweed Dress', 'Dress', 55, NULL, 'images/black-pattern-dress1.png', 'images/black-pattern-dress2.png', 'images/black-pattern-dress3.png'),
(1, 'Puff Sleeves Pink Dress', 'Dress', 35, NULL, 'images/puff-pink-dress1.png', 'images/puff-pink-dress2.png', 'images/puff-pink-dress3.png'),
(1, 'Open-Shoulder Crop Top', 'Top', 25, NULL, 'images/tie-shoulder-croptop1.png', 'images/tie-shoulder-croptop2.png', 'images/tie-shoulder-croptop3.png'),
(2, 'Brown Chains Skater Skirt', 'Bottom', 30, NULL, 'images/brown-chain-skirt1.png', 'images/brown-chain-skirt2.png', 'images/brown-chain-skirt3.png'),
(1, 'Bell Sleeves Fringe Crop Top', 'Top', 30, NULL, 'images/fringe-top1.png', 'images/fringe-top2.png', 'images/fringe-top3.png'),
(1, 'White Crop Cardigan', 'Top', 20, NULL, 'images/white-cardigan1.png', 'images/white-cardigan2.png', 'images/white-cardigan3.png'),
(1, 'Brown Plaid Button Up', 'Top', 25, NULL, 'images/brown-plaid-buttonup1.png', 'images/brown-plaid-buttonup2.png', 'images/brown-plaid-buttonup3.png'),
(2, 'Black Distressed Jeans', 'Bottom', 45, NULL, 'images/black-ripped-jeans1.png', 'images/black-ripped-jeans2.png', 'images/black-ripped-jeans3.png'),
(1, 'Black Leather Top', 'Top', 15, 'New Arrival', 'images/black-leather-top1.png', 'images/black-leather-top2.png', 'images/black-leather-top3.png'),
(1, 'Open Back Floral Dress', 'Dress', 45, NULL, 'images/open-floral-dress1.png', 'images/open-floral-dress2.png', 'images/open-floral-dress3.png'),
(1, 'Green Crop Top', 'Top', 20, 'New Arrival', 'images/green-top1.png', 'images/green-top2.png', 'images/green-top3.png'),
(2, 'Two Tones Patch Jeans', 'Bottom', 45, 'Featured', 'images/green-brown-jeans1.png', 'images/green-brown-jeans2.png', 'images/green-brown-jeans3.png'),
(1, 'White Lantern Sleeves Dress', 'Dress', 40, 'Featured', 'images/white-dress1.png', 'images/white-dress2.png', 'images/white-dress3.png'),
(1, 'Blue Skater Skirt', 'Bottom', 25, NULL, 'images/blue-skater-skirt1.png', 'images/blue-skater-skirt2.png', 'images/blue-skater-skirt3.png'),
(1, 'Orange Floral Crop Top', 'Top', 15, NULL, 'images/orange-top1.png', 'images/orange-top2.png', 'images/orange-top3.png'),
(2, 'Swiss Dot White Dress', 'Dress', 55, 'Featured', 'images/poka-dot-white-dress1.png', 'images/poka-dot-white-dress2.png', 'images/poka-dot-white-dress3.png'),
(1, 'White Lace Dress', 'Dress', 55, NULL, 'images/white-lace-dress1.png', 'images/white-lace-dress2.png', 'images/white-lace-dress3.png'),
(1, 'Butterfly Patch Jeans', 'Bottom', 35, 'New Arrival', 'images/butterfly-jeans1.png', 'images/butterfly-jeans2.png', 'images/butterfly-jeans3.png'),
(1, 'Blue Sleeveless Open Back Dress', 'Dress', 30, NULL, 'images/blue-sleeveless-dress1.png', 'images/blue-sleeveless-dress2.png', 'images/blue-sleeveless-dress3.png'),
(2, 'Black Argyle Cardigan', 'Top', 35, 'New Arrival', 'images/black-sweater1.png', 'images/black-sweater2.png', 'images/black-sweater3.png'),
(1, 'Letter Pullover', 'Top', 39, 'New Arrival', 'images/pullover1.png', 'images/pullover2.png', 'images/pullover3.png'),
(2, 'Zebra Pattern Pants', 'Bottom', 35, 'New Arrival', 'images/zebra-pants1.png', 'images/zebra-pants2.png', 'images/zebra-pants3.png'),
(2, 'White Flare Pants', 'Bottom', 25, 'New Arrival', 'images/white-flare-pants1.png', 'images/white-flare-pants2.png', 'images/white-flare-pants3.png'),
(1, 'White V-Neck Blouse', 'Top', 25, 'New Arrival', 'images/white-vneck-blouse1.png', 'images/white-vneck-blouse2.png', 'images/white-vneck-blouse3.png'),
(1, 'White Drawstring Sweatpants', 'Bottom', 20, NULL, 'images/white-sweats1.png', 'images/white-sweats2.png', 'images/white-sweats3.png'),
(1, 'White Chain Sweater', 'Top', 20, 'New Arrival', 'images/white-chain-sweater1.png', 'images/white-chain-sweater2.png', 'images/white-chain-sweater3.png'),
(1, 'Purple Shorts', 'Bottom', 25, 'Featured', 'images/purple-shorts1.png', 'images/purple-shorts2.png', 'images/purple-shorts3.png'),
(2, 'Flap Pocket Cord Pants', 'Bottom', 30, NULL, 'images/flap-pocket-cord-pants1.png', 'images/flap-pocket-cord-pants2.png', 'images/flap-pocket-cord-pants3.png'),
(1, 'Truck Print Oversized T-Shirt', 'Top', 15, NULL, 'images/truck-tshirt1.png', 'images/truck-tshirt2.png', 'images/truck-tshirt3.png'),
(1, 'Strawberry Shorts', 'Bottom', 25, 'Featured', 'images/strawberry-shorts1.png', 'images/strawberry-shorts2.png', 'images/strawberry-shorts3.png'),
(2, 'Yellow Floral Dress', 'Dress', 35, NULL, 'images/yellow-floral-dress1.png', 'images/yellow-floral-dress2.png', 'images/yellow-floral-dress3.png'),
(1, 'Black Bodycon Dress', 'Dress', 25, 'Featured', 'images/black-bodycon-dress1.png', 'images/black-bodycon-dress2.png', 'images/black-bodycon-dress3.png'),
(2, 'Black Sheer Dress', 'Dress', 50, 'Featured', 'images/black-sheer-dress1.png', 'images/black-sheer-dress2.png', 'images/black-sheer-dress3.png'),
(1, 'Black & White Jeans', 'Bottom', 45, NULL, 'images/black-white-jeans1.png', 'images/black-white-jeans2.png', 'images/black-white-jeans3.png'),
(2, 'Green Self-tie Crop Top', 'Top', 15, 'Featured', 'images/front-tie-top1.png', 'images/front-tie-top2.png', 'images/front-tie-top3.png'),
(1, 'Blue Lace Up Back Satin Top', 'Top', 19, 'Featured', 'images/satin-top1.png', 'images/satin-top2.png', 'images/satin-top3.png');

'---INSERT INTO Inventory table---'
INSERT INTO `inventory` (`prodID`, `vendorID`, `date_ordered`, `quantity`, `cost`, `imagepath`) VALUES
('1', '1', '2021/03/16', '45', '2010.00', 'images/wrap-dress1.png'),
('2', '1', '2021/03/16', '35', '3000.00', 'images/fringe-dress1.png'),
('3', '1', '2021/03/16', '55', '3500.00', 'images/floral-squareneck-dress1.png'),
('4', '1', '2021/03/16', '55', '4500.00', 'images/blue-pattern-dress1.png'),
('5', '1', '2021/03/16', '35', '2000.00', 'images/puff-pink-dress1.png'),
('6', '1', '2021/03/16', '25', '1000.00', 'images/tie-shoulder-croptop1.png'),
('7', '2', '2021/03/16', '30', '2001.00', 'images/brown-chain-skirt1.png'),
('8', '1', '2021/03/16', '30', '3000.00', 'images/fringe-top1.png'),
('9', '1', '2021/03/16', '20', '2019.00', 'images/white-cardigan1.png'),
('10', '1', '2021/03/16', '25', '2020.00', 'images/brown-plaid-buttonup1.png'),
('11', '2', '2021/03/16', '45', '3509.00', 'images/black-ripped-jeans1.png'),
('12', '1', '2021/03/16', '15', '2050.00', 'images/black-leather-top1.png'),
('13', '1', '2021/03/16', '45', '5000.00', 'images/allover-floral-dress1.png'),
('14', '1', '2021/03/16', '20', '35000.00', 'images/green-top1.png'),
('15', '2', '2021/03/16', '45', '6000.00', 'images/green-brown-jeans1.png'),
('16', '1', '2021/03/16', '40', '5500.00', 'images/white-dress1.png'),
('17', '1', '2021/03/16', '25', '3505.00', 'images/blue-skater-skirt1.png'),
('18', '1', '2021/03/16', '15', '5500.00', 'images/orange-top1.png'),
('19', '2', '2021/03/16', '55', '7000.00', 'images/poka-dot-white-dress1.png'),
('20', '1', '2021/03/16', '55', '8000.00', 'images/white-lace-dress1.png'),
('21', '1', '2021/03/16', '35', '7500.00', 'images/butterfly-jeans1.png'),
('22', '1', '2021/03/16', '30', '6500.00', 'images/blue-sleeveless-dress1.png'),
('23', '2', '2021/03/16', '35', '6000.00', 'images/black-sweater1.png'),
('24', '1', '2021/03/16', '35', '6000.00', 'images/pullover1.png'),
('25', '2', '2021/03/16', '35', '6000.00', 'images/zebra-pants1.png'),
('26', '2', '2021/03/16', '25', '2600.00', 'images/white-flare-pants1.png'),
('27', '1', '2021/03/16', '25', '2500.00', 'images/white-vneck-blouse1.png'),
('28', '1', '2021/03/16', '20', '2000.00', 'images/white-sweats1.png'),
('29', '1', '2021/03/16', '20', '2000.00', 'images/white-chain-sweater1.png'),
('30', '1', '2021/03/16', '25', '3000.00', 'images/purple-shorts1.png'),
('31', '2', '2021/03/16', '30', '2500.00', 'images/flap-pocket-cord-pants1.png'),
('32', '1', '2021/03/16', '15', '200.00', 'images/truck-tshirt1.png'),
('33', '1', '2021/03/16', '25', '2050.00', 'images/strawberry-shorts1.png'),
('34', '2', '2021/03/16', '35', '400.00', 'images/yellow-floral-dress1.png'),
('35', '1', '2021/03/16', '25', '250.00', 'images/black-bodycon-dress1.png'),
('36', '2', '2021/03/16', '50', '2000.00', 'images/black-sheer-dress1.png'),
('37', '1', '2021/03/16', '45', '2000.00', 'images/black-white-jeans1.png'),
('38', '2', '2021/03/16', '15', '500.00', 'images/front-tie-top1.png'),
('39', '1', '2021/03/16', '19', '300.00', 'images/satin-top1.png');

'---INSERT INTO Campaign table---'
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (1, 10, 'St. Paticks Day Sale 21', '2021-03-17', '2021-03-17');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (2, 10, 'Presidents Day Sale 21', '2021-02-15', '2021-02-15');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (3, 10, 'Valentines Day Sale 21', '2021-02-14', '2021-02-14');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (4, 10, 'MLK Day Sale 21', '2021-01-18', '2021-01-18');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (5, 15, 'New Years Sale 21', '2020-12-31', '2021-01-01');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (6, 15, 'Christmas Sale 20', '2020-12-20', '2020-12-25');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (7, 20, 'Black Friday 20', '2020-11-27', '2020-11-27');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (8, 10, 'Veterans Day Sale 20', '2020-11-11', '2020-11-11');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (9, 10, 'Halloween Day Sale 20', '2020-10-31', '2020-10-31');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (10, 10, 'Columbus Day Sale 20', '2020-10-12', '2020-10-12');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (11, 10, 'April Fools Day Sale 21', '2021-04-01', '2021-04-01');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (12, 10, 'Tax Day Sale 21', '2021-04-15', '2021-04-15');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (13, 10, 'Earth Day Sale 21', '2021-04-22', '2021-04-22');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (14, 15, 'Mothers Day Sale 21', '2021-05-09', '2021-05-09');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (15, 10, 'Memorial Day Sale 21', '2021-05-31', '2021-05-31');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (16, 10, 'Fathers Day Sale 21', '2021-06-20', '2021-06-20');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (17, 10, 'Independence Day Sale 21', '2021-07-04', '2021-07-04');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (18, 10, 'Labor Day Sale 21', '2021-09-06', '2021-09-06');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (19, 15, 'Columbus Day Sale 21', '2021-10-11', '2021-10-11');
INSERT INTO campaign (prodID, discount, details, start_date, end_date) VALUES (20, 10, 'Halloween Day Sale 21', '2021-10-31', '2021-10-31');

'---INSERT INTO Customer table---'
INSERT INTO `customer` (`custID`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `username`, `password`, `role`) VALUES
(1, 'Pavel', 'Everist', 'peverist0@salon.com', '286-777-5385', '19876 Eastlawn Lane', 'peverist0', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(2, 'Sorcha', 'Zettoi', 'szettoi1@prweb.com', '686-890-3769', '086 Harbort Lane', 'szettoi1', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(3, 'Barbaraanne', 'Northall', 'bnorthall2@techcrunch.com', '585-572-8900', '80 Blackbird Plaza', 'bnorthall2', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(4, 'Gratiana', 'Curneen', 'gcurneen3@sitemeter.com', '292-818-5407', '01 Thompson Park', 'gcurneen3', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(5, 'Casey', 'Bladesmith', 'cbladesmith4@ft.com', '730-287-1291', '10748 Muir Place', 'cbladesmith4', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(6, 'Tabby', 'Blodg', 'tblodg5@reuters.com', '425-742-5994', '8946 American Ash Road', 'tblodg5', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(7, 'Codi', 'Kilmaster', 'ckilmaster6@google.it', '452-311-2113', '70 Vernon Street', 'ckilmaster6', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(8, 'Cyrill', 'Ovid', 'covid7@meetup.com', '861-655-5834', '503 Stang Court', 'covid7', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(9, 'George', 'Giottini', 'ggiottini8@tumblr.com', '112-857-9114', '9832 Mallard Junction', 'ggiottini8', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(10, 'Tucky', 'Barendtsen', 'tbarendtsen9@ucla.edu', '316-661-7684', '229 Lighthouse Bay Point', 'tbarendtsen9', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(11, 'Shawnee', 'Piddlehinton', 'spiddlehintona@gov.uk', '309-861-2921', '1 Birchwood Point', 'spiddlehintona', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(12, 'Lambert', 'Chasmoor', 'lchasmoorb@soup.io', '686-458-2399', '496 Bunker Hill Terrace', 'lchasmoorb', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(13, 'Rosy', 'Garett', 'rgarettc@ovh.net', '648-299-6901', '293 Corscot Point', 'rgarettc', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(14, 'Eliza', 'Lober', 'eloberd@bravesites.com', '545-738-0459', '27 Ohio Point', 'eloberd', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(15, 'Harwilll', 'Hands', 'hhandse@alexa.com', '815-697-2070', '538 Mayer Center', 'hhandse', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(16, 'Madalyn', 'Vinck', 'mvinckf@phpbb.com', '306-782-0872', '356 Northport Road', 'mvinckf', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(17, 'Torry', 'Newhouse', 'tnewhouseg@google.com.hk', '910-389-5331', '2 Maple Alley', 'tnewhouseg', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(18, 'Josey', 'Hyndson', 'jhyndsonh@who.int', '413-827-2305', '8 Riverside Hill', 'jhyndsonh', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(19, 'Renard', 'Muzzillo', 'rmuzzilloi@delicious.com', '470-739-1198', '9 3rd Terrace', 'rmuzzilloi', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(20, 'Neysa', 'Courtliff', 'ncourtliffj@liveinternet.ru', '612-683-6873', '0 Sheridan Park', 'ncourtliffj', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(21, 'Hi', 'Gyorgy', 'hgyorgyk@virginia.edu', '149-973-5284', '53980 Sachs Lane', 'hgyorgyk', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(22, 'Emanuele', 'Deniso', 'edenisol@google.fr', '888-402-9728', '7 Farmco Terrace', 'edenisol', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(23, 'Jacqui', 'Hansberry', 'jhansberrym@multiply.com', '654-965-9759', '52586 3rd Center', 'jhansberrym', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(24, 'Tamma', 'Wiggington', 'twiggingtonn@huffingtonpost.com', '691-620-7591', '686 Mendota Circle', 'twiggingtonn', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(25, 'Dareen', 'Spinola', 'dspinolao@flickr.com', '138-341-4559', '3390 Portage Circle', 'dspinolao', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'customer'),
(26, 'Rob', 'Ber', 'robber@net.net', '555-555-4545', '45 Holy Oaks', 'rber1', '$2y$10$b5PxwvMwpq3Cutsq4WrIneQnzrx2u9ohv/kr9.hs3vtZO6xGzv4r2', 'customer');

'---INSERT INTO Employee table---'
INSERT INTO `employee` (`empID`, `first_name`, `last_name`, `position`, `username`, `password`, `role`) VALUES
(1, 'Ignatius', 'Woltering', 'Automation Specialist I', 'iwoltering0', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(28, 'Bob', 'Jones', 'Administrator II', 'bjones', 'password123', 'admin'),
(3, 'Wilbert', 'Surman-Wells', 'Nurse Practicioner', 'wsurmanwells2', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(4, 'Shelton', 'Ough', 'Social Worker', 'sough3', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(5, 'Domini', 'Happs', 'Senior Cost Accountant', 'dhapps4', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(6, 'Yolane', 'Carpenter', 'Staff Scientist', 'ycarpenter5', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(7, 'Andee', 'Larrett', 'Help Desk Technician', 'alarrett6', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(8, 'Martelle', 'Forsey', 'Financial Advisor', 'mforsey7', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(9, 'Xever', 'Lewsie', 'Nurse', 'xlewsie8', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(10, 'Caryl', 'Collyer', 'Associate Professor', 'ccollyer9', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(11, 'Gran', 'Gourley', 'Teacher', 'ggourleya', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(12, 'Kelsey', 'Dingle', 'Graphic Designer', 'kdingleb', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(13, 'Sergent', 'Billson', 'Quality Control Specialist', 'sbillsonc', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(14, 'Bink', 'Trotton', 'Assistant Professor', 'btrottond', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(15, 'Matt', 'Oneal', 'Software Engineer IV', 'moneale', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(16, 'Kylie', 'Iacovo', 'Sales Representative', 'kiacovof', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(17, 'Effie', 'Ponten', 'VP Accounting', 'eponteng', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(18, 'Stanislas', 'Tarbard', 'Director of Sales', 'starbardh', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(19, 'Donny', 'Sharphouse', 'Structural Analysis Engineer', 'dsharphousei', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(20, 'Gabriele', 'Berwick', 'Civil Engineer', 'gberwickj', '$2y$10$V8QjYiZu2MoUcFfZUnkRWOL/rfFO2TagbzxuyNNx3wkanaqsRbNxO', 'employee'),
(29, 'Lucy', 'Brown', 'Therapist', 'lbrown', 'password123', 'employee'),
(21, 'Dave', 'Hyde', 'admin', 'dhyde1', '$2y$10$9kvOSrBJuY/PikTtzzT2ke9QRoUj0xeZfLmBZzoQOkg.rSph4d3Cq', 'admin'),
(22, 'Amelia', 'Le', 'admin', 'ale1', '$2y$10$9kvOSrBJuY/PikTtzzT2ke9QRoUj0xeZfLmBZzoQOkg.rSph4d3Cq', 'admin'),
(23, 'Dan', 'Orton', 'admin', 'dorton1', '$2y$10$9kvOSrBJuY/PikTtzzT2ke9QRoUj0xeZfLmBZzoQOkg.rSph4d3Cq', 'admin'),
(30, 'Chuck', 'Cheese', 'Entertainer', 'ccheese', 'password123', 'employee');

'---INSERT INTO User table---'
INSERT INTO `user` (`first_name`, `last_name`, `username`, `password`, `role`) VALUES
('Amelia', 'Le', 'Ale', '$2y$10$IYdL.RAzefjN8fWVSKmcpeUYLHIgb2WrQ6MKwuSDWsGzY80rqpljK', 'admin'),
('Dan', 'Orton', 'dorton', '$2y$10$ghf72HZUuIab6AkwTS.wTugHdmJKhWEb24VqefRwpSyqrg1gW.ek2', 'admin'),
('Quentin', 'Tarantino', 'qtara', '$2y$10$qwRIY6YWKaESsb6tyjyknOEIHDzeNCHaB6oxqOkwVK5oAoYvcIgB.', 'user'),
('Paula', 'Abdul', 'pabdul', '$2y$10$ITYAYw0r7Lo2TJCBSS23ROADY9/Qv/Ow8U/2ZY/9X6m6I7BajNl7i', 'admin'),
('Olivia', 'John', 'ojohn', '$2y$10$ROyyxbmTLUmZqNQTHy6KWuWu4Ve.EQN/Nr.gCMSlpx0B2FDDigRMS', 'user'),
('Nolan', 'Ryan', 'nryan', '$2y$10$.4135JnF61b0K1hg9UowSeZzcA2pku7uGNRSj7DA9Xs/fmjdChcOC', 'user'),
('Dave', 'Hyde', 'dhyde', '$2y$10$haw5bt1J1LenhpFSNxMp..Lj/UxQFeOCUfAhglrqKIiCl4IhHUAky', 'admin'),
('Alan', 'Wake', 'awake', '$2y$10$6Ic/rPf2oSwBcj88ZuycaekiKoihVE9VnTFptzG3f3yWr0BZQx3gK', 'user'),
('Fred', 'Jones', 'fjones', '$2y$10$JwuNy3m9q4lKsostBXyDY.jkspgTwVQvDMMVgsuUp032d8ZqcC1IG', 'admin'),
('Bobbie', 'Dahl', 'bdahl', '$2y$10$whzScq0GdURrcTXatPJYMuoOnv3CkqvVjDwl8q0xwgNkh24zYko4C', 'user'),
('Chuck', 'Brown', 'cbrown1', '$2y$10$aHyov0DMJFHn1yYO2XVAluPkLcnbHS7WG9lA649GJ3gAeMZtA0lmW', 'user'),
('Donald', 'Troop', 'dtroop', '$2y$10$/K64/ZEf4DeAo2UuG4vLsuYMdseEeZhjjBaTxgVHfeLho4xvRjWii', 'user'),
('Emile', 'Hart', 'ehart', '$2y$10$zcK/iISaKr4lpTKUWddZKOCz9yc2xhdZbUtjV6iORS7LK6oWDbwvm', 'user'),
('Francis', 'Fish', 'ffish', '$2y$10$IzMNhuuWP/.ekA6mMqTvAumFe93EdSmP7.gT6VWdS2/726P0f2poW', 'user'),
('Greg', 'Greggers', 'ggreg', '$2y$10$3752FSlzhtf5.7cqqWl7auD114IUyoBCAjI2k3.thAcJV.kBISPNK', 'user'),
('Holly', 'Ivy', 'hivy', '$2y$10$HeXv7z0JvXrIc24LAgq36e//qmxJDauvFAPcuJIvswLDqBdEJp/Rq', 'user'),
('Indiana', 'Jones', 'ijones', '$2y$10$zjk./Q2gwIXvcOdm0LHSWO.XXLfRDysQyRZ0uhr8T2eWIYJOjrBGe', 'user'),
('Jake', 'Pirate', 'jp', '$2y$10$dcFjQpGg27n81o8a8nKzH.5dMMUvScGTlSCWvB/1k6Eo9qFV7h.2C', 'user'),
('Kenny', 'South', 'ksouth', '$2y$10$nVuboCcaJaQBuubaKuj1YufKb0Xsw56KMmpSBntEtz30R2Tczosmq', 'user'),
('Lisa', 'Lisa', 'lisa2', '$2y$10$YWxKaiA.A33bqTlFg4Sf8eFGJJAu7VJB1WOPQeQnbm6EkXEJSPsOG', 'user'),
('Magic', 'Johnson', 'lakers32', '$2y$10$1FLMg/EuRcaT1cLq2wSEyOjktPUD/d3unW0VkTBpDYfa3QU81wFdW', 'user');

'---INSERT INTO orderline table---'
INSERT INTO `orderline` (`lineID`, `orderID`, `prodID`, `quantity`, `price`) VALUES
(1, 1, 2, 1, '45.00'),
(2, 2, 3, 1, '35.00'),
(3, 3, 4, 1, '55.00'),
(4, 4, 5, 1, '55.00'),
(5, 5, 6, 1, '35.00'),
(6, 6, 7, 1, '25.00'),
(7, 7, 8, 1, '30.00'),
(8, 8, 9, 1, '30.00'),
(9, 9, 10, 1, '20.00'),
(10, 10, 11, 1, '25.00'),
(11, 11, 12, 1, '45.00'),
(12, 12, 13, 1, '20.00'),
(13, 13, 15, 1, '45.00'),
(14, 14, 17, 1, '25.00'),
(15, 15, 19, 1, '55.00'),
(16, 16, 2, 1, '45.00'),
(17, 17, 3, 1, '35.00'),
(18, 18, 4, 1, '55.00'),
(19, 19, 5, 1, '55.00'),
(20, 20, 6, 1, '35.00');

'---INSERT INTO order table---'
INSERT INTO `order` (`orderID`, `custID`, `campID`, `orderDate`, `total_price`) VALUES
(1, 3, 12, '2021-03-18', '35.00'),
(2, 3, 11, '2021-03-18', '45.00'),
(3, 3, 12, '2021-03-18', '25.00'),
(4, 4, 10, '2021-03-18', '55.00'),
(5, 4, 14, '2021-03-18', '55.00'),
(6, 4, 14, '2021-03-18', '65.00'),
(7, 5, 12, '2021-03-18', '75.00'),
(8, 5, 14, '2021-03-18', '80.00'),
(9, 5, 3, '2021-03-18', '90.00'),
(10, 6, 3, '2021-03-18', '150.00'),
(11, 6, 4, '2021-03-18', '200.00'),
(12, 6, 4, '2021-03-18', '300.00'),
(13, 7, 5, '2021-03-18', '400.00'),
(14, 7, 5, '2021-03-18', '95.00'),
(15, 7, 3, '2021-03-18', '75.00'),
(16, 7, 3, '2021-03-18', '55.00'),
(17, 8, 5, '2021-03-18', '25.00'),
(18, 8, 7, '2021-03-18', '30.00'),
(19, 8, 9, '2021-03-18', '45.00'),
(20, 8, 9, '2021-03-18', '55.00');