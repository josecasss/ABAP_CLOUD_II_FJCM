CLASS zcl_lab_13_view_fjcm DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: constructor IMPORTING VALUE(iv_view_type) TYPE string.

  PROTECTED SECTION.
    DATA: view_type TYPE string,
          box       TYPE string.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_13_view_fjcm IMPLEMENTATION.

  METHOD constructor.
    me->view_type = iv_view_type.
  ENDMETHOD.

ENDCLASS.
