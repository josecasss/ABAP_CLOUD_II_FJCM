CLASS zcl_12_storage_location_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_11_plant_fjcm. "Clase amiga para acceder a los atributos privados

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.

  data product type string.
  methods set_product importing value(iv_product) type string.

ENDCLASS.



CLASS zcl_12_storage_location_fjcm IMPLEMENTATION.

  METHOD set_product.

  product = iv_product.

  ENDMETHOD.

ENDCLASS.
