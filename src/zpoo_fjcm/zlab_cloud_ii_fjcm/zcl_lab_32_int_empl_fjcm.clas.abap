CLASS zcl_lab_32_int_empl_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_fjcm .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_int_empl_fjcm IMPLEMENTATION.


  METHOD zif_lab_04_employee_fjcm~get_employee_count.
  rv_count = 20.
  ENDMETHOD.
ENDCLASS.
