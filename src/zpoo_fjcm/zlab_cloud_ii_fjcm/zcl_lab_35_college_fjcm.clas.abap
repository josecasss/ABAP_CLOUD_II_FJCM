CLASS zcl_lab_35_college_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: enroll_student IMPORTING iv_student TYPE REF TO zcl_lab_34_student_fjcm.


    DATA: student TYPE REF TO zcl_lab_34_student_fjcm.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_fjcm IMPLEMENTATION.

  METHOD enroll_student.
    me->student = iv_student.
  ENDMETHOD.

ENDCLASS.
