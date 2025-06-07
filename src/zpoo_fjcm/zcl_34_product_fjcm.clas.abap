CLASS zcl_34_product_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS return_category RETURNING VALUE(rv_category) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data: category type string VALUE 'A5'.
ENDCLASS.



CLASS zcl_34_product_fjcm IMPLEMENTATION.
  METHOD return_category.
rv_category = me->category.
  ENDMETHOD.

ENDCLASS.
