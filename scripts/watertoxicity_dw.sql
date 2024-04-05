CREATE SCHEMA INSTANCE;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_analyte ( 
	analyte_id int64 NOT NULL  ,
	analyte_name string  ,
	dw_analyte_name string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_analyte ADD PRIMARY KEY ( analyte_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_collection ( 
	collection_id int64 NOT NULL  ,
	collection_time string  ,
	collectiondepth numeric  ,
	collectionmethod string  ,
	collectiondevice string  ,
	positionwatercolumn string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_collection ADD PRIMARY KEY ( collection_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_date ( 
	date_id int64 NOT NULL  ,
	date date  ,
	year int64  ,
	quarter int64  ,
	month int64  ,
	day date  ,
	weekday string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_sample ( 
	sample_id int64 NOT NULL  ,
	sampletypecode string  ,
	sampledate date  ,
	samplecomments string  ,
	dataquality string  ,
	dataqualityindicator string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_sample ADD PRIMARY KEY ( sample_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_station ( 
	station_id int64 NOT NULL  ,
	stationcode string  ,
	stationname string  ,
	latitude numeric  ,
	longitude numeric  ,
	datum string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_station ADD PRIMARY KEY ( station_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.facts_waterquality ( 
	fact_id int64 NOT NULL  ,
	station_id int64 NOT NULL  ,
	date_id int64 NOT NULL  ,
	analyte_id int64 NOT NULL  ,
	collectiondepth numeric  ,
	result numeric  ,
	calculatedvalue numeric  ,
	sample_id int64 NOT NULL  ,
	collection_id int64 NOT NULL  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.facts_waterquality ADD PRIMARY KEY ( fact_id )  NOT ENFORCED;
