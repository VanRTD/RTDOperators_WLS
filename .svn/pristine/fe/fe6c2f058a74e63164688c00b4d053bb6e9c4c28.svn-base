CREATE OR REPLACE PROCEDURE             DSETL_OPERATOR_INFO AS
/******************************************************************************
   NAME:       DSETL_OPERATOR_INFO
   PURPOSE:    A DataStage job will call this PROCEDURE for update
               or insert or delete record in OPERATOR_INFO table.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/12/2006  ZHI-YONG ZHANG   1. Created this function for update
                                              or insert or delete record in
                                              OPERATOR_INFO table.
********************************************************************************/
  v_OPERATOR_RTD_ID               VARCHAR2(20);
  v_OPERATOR_NAME                 VARCHAR2(40);
  v_OPERATOR_SS_NUM               VARCHAR2(100);
  v_OPERATOR_DOB                  VARCHAR2(100);
  v_OPERATOR_UNION_CONTRACT_DATE  VARCHAR2(100);
  v_TERMINATED_DATE               DATE;
  v_IsExist                       INTEGER := 0;

  CURSOR OPERATOR_INFO_cur
   IS select OPERATOR_RTD_ID, OPERATOR_NAME, OPERATOR_SS_NUM,
      OPERATOR_DOB, OPERATOR_UNION_CONTRACT_DATE
   from OPERATOR_INFO;

  CURSOR OPERATOR_INFO_STAGING_cur
   IS select OPERATOR_RTD_ID, OPERATOR_NAME, OPERATOR_SS_NUM,
      OPERATOR_DOB, OPERATOR_UNION_CONTRACT_DATE, TERMINATED_DATE
   from OPERATOR_INFO_STAGING
   where TERMINATED_DATE IS Null;

BEGIN

--
-- RTD Employee with TERMINATED_DATE
--
--    Delete from OPERATOR_USERS
--        where OPERATOR_RTD_ID in
--        (select OPERATOR_RTD_ID from OPERATOR_INFO_STAGING
--            where TERMINATED_DATE is not null);
--
--    Delete from AUTHORITIES
--        where OPERATOR_RTD_ID in
--        (select OPERATOR_RTD_ID from OPERATOR_INFO_STAGING
--            where TERMINATED_DATE is not null);

    Delete from OPERATOR_INFO
        where OPERATOR_RTD_ID in
        (select OPERATOR_RTD_ID from OPERATOR_INFO_STAGING
            where TERMINATED_DATE is not null);

    COMMIT;

   FOR OPERATOR_INFO_ITEM in OPERATOR_INFO_cur LOOP  --update
        v_IsExist := 0;
        SELECT COUNT(*)
        INTO v_IsExist
        FROM OPERATOR_INFO_STAGING
        WHERE OPERATOR_RTD_ID = OPERATOR_INFO_ITEM.OPERATOR_RTD_ID;

        IF v_IsExist > 0 THEN   -- this record is existing on both

            SELECT  OPERATOR_RTD_ID,
                    OPERATOR_NAME,
                    OPERATOR_SS_NUM,
                    OPERATOR_DOB,
                    OPERATOR_UNION_CONTRACT_DATE,
                    TERMINATED_DATE
            INTO    v_OPERATOR_RTD_ID,
                    v_OPERATOR_NAME,
                    v_OPERATOR_SS_NUM,
                    v_OPERATOR_DOB,
                    v_OPERATOR_UNION_CONTRACT_DATE,
                    v_TERMINATED_DATE
            FROM OPERATOR_INFO_STAGING
            WHERE OPERATOR_RTD_ID = OPERATOR_INFO_ITEM.OPERATOR_RTD_ID;

            UPDATE OPERATOR_INFO
            SET OPERATOR_NAME = v_OPERATOR_NAME,
                OPERATOR_SS_NUM = v_OPERATOR_SS_NUM,
                OPERATOR_DOB = v_OPERATOR_DOB,
                OPERATOR_UNION_CONTRACT_DATE = v_OPERATOR_UNION_CONTRACT_DATE
            WHERE OPERATOR_RTD_ID = OPERATOR_INFO_ITEM.OPERATOR_RTD_ID;
            COMMIT;
        ELSE
--
-- Delete Contractor (No TERMINATED_DATE)
-- This record only exists on OPERATOR_INFO but not in OPERATOR_INFO_STAGING
--
--            DELETE FROM OPERATOR_USERS
--            WHERE OPERATOR_RTD_ID = OPERATOR_INFO_ITEM.OPERATOR_RTD_ID;
--
--            DELETE FROM AUTHORITIES
--            WHERE OPERATOR_RTD_ID = OPERATOR_INFO_ITEM.OPERATOR_RTD_ID;

            DELETE FROM OPERATOR_INFO
            WHERE OPERATOR_RTD_ID = OPERATOR_INFO_ITEM.OPERATOR_RTD_ID;

            COMMIT;

        END IF;


   END LOOP;
--
-- Add RTD Employee and Contractor
--

   FOR OPERATOR_INFO_STAGING_ITEM in OPERATOR_INFO_STAGING_cur LOOP
        v_IsExist := 0;
        SELECT COUNT(*)
        INTO v_IsExist
        FROM OPERATOR_INFO
        WHERE OPERATOR_RTD_ID = OPERATOR_INFO_STAGING_ITEM.OPERATOR_RTD_ID;

        IF v_IsExist = 0 THEN   --inserte new
        INSERT INTO OPERATOR_INFO
            (OPERATOR_RTD_ID,
            OPERATOR_NAME,
            OPERATOR_SS_NUM,
            OPERATOR_DOB,
            OPERATOR_UNION_CONTRACT_DATE
            )
            VALUES (
            OPERATOR_INFO_STAGING_ITEM.OPERATOR_RTD_ID,
            OPERATOR_INFO_STAGING_ITEM.OPERATOR_NAME,
            OPERATOR_INFO_STAGING_ITEM.OPERATOR_SS_NUM,
            OPERATOR_INFO_STAGING_ITEM.OPERATOR_DOB,
            OPERATOR_INFO_STAGING_ITEM.OPERATOR_UNION_CONTRACT_DATE
            );

        END IF;

   END LOOP;

   COMMIT;

EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
      DBMS_OUTPUT.put_line (SQLERRM);
      -- RETURN SQLERRM;
      -- Consider logging the error and then re-raise
      RAISE;
END DSETL_OPERATOR_INFO;
/


