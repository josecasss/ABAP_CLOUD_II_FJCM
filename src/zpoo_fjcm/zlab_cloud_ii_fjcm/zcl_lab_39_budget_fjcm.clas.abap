CLASS zcl_lab_39_budget_fjcm DEFINITION ABSTRACT
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS: get_budget ABSTRACT RETURNING VALUE(rv_budget) TYPE i.
                                                                     .
  PROTECTED SECTION.
  DATA: budget TYPE i.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_39_budget_fjcm IMPLEMENTATION.
ENDCLASS.
