CLASS zcl_00_loga_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_00_loga_fjcm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  out->write( 'Hello, World!' ).
*  out->write( 'This is a simple log message from zcl_01_log_fjcm.' ).

****Fundamentals

* Notacion Moderna
DATA(lo_instance) = NEW zcl_01_loga_fjcm( ).

* Notacion tradicional
*DATA: lo_ins type REF TO zcl_01_loga_fjcm.
*create object lo_ins.

*******   -> Instancia de la clase zcl_02_log_fjcm

"Instancia tiene acceso a todos los metodos y atributos de la clase *Buena practica solo acceder a los de instancia
lo_instance->set_attr1( 'Atribute 1'  ).


*lo_instance->get_attr1(
*  IMPORTING
*    ev_attr = DATA(lv_attr1) ).
*
*out->write( lv_attr1 ).

" Forma directa con returning value (metodo funcional)

out->write( lo_instance->get_attr1( ) ).


*******   => El operador de acceso a atributos y metodos de instancia estaticos

zcl_01_loga_fjcm=>set_attr2( 'Atribute 2' ).

zcl_01_loga_fjcm=>get_attr2(
  IMPORTING
    ev_attr = DATA(lv_attr2) ).

 out->write( lv_attr2 ).

 out->write( lo_instance->get_flight( 'AA' ) ).

 out->write( | { zcl_01_loga_fjcm=>constantes-c2 } , { zcl_01_loga_fjcm=>constantes-c1 } , { zcl_01_loga_fjcm=>c3 }| ).




  ENDMETHOD.
ENDCLASS.
