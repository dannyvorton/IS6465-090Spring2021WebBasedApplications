create table payment (
    pmt_id int(11) unsigned auto_increment primary key,
    order_id int(11) unsigned not null,
    cust_id int(11) insigned not null,
    credit_card varchar(100) not null,
    payment_date date not null
)
ENGINE MyISAM;

create table employee (
    emp_id int(11) unsigned auto_increment primary key,
    store_id varchar(100) not null,
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
    phone_number varchar(100), -- Do we want to require a phone number?
    address varchar(100) not null,
    username varchar(100) not null,
    password varchar(100) not null -- Have we already learned about password hashing?
)
ENGINE MyISAM;

create table order (
    order_id int(11) unsigned auto_increment primary key,
    emp_id int(11) not null,
    cust_id int(11) not null,
    store_id varchar(100) not null,
    camp_id varchar(100),
    order_date date not null,
    total_price decimal(11, 2) not null
)
ENGINE MyISAM;

create table campaign (
    camp_id int(11) unsigned auto_increment primary key,
    product_id int(11) not null,
    start_date date not null,
    end_date date not null
)
ENGINE MyISAM;

create table shipping (
    ship_id int(11) unsigned auto_increment primary key,
    ship_date date not null,
    delivery_date date not null,
    ship_cost decimal(11, 2) not null,
    tracking_number varchar(100) not null
)
ENGINE MyISAM;

create table vendor (
    vendor_id int(11) unsigned auto_increment primary key;
    vendor_name varchar(100) not null,
    vendor_address varchar(100) not null
)
ENGINE MyISAM;

create table product (
    prod_id int(11) unsigned auto_increment primary key,
    vendor_id int(11) not null,
    prod_name varchar(100) not null,
    prod_type varchar(100) not null
)
ENGINE MyISAM;

create table return (
    return_id int(11) unsigned auto_increment primary key,
    order_id int(11) not null,
    inv_id int(11) not null,
    return_date date not null,
    quantity int(11) not null
)
ENGINE MyISAM;

create table inventory (
    inv_id int(11) unsigned auto_increment primary key,
    prod_id int(11) not null,
    vendor_id int(11) not null,
    store_id varchar(100) not null,
    inv_date date not null,
    quantity int(11) not null,
    cost decimal(11, 2) not null
)
ENGINE MyISAM;