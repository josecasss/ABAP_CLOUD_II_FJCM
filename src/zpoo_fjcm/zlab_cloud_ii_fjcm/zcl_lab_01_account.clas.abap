CLASS zcl_lab_01_account DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:  set_iban IMPORTING VALUE(iban) TYPE string,
              get_iban RETURNING VALUE(iban) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: iban TYPE string.
ENDCLASS.

CLASS zcl_lab_01_account IMPLEMENTATION.

  METHOD set_iban.
  me->iban = iban.
  ENDMETHOD.

  METHOD get_iban.
  iban = me->iban.
  ENDMETHOD.

ENDCLASS.
