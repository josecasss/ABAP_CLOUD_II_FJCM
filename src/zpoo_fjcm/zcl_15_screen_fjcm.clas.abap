CLASS zcl_15_screen_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_02_eu_unit_fjcm,
                zif_03_en_unit_fjcm.

    METHODS constructor IMPORTING VALUE(iv_en_unit) TYPE zfloat_fjcm.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA en_unit TYPE zfloat_fjcm.
ENDCLASS.



CLASS zcl_15_screen_fjcm IMPLEMENTATION.

  METHOD zif_02_eu_unit_fjcm~dimensions_centimeters.
    rv_unit = me->en_unit * '2.54'.
  ENDMETHOD.

  METHOD zif_03_en_unit_fjcm~dimension_inches.
    rv_unit = me->en_unit.
  ENDMETHOD.

  METHOD constructor.
    me->en_unit = iv_en_unit.
  ENDMETHOD.

ENDCLASS.
