CREATE TABLE INGREDIENT (
IngredientID Int AUTO_INCREMENT NOT NULL,
IngredientName Char(25) NOT NULL,
Quantity Int NULL,
IngredientURL Char(200),
CONSTRAINT INGREDIENT_PK PRIMARY KEY (IngredientID)
);

CREATE TABLE recipe (
id Int AUTO_INCREMENT NOT NULL,
recipe_name Char(30) NOT NULL,
directions LongText NOT NULL,
notes Char(255) NULL,
CONSTRAINT RECIPE_PK PRIMARY KEY (id)
);

CREATE TABLE USER (
UserID Int AUTO_INCREMENT NOT NULL,
UserName Char(30) NOT NULL,
Password Char(30) NOT NULL,
Email Char(30) NOT NULL,
Phone Char(30) NOT NULL,
City Char(30) NOT NULL,
CONSTRAINT USER_PK PRIMARY KEY (UserID)
);

CREATE TABLE author (
id Int AUTO_INCREMENT NOT NULL,
first_name Char(30) NOT NULL,
last_name Char(30) NOT NULL,
website Char(30) NOT NULL,
description Char(255)  NOT NULL,
notes Char(255) NULL,
CONSTRAINT AUTHOR_PK PRIMARY KEY (id)
);

INSERT INTO `author` VALUES 
	(1,'David','Adams','david@luv2code.com', 'description', 'notes'),
	(2,'John','Doe','john@luv2code.com', 'description', 'notes'),
	(3,'Ajay','Rao','ajay@luv2code.com', 'description', 'notes'),
	(4,'Mary','Public','mary@luv2code.com', 'description', 'notes'),
	(5,'Maxwell','Dixon','max@luv2code.com', 'description', 'notes');