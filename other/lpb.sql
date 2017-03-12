CREATE TABLE INGREDIENT (
IngredientID Int AUTO_INCREMENT NOT NULL,
IngredientName Char(25) NOT NULL,
Quantity Int NULL,
IngredientURL Char(200),
CONSTRAINT INGREDIENT_PK PRIMARY KEY (IngredientID)
);

CREATE TABLE recipe (
recipe_id Int AUTO_INCREMENT NOT NULL,
recipe_name Char(30) NOT NULL,
author_id Int NOT NULL,
directions LongText NOT NULL,
notes Char(255) NULL,
CONSTRAINT RECIPE_PK PRIMARY KEY (recipe_id),
CONSTRAINT RECIPE_FK FOREIGN KEY (author_id) REFERENCES author (author_id)
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
author_id Int AUTO_INCREMENT NOT NULL,
first_name Char(30) NOT NULL,
last_name Char(30) NOT NULL,
website Char(30) NOT NULL,
description Char(255)  NOT NULL,
notes Char(255) NULL,
CONSTRAINT AUTHOR_PK PRIMARY KEY (author_id)
);

INSERT INTO `author` VALUES 
	(1,'David','Adams','david@luv2code.com', 'description', 'notes'),
	(2,'John','Doe','john@luv2code.com', 'description', 'notes'),
	(3,'Ajay','Rao','ajay@luv2code.com', 'description', 'notes'),
	(4,'Mary','Public','mary@luv2code.com', 'description', 'notes'),
	(5,'Maxwell','Dixon','max@luv2code.com', 'description', 'notes');
	
INSERT INTO `recipe` VALUES 
	(1,'Recipe1',1,'Adams', 'notes'),
	(2,'Recipe2',2,'Doe', 'notes'),
	(3,'Recipe3',2,'Rao',  'notes'),
	(4,'Recipe4',3,'Public', 'notes'),
	(5,'Recipe5',4,'Dixon', 'notes'),
	(6,'Recipe4',5,'Public', 'notes');