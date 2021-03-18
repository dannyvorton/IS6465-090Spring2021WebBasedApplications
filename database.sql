create table payment (
    pmt_id int(11) unsigned auto_increment primary key,
    order_id int(11) unsigned not null,
    cust_id int(11) unsigned not null,
    credit_card varchar(100) not null,
    payment_date date not null
)
ENGINE MyISAM;

create table employee (
    emp_id int(11) unsigned auto_increment primary key,
--    store_id varchar(100) not null,  -- is 'store_id' needed?
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    position varchar(100) not null
)
ENGINE MyISAM;

create table orderline (
    line_id int(11) unsigned auto_increment primary key, -- I'm not sure if auto_increment is correct as it relates to the line_id.
    order_id int(11) not null,
    prod_id int(11) not null,
    quantity int(11) not null,
    price decimal(11, 2) not null
)
ENGINE MyISAM;

create table customer (
    cust_id int(11) unsigned auto_increment primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    email varchar(100) not null,
    phone_number varchar(100),
    address varchar(100) not null,
    username varchar(100) not null,
    password varchar(100) not null
)
ENGINE MyISAM;

create table orders (
    order_id int(11) unsigned auto_increment primary key,
    emp_id int(11) not null,
    cust_id int(11) not null,
--    store_id varchar(100) not null,  -- is 'store_id' needed?
    camp_id varchar(100),
    order_date date not null,
    total_price decimal(11, 2) not null
)
ENGINE MyISAM;

create table campaign (
    camp_id int(11) unsigned auto_increment primary key,
    product_id int(11) not null,
    discount decimal(11, 2) not null,
    details varchar(100) not null,
    start_date date not null,
    end_date date not null
)
ENGINE MyISAM;

insert into campaign (product_id, discount, details, start_date, end_date) values (1, .1, 'St. Paticks Day Sale 21', '2021-03-17', '2021-03-17');
insert into campaign (product_id, discount, details, start_date, end_date) values (2, .1, 'Presidents Day Sale 21', '2021-02-15', '2021-02-15');
insert into campaign (product_id, discount, details, start_date, end_date) values (3, .1, 'Valentines Day Sale 21', '2021-02-14', '2021-02-14');
insert into campaign (product_id, discount, details, start_date, end_date) values (4, .1, 'MLK Day Sale 21', '2021-01-18', '2021-01-18');
insert into campaign (product_id, discount, details, start_date, end_date) values (5, .15, 'New Years Sale 21', '2020-12-31', '2021-01-01');
insert into campaign (product_id, discount, details, start_date, end_date) values (6, .15, 'Christmas Sale 20', '2020-12-20', '2020-12-25');
insert into campaign (product_id, discount, details, start_date, end_date) values (7, .2, 'Black Friday 20', '2020-11-27', '2020-11-27');
insert into campaign (product_id, discount, details, start_date, end_date) values (8, .1, 'Veterans Day Sale 20', '2020-11-11', '2020-11-11');
insert into campaign (product_id, discount, details, start_date, end_date) values (9, .1, 'Halloween Day Sale 20', '2020-10-31', '2020-10-31');
insert into campaign (product_id, discount, details, start_date, end_date) values (10, .1, 'Columbus Day Sale 20', '2020-10-12', '2020-10-12');
insert into campaign (product_id, discount, details, start_date, end_date) values (11, .1, 'April Fools Day Sale 21', '2021-04-01', '2021-04-01');
insert into campaign (product_id, discount, details, start_date, end_date) values (12, .1, 'Tax Day Sale 21', '2021-04-15', '2021-04-15');
insert into campaign (product_id, discount, details, start_date, end_date) values (13, .1, 'Earth Day Sale 21', '2021-04-22', '2021-04-22');
insert into campaign (product_id, discount, details, start_date, end_date) values (14, .15, 'Mothers Day Sale 21', '2021-05-09', '2021-05-09');
insert into campaign (product_id, discount, details, start_date, end_date) values (15, .1, 'Memorial Day Sale 21', '2021-05-31', '2021-05-31');
insert into campaign (product_id, discount, details, start_date, end_date) values (16, .1, 'Fathers Day Sale 21', '2021-06-20', '2021-06-20');
insert into campaign (product_id, discount, details, start_date, end_date) values (17, .1, 'Independence Day Sale 21', '2021-07-04', '2021-07-04');
insert into campaign (product_id, discount, details, start_date, end_date) values (18, .1, 'Labor Day Sale 21', '2021-09-06', '2021-09-06');
insert into campaign (product_id, discount, details, start_date, end_date) values (19, .15, 'Columbus Day Sale 21', '2021-10-11', '2021-10-11');
insert into campaign (product_id, discount, details, start_date, end_date) values (20, .1, 'Halloween Day Sale 21', '2021-10-31', '2021-10-31');

create table shipping (
    ship_id int(11) unsigned auto_increment primary key,
    ship_date date not null,
    delivery_date date not null,
    ship_cost decimal(11, 2) not null,
    tracking_number varchar(100) not null
)
ENGINE MyISAM;

--  is the 'vendor' table required, or is this too much detail for the scope of this project?
create table vendor (
    vendor_id int(11) unsigned auto_increment primary key,
    vendor_name varchar(100) not null,
    vendor_address varchar(100) not null
)
ENGINE MyISAM;

