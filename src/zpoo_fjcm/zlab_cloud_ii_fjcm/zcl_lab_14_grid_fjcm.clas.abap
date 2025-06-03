CLASS zcl_lab_14_grid_fjcm DEFINITION INHERITING FROM zcl_lab_13_view_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: constructor   IMPORTING VALUE(iv_view_type) TYPE string
                                     VALUE(iv_box)       TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_14_grid_fjcm IMPLEMENTATION.

  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).
    box = iv_box.

  ENDMETHOD.

ENDCLASS.
