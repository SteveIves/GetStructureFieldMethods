 
;  SYNERGY DATA LANGUAGE OUTPUT
;
;  REPOSITORY     : D:\GetStructureMethods\Repository\bin\Debug\rpsmain.ism
;                 : D:\GetStructureMethods\Repository\bin\Debug\rpstext.ism
;                 : Version 11.1.2
;
;  GENERATED      : 19-NOV-2020, 17:52:18
;                 : Version 11.1.1f
;  EXPORT OPTIONS : [ALL] 
 
 
Structure PERSON   USER DEFINED
   Description "Person structure"
 
Field FIRST_NAME   Type ALPHA   Size 30
   Description "First name"
 
Field MIDDLE_INITIALS   Type ALPHA   Size 4
   Description "Middle initials"
 
Field LAST_NAME   Type ALPHA   Size 30
   Description "Last name"
 
Group HOME_PHONE   Type DECIMAL   Size 10
   Description "Home phone number"
 
   Field AREA_CODE   Type DECIMAL   Size 3
      Description "Area code"
      Drill Method "lookup_area_code"   Change Method "validate_area_code"
 
   Field NUMBER   Type DECIMAL   Size 7
      Description "Number"
 
Endgroup
 
Group CELL_PHONE   Type DECIMAL   Size 10
   Description "Cell phone"
 
   Field AREA_CODE   Type DECIMAL   Size 3
      Description "Area code"
      Drill Method "lookup_area_code"   Change Method "validate_area_code"
 
   Field NUMBER   Type DECIMAL   Size 7
      Description "Number"
 
Endgroup
 
Structure ADDRESS   USER DEFINED
   Description "Address structure"
 
Field STREET_ADDRESS   Type ALPHA   Size 40
   Description "Street address"
 
Field CITY   Type ALPHA   Size 30
   Description "City"
 
Field STATE   Type ALPHA   Size 2
   Description "State code"
   Drill Method "lookup_state"   Change Method "validate_state"
 
Field ZIP_CODE   Type DECIMAL   Size 9
   Description "Zip code"
 
Structure EMPLOYEE   DBL ISAM
   Description "Employee record"
 
Field EMPLOYEE_ID   Type DECIMAL   Size 6
   Description "Employee ID"
   Drill Method "lookup_employee_id"   Change Method "validate_employee_id"
 
Group PERSONAL_INFO   Reference PERSON   Type ALPHA
   Description "Personal information"
 
Group HOME_ADDRESS   Reference ADDRESS   Type ALPHA
   Description "Home address"
 
Group MAILING_ADDRESS   Reference ADDRESS   Type ALPHA
   Description "Mailing address"
 
Group BILLING_ADDRESS   Reference ADDRESS   Type ALPHA
   Description "Billing address"
 
Field DATE_OF_HIRE   Type DATE   Size 8   Stored YYYYMMDD
   Description "Date of hire"
   Drill Method "calendar"
 
