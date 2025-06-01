CLASS zcl_lab_01_product DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS: set_product IMPORTING VALUE(iv_product) TYPE matnr,
             set_creation_date IMPORTING VALUE(iv_date) TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: product       TYPE matnr,
          creation_date TYPE zdate.

ENDCLASS.

CLASS zcl_lab_01_product IMPLEMENTATION.

  METHOD set_product.

  product = iv_product.

  ENDMETHOD.

  METHOD set_creation_date.

  creation_date = iv_date.

  ENDMETHOD.

ENDCLASS.
