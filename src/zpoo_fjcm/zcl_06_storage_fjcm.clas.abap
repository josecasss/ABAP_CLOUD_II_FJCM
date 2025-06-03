CLASS zcl_06_storage_fjcm DEFINITION INHERITING FROM zcl_05_plant_fjcm "Heredando de la clase zcl_05_plant_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: constructor IMPORTING iv_quotation TYPE string " Amplio el constructor con nuevos parametros
                                   iv_products  TYPE string
                                   iv_stock     TYPE string.
    DATA: stock TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_06_storage_fjcm IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_quotation = iv_quotation iv_products = iv_products ).
    me->stock = iv_stock.

  ENDMETHOD.

ENDCLASS.
