*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section

**CCDEF
*SECCION PRIVADA Y IMPLEMENTACION*****

"TODO LO QUE SE DECLARA ACA ES PARA LA SECCION PRIVADA DE LA CLASE Y EN LA IMPLEMENTACION DE METODOS
types: begin of ty_first, " Tipo Estructura local
         comp1 type string,
         comp2 type string,
         comp3 type string,
       end of ty_first.

constants: lc_carro type string value 'Carrito'.

"data ls_first2 type ty_first. "No es posible declarar una estructura local, solo tipos y interfaces y clases
                               "Pero dentro de una interaz o clase si se puede

interface lif_private_helper. "Interfaz local

  data ms_first type ty_first.
endinterface.

interface lif_private_helper2. "Interfaz local

  data ms_first type ty_first.

endinterface.

class lcl_helper definition. "Clase local
  public section.

    data ms_first_cl type ty_first.


    methods: get_first returning value(rv_first) type ty_first. "La implementacion es en la otra pestaña

  protected section.
  private section.
endclass.
