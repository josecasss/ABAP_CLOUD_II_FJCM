INTERFACE zif_lab_01_flight_fjcm
  PUBLIC .
  DATA: conn_id TYPE string.
  CLASS-DATA: comp_id TYPE string.

  METHODS: set_conn_id IMPORTING VALUE(iv_set_connid) TYPE string,
           get_conn_id RETURNING VALUE(rv_get_connid) TYPE string.

  INTERFACES: zif_lab_03_airports_fjcm.



ENDINTERFACE.
