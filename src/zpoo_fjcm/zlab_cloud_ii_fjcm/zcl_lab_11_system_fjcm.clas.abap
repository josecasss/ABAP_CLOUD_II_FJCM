CLASS zcl_lab_11_system_fjcm DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: architecture TYPE string VALUE '64bits'.

    METHODS: get_architecture RETURNING VALUE(ev_architecture) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_fjcm IMPLEMENTATION.
  METHOD get_architecture.
    ev_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
