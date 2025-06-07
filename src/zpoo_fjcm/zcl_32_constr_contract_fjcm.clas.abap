CLASS zcl_32_constr_contract_fjcm DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_09_contract_fjcm .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_32_constr_contract_fjcm IMPLEMENTATION.


  METHOD zif_09_contract_fjcm~create_contract.
  me->zif_09_contract_fjcm~contract_type = iv_ctnr_type.
  ENDMETHOD.
ENDCLASS.
