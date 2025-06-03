CLASS zcl_10_eu_citizen_fjcm DEFINITION INHERITING FROM zcl_09_citizen_fjcm
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

"  methods: set_id redefinition.  " No se puede por que tiene FINAL en el metodo padre
   METHODS : get_parent_instance RETURNING VALUE(ro) TYPE REF TO zcl_09_citizen_fjcm.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_eu_citizen_fjcm IMPLEMENTATION.

  METHOD get_parent_instance.
  ro = NEW zcl_09_citizen_fjcm( ).
  ENDMETHOD.

ENDCLASS.
