CLASS zcl_24_company_eu_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_08_co_company_fjcm .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_24_company_eu_fjcm IMPLEMENTATION.


  METHOD zif_08_co_company_fjcm~define_company.
  rv_company = 'Company Europe 01'.
  ENDMETHOD.
ENDCLASS.
