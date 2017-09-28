-- Create Table: users
--------------------------------------------------------------------------------
CREATE TABLE users
(
	id SERIAL
	,nome VARCHAR(250)  NULL 
	,CONSTRAINT PK_users_id PRIMARY KEY (id)
	,CONSTRAINT PK_users_nome PRIMARY KEY (nome)
);



-- Create Table: unities
--------------------------------------------------------------------------------
CREATE TABLE unities
(
	id SERIAL
	,name VARCHAR(250)  NULL 
);



-- Create Table: volumes
--------------------------------------------------------------------------------
CREATE TABLE volumes
(
	id SERIAL
	,unity SERIAL
	,value SERIAL
	,CONSTRAINT PK_volumes_id PRIMARY KEY (id)
	,CONSTRAINT PK_volumes_unity PRIMARY KEY (unity)
	,CONSTRAINT PK_volumes_value PRIMARY KEY (value)
);



-- Create Table: food
--------------------------------------------------------------------------------
CREATE TABLE food
(
	id SERIAL
	,description VARCHAR(250)  NULL 
	,CONSTRAINT PK_food_id PRIMARY KEY (id)
);



-- Create Table: attribute
--------------------------------------------------------------------------------
CREATE TABLE attribute
(
	id SERIAL
	,id_pai INTEGER  NULL 
	,name VARCHAR(250)  NULL 
	,CONSTRAINT PK_attribute_id_pai PRIMARY KEY (id_pai)
);



-- Create Table: cerveja
--------------------------------------------------------------------------------
CREATE TABLE cerveja
(
	id SERIAL
	,name VARCHAR(250)  NULL 
	,description VARCHAR(250)  NULL 
	,brewers_tips VARCHAR(250)  NULL 
	,tagline VARCHAR(250)  NULL 
	,abv DECIMAL(0, 0)  NULL 
	,ph DECIMAL(0, 0)  NULL 
	,attenuation_level VARCHAR(250)  NULL 
	,ebc VARCHAR(250)  NULL 
	,ibu VARCHAR(250)  NULL 
	,srm VARCHAR(250)  NULL 
	,tagline VARCHAR(250)  NULL 
	,target_fg VARCHAR(250)  NULL 
	,target_og VARCHAR(250)  NULL 
	,image_url VARCHAR(250)  NULL 
	,first_brewed VARCHAR(250)  NULL 
	,contributed_by SERIAL
	,boil_volume SERIAL
	,volume SERIAL
	,CONSTRAINT PK_cerveja_id PRIMARY KEY (id)
	,CONSTRAINT PK_cerveja_attenuation_level PRIMARY KEY (attenuation_level)
	,CONSTRAINT PK_cerveja_ebc PRIMARY KEY (ebc)
	,CONSTRAINT PK_cerveja_ibu PRIMARY KEY (ibu)
);



-- Create Table: attributes_volumes
--------------------------------------------------------------------------------
CREATE TABLE attributes_volumes
(
	id_attribute INTEGER  NULL 
	,id_volume INTEGER  NULL 
	,id_cerveja INTEGER  NULL 
	,CONSTRAINT PK_attributes_volumes_id_attribute PRIMARY KEY (id_attribute)
	,CONSTRAINT PK_attributes_volumes_id_volume PRIMARY KEY (id_volume)
	,CONSTRAINT PK_attributes_volumes_id_cerveja PRIMARY KEY (id_cerveja)
);



-- Create Table: food_pairing
--------------------------------------------------------------------------------
CREATE TABLE food_pairing
(
	id_cerveja INTEGER NOT NULL 
	,id_food INTEGER NOT NULL 
	,CONSTRAINT PK_food_pairing_id_cerveja PRIMARY KEY (id_cerveja)
	,CONSTRAINT PK_food_pairing_id_food PRIMARY KEY (id_food)
);



-- Create Foreign Key: food.id -> food_pairing.id_food
ALTER TABLE food ADD CONSTRAINT FK_food_id_food_pairing_id_food FOREIGN KEY (id) REFERENCES food_pairing(id_food);


-- Create Foreign Key: users.id -> cerveja.contributed_by
ALTER TABLE users ADD CONSTRAINT FK_users_id_cerveja_contributed_by FOREIGN KEY (id) REFERENCES cerveja(contributed_by);


-- Create Foreign Key: cerveja.boil_volume -> volumes.id
ALTER TABLE cerveja ADD CONSTRAINT FK_cerveja_boil_volume_volumes_id FOREIGN KEY (boil_volume) REFERENCES volumes(id);


-- Create Foreign Key: cerveja.volume -> volumes.id
ALTER TABLE cerveja ADD CONSTRAINT FK_cerveja_volume_volumes_id FOREIGN KEY (volume) REFERENCES volumes(id);


-- Create Foreign Key: attribute.id_pai -> attribute.id
ALTER TABLE attribute ADD CONSTRAINT FK_attribute_id_pai_attribute_id FOREIGN KEY (id_pai) REFERENCES attribute(id);


-- Create Foreign Key: attributes_volumes.id_attribute -> attribute.id
ALTER TABLE attributes_volumes ADD CONSTRAINT FK_attributes_volumes_id_attribute_attribute_id FOREIGN KEY (id_attribute) REFERENCES attribute(id);


-- Create Foreign Key: attributes_volumes.id_volume -> volumes.id
ALTER TABLE attributes_volumes ADD CONSTRAINT FK_attributes_volumes_id_volume_volumes_id FOREIGN KEY (id_volume) REFERENCES volumes(id);


-- Create Foreign Key: attributes_volumes.id_cerveja -> cerveja.id
ALTER TABLE attributes_volumes ADD CONSTRAINT FK_attributes_volumes_id_cerveja_cerveja_id FOREIGN KEY (id_cerveja) REFERENCES cerveja(id);


-- Create Foreign Key: food_pairing.id_cerveja -> cerveja.id
ALTER TABLE food_pairing ADD CONSTRAINT FK_food_pairing_id_cerveja_cerveja_id FOREIGN KEY (id_cerveja) REFERENCES cerveja(id);


-- Create Foreign Key: unities.id -> volumes.unity
ALTER TABLE unities ADD CONSTRAINT FK_unities_id_volumes_unity FOREIGN KEY (id) REFERENCES volumes(unity);



