CLASS zcl_19_honda_fjcm DEFINITION ABSTRACT INHERITING FROM zcl_18_moto_fjcm
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.

  methods: set_model abstract exporting VALUE(ev_model) type string.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_19_honda_fjcm IMPLEMENTATION.
ENDCLASS.
