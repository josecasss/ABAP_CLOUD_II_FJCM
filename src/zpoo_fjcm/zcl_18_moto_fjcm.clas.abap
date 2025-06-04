CLASS zcl_18_moto_fjcm DEFINITION  ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_horse_power IMPORTING i_horse_power TYPE i.

  PROTECTED SECTION.

    METHODS: set_max_speed ABSTRACT IMPORTING iv_max_speed TYPE i.

  PRIVATE SECTION.

    DATA horse_power TYPE i.

ENDCLASS.



CLASS zcl_18_moto_fjcm IMPLEMENTATION.
  METHOD set_horse_power.

  ENDMETHOD.

ENDCLASS.
