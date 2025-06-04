INTERFACE zif_05_sales_order_fjcm
  PUBLIC .
  interfaces zif_04_document_fjcm.  "Anidando interface

  methods: create_order importing iv_order_id TYPE string.

ENDINTERFACE.
