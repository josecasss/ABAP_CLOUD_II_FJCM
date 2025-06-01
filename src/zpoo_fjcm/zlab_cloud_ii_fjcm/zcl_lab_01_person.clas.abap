CLASS zcl_lab_01_person DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_age IMPORTING VALUE(iv_age) TYPE i, " SET = "Lo que me dan, lo guardo en mi caja
             get_age EXPORTING VALUE(ev_age) TYPE i. " GET = "Lo que tengo en mi caja, lo entrego
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: age TYPE i.
ENDCLASS.



CLASS zcl_lab_01_person IMPLEMENTATION.

  METHOD set_age.

  age = iv_age. " Assign the input age to the private data attribute

  ENDMETHOD.

  METHOD get_age.

  ev_age = age. " Return the age of the person

  ENDMETHOD.

ENDCLASS.
