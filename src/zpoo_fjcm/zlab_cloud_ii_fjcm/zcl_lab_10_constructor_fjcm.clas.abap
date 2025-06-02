CLASS zcl_lab_10_constructor_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: constructor IMPORTING VALUE(iv_log) TYPE string OPTIONAL.

    CLASS-METHODS: class_constructor.

    CLASS-DATA log TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_fjcm IMPLEMENTATION.

  METHOD constructor.
    me->log = | { log } - 'Instance Constructor called' |.
  ENDMETHOD.

  METHOD class_constructor.
    log = | { log } - 'Static constructor called' |.
  ENDMETHOD.

ENDCLASS.


