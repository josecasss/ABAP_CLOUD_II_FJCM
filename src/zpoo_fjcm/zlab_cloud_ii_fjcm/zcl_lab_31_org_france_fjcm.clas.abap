CLASS zcl_lab_31_org_france_fjcm DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_fjcm
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_31_org_france_fjcm IMPLEMENTATION.

  METHOD get_location.
  rv_location = 'France Organization'.
  ENDMETHOD.

ENDCLASS.
