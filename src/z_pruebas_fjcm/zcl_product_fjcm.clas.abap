CLASS zcl_product_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: product_id TYPE string,
        product_name TYPE string,
        product_price TYPE f,
        product_description TYPE string,
        product_category TYPE string.


  METHODS: set_product_details IMPORTING iv_product_id TYPE string
                                         iv_product_name TYPE string
                                         iv_product_price TYPE f
                                         iv_product_description TYPE string
                               EXPORTING ev_product_category TYPE string.

  METHODS: get_product_details EXPORTING ev_product_id TYPE string
                                         ev_product_name TYPE string
                                         ev_product_price TYPE f
                                         ev_product_description TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_product_fjcm IMPLEMENTATION.

  METHOD set_product_details.

  product_id = iv_product_id.
  product_name = iv_product_name.
  product_price = iv_product_price.
  product_description = iv_product_description.
  ev_product_category = 'Electronics'. " Default category, can be modified later

  ENDMETHOD.

  METHOD get_product_details.

  ev_product_id = product_id.
  ev_product_name = product_name.
  ev_product_price = product_price.
  ev_product_description = product_description.

  ENDMETHOD.

ENDCLASS.
