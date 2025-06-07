CLASS zcl_lab_00_ejec_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_00_ejec_fjcm IMPLEMENTATION.


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

*    DATA(lo_capital) = NEW zcl_lab_24_partner_fjcm( ).
*
*    out->write( |The company capital is { lo_capital->get_company_capital( ) }| ).
*
**************Ejerecicio 10**************
*
*    DATA(lo_capital2) = NEW zcl_lab_25_collaborator_fjcm( ).
*
*    out->write( |The company capital is { lo_capital2->get_capital( ) }| ).

*************LAB 02-3***************

*************Ejercicio 2**************

*    DATA(lo_flights) = NEW zcl_lab_26_flights_fjcm( ).
*
*    lo_flights->set_conn_id( iv_set_connid = 'MAD-BCN'  ). " Lo hice con aliases desde un principio
*    out->write( lo_flights->get_conn_id( ) ).              " Me resulta mas eficiente

*************Ejercicio 3**************

*DATA(lo_customer) = NEW zcl_lab_26_flights_fjcm( ).
*
*DATA ls_customer_address type zcl_lab_26_flights_fjcm=>zif_lab_02_customer_fjcm~ty_cust_address.
*
*lo_customer->get_customer(
*  EXPORTING
*    iv_customer_id      = '000002'
*  RECEIVING
*    rt_customer_address = ls_customer_address ).
*
*IF ls_customer_address IS NOT INITIAL.
*  out->write( |Customer found: { ls_customer_address-firstname } { ls_customer_address-lastname }| ).
*ELSE.
*  out->write( 'Customer with that ID not found' ).
*ENDIF.

*************Ejercicio 4**************

*DATA(lo_flight_id) = NEW zcl_lab_26_flights_fjcm( ).
*
*DATA ls_flight_id type /dmo/airport.
*
*lo_flight_id->get_airports(
*  EXPORTING
*    iv_airport_id  = 'FRA'
*  RECEIVING
*    rt_airports_id = ls_flight_id
*).
*
*IF ls_flight_id IS NOT INITIAL.
*  out->write( name = 'Flight ID' data = ls_flight_id  ).
*ELSE.
*  out->write( 'Flight ID not found' ).
*ENDIF.

*************Ejercicio 5**************

*DATA(lo_aliases_test) = NEW zcl_lab_26_flights_fjcm( ).
*
*
*lo_aliases_test->set_conn_id( iv_set_connid = 'MAD-BCN' ).
*out->write( name = 'Connection ID' data = lo_aliases_test->get_conn_id( ) ).
*out->write( cl_abap_char_utilities=>newline ).
*
*DATA ls_customer_address2 type zcl_lab_26_flights_fjcm=>zif_lab_02_customer_fjcm~ty_cust_address.
*
*lo_aliases_test->get_customer(
*  EXPORTING
*    iv_customer_id      = '000002'
*  RECEIVING
*    rt_customer_address = ls_customer_address2 ).
*
*IF ls_customer_address2 IS NOT INITIAL.
*  out->write( Name = 'Customer found' data = ls_customer_address2 ).
*  out->write( cl_abap_char_utilities=>newline ).
*ELSE.
*  out->write( 'Customer with that ID not found' ).
*ENDIF.
*
*
*DATA ls_flight_id2 type /dmo/airport.
*
*lo_aliases_test->get_airports(
*  EXPORTING
*    iv_airport_id  = 'MAD'
*  RECEIVING
*    rt_airports_id = ls_flight_id2
*).
*
*IF ls_flight_id2 IS NOT INITIAL.
*  out->write( name = 'Flight ID' data = ls_flight_id2  ).
*  out->write( cl_abap_char_utilities=>newline ).
*ELSE.
*  out->write( 'Flight ID not found' ).
*ENDIF.
*
**************Ejercicio 6**************
*
*DATA(lo_logistics) = NEW zcl_lab_28_logistics_fjcm( ).
*
*out->write( lo_logistics->input_products( ) ).
*out->write( cl_abap_char_utilities=>newline ).
*out->write( lo_logistics->merchandise_output( ) ).
*out->write( cl_abap_char_utilities=>newline ).
*out->write( lo_logistics->production_line( ) ).


*******LAB 03*************
**************Ejercicio 1**************

*    DATA: gt_organization TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_fjcm,
*          go_location_org TYPE REF TO zcl_lab_29_organization_fjcm,
*          go_org_germany  TYPE REF TO zcl_lab_30_org_germany_fjcm,
*          go_org_france   TYPE REF TO zcl_lab_31_org_france_fjcm.
*
*    go_org_germany = NEW #( ).
*    APPEND go_org_germany TO gt_organization.
*    go_org_france = NEW #( ).
*    APPEND go_org_france TO gt_organization.
*    go_location_org = NEW #( ).
*
*    LOOP AT gt_organization INTO go_location_org.
*      out->write( go_location_org->get_location( ) ).
*    ENDLOOP.

**************Ejercicio 2**************

    DATA: gt_employee            TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_fjcm,
          go_employee_count      TYPE REF TO zif_lab_04_employee_fjcm, "No se puede instanciar una interfaz
          go_internal_employee   TYPE REF TO zcl_lab_32_int_empl_fjcm,
          go_expatriate_employee TYPE REF TO zcl_lab_33_expatriate_fjcm.

    go_internal_employee = NEW #(  ).
    APPEND go_internal_employee TO gt_employee.
    go_expatriate_employee = NEW #(  ).
    APPEND go_expatriate_employee TO gt_employee.

    LOOP AT gt_employee INTO go_employee_count.
      out->write( go_employee_count->get_employee_count(  ) ).
    ENDLOOP.

**************Ejercicio 3**************























ENDMETHOD.
ENDCLASS.
