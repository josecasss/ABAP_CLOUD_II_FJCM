CLASS zcl_lab_20_person_fjcm DEFINITION
  PUBLIC
"  CREATE PRIVATE. "Solo la misma clase puede crear instancias
CREATE PUBLIC.

  PUBLIC SECTION.
  PROTECTED SECTION.

  DATA: name TYPE string.

  METHODS: set_name FINAL importing iv_name TYPE string.

  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_20_person_fjcm IMPLEMENTATION.
  METHOD set_name.

  ENDMETHOD.

ENDCLASS.
