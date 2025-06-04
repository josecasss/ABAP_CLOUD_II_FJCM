INTERFACE zif_lab_02_customer_fjcm
  PUBLIC .

  TYPES: BEGIN OF ty_cust_address,
           firstname TYPE string,
           lastname  TYPE string,
         END OF ty_cust_address.

   METHODS: get_customer IMPORTING VALUE(iv_customer_id) TYPE string
                         RETURNING VALUE(rt_customer_address) TYPE ty_cust_address.

ENDINTERFACE.
