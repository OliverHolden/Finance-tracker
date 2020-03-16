\c financetracker

create table if not exists "Bank_Accounts"
(
    B_ID serial,
    Bank varchar(30),
    Type varchar(30),
    PRIMARY KEY (B_ID)
);

create table if not exists "Transactions"
(
	T_ID serial not null,
	T_Date DATE,
	B_ID integer,
	Transactor varchar(30),
	T_Value double precision,
	T_Type varchar(50),
	T_Category varchar(30),
	T_Sub_Category varchar(30),
	T_Comments varchar(200),
	PRIMARY KEY (T_ID),
	FOREIGN KEY (B_ID) REFERENCES "Bank_Accounts" (B_ID)
);

create table if not exists "Events"
(
	E_ID serial,
	E_Name varchar(30),
	E_Description varchar(30),
	Start_Date date,
	End_Date date,
	PRIMARY KEY (E_ID)
);

create table if not exists "Event_Transactions"
(
	E_ID integer not null,
	T_ID integer not null,
	FOREIGN KEY (E_ID) REFERENCES "Events" (E_ID),
	FOREIGN KEY (T_ID) REFERENCES "Transactions" (T_ID)

);

create table if not exists "Refunds"
(
	R_ID serial,
	R_Date DATE,
	T_ID integer,
	R_VALUE double precision,
	PRIMARY KEY (R_ID),
	FOREIGN KEY (T_ID) REFERENCES "Transactions" (T_ID)
);

create table if not exists "Student_Loan"
(
	SL_ID serial,
	T_ID integer,
	Amount double precision,
	PRIMARY KEY (SL_ID),
	FOREIGN KEY (T_ID) REFERENCES "Transactions" (T_ID)
);

create table if not exists "NI"
(
	NI_ID serial,
	T_ID integer,
	Amount double precision,
	E_Contribution double precision,
	PRIMARY KEY (NI_ID),
	FOREIGN KEY (T_ID) REFERENCES "Transactions" (T_ID)
);

create table if not exists "Pension"
(
	P_ID serial,
	T_ID integer,
	Amount double precision,
	Pension_Holder varchar(30),
	E_Contribution double precision,
	PRIMARY KEY (P_ID),
	FOREIGN KEY (T_ID) REFERENCES "Transactions" (T_ID)
);

create table if not exists "Tax"
(
	TAX_ID serial,
	T_ID integer,
	Amount double precision,
	PRIMARY KEY (TAX_ID),
	FOREIGN KEY (T_ID) REFERENCES "Transactions" (T_ID)
);

create table if not exists "Balance"
(
	B_ID serial not null,
	Date date,
	Balance double precision,

);

create table if not exists "PAYEE"
(
	P_ID serial,
	NAME varchar(50)
);

create table if not exists "EXPENDITURE CATEGORIES"
(
	CAT_ID integer,
	CAT_NAME varchar
);

create table if not exists "EXPENDITURE SUB CATEGORIES"
(
	SUB_CAT_ID integer,
	SUB_CAT_NAME varchar(30)
);

create table if not exists "INCOME CATEGORIES"
(
	CAT_ID integer,
	CAT_NAME varchar(30)
);

create table if not exists "INCOME SUB CATEGORIES"
(
	SUB_CAT_ID integer,
	SUB_CAT_NAME varchar(30)
);



