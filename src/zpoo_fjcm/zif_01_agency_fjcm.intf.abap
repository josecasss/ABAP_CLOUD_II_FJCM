INTERFACE zif_01_agency_fjcm
  PUBLIC .

  class-data agency_address type string.

  METHODS: set_name IMPORTING VALUE(iv_name) TYPE string,
           get_name RETURNING VALUE(rv_name) TYPE string.

  CLASS-METHODS: set_adress IMPORTING VALUE(iv_address) TYPE string,
                 get_address RETURNING VALUE(rv_address) TYPE string.



ENDINTERFACE.
