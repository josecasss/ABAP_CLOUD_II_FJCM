CLASS zcl_13_ny_plant_fjcm DEFINITION INHERITING FROM zcl_11_plant_fjcm " Comparte los beneficios de la clase amiga por la herencia
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:  get_products_s1.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_13_ny_plant_fjcm IMPLEMENTATION.

  METHOD get_products_s1.
    DATA(lo_storage_location) = NEW zcl_12_storage_location_fjcm( ). " Instancia a clase zcl_12_storage_location_fjcm
    lo_storage_location->product = 'PC'. "Acceso a atributo privado por ser clase amiga
  ENDMETHOD.

ENDCLASS.
