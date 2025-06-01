CLASS zcl_lab_01_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

      CONSTANTS: BEGIN OF cs_country_codes,
                 norway     TYPE string VALUE 'NO',
                 argentina  TYPE string VALUE 'AR',
                 polonia TYPE string VALUE 'PL',
                 peru TYPE string VALUE 'PE',
               END OF cs_country_codes.

    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    CLASS-DATA: ms_object TYPE ty_elem_objects.

    CLASS-METHODS: set_objects IMPORTING VALUE(iv_ms_object) TYPE ty_elem_objects.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_elements IMPLEMENTATION.

  METHOD set_objects.

  ms_object = iv_ms_object.

  ENDMETHOD.

ENDCLASS.
