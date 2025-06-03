CLASS zcl_05_plant_fjcm DEFINITION INHERITING FROM zcl_04_company_fjcm " Heredando de la clase zcl_04_company_fjcm
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: constructor IMPORTING iv_quotation TYPE string " Amplio el constructor con nuevos parametros
                                 iv_products TYPE string.


  DATA products TYPE STRING READ-ONLY.

  METHODS set_company_code redefinition. "Redefino el metodo de la clase padre para aplicar otra logica en esta clase hija

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_plant_fjcm IMPLEMENTATION.
  METHOD constructor.
    super->constructor( iv_quotation = iv_quotation ). " PRIMERO Llamo al constructor de la clase padre
    me->products = iv_products.
  ENDMETHOD.

  METHOD set_company_code.
  super->set_company_code( iv_company_code = iv_company_code ). " En REDIFINICION no importa el orden del constructor padre
  me->company_code = 'ABCD'.
  ENDMETHOD.

ENDCLASS.
