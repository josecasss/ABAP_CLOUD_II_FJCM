CLASS zcl_lab_36_phone_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor IMPORTING iv_screen TYPE REF TO zcl_lab_37_screen_fjcm.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: screen TYPE REF TO zcl_lab_37_screen_fjcm.

ENDCLASS.



CLASS zcl_lab_36_phone_fjcm IMPLEMENTATION.

  METHOD constructor.
    me->screen = iv_screen.
  ENDMETHOD.



ENDCLASS.
