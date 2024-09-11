CREATE TABLE "campaigns" (
    "cf_id" Integer   NOT NULL,
    "contact_id" Integer   NOT NULL,
    "company_name" Varchar(255)   NOT NULL,
    "description" Varchar(255)   NOT NULL,
    "goal" Decimal(7,1)   NOT NULL,
    "pledged" Decimal(7,1)   NOT NULL,
    "backers_count" Integer   NOT NULL,
    "country" Varchar(2)   NOT NULL,
    "currency" Varchar(3)   NOT NULL,
    "launch_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "category_id" Varchar(10)   NOT NULL,
    "subcategory_id" Varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaigns" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" Varchar(10)   NOT NULL,
    "category" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" Varchar(10)   NOT NULL,
    "subcategory" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" Integer   NOT NULL,
    "first_name" Varchar(50)   NOT NULL,
    "last_name" Varchar(50)   NOT NULL,
    "email" Varchar(75)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

Select * from campaigns;

Select * from category;

Select * from subcategory;

Select * from contacts;

