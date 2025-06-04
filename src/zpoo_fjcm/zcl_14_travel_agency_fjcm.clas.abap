CLASS zcl_14_travel_agency_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_01_agency_fjcm .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA agency_name TYPE string.

ENDCLASS.


CLASS zcl_14_travel_agency_fjcm IMPLEMENTATION.



  METHOD zif_01_agency_fjcm~get_name.

    rv_name = me->agency_name.

  ENDMETHOD.

  METHOD zif_01_agency_fjcm~set_adress.

    zif_01_agency_fjcm~agency_address = iv_address.

  ENDMETHOD.

  METHOD zif_01_agency_fjcm~set_name.

    me->agency_name = iv_name.

  ENDMETHOD.

  METHOD zif_01_agency_fjcm~get_address.
  rv_address = zif_01_agency_fjcm~agency_address.
  ENDMETHOD.

ENDCLASS.
