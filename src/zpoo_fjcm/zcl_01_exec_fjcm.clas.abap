CLASS zcl_01_exec_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_01_exec_fjcm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    "      DATA(lo_citizen) = NEW zcl_09_citizen_fjcm( ).

    zcl_09_citizen_fjcm=>get_instance( IMPORTING ev_instance = DATA(lo_citizen) ).


    DATA(lo_animal) = NEW zcl_07_animal_fjcm( ).
    DATA(lo_lion) = NEW zcl_08_lion_fjcm( ).

    out->write( |Animal: { lo_animal->walk( ) } | ).
    out->write( |Lion: { lo_lion->walk( ) } | ).

*****Narrowing (Up Cast)*****
    lo_animal = lo_lion. " Up Cast, convertir padre en hijo
    out->write( '*****Narrowing (Up Cast)*****' ).
    out->write( |Animal: { lo_animal->walk( ) } | ).
    out->write( |Lion: { lo_lion->walk( ) } | ).

*****Widening(Down Cast)*****  "Se utiliza siempre despues de UP CAST    "Obligatorio el uso de TRY CATCH para evitar errores de conversión

    TRY.
        lo_lion ?= lo_animal. " Down Cast, volver a convertir hijo en padre *ERROR* *Clase hija no puede apuntar a clase padre*.
      CATCH cx_sy_move_cast_error.
        out->write( |Error: Cannot cast Animal to Lion| ).
        RETURN.
    ENDTRY.

    lo_lion ?= lo_animal. " Down Cast, volver a convertir lo_lion en lo_animal *ERROR* *Clase hija no puede apuntar a clase padre*.
    out->write( '*****Widening Casting (Down Cast)*****' ).
    out->write( |Animal: { lo_animal->walk( ) } | ).
    out->write( |Lion: { lo_lion->walk( ) } | ).







**********************************************

*    DATA(lo_company) = NEW zcl_04_company_fjcm( iv_quotation = 'Q1' ).
*    DATA(lo_plant) = NEW zcl_05_plant_fjcm( iv_quotation = 'Q2' iv_products = 'P2' ).
*    DATA(lo_storage_location) = NEW zcl_06_storage_fjcm( iv_quotation = 'Q3' iv_products = 'P3' iv_stock = 'Si hay xd' ).
*
*    lo_company->set_company_code( '01' ).
*    lo_company->set_currency( 'USD' ).
*    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
*    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency) ).
*
*    out->write( |COMPANY -> Company Code: { lv_company_code } Currency : { lv_currency } | ).
*
************************
*
*    lo_plant->set_company_code( '02' ).
*    lo_plant->set_currency( 'PEN' ).
*    lo_plant->get_company_code( IMPORTING ev_company_code = lv_company_code ). "Puedo utilizar la variable lv_company_code que ya existe
*    lo_plant->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |PLANT -> Company Code: { lv_company_code } Currency : { lv_currency } | ).
*
************************
*
*    lo_storage_location->set_company_code( '03' ).
*    lo_storage_location->set_currency( 'PLN' ).
*    lo_storage_location->get_company_code( IMPORTING ev_company_code = lv_company_code ). "Puedo utilizar la variable lv_company_code que ya existe
*    lo_storage_location->get_currency( IMPORTING ev_currency = lv_currency ).
*
*    out->write( |STORAGE LOCATION -> Company Code: { lv_company_code } Currency : { lv_currency } | ).


*    out->write( zcl_03_employee_fjcm=>log ).
*
*    DATA(lo_employee) = NEW zcl_03_employee_fjcm( iv_employee_id = '01'  ).
*
**    out->write( |Employee ID: { lo_employee->get_employee_id( ) } | ) .  "Imprime el ID del empleado de frente, llamando de frente
*     out->write( zcl_03_employee_fjcm=>log ).
*
*    DATA(lo_employee2) = NEW zcl_03_employee_fjcm( iv_employee_id = '02'  ).

*    out->write( |Employee ID: { lo_employee2->get_employee_id( ) } | ) .
*    out->write( zcl_03_employee_fjcm=>company ).

** Vieja forma
**  DATA lo_contract type ref to zcl_02_contract_fjcm.
**
**  create object lo_contract.
**
** lo_contract = new #( ).
*
**********************************
*"""    DATA(lo_contract) = NEW zcl_02_contract_fjcm( ). "Constructor *New* Para instanciar un objeto
*"    DATA(lo_contract2) = NEW zcl_02_contract_fjcm( ).
*
*    zcl_02_contract_fjcm=>get_instance( IMPORTING er_instance = DATA(lo_contract) ). "Instancia de la clase, si el |CREATE ES PRIVATE| *Otra forma de instanciar*.
*
*    DATA lv_process TYPE string. "Parametro Changing no aplica DATA().
*
*    DATA: lt_address type zcl_02_contract_fjcm=>tty_address, "Tabla interna de direcciones obtenida de la clase
*          ls_address type zcl_02_contract_fjcm=>ty_address.
*
*    IF lo_contract IS BOUND. "Verifica si el objeto está instanciado
*
*      lo_contract->set_client(            " IMPORTING NO ES OBLIGATORIO EN LA FIRMA por eso viene comentado, EXPORTING Y CHANGING SÍ.
*        EXPORTING
*          iv_client   = 'Freddy'
**          iv_location = 'Poland'
*        IMPORTING
*          ev_status   = DATA(lv_status)
*        CHANGING
*          cv_process  = lv_process ).
*
*      lo_contract->get_client(
*      IMPORTING
*      ev_client = DATA(lv_client)
*      ev_location = DATA(lv_location)  ).
*
*      lo_contract->region = 'PL'.
*
********* Metodo funcional***
**      lo_contract->get_client_name(
**        EXPORTING
**          iv_client_id   = '02'
**        RECEIVING
**          rv_client_name = DATA(lv_client_name)
**      ).
*
***** FUNCIONAL FORMA MAS LIMPIA, SI SOLO TIENE UN PARAMETRO****
*      DATA(lv_client_name) = lo_contract->get_client_name( '001' ).
*
*      IF NOT lv_client_name IS INITIAL. "Si el cliente existe
*        out->write( lo_contract->get_client_name( '001' ) ).
*      ENDIF.
*    ENDIF.
*
*    out->write( lv_client ).
*    out->write( |{ lv_client } - { lv_process } - { lv_status }| ).
*
************* ESTATICOS =>  *************** " Solo atributos estaticos se accede con la clase estatica, no con la instancia
*
*    zcl_02_contract_fjcm=>set_cntr_type( 'Construction' ).  "Metodo Estatico                     Metodo Estatico solo accede a atributo estatico.
*
*    zcl_02_contract_fjcm=>get_cntr_type( IMPORTING ev_cntr_type = DATA(lv_ctnr_type) ).
*
*    zcl_02_contract_fjcm=>currency = zcl_02_contract_fjcm=>cs_currency-usd. "Atributo estatico. Afecta a todos es como si fuera compartido, Cambias una instancia y afecta a todas las instancias
*
*    out->write( lo_contract->currency ).
*    out->write( lo_contract2->currency ).
*
*    out->write( |{ lv_client } - { lv_location } - { lo_contract->region }| ).
*    out->write( |{ lv_ctnr_type }| ).
*
*    out->write( zcl_02_contract_fjcm=>company ). "Atributo estatico, afecta a todas las instancias 'TIENE READ ONLY'

  ENDMETHOD.
ENDCLASS.
