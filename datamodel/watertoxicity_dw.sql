CREATE SCHEMA INSTANCE;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_analyte ( 
	analyte_id int64 NOT NULL  ,
	dw_analyte_name string  ,
	analytedescr string  ,
	group1 string  ,
	group2 string  ,
	group3 string  ,
	group4 string  ,
	analytedate date  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_analyte ADD PRIMARY KEY ( analyte_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_collection ( 
	collection_id int64 NOT NULL  ,
	collection_time string  ,
	collectiondepth numeric(10,5)  ,
	collectiondevice string  ,
	positionwatercolumn string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_collection ADD PRIMARY KEY ( collection_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.dim_date ( 
	date_id int64 NOT NULL  ,
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
	stationname string  ,
	latitude numeric(10,5)  ,
	longitude numeric(10,5)  ,
	datum string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.dim_station ADD PRIMARY KEY ( station_id )  NOT ENFORCED;

CREATE TABLE watertoxicity_lgl.INSTANCE.facts_waterquality ( 
	sample_id int64 NOT NULL  ,
	fact_id int64 NOT NULL  ,
	station_id int64 NOT NULL  ,
	analyte_id int64 NOT NULL  ,
	collection_id int64 NOT NULL  ,
	date_id int64 NOT NULL  ,
	percenteffect int64 NOT NULL  ,
	calculatedvalue int64  ,
	evalthreshold numeric(10,5)  ,
	dilution numeric(10,5)  ,
	result string  
 );

ALTER TABLE watertoxicity_lgl.INSTANCE.facts_waterquality ADD PRIMARY KEY ( fact_id, date_id, collection_id, station_id, sample_id, analyte_id )  NOT ENFORCED;
