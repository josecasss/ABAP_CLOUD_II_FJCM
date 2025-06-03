CLASS zcl_lab_15_flight_price_fjcm DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: mt_flights TYPE TABLE OF /dmo/flight.

    METHODS: add_price IMPORTING VALUE(iv_add_price) TYPE /dmo/flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_fjcm IMPLEMENTATION.

  METHOD add_price.
    APPEND iv_add_price TO me->mt_flights.
  ENDMETHOD.

ENDCLASS.
