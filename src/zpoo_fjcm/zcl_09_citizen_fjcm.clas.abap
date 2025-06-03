CLASS zcl_09_citizen_fjcm DEFINITION
  PUBLIC
"  FINAL
"  CREATE PROTECTED. " Aca si puede heredar
  CREATE PRIVATE "Si fuera PRIVATE, solo se pondria instanciar en la propia clase Y NO PODRÍA HEREDAR.
  GLOBAL FRIENDS zcl_10_eu_citizen_fjcm.

  PUBLIC SECTION.

    METHODS: set_id FINAL IMPORTING iv_id TYPE i. "FINAL hace que el metodo no pueda ser redefinido en una subclase

    CLASS-METHODS: get_instance EXPORTING VALUE(ev_instance) type ref to zcl_09_citizen_fjcm. " Instanciar la clase si esta en PROTECTED O PRIVATE

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_citizen_fjcm IMPLEMENTATION.
  METHOD set_id.

  ENDMETHOD.

  METHOD get_instance.
  ev_instance = NEW zcl_09_citizen_fjcm( ).
  ENDMETHOD.

ENDCLASS.
