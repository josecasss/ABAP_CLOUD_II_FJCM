CLASS zcl_lab_18_animal_fjcm DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: walk RETURNING VALUE(rv_walk) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_18_animal_fjcm IMPLEMENTATION.

  METHOD walk.
  rv_walk = 'The animal is walking'.
  ENDMETHOD.

ENDCLASS.
