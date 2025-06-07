CLASS zcl_23_passenger_plane_fjcm DEFINITION
  PUBLIC
  INHERITING FROM zcl_21_airplane_fjcm
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  methods: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_23_passenger_plane_fjcm IMPLEMENTATION.

  METHOD airplane_type.
  rv_airline_type = 'Passenger Plane'.
  ENDMETHOD.

ENDCLASS.
