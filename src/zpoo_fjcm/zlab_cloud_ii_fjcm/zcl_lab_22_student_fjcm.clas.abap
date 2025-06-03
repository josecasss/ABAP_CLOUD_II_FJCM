CLASS zcl_lab_22_student_fjcm DEFINITION INHERITING FROM zcl_lab_21_classroom_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: assign_student.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_fjcm IMPLEMENTATION.

  METHOD assign_student.
  DATA(lo_student) = NEW zcl_lab_21_classroom_fjcm( ).
  ENDMETHOD.

ENDCLASS.
