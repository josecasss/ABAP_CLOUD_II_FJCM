CLASS zcl_lab_01_ejec_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_fjcm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_person) = NEW zcl_lab_01_person( ).

    lo_person->set_age( 25 ).
    lo_person->get_age(
      IMPORTING
        ev_age = DATA(lv_age) ).

    out->write( |The age of the person is { lv_age }| ).


    DATA(lo_flight) = NEW zcl_lab_01_flight( ).

    DATA(lv_valid) = lo_flight->validate_flight(
      EXPORTING
        iv_carrier    = 'LP'
        iv_connection = '0400'
*      RECEIVING
*        rv_flight     =
    ).

    out->write( lv_valid ).










  ENDMETHOD.
ENDCLASS.
