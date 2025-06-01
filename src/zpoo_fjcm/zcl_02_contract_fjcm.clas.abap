CLASS zcl_02_contract_fjcm DEFINITION " Definition: Atributos y métodos
  PUBLIC                              " Visibilidad de la clase, todos los programas pueden acceder a ella
  FINAL                               " Clase no puede ser heredada
  CREATE PUBLIC .                     " Clase puede ser instanciada desde fuera

  PUBLIC SECTION.                     " Métodos y atributos(componentes) públicos accesibles en todo el sistema                         *VERDE

    TYPES: BEGIN OF ty_address,
             country     TYPE string,
             city        TYPE string,
             postal_code TYPE string,
             region      TYPE string,
             street      TYPE string,
             number      TYPE string,
           END OF ty_address,
           tty_address TYPE STANDARD TABLE OF ty_address.

    CONSTANTS: BEGIN OF cs_currency,
                 usd TYPE c LENGTH 3 VALUE 'USD',
                 eur TYPE c LENGTH 3 VALUE 'EUR',
               END OF cs_currency.

    DATA region TYPE string.          " Atributo de instancia, se accede a través de una instancia de la clase . Independiente instancia
    CLASS-DATA currency TYPE c LENGTH 3. "CLASS-DATA es un atributo estático, se puede acceder sin instanciar la clase . Cambios afectan a todas las instancias

    METHODS set_client IMPORTING VALUE(iv_client)   TYPE string  " Asignación de cliente
                                 VALUE(iv_location) TYPE string OPTIONAL " Asignación de ubicación "OPTIONAL SOLO EN IMPORTING
                       EXPORTING VALUE(ev_status)   TYPE string  " Estado de la asignación
                       CHANGING  VALUE(cv_process)  TYPE string. " Proceso de asignación, se puede cambiar el valor "OPTIONAL SOLO EN CHANGING



    METHODS get_client EXPORTING ev_client   TYPE string
                                 ev_location TYPE string.


    CLASS-METHODS: set_cntr_type IMPORTING iv_cntr_type TYPE string,
      get_cntr_type EXPORTING ev_cntr_type TYPE string.


    METHODS get_client_name IMPORTING iv_client_id          TYPE string " Metodo funcional que recibe un ID de cliente
                            RETURNING VALUE(rv_client_name) TYPE string. " Returning obligatorio


    METHODS set_address IMPORTING iv_address TYPE tty_address.

    CLASS-DATA company TYPE string READ-ONLY. " Atributo de clase, se accede sin instanciar la clase. Es de solo lectura

    METHODS set_sales_org IMPORTING sales_org TYPE string.
    METHODS get_sales_org EXPORTING sales_org TYPE string.



  PROTECTED SECTION.                " Métodos y atributos protegidos accesibles solo dentro de la clase y sus subclases *AMARILLO
    DATA creation_date TYPE sydate.

  PRIVATE SECTION.                  " Métodos y atributos(componentes) privados accesibles solo desde la clase y clases amigas  *ROJO
    DATA client TYPE string.        "Cliente siempre privado
    DATA location TYPE string.
    CLASS-DATA cntr_type TYPE string.
    DATA sales_org TYPE string.


ENDCLASS.


CLASS zcl_02_contract_fjcm IMPLEMENTATION.

  METHOD set_client.
    client = iv_client.
    location = iv_location.
    IF iv_location IS SUPPLIED.       " Verifica si el parámetro iv_location fue proporcionado
      cv_process = 'Started'.
      ev_status = 'Client and location set successfully'.
    ELSE.
      cv_process = 'Not Started'.
    ENDIF.
    company = 'FCASAS'.
  ENDMETHOD.

  METHOD get_client.
    ev_client = client.
    ev_location = location.
  ENDMETHOD.

  METHOD set_cntr_type.
    cntr_type = iv_cntr_type.
  ENDMETHOD.

  METHOD get_cntr_type.
    ev_cntr_type = cntr_type.
  ENDMETHOD.

  METHOD get_client_name.
    CASE iv_client_id.
      WHEN '001'.
        rv_client_name = 'Client 01'.
      WHEN '002'.
        rv_client_name = 'Client 02'.
      WHEN OTHERS.
        rv_client_name = 'Unknown Client'.
    ENDCASE.
  ENDMETHOD.

  METHOD set_address.

  ENDMETHOD.

  METHOD set_sales_org.
    me->sales_org = sales_org.        "Me-> Atributo auto referencia instancia
  ENDMETHOD.

  METHOD get_sales_org.
    sales_org = me->sales_org.
  ENDMETHOD.

ENDCLASS.
