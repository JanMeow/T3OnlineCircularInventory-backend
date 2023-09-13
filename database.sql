CREATE DATABASE t3_circularmaterial_inventory;


-- \c into t3_circularmaterial_inventory

-- \d t3_circularmaterial_inventory to check ou the columns

CREATE TABLE windows(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    price_euro FLOAT4,
    location VARCHAR,
    quantity SMALLINT,
    url VARCHAR,
    image VARCHAR,
    material VARCHAR,
    condition VARCHAR,
    colour VARCHAR,

    dimension_length_cm FLOAT4,
    dimension_width_cm FLOAT4,
    dimension_height_cm FLOAT4,
    model VARCHAR,
    co2_saved_kg FLOAT4,
    price_compared_to_new_euro FLOAT4,

    number_of_Flugels SMALLINT,
    glazing_type VARCHAR
   
);

CREATE TABLE doors(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    price_euro FLOAT4,
    location VARCHAR,
    quantity SMALLINT,
    url VARCHAR,
    image VARCHAR,
    material VARCHAR,
    condition VARCHAR,
    colour VARCHAR,

    dimension_length_cm FLOAT4,
    dimension_width_cm FLOAT4,
    dimension_height_cm FLOAT4,
    model VARCHAR,
    co2_saved_kg FLOAT4,
    price_compared_to_new_euro FLOAT4,


    door_type BOOLEAN,
    handles BOOLEAN,
    hinges BOOLEAN,
    lockcase BOOLEAN,
    key BOOLEAN,
    door_swing_direction BOOLEAN,
    weight_kg FLOAT4

);


-- condition == description for facade element
CREATE TABLE facadeelements(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    price_euro FLOAT4,
    location VARCHAR,
    quantity SMALLINT,
    url VARCHAR,
    image VARCHAR,
    material VARCHAR,
    condition VARCHAR,
    colour VARCHAR,

    dimension_length_cm FLOAT4,
    dimension_width_cm FLOAT4,
    dimension_height_cm FLOAT4,
    model VARCHAR,
    co2_saved_kg FLOAT4,
    price_compared_to_new_euro FLOAT4

);

CREATE TABLE bricks(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    price_euro FLOAT4,
    location VARCHAR,
    quantity SMALLINT,
    url VARCHAR,
    material VARCHAR,
    condition VARCHAR,
    colour VARCHAR,



    dimension_length_cm FLOAT4,
    dimension_width_cm FLOAT4,
    dimension_height_cm FLOAT4,
    model VARCHAR,
    co2_saved_kg FLOAT4,
    price_compared_to_new_euro FLOAT4,
    image VARCHAR,

    weight_kg FLOAT4

);

CREATE TABLE primary_key(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    price_euro FLOAT4,
    location VARCHAR,
    quantity SMALLINT,
    url VARCHAR,
    material VARCHAR,
    condition VARCHAR,
    colour VARCHAR,
    dimension_length_cm FLOAT4,
    dimension_width_cm FLOAT4,
    dimension_height_cm FLOAT4,
    model VARCHAR,
    co2_saved_kg FLOAT4,
    price_compared_to_new_euro FLOAT4,
    image VARCHAR
);