CLASS zcl_lab_37_screen_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_screen_type IMPORTING iv_screen_type TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: screen_type TYPE string.
ENDCLASS.



CLASS zcl_lab_37_screen_fjcm IMPLEMENTATION.

  METHOD set_screen_type.
  me->screen_type = iv_screen_type.
  ENDMETHOD.

ENDCLASS.
