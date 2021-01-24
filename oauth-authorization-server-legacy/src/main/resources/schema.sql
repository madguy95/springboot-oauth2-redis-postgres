--------------- H2 ---------------
--
--drop table if exists oauth_client_details;
--create table oauth_client_details (
--  client_id VARCHAR(255) PRIMARY KEY,
--  resource_ids VARCHAR(255),
--  client_secret VARCHAR(255),
--  scope VARCHAR(255),
--  authorized_grant_types VARCHAR(255),
--  web_server_redirect_uri VARCHAR(255),
--  authorities VARCHAR(255),
--  access_token_validity INTEGER,
--  refresh_token_validity INTEGER,
--  additional_information VARCHAR(4096),
--  autoapprove VARCHAR(255)
--);
--
--create table if not exists oauth_client_token (
--  token_id VARCHAR(255),
--  token LONGVARBINARY,
--  authentication_id VARCHAR(255) PRIMARY KEY,
--  user_name VARCHAR(255),
--  client_id VARCHAR(255)
--);
--
--create table if not exists oauth_access_token (
--  token_id VARCHAR(255),
--  token LONGVARBINARY,
--  authentication_id VARCHAR(255) PRIMARY KEY,
--  user_name VARCHAR(255),
--  client_id VARCHAR(255),
--  authentication LONGVARBINARY,
--  refresh_token VARCHAR(255)
--);
--
--create table if not exists oauth_refresh_token (
--  token_id VARCHAR(255),
--  token LONGVARBINARY,
--  authentication LONGVARBINARY
--);
--
--create table if not exists oauth_code (
--  code VARCHAR(255), authentication LONGVARBINARY
--);
--
--create table if not exists oauth_approvals (
--	userId VARCHAR(255),
--	clientId VARCHAR(255),
--	scope VARCHAR(255),
--	status VARCHAR(10),
--	expiresAt TIMESTAMP,
--	lastModifiedAt TIMESTAMP
--);
--
--create table if not exists ClientDetails (
--  appId VARCHAR(255) PRIMARY KEY,
--  resourceIds VARCHAR(255),
--  appSecret VARCHAR(255),
--  scope VARCHAR(255),
--  grantTypes VARCHAR(255),
--  redirectUrl VARCHAR(255),
--  authorities VARCHAR(255),
--  access_token_validity INTEGER,
--  refresh_token_validity INTEGER,
--  additionalInformation VARCHAR(4096),
--  autoApproveScopes VARCHAR(255)
--);

--------------- MySQL ---------------
--drop table if exists oauth_client_details;
--create table oauth_client_details (
--  client_id VARCHAR(255) PRIMARY KEY,
--  resource_ids VARCHAR(255),
--  client_secret VARCHAR(255),
--  scope VARCHAR(255),
--  authorized_grant_types VARCHAR(255),
--  web_server_redirect_uri VARCHAR(255),
--  authorities VARCHAR(255),
--  access_token_validity INTEGER,
--  refresh_token_validity INTEGER,
--  additional_information VARCHAR(4096),
--  autoapprove VARCHAR(255)
--);
--
--create table if not exists oauth_client_token (
--  token_id VARCHAR(255),
--  token LONG VARBINARY,
--  authentication_id VARCHAR(255) PRIMARY KEY,
--  user_name VARCHAR(255),
--  client_id VARCHAR(255)
--);
--
--create table if not exists oauth_access_token (
--  token_id VARCHAR(255),
--  token LONG VARBINARY,
--  authentication_id VARCHAR(255) PRIMARY KEY,
--  user_name VARCHAR(255),
--  client_id VARCHAR(255),
--  authentication LONG VARBINARY,
--  refresh_token VARCHAR(255)
--);
--
--create table if not exists oauth_refresh_token (
--  token_id VARCHAR(255),
--  token LONG VARBINARY,
--  authentication LONG VARBINARY
--);
--
--create table if not exists oauth_code (
--  code VARCHAR(255), authentication LONG VARBINARY
--);
--
--create table if not exists oauth_approvals (
--	userId VARCHAR(255),
--	clientId VARCHAR(255),
--	scope VARCHAR(255),
--	status VARCHAR(10),
--	expiresAt TIMESTAMP,
--	lastModifiedAt TIMESTAMP
--);
--
--create table if not exists ClientDetails (
--  appId VARCHAR(255) PRIMARY KEY,
--  resourceIds VARCHAR(255),
--  appSecret VARCHAR(255),
--  scope VARCHAR(255),
--  grantTypes VARCHAR(255),
--  redirectUrl VARCHAR(255),
--  authorities VARCHAR(255),
--  access_token_validity INTEGER,
--  refresh_token_validity INTEGER,
--  additionalInformation VARCHAR(4096),
--  autoApproveScopes VARCHAR(255)
--);

---------------------Postgres---------------------
drop table if exists oauth_client_details;
create table oauth_client_details (
  client_id VARCHAR(256) PRIMARY KEY,
  resource_ids VARCHAR(256),
  client_secret VARCHAR(256),
  scope VARCHAR(256),
  authorized_grant_types VARCHAR(256),
  web_server_redirect_uri VARCHAR(256),
  authorities VARCHAR(256),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(256)
);

drop table if exists oauth_client_token;
create table oauth_client_token (
  token_id VARCHAR(256),
  token bytea,
  authentication_id VARCHAR(256),
  user_name VARCHAR(256),
  client_id VARCHAR(256)
);

drop table if exists oauth_access_token;
create table oauth_access_token (
  token_id VARCHAR(256),
  token bytea,
  authentication_id VARCHAR(256),
  user_name VARCHAR(256),
  client_id VARCHAR(256),
  authentication bytea,
  refresh_token VARCHAR(256)
);

drop table if exists oauth_refresh_token;
create table oauth_refresh_token (
  token_id VARCHAR(256),
  token bytea,
  authentication bytea
);

drop table if exists oauth_code;
create table oauth_code (
  code VARCHAR(256), authentication bytea
);

drop table if exists oauth_approvals;
create table oauth_approvals (
  userId VARCHAR(256),
  clientId VARCHAR(256),
  scope VARCHAR(256),
  status VARCHAR(10),
  expiresAt TIMESTAMP,
  lastModifiedAt TIMESTAMP
);

drop table if exists ClientDetails;
create table if not exists ClientDetails (
  appId VARCHAR(255) PRIMARY KEY,
  resourceIds VARCHAR(255),
  appSecret VARCHAR(255),
  scope VARCHAR(255),
  grantTypes VARCHAR(255),
  redirectUrl VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additionalInformation VARCHAR(4096),
  autoApproveScopes VARCHAR(255)
);