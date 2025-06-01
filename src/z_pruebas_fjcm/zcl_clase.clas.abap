CLASS zcl_clase DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: person TYPE string,
          age    TYPE i,
          height TYPE f.

    METHODS set_person IMPORTING iv_name   TYPE string
                                 iv_age    TYPE i
                                 iv_height TYPE f.

    METHODS get_person EXPORTING ev_name   TYPE string
                                 ev_age    TYPE i
                                 ev_height TYPE f.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_clase IMPLEMENTATION.
  METHOD set_person.

    person = iv_name.
    age = iv_age.
    height = iv_height.

  ENDMETHOD.

  METHOD get_person.

    ev_name = person.
    ev_age = age.
    ev_height = height.

  ENDMETHOD.

ENDCLASS.
