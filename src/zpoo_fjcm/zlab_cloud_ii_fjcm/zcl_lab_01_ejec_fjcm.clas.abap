CLASS zcl_lab_01_ejec_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_fjcm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    DATA(lo_person) = NEW zcl_lab_01_person( ).
*
*    lo_person->set_age( 25 ).
*    lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
*    out->write( |The age of the person is { lv_age }| ).
*
*********Ejercicio 6**************
*
*    DATA(lo_flight) = NEW zcl_lab_01_flight( ).
*
*    lo_flight->validate_flight(
*      EXPORTING
*        iv_carrier    = 'LH'
*        iv_connection = '0400'
*      RECEIVING
*        rv_flight     = DATA(lv_validator)
*    ).
*
*    out->write( lv_validator ).
*
**********Ejercicio 7**************
*
*    DATA ls_elements TYPE zcl_lab_01_elements=>ty_elem_objects.
*
*    zcl_lab_01_elements=>set_objects(
*      iv_ms_object_class     = 'zcl_person'
*      iv_ms_object_instance  = 'lo_person1'
*      iv_ms_object_reference = 'zcl_person->' ).
*
*    out->write( zcl_lab_01_elements=>ms_object ).
*
**********Ejercicio 8**************
*
**Constantes en clases
*
*    out->write( |Country codes: { zcl_lab_01_elements=>cs_country_codes-argentina } - { zcl_lab_01_elements=>cs_country_codes-norway } - { zcl_lab_01_elements=>cs_country_codes-peru } - { zcl_lab_01_elements=>cs_country_codes-polonia }| ).
*
*
***********Ejercicio 9**************
*
*
*    DATA(lo_student) = NEW zcl_lab_01_student( ).
*
*    "   lo_student->birth_date = '2000-05-13'. "No es posible modificar el atributo por la referencia, por el parametro READ-ONLY
*
*    lo_student->set_birth_date( '20001305' ). "Sí es posible modificar el atributo desde fuera de la clase a través de un método de instancia público
*
*    out->write( lo_student->birth_date ).
*
***************Ejercicio 10**************
*
*    DATA(lo_work_record) = NEW zcl_lab_01_work_record( ).
*
*    lo_work_record->open_new_record(
*      iv_date       =  '20250601'
*      iv_first_name =  'Freddy'
*      iv_last_name  =  'Casas'
**     iv_surname    =  " OPTIONAL
* ).
*
***************Ejercicio 11**************
*
*    DATA(lo_account) = NEW zcl_lab_01_account( ).
*
*    lo_account->set_iban( iban = '137164812723'  ).
*    lo_account->get_iban(
*      RECEIVING
*        iban = DATA(lv_iban) ).
*
*    out->write( |The IBAN is { lv_iban }| ).
*
*************LAB 02***********************
*
******Ejercicio1**********
*
*    DATA(lo_constructor) = NEW zcl_lab_10_constructor_fjcm( ).
*
*    out->write( lo_constructor->log ).
*
*********LAB 02-2 ***********************
*
******Ejercicio1**********
*
*    DATA(lo_linux) = NEW zcl_lab_12_linux_fjcm( ).
*
*    out->write( lo_linux->get_architecture( ) ).
*
*****Ejercicio 2**********
*
*    DATA(lo_grid) = NEW zcl_lab_14_grid_fjcm( iv_view_type = 'Standart view' iv_box = 'Data grid' ).

****Ejercicio 3**********

*    DATA(lo_flight_prices) = NEW zcl_lab_15_flight_price_fjcm( ).
*
*    SELECT SINGLE FROM /dmo/flight
*    FIELDS *
*    WHERE carrier_id = 'AA'
*    INTO @DATA(ls_flight).
*
*    out->write( name = 'Vuelo seleccionado' data = ls_flight ).
*
*    IF ls_flight IS NOT INITIAL.
*      lo_flight_prices->add_price( iv_add_price = ls_flight ).
*      out->write( name = 'Vuelo añadido' data = lo_flight_prices->mt_flights ).
*      out->write( cl_abap_char_utilities=>newline ).
*    ELSE.
*      out->write( 'Vuelo NO añadido' ).
*    ENDIF.
*
*    DATA(lo_discount) = NEW zcl_lab_16_price_discount_fjcm( ).
*    lo_discount->add_price( iv_add_price = ls_flight ).
*    out->write( name = 'Vuelo seleccionado' data = ls_flight ).
*    out->write( name = 'Vuelo con 10% de descuento' data = lo_discount->mt_flights ).
*    out->write( cl_abap_char_utilities=>newline ).
*
*
*    DATA(lo_super_discount) = NEW zcl_lab_17_super_discount_fjcm( ).
*    lo_super_discount->add_price( iv_add_price = ls_flight ).
*    out->write( name = 'Vuelo seleccionado' data = ls_flight ).
*    out->write( name = 'Vuelo con 20% de descuento' data = lo_super_discount->mt_flights ).

***************Ejercicio 4**************

* DATA(lo_animal) = NEW zcl_lab_18_animal_fjcm( ).
* DATA(lo_lion) = NEW zcl_lab_19_lion_fjcm( ).
*
* out->write( lo_animal->walk( ) ).
* out->write( lo_lion->walk( ) ).
*
* " Narrowing CAST
*   lo_animal = lo_lion.       " Superior -> inferior
*   out->write( lo_animal->walk( ) ).
*
* " Widening CAST
*   TRY.
*     lo_lion ?= lo_animal.    " Inferior -> Superior  ?= por que no se puede
*     out->write( lo_lion->walk( ) ).
*   CATCH cx_sy_move_cast_error INTO DATA(lx_error).
*     out->write( lx_error->get_text( ) ).
*   ENDTRY.

*************Ejerecicio 8**************

*DATA(lo_student) = NEW zcl_lab_21_classroom_fjcm( ). "No se puede instanciar una clase con Create PROTECTED
*                                                     "Solo se puede desde la misma clase o clases hijas

*************Ejerecicio 9**************

    DATA(lo_capital) = NEW zcl_lab_24_partner_fjcm( ).

    out->write( |The company capital is { lo_capital->get_company_capital( ) }| ).

*************Ejerecicio 10**************

    DATA(lo_capital2) = NEW zcl_lab_25_collaborator_fjcm( ).

    out->write( |The company capital is { lo_capital2->get_capital( ) }| ).


















  ENDMETHOD.
ENDCLASS.
