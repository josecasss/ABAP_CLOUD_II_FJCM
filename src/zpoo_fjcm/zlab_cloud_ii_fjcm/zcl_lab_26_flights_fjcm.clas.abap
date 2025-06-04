CLASS zcl_lab_26_flights_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_lab_01_flight_fjcm,
                zif_lab_02_customer_fjcm.

    aliases: get_conn_id for zif_lab_01_flight_fjcm~get_conn_id,
             set_conn_id for zif_lab_01_flight_fjcm~set_conn_id,
             get_customer for zif_lab_02_customer_fjcm~get_customer,
             get_airports for zif_lab_03_airports_fjcm~get_airports.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_26_flights_fjcm IMPLEMENTATION.

  METHOD zif_lab_01_flight_fjcm~get_conn_id.
    rv_get_connid = zif_lab_01_flight_fjcm~comp_id.
  ENDMETHOD.

  METHOD zif_lab_01_flight_fjcm~set_conn_id.
    zif_lab_01_flight_fjcm~comp_id = iv_set_connid.
  ENDMETHOD.

  METHOD zif_lab_02_customer_fjcm~get_customer.

         SELECT SINGLE FROM /DMO/CUSTOMER
           FIELDS first_name, last_name
           WHERE customer_id = @iv_customer_id
           INTO @rt_customer_address.

  ENDMETHOD.

  METHOD zif_lab_03_airports_fjcm~get_airports.

           SELECT SINGLE FROM /dmo/airport
           FIELDS *
           WHERE airport_id = @iv_airport_id
           INTO @rt_airports_id.

  ENDMETHOD.

ENDCLASS.
