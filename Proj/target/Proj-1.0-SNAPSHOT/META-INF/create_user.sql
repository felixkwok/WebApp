/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  felix
 * Created: 2022年5月5日
 */
DROP TABLE users;
DROP TABLE userRole;
DROP TABLE user_information;

CREATE TABLE users (
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (username)
);


CREATE TABLE user_roles (
    user_roles_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    username VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    PRIMARY KEY (user_roles_id),
    FOREIGN KEY (username) REFERENCES users(username)
);

CREATE TABLE user_information (
    username VARCHAR(50) NOT NULL, 
    fullname VARCHAR(50) NOT NULL, 
    phone VARCHAR(50) NOT NULL, 
    address VARCHAR(50) NOT NULL
);

INSERT INTO users VALUES ('admin', '{noop}admin');
INSERT INTO user_roles(username, role) VALUES ('john', 'ROLE_ADMIN');

INSERT INTO users VALUES ('lecturer', '{noop}lecturer');
INSERT INTO user_roles(username, role) VALUES ('student', 'ROLE_LECTURER');

INSERT INTO users VALUES ('user', '{noop}user');
INSERT INTO user_roles(username, role) VALUES ('user', 'ROLE_USER');

INSERT INTO users VALUES ('student', '{noop}student');
INSERT INTO user_roles(username, role) VALUES ('student', 'ROLE_STUDENT');

