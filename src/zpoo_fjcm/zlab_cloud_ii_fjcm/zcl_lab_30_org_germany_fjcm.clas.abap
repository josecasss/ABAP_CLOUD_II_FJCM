CLASS zcl_lab_30_org_germany_fjcm DEFINITION inHERITING FROM zcl_lab_29_organization_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    Methods: get_location redefinition.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_30_org_germany_fjcm IMPLEMENTATION.

  METHOD get_location.
  rv_location = 'Germany Organizaion'.
  ENDMETHOD.

ENDCLASS.
