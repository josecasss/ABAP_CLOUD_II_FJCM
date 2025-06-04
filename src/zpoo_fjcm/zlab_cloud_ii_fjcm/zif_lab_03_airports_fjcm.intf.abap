INTERFACE zif_lab_03_airports_fjcm
  PUBLIC .

  METHODS: get_airports IMPORTING VALUE(iv_airport_id)  TYPE string
                        RETURNING VALUE(rt_airports_id) TYPE /dmo/airport.



ENDINTERFACE.
