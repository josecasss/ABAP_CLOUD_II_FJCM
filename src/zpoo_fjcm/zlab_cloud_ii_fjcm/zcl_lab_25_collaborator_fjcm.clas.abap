CLASS zcl_lab_25_collaborator_fjcm DEFINITION INHERITING FROM zcl_lab_24_partner_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  methods: get_capital RETURNING VALUE(rv_capital) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator_fjcm IMPLEMENTATION.

  METHOD get_capital.

  DATA(lo_capital) = NEW ZCL_LAB_23_COMPANY_fjcm( ).

  rv_capital = lo_capital->capital.

  ENDMETHOD.

ENDCLASS.
