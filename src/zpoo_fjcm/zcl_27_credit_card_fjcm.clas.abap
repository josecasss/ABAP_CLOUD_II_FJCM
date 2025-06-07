CLASS zcl_27_credit_card_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: set_card_num IMPORTING iv_card_num TYPE string,
           get_card_num RETURNING VALUE(rv_card_num) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data: credit_card_num type string.
ENDCLASS.


CLASS zcl_27_credit_card_fjcm IMPLEMENTATION.

  METHOD get_card_num.
      rv_card_num = me->credit_card_num.
  ENDMETHOD.

  METHOD set_card_num.
  me->credit_card_num = iv_card_num.
  ENDMETHOD.

ENDCLASS.
