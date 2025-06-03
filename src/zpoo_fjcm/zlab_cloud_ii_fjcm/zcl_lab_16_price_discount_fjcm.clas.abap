CLASS zcl_lab_16_price_discount_fjcm DEFINITION INHERITING FROM zcl_lab_15_flight_price_fjcm
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: add_price REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_16_price_discount_fjcm IMPLEMENTATION.

  METHOD add_price.
    DATA(ls_discounted) = iv_add_price.
    ls_discounted-price *= '0.90'.
     mt_flights = VALUE #( BASE mt_flights ( ls_discounted ) ). " Agrega el precio con descuento
                                    " No llame al método padre para evitar que tambien se agrege el original precio
  ENDMETHOD.

ENDCLASS.
