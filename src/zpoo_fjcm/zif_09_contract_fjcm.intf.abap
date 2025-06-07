INTERFACE zif_09_contract_fjcm
  PUBLIC .

  data: contract_type TYPE string.

  methods: create_contract importing iv_ctnr_type type string.

ENDINTERFACE.
