CLASS zcl_lab_33_expatriate_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_fjcm .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_33_expatriate_fjcm IMPLEMENTATION.


  METHOD zif_lab_04_employee_fjcm~get_employee_count.
  rv_count = 5.
  ENDMETHOD.
ENDCLASS.
