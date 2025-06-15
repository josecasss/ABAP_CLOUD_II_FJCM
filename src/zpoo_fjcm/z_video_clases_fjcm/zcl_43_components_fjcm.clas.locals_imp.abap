*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations


*CCIMP
****IMPLEMENACIONN


CLASS lcl_helper IMPLEMENTATION.

  METHOD get_first.

  ENDMETHOD.

ENDCLASS.

types: begin of ty_first2, " Tipo Estructura local
         comp1 type string,
         comp2 type string,
         comp3 type string,
       end of ty_first2.

"data ls_first2 type ty_first. "No es posible declarar una estructura local, solo tipos y interfaces y clases

interface lif_private_helper3. "Interfaz local

  data ms_first type ty_first.

endinterface.

interface lif_private_helper4. "Interfaz local

  data ms_first type ty_first.

endinterface.

class lcl_helper2 definition. "Clase local

  public section.

    data ms_first_cl type ty_first.

    methods: get_first returning value(rv_first) type ty_first. "La implementacion es en la otra pestaña

  protected section.
  private section.
endclass.

CLASS lcl_helper2 IMPLEMENTATION.

  METHOD get_first.

  ENDMETHOD.

ENDCLASS.
