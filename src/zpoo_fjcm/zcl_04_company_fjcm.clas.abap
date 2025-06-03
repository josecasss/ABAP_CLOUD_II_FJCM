CLASS zcl_04_company_fjcm DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:  set_company_code IMPORTING VALUE(iv_company_code) TYPE string,
              get_company_code EXPORTING VALUE(ev_company_code) TYPE string,

              set_currency IMPORTING VALUE(iv_currency) TYPE string,
              get_currency EXPORTING VALUE(ev_currency) TYPE string.

    DATA: quotation TYPE string READ-ONLY.

    METHODS: constructor IMPORTING VALUE(iv_quotation) TYPE string. "Los constructores tambien heredaran a las clases hijas

  PROTECTED SECTION. " Para la misma clase y clases hijas

    DATA: company_code TYPE c LENGTH 4,
          curency      TYPE c LENGTH 3,
          company      TYPE string.

  PRIVATE SECTION. " Solo para la misma clase
ENDCLASS.



CLASS zcl_04_company_fjcm IMPLEMENTATION.

  METHOD get_company_code.
    ev_company_code = me->company_code.
  ENDMETHOD.

  METHOD get_currency.
    ev_currency = me->curency.
  ENDMETHOD.

  METHOD set_company_code.
    me->company_code = iv_company_code.
  ENDMETHOD.

  METHOD set_currency.
    me->curency = iv_currency.
  ENDMETHOD.

  METHOD constructor.
    me->quotation = iv_quotation.
  ENDMETHOD.

ENDCLASS.



