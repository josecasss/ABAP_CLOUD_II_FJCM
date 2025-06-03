CLASS zcl_lab_17_super_discount_fjcm DEFINITION INHERITING FROM zcl_lab_15_flight_price_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_fjcm IMPLEMENTATION.

  METHOD add_price.
    DATA(ls_super_discounted) = iv_add_price.
    ls_super_discounted-price *= '0.80'.
     mt_flights = VALUE #( BASE mt_flights ( ls_super_discounted ) ).
  ENDMETHOD.

ENDCLASS.
