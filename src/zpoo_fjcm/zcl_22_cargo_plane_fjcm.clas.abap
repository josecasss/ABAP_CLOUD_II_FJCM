CLASS zcl_22_cargo_plane_fjcm DEFINITION
  PUBLIC
  INHERITING FROM zcl_21_airplane_fjcm
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_22_cargo_plane_fjcm IMPLEMENTATION.

  METHOD airplane_type.
    rv_airline_type = 'Cargo Plane'.
  ENDMETHOD.

ENDCLASS.
