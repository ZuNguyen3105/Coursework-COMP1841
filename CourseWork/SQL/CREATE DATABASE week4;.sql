-- Create the database 'week4'
CREATE DATABASE week4;

-- Use the newly created database
USE week4;

-- Create the 'user' table
CREATE TABLE user (
    id INT(11) AUTO_INCREMENT PRIMARY KEY, -- The 'id' column is the primary key and auto-increments
    name VARCHAR(255) NOT NULL,            -- The 'name' column stores the user's name, cannot be null
    email VARCHAR(255) NOT NULL           -- The 'email' column stores the user's email, cannot be null
);

-- Create the 'module' table
CREATE TABLE module (
    id INT(11) AUTO_INCREMENT PRIMARY KEY, -- The 'id' column is the primary key and auto-increments
    moduleName VARCHAR(255) NOT NULL       -- The 'moduleName' column stores the module's name, cannot be null
);

-- Create the 'post' table
CREATE TABLE post (
    id INT(11) AUTO_INCREMENT PRIMARY KEY, -- The 'id' column is the primary key and auto-increments
    posttext TEXT,                         -- The 'posttext' column stores the post content
    postdate DATE,                         -- The 'postdate' column stores the date of the post
    post_pic VARCHAR(255),                 -- The 'post_pic' column stores the path to the post image
    userid INT(11),                        -- The 'userid' column is a foreign key referencing the 'user' table
    moduleid INT(255),                     -- The 'moduleid' column is a foreign key referencing the 'module' table
    FOREIGN KEY (userid) REFERENCES user(id), -- Defines the foreign key linking to the 'user' table
    FOREIGN KEY (moduleid) REFERENCES module(id) -- Defines the foreign key linking to the 'module' table
);

-- Create the 'md5' table
CREATE TABLE md5 (
    password VARCHAR(32) NOT NULL -- The 'password' column stores the MD5-hashed passwords (fixed length of 32 characters)
);
