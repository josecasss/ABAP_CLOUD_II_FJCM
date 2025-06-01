CLASS zcl_lab_01_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: ls_flight TYPE /dmo/flight.

    METHODS: validate_flight IMPORTING VALUE(iv_carrier)    TYPE /dmo/carrier_id
                                       VALUE(iv_connection) TYPE /dmo/connection_id
                             RETURNING VALUE(rv_flight)     TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_flight IMPLEMENTATION.
  METHOD validate_flight.

    SELECT SINGLE FROM /dmo/flight
        FIELDS *
          WHERE carrier_id = @iv_carrier
            AND connection_id = @iv_connection
            INTO @ls_flight.
    IF ls_flight IS NOT INITIAL.
        rv_flight = | Flight found: Carrier { ls_flight-carrier_id }, Connection { ls_flight-connection_id } |.
    ELSE.
        rv_flight = 'Not Found'.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