--  is the 'product' table redundant to the 'inventory' table?
create table product (
    prod_id int(11) unsigned auto_increment primary key,
    vendor_id int(11) not null,
    prod_name varchar(100) not null,
    prod_type varchar(100) not null
)
ENGINE MyISAM;

create table returns (
    return_id int(11) unsigned auto_increment primary key,
    order_id int(11) not null,
    inv_id int(11) not null,
    return_date date not null,
    quantity int(11) not null
)
ENGINE MyISAM;

create table inventory (
    inv_id int(11) unsigned auto_increment primary key,
    prod_name varchar(100) not null, -- changed 'prod_id' to 'prod_name' as the 'inv_id' might could be the 'prod_id'
--    vendor_id int(11) not null,  --  are the following three fields needed, or is this too much detail for the scope of this project?
--    store_id varchar(100) not null,
--    inv_date date not null,
    quantity int(11) not null,
    price decimal(11, 2) not null,  --  changed name from 'cost' to price
    category varchar(100),  -- changed name from 'attribute' to 'category'
    images varchar(100)  -- added this column to link to image
)
ENGINE MyISAM;

insert into inventory (prod_name, quantity, price, category, images) values ('Floral Wrap Dress', 100, 45, 'dress', 'images/wrap-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Fringe Hem Dress', 100, 35, 'dress', 'images/fringe-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Floral Square Neck Dress', 100, 55, 'dress', 'images/floral-squareneck-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Blue Pattern Tweed Dress', 100, 55, 'dress', 'images/blue-pattern-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Puff Sleeves Pink Dress', 100, 35, 'dress', 'images/puff-pink-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Open-Shoulder Crop Top', 100, 25, 'top', 'images/tie-shoulder-croptop1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Brown Chains Skater Skirt', 100, 30, 'bottom', 'images/brown-chain-skirt1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Bell Sleeves Fringe Crop Top', 100, 30, 'top', 'images/fringe-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Crop Cardigan', 100, 20, 'top', 'images/white-cardigan1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Brown Plaid Button Up', 100, 25, 'top', 'images/brown-plaid-buttonup1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Black Distressed Jeans', 100, 45, 'bottom', 'images/black-ripped-jeans1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Black Leather Top', 100, 15, 'top', 'images/black-leather-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Open Black Floral Dress', 100, 45, 'dress', 'images/allover-floral-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Green Crop Top', 100, 20, 'top', 'images/green-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Two Tones Patch Jeans', 100, 45, 'bottom', 'images/green-brown-jeans1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Lantern Sleeves Dress', 100, 40, 'dress', 'images/white-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Blue Skater Skirt', 100, 25, 'bottom', 'images/blue-skater-skirt1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Orange Floral Crop Top', 100, 15, 'top', 'images/orange-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Swiss Dot White Dress', 100, 55, 'dress', 'images/poka-dot-white-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Two Tones Shorts', 100, 25, 'bottom', 'images/two-tone-shorts1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Lace Dress', 100, 55, 'dress', 'images/white-lace-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Butterfly, Patch Jeans', 100, 35, 'bottom', 'images/butterfly-jeans1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Blue Sleeveless Open Back Dress', 100, 30, 'dress', 'images/blue-sleeveless-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Black Argyle Cardigan', 100, 35, 'top', 'images/black-sweater1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Letter Pullover', 100, 39, 'dress', 'images/sweater1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Zebra Pattern Pants', 100, 35, 'bottom', 'images/zebra-pants1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Flare Pants', 100, 25, 'bottom', 'images/white-flare-pants1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Yellow V-Neck', 100, 25, 'top', 'images/yellow-vneck-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Drawstring Sweatpants', 100, 20, 'bottom', 'images/white-sweats1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Chain Seater', 100, 20, 'top', 'images/white-chaint-sweater1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Purple Shorts', 100, 25, 'bottom', 'images/purple-shorts1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Flap Pocket Cord Pants', 100, 30, 'bottom', 'images/flap-pocket-cord-pants1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Truck Print Oversized T-Shirt', 100, 15, 'top', 'images/truck-tshirt1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Strawberry Shorts', 100, 25, 'bottom', 'images/strawberry-shorts1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Offshoulder Blue and White Dress', 100, 35, 'dress', 'images/offshoulder-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Black Bodycon Dress', 100, 25, 'dress', 'images/black-bodycon-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Black Sheer Dress', 100, 50, 'dress', 'images/black-sheer-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Black and White Jeans', 100, 45, 'bottom', 'images/black-white-jeans1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Geen Self-tie Crop Top', 100, 15, 'top', 'images/front-tie-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Blue Lace Up Back Satin', 100, 19, 'top', 'images/satin-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Floral Jumpsuite', 100, 35, 'dress', 'images/floral-jumpsuit1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Lace Up Back', 100, 25, 'top', 'images/white-top1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('White Floral Dress', 100, 25, 'dress', 'images/white-floral-dress1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Two Tone Sweatpants', 100, 15, 'bottom', 'images/black-white-sweats1.png');
insert into inventory (prod_name, quantity, price, category, images) values ('Blue Floral Skirt', 100, 20, 'bottom', 'images/blue-floral-skirt.png');
