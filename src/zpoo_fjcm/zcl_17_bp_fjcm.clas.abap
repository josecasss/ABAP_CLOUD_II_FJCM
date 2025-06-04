CLASS zcl_17_bp_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_07_company_fjcm.

    ALIASES: set_company_type FOR zif_07_company_fjcm~set_company_type,
            set_group FOR zif_07_company_fjcm~group.     "Aliases formas de llamar a los métodos de la interfaz
                                                         " Y hacer corto el nombre y reutlizar el código

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_bp_fjcm IMPLEMENTATION.
  METHOD set_company_type.          "set_company_type definido en esta clase

  ENDMETHOD.

  METHOD set_group. "Group alias definido en interfaz 7

  ENDMETHOD.

ENDCLASS.
