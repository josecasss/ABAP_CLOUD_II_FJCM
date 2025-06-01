CLASS zcl_lab_01_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS: BEGIN OF cs_country_codes,
                 norway    TYPE string VALUE 'NO',
                 argentina TYPE string VALUE 'AR',
                 polonia   TYPE string VALUE 'PL',
                 peru      TYPE string VALUE 'PE',
               END OF cs_country_codes.

    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    CLASS-DATA: ms_object    TYPE ty_elem_objects,
                country_code TYPE c LENGTH 3.

    CLASS-METHODS: set_objects IMPORTING VALUE(iv_ms_object_class) TYPE string
                                         VALUE(iv_ms_object_instance) TYPE string
                                         VALUE(iv_ms_object_reference) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_elements IMPLEMENTATION.

  METHOD set_objects.

    ms_object-class = iv_ms_object_class.
    ms_object-instance = iv_ms_object_instance.
    ms_object-reference = iv_ms_object_reference.

  ENDMETHOD.

ENDCLASS.
