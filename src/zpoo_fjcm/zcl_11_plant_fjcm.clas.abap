CLASS zcl_11_plant_fjcm DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_product RETURNING VALUE(rv_product) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_plant_fjcm IMPLEMENTATION.

  METHOD get_product.
  DATA(lo_storage_location) = NEW zcl_12_storage_location_fjcm( ). " Instancia a clase zcl_12_storage_location_fjcm
  lo_storage_location->product = 'PC'. "Acceso a atributo privado por ser clase amiga
  lo_storage_location->set_product( iv_product = 'PC' ).
  ENDMETHOD.

ENDCLASS.
