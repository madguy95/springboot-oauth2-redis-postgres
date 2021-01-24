/* client_secret column is set as the encrypted value of "secret" - the password for the clients  */
INSERT INTO oauth_client_details
	(client_id, client_secret, scope, authorized_grant_types,
	web_server_redirect_uri, authorities, access_token_validity,
	refresh_token_validity, additional_information, autoapprove)
VALUES
	('fooClientIdPassword', /*secret*/'$2a$10$F2dXfNuFjqezxIZp0ad5OeegW43cRdSiPgEtcetHspiNrUCi3iI6O', 'foo,read,write',
	'password,authorization_code,refresh_token,client_credentials', null, null, 36000, 36000, null, true);
INSERT INTO oauth_client_details
	(client_id, client_secret, scope, authorized_grant_types,
	web_server_redirect_uri, authorities, access_token_validity,
	refresh_token_validity, additional_information, autoapprove)
VALUES
	('sampleClientId', /*secret*/'$2a$10$F2dXfNuFjqezxIZp0ad5OeegW43cRdSiPgEtcetHspiNrUCi3iI6O', 'read,write,foo,bar',
	'implicit', null, null, 36000, 36000, null, false);
INSERT INTO oauth_client_details
	(client_id, client_secret, scope, authorized_grant_types,
	web_server_redirect_uri, authorities, access_token_validity,
	refresh_token_validity, additional_information, autoapprove)
VALUES
	('barClientIdPassword', /*secret*/'$2a$10$F2dXfNuFjqezxIZp0ad5OeegW43cRdSiPgEtcetHspiNrUCi3iI6O', 'bar,read,write',
	'password,authorization_code,refresh_token', null, null, 36000, 36000, null, true);

-- User
INSERT INTO USER_
(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED,
CREDENTIALS_EXPIRED, ENABLED)
VALUES
	(1, 'admin', /*123*/'$2a$10$HBhn9FQK3oS0ytpQpeL7juDtK.eObojblY4KwjYGryLx946ZUSNii', false, false, false, true);

INSERT INTO USER_
(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED,
CREDENTIALS_EXPIRED, ENABLED)
VALUES
	(2, 'fooadmin', /*123*/'$2a$10$HBhn9FQK3oS0ytpQpeL7juDtK.eObojblY4KwjYGryLx946ZUSNii', false, false, false, true);
INSERT INTO USER_
(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED,
CREDENTIALS_EXPIRED, ENABLED)
VALUES
	(3, 'fooreader', /*123*/'$2a$10$HBhn9FQK3oS0ytpQpeL7juDtK.eObojblY4KwjYGryLx946ZUSNii', false, false, false, true);
	INSERT INTO USER_
(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED,
CREDENTIALS_EXPIRED, ENABLED)
VALUES
	(4, 'john', /*123*/'$2a$10$HBhn9FQK3oS0ytpQpeL7juDtK.eObojblY4KwjYGryLx946ZUSNii', false, false, false, true);
	
--- Permission
INSERT INTO PERMISSION(ID, NAME) VALUES (1, 'FOO_CREATE');
INSERT INTO PERMISSION(ID, NAME) VALUES (2, 'FOO_READ');
INSERT INTO PERMISSION(ID, NAME) VALUES (3, 'FOO_UPDATE');
INSERT INTO PERMISSION(ID, NAME) VALUES (4, 'FOO_DELETE');

-- Role
INSERT INTO ROLE(ID, NAME) VALUES (1, 'ADMIN');
INSERT INTO ROLE(ID, NAME) VALUES (2, 'FOO_ADMIN');
INSERT INTO ROLE(ID, NAME) VALUES (3, 'FOO_READER');


-- ROLES_PERMISSIONS
INSERT INTO ROLES_PERMISSIONS(ROLE_ID, PERMISSION_ID) VALUES (2, 1);
INSERT INTO ROLES_PERMISSIONS(ROLE_ID, PERMISSION_ID) VALUES (2, 2);
INSERT INTO ROLES_PERMISSIONS(ROLE_ID, PERMISSION_ID) VALUES (2, 3);
INSERT INTO ROLES_PERMISSIONS(ROLE_ID, PERMISSION_ID) VALUES (2, 4);

INSERT INTO ROLES_PERMISSIONS(ROLE_ID, PERMISSION_ID) VALUES (3, 2);

--USERS_ROLES
INSERT INTO USERS_ROLES(USER_ID, ROLE_ID) VALUES (1, 1);
INSERT INTO USERS_ROLES(USER_ID, ROLE_ID) VALUES (2, 2);
INSERT INTO USERS_ROLES(USER_ID, ROLE_ID) VALUES (3, 3);
	