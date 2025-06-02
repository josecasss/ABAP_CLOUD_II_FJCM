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

    DATA(lo_person) = NEW zcl_lab_01_person( ).

    lo_person->set_age( 25 ).
    lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
    out->write( |The age of the person is { lv_age }| ).

********Ejercicio 6**************

    DATA(lo_flight) = NEW zcl_lab_01_flight( ).

    lo_flight->validate_flight(
      EXPORTING
        iv_carrier    = 'LH'
        iv_connection = '0400'
      RECEIVING
        rv_flight     = DATA(lv_validator)
    ).

    out->write( lv_validator ).

*********Ejercicio 7**************

    DATA ls_elements TYPE zcl_lab_01_elements=>ty_elem_objects.

    zcl_lab_01_elements=>set_objects(
      iv_ms_object_class     = 'zcl_person'
      iv_ms_object_instance  = 'lo_person1'
      iv_ms_object_reference = 'zcl_person->' ).

    out->write( zcl_lab_01_elements=>ms_object ).

*********Ejercicio 8**************

*Constantes en clases

    out->write( |Country codes: { zcl_lab_01_elements=>cs_country_codes-argentina } - { zcl_lab_01_elements=>cs_country_codes-norway } - { zcl_lab_01_elements=>cs_country_codes-peru } - { zcl_lab_01_elements=>cs_country_codes-polonia }| ).


**********Ejercicio 9**************


    DATA(lo_student) = NEW zcl_lab_01_student( ).

    "   lo_student->birth_date = '2000-05-13'. "No es posible modificar el atributo por la referencia, por el parametro READ-ONLY

    lo_student->set_birth_date( '20001305' ). "Sí es posible modificar el atributo desde fuera de la clase a través de un método de instancia público

    out->write( lo_student->birth_date ).

**************Ejercicio 10**************

    DATA(lo_work_record) = NEW zcl_lab_01_work_record( ).

    lo_work_record->open_new_record(
      iv_date       =  '20250601'
      iv_first_name =  'Freddy'
      iv_last_name  =  'Casas'
*     iv_surname    =  " OPTIONAL
 ).

**************Ejercicio 11**************

    DATA(lo_account) = NEW zcl_lab_01_account( ).

    lo_account->set_iban( iban = '137164812723'  ).
    lo_account->get_iban(
      RECEIVING
        iban = DATA(lv_iban) ).

    out->write( |The IBAN is { lv_iban }| ).

************LAB 02***********************

*****Ejercicio1**********

    DATA(lo_constructor) = NEW zcl_lab_10_constructor_fjcm( ).

    out->write( lo_constructor->log ).





*****Ejercicio2**********










  ENDMETHOD.
ENDCLASS.
