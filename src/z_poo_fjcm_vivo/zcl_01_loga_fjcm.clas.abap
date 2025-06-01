CLASS zcl_01_loga_fjcm DEFINITION   " Definition: Atributos y métodos
  PUBLIC                           " Visibilidad de la clase, todos los programas pueden acceder a ella
  FINAL                            " Clase no puede ser heredada
  CREATE PUBLIC .                  " Clase puede ser instanciada desde fuera

  PUBLIC SECTION.                  " Métodos y atributos(componentes) públicos accesibles en todo el sistema

    " Definición de un tipo de estructura ty_flight con tres campos: carrier_id, connection_id y flight_date
    TYPES: BEGIN OF ty_flight,
             carrier_id    TYPE /dmo/carrier_id,
             connection_id TYPE /dmo/connection_id,
             flight_date   TYPE /dmo/flight_date,
           END OF ty_flight.

        CONSTANTS: BEGIN OF constantes,
                     c1 TYPE c LENGTH 6 VALUE 'Logali',
                     c2 TYPE c LENGTH 4 VALUE 'Hola',
                   END OF constantes,

                   c3 TYPE c LENGTH 13 VALUE 'ABAP CLOUD II'.


  DATA: attr1 TYPE string.         " Atributo público de tipo cadena de caracteres

  CLASS-DATA: attr2 TYPE string. " Atributo Estatico de clase público de tipo cadena de caracteres        *No necesitario crear instancia para acceder a él

  METHODS: set_attr1 IMPORTING iv_attr TYPE string, " Método público para establecer el valor de attr1
           " get_attr1 EXPORTING ev_attr TYPE string. " Parámetro de exportación para devolver el valor de attr1
           get_attr1 RETURNING VALUE(rv_attr) TYPE string, " Parámetro de retorno para devolver el valor de attr1

           get_flight IMPORTING iv_carrier_id TYPE /dmo/carrier_id " Método público para obtener información de un vuelo
                      RETURNING VALUE(rs_flight) TYPE ty_flight. " Parámetro de retorno para devolver la información del vuelo

                   " CHANGING  cv_attr TYPE string, " Parámetro de cambio para modificar el valor de attr1
                   " EXCEPTIONS zcx_02_log_fjcm.    " Excepción personalizada para manejar errores



  CLASS-METHODS: set_attr2 IMPORTING iv_attr TYPE string, " Método Estatico de clase para establecer el valor de class_attr1
                 get_attr2 EXPORTING ev_attr TYPE string. " Parámetro de exportación para devolver el valor de attr1

  PROTECTED SECTION.               " Métodos y atributos(componentes) protegidos accesibles solo desde la clase y sus subclases(herencia)

  PRIVATE SECTION.                 " Métodos y atributos(componentes) privados accesibles solo desde la clase y clases amigas

  DATA: attr3 TYPE string.         " Atributo privado de tipo cadena de caracteres
  CLASS-DATA : attr4 TYPE string. " Atributo Estatico de clase privado de tipo cadena de caracteres

ENDCLASS.


CLASS zcl_01_loga_fjcm IMPLEMENTATION. " Implementación: Métodos y atributos * Logica de la clase * Mejores Practicas: DATA - METHODS , CLASS-DATA - CLASS-METHODS.

  METHOD set_attr1. " DATA - METHODS

  attr1 = iv_attr. " Asignación del valor del parámetro de entrada al atributo público attr1

  ENDMETHOD.

  METHOD set_attr2. " CLASS-DATA - CLASS-METHODS

  attr2 = iv_attr. " Asignación del valor del parámetro de entrada al atributo de clase attr2

  ENDMETHOD.

  METHOD get_attr1. " DATA - METHODS

  "ev_attr = attr1. " Asignación del valor del atributo público attr1 al parámetro de exportación ev_attr
   rv_attr = attr1. " Asignación del valor del atributo público attr1 al parámetro de retorno rv_attr
  ENDMETHOD.

  METHOD get_attr2. " CLASS-DATA - CLASS-METHODS

  ev_attr = attr2. " Asignación del valor del atributo de clase attr2 al parámetro de exportación ev_attr

  ENDMETHOD.

  METHOD get_flight.

  " Método para obtener información de un vuelo basado en el ID del transportista
  SELECT SINGLE FROM /dmo/flight
  FIELDS carrier_id, connection_id, flight_date
    WHERE carrier_id = @iv_carrier_id
    INTO @rs_flight.

  ENDMETHOD.

ENDCLASS.
