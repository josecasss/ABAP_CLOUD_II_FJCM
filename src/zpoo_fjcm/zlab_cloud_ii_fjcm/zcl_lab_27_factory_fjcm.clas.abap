CLASS zcl_lab_27_factory_fjcm DEFINITION ABSTRACT
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: merchandise_output RETURNING VALUE(rv_merchandise_output) TYPE string,
             production_line ABSTRACT RETURNING VALUE(rv_production_line) TYPE string,
             input_products ABSTRACT RETURNING VALUE(rv_input_products) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_27_factory_fjcm IMPLEMENTATION.

  METHOD merchandise_output.
       rv_merchandise_output = 'merchandise_output' .
  ENDMETHOD.

ENDCLASS.
