--member ȸ�� ���̺�
CREATE TABLE user(
userid VARCHAR2(30),
username VARCHAR2(30) NOT NULL,
password VARCHAR2(30) NOT NULL,
phone_number NUMBER(30) NOT NULL,
email_top VARCHAR2(30) NOT NULL,
state VARCHAR2 (20) NOT NULL, --��/��
city VARCHAR2 (25) NOT NULL, --��/��/��
detail_address1 VARCHAR2(50), --��/��/��
detail_address2 VARCHAR2(50), --���ּ�
bank_account NUMBER(60) DEFAULT NULL,
bank_name VARCHAR2(20) DEFAULT NULL,
CONSTRAINT user_id_pk PRIMARY KEY(userid),
CONSTRAINT user_email_uk UNIQUE(email_top),
CONSTRAINT user_phone_uk UNIQUE(phone_number)
);

--garden �Թ� ���̺�
CREATE TABLE garden(
id NUMBER(1),
name VARCHAR2(20) NOT NULL,
area NUMBER(10),
phone_number NUMBER(30),
operator VARCHAR2(30), --���ü
longitude NUMBER(5,6), --���浵
latitude NUMBER(5,6), --���浵
state VARCHAR2 (20), --��/��
city VARCHAR2 (25) , --��/��/��
detail_address1 VARCHAR2(50), --��/��/��
detail_address2 VARCHAR2(50), --���ּ�
userid VARCHAR2(30),
CONSTRAINT garden_id_pk PRIMARY KEY (id),
CONSTRAINT garden_mem_fk FOREIGN KEY(userid)
REFERENCES user(userid)
);

CREATE TABLE parcel( -- parcel �о� ���̺�
seller_id VARCHAR2(30),
buyer_id VARCHAR2(30),
garden_id NUMBER(1),
CONSTRAINT parcel_pk PRIMARY KEY (seller_id,buyer_id,garden_id),
CONSTRAINT parcel_seller_fk FOREIGN KEY (seller_id)
REFERENCES user(userid),
CONSTRAINT parcel_buyer_fk FOREIGN KEY (buyer_id)
REFERENCES user(userid),
CONSTRAINT parcel_garden_fk FOREIGN KEY (garden_id)
REFERENCES garden(id)
);

CREATE TABLE text( --������� ��
user_id VARCHAR2(30),
text_id NUMBER(4),
text_contents TEXT,
CONSTRAINT text_pk PRIMARY KEY (user_id,diary_id,text_id),
CONSTRAINT text_user_fk FOREIGN KEY (user_id)
REFERENCES user(userid)
);

CREATE TABLE purchase(
seller_id VARCHAR2(30),
buyer_id VARCHAR2(30),
order_id NUMBER(5),
CONSTRAINT purchase_pk PRIMARY KEY (seller_id,buyer_id,order_id),
CONSTRAINT purchase_seller_fk FOREIGN KEY (seller_id)
REFERENCES user(userid),
CONSTRAINT purchase_buyer_fk FOREIGN KEY(buyer_id)
REFERENCES user(userid),
CONSTRAINT purchase_order_fk FOREIGN KEY (order_id)
REFERENCES order(order_id)
);

CREATE TABLE order(
order_id NUMBER(5),
seller_id VARCHAR2(30),
product_id NUMBER(5),

);
CREATE TABLE product();