ALTER TABLE AM_APPLICATION_KEY_MAPPING ADD CREATE_MODE VARCHAR2(30) DEFAULT 'CREATED';
ALTER TABLE AM_API_LC_EVENT MODIFY USER_ID VARCHAR2(255);
ALTER TABLE AM_APPLICATION_REGISTRATION ADD TOKEN_SCOPE VARCHAR2(256) DEFAULT 'default';
ALTER TABLE AM_APPLICATION_REGISTRATION ADD INPUTS VARCHAR2(256);
ALTER TABLE AM_APPLICATION ADD GROUP_ID VARCHAR2(100);
ALTER TABLE AM_APPLICATION MODIFY NAME VARCHAR2(100);
ALTER TABLE AM_SUBSCRIBER MODIFY USER_ID VARCHAR2(255);
ALTER TABLE AM_API ADD CONTEXT_TEMPLATE VARCHAR2(256);
UPDATE AM_API SET CONTEXT_TEMPLATE = CONTEXT WHERE CONTEXT_TEMPLATE IS NULL;
ALTER TABLE AM_API ADD (CREATED_BY VARCHAR2(100), CREATED_TIME DATE, UPDATED_BY VARCHAR2(100), UPDATED_TIME DATE);
ALTER TABLE AM_SUBSCRIBER ADD (CREATED_BY VARCHAR2(100), CREATED_TIME DATE, UPDATED_BY VARCHAR2(100), UPDATED_TIME DATE);
ALTER TABLE AM_SUBSCRIPTION ADD (CREATED_BY VARCHAR2(100), CREATED_TIME DATE, UPDATED_BY VARCHAR2(100), UPDATED_TIME DATE);
ALTER TABLE AM_APPLICATION ADD (CREATED_BY VARCHAR2(100), CREATED_TIME DATE, UPDATED_BY VARCHAR2(100), UPDATED_TIME DATE);
