CLASS zcl_lab_28_logistics_fjcm DEFINITION INHERITING FROM zcl_lab_27_factory_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

   METHODS: production_line ReDEFINITION,
            input_products REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics_fjcm IMPLEMENTATION.

  METHOD input_products.
  rv_input_products = 'input_products'.
  ENDMETHOD.

  METHOD production_line.
  rv_production_line = 'production_line'.
  ENDMETHOD.

ENDCLASS.
