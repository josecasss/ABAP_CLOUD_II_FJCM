CLASS zcl_lab_41_organization_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_headquaters IMPORTING iv_headquaters TYPE string,
      get_headquaters RETURNING VALUE(rv_headquaters) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: headquaters TYPE string.
ENDCLASS.



CLASS zcl_lab_41_organization_fjcm IMPLEMENTATION.

  METHOD set_headquaters.
    me->headquaters = iv_headquaters.
  ENDMETHOD.

  METHOD get_headquaters.
    rv_headquaters = me->headquaters.
  ENDMETHOD.

ENDCLASS.
