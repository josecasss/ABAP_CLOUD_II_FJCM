CLASS zcl_lab_24_partner_fjcm DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: get_company_capital RETURNING VALUE(rv_company_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner_fjcm IMPLEMENTATION.

  METHOD get_company_capital.
  DATA(company_capital) = NEW zcl_lab_23_company_fjcm( ).
  rv_company_capital = company_capital->capital.
  ENDMETHOD.
ENDCLASS.
