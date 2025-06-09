class zcl_01_exec_fjcm definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun .
  protected section.
  private section.
endclass.


class zcl_01_exec_fjcm implementation.


  method if_oo_adt_classrun~main.

*******Class-relevant Local Types

  data(go_components) = new zcl_43_components_fjcm( ).

  go_components->get_first( importing ev_first = data(gv_first) ). "Solo se puede acceder a los atributos de la clase con el objeto de la clase, no con la clase atributos









******Manejar eventos para todas las instancias de la clase
*
*    data(go_north_building) = new zcl_41_building_fjcm( ).
*    data(go_south_building) = new zcl_41_building_fjcm( ).
*    data(go_east_building) = new zcl_41_building_fjcm( ).
*    data(go_west_building) = new zcl_41_building_fjcm( ).
*
*    data(go_access) = new zcl_42_access_fjcm( ).

*    set handler go_access->on_blocked_entrance for go_north_building.
*    set handler go_access->on_blocked_entrance for go_south_building.
*    set handler go_access->on_blocked_entrance for go_east_building.
*    set handler go_access->on_blocked_entrance for go_west_building.

*    set handler go_access->on_blocked_entrance for all instances. " Para cubrir todas las instancias de la clase zcl_41_building_fjcm
*
*    "Otra forma de asignar el evento a todas las instancias de la clase seria poner el handler en la clase receptora en un constructor *************
*    go_north_building->entry = 'North Entrance'.
*    go_north_building->close_entry( ).
*
*    go_south_building->entry = 'South Entrance'.
*    go_south_building->close_entry( ).
*
*    go_east_building->entry = 'East Entrance'.
*    go_east_building->close_entry( ).
*
*    go_west_building->entry = 'West Entrance'.
*    go_west_building->close_entry( ).
*
*    out->write( zcl_42_access_fjcm=>table_blocked_entries ).

******Eventos estáticos
*
*    set handler zcl_40_smtp_fjcm=>on_new_mail.
*
*    do 3 times.
*      wait up to 1 seconds.
*      zcl_39_mail_fjcm=>compose_mail( ).
*    enddo.
*
*      out->write( name = 'Inbox'  data = zcl_40_smtp_fjcm=>table_inbox ).

****Definir eventos en las interfaces

    data(go_american_bank) = new zcl_37_american_bank_fjcm( ).
    data(go_bank_client) = new zcl_38_bank_client_fjcm( ).
*
*    set handler go_bank_client->on_new_transfer for go_american_bank. "Set Handler-Clase Receptora del evento- for Clase Emisora del evento
*
*    do 5 times.
*      wait up to 1 seconds.
*
*      out->write( go_american_bank->create_notification( ) ).
*      out->write( go_bank_client->notification ).
*
*      if sy-index = 3.
*         set handler go_bank_client->on_new_transfer for go_american_bank activation abap_false. " *Desactivar el evento* en la tercera iteración por el index
*         go_bank_client->notification = |No handler for event new transfer { sy-index }|.
*      endif.
*    enddo.

******Definición y levantamiento de eventos
*
*    DATA(go_timer) = NEW zcl_35_timer_fjcm(  ).
*    DATA(go_connection) = NEW zcl_36_connection_fjcm( ).
*
*    SET HANDLER go_connection->on_time_out FOR go_timer. "Set Handler-Clase Receptora del evento- for Clase Emisora del evento
*
*    DO.
*
*      WAIT UP TO 1 SECONDS.
*      go_timer->increment_counter( 1 ).
*      go_timer->check_limit( ).
*
*      IF go_connection->hour IS INITIAL. " Si la hora es inicial, significa que el evento no se ha levantado
*          out->write( |Waiting for event  be raised { cl_abap_context_info=>get_system_time(  ) }| ).
*      ELSE.
*        out->write( |Event was raised at: { go_connection->hour } - { go_connection->sender_user }| ).
*        EXIT.
*      ENDIF.
*    ENDDO.

****Asignar instancias utilizando la clase genérica OBJECT***
*
*    DATA go_object TYPE REF TO object. "Todas las clases heredan de la clase object, por eso se puede declarar un objeto de tipo object
*
*    go_object = NEW zcl_34_product_fjcm( ).
*
*    DATA(lv_method_name) = 'RETURN_CATEGORY'.
*    DATA lv_category TYPE string.
*
*    CALL METHOD go_object->(lv_method_name) RECEIVING rv_category = lv_category.
*
*    out->write( |Category: { lv_category }| ).
*
****Crear instancias de tipos distintos****
*    DATA go_contract TYPE REF TO zif_09_contract_fjcm.
*    go_contract = NEW zcl_32_constr_contract_fjcm( ).
*    create object go_contract type zcl_32_constr_contract_fjcm.
*
*
*    DATA go_constr_contract TYPE REF TO zcl_32_constr_contract_fjcm.
*    go_constr_contract = NEW zcl_33_record_contract_fjcm( ) . "Se puede instanciar asi tambien por ser clase hija
*    create object go_constr_contract type zcl_33_record_contract_fjcm.
*
*    go_contract = NEW zcl_33_record_contract_fjcm( ).
*    create object go_contract type zcl_33_record_contract_fjcm.

*****Múltiples referencias apuntando al mismo objeto***
*
*    DATA: lo_vat_indicator_1 TYPE REF TO zcl_31_vat_indicator_fjcm,
*          lo_vat_indicator_2 TYPE REF TO zcl_31_vat_indicator_fjcm,
*          lo_vat_indicator_3 TYPE REF TO zcl_31_vat_indicator_fjcm.
*
**    CREATE OBJECT: lo_vat_indicator_1,
**                   lo_vat_indicator_2,
**                   lo_vat_indicator_3.
*
*    lo_vat_indicator_1 =  NEW #( ).
*    lo_vat_indicator_2 =  NEW #( ).
*    lo_vat_indicator_3 =  NEW #( ).
*
*    lo_vat_indicator_2  = lo_vat_indicator_1. "La referencia lo_vat_indicator_2 apunta al mismo objeto que lo_vat_indicator_1
*    lo_vat_indicator_3  = lo_vat_indicator_1. "La referencia lo_vat_indicator_3 apunta al mismo objeto que lo_vat_indicator_1
*
*    lo_vat_indicator_1->vat_indicator = 'A1'.
*    lo_vat_indicator_2->vat_indicator = 'A2'.
*    lo_vat_indicator_3->vat_indicator = 'A3'.
*
*    out->write( |VAT Indicator 1: { lo_vat_indicator_1->vat_indicator }| ).
*    out->write( |VAT Indicator 2: { lo_vat_indicator_2->vat_indicator }| ).
*    out->write( |VAT Indicator 3: { lo_vat_indicator_3->vat_indicator }| ).

***** Composición ****
*
*DATA(lo_keyboard) = NEW zcl_29_keyboard_fjcm( ). "Instancia de teclado
*
*DATA(lo_laptop) = NEW zcl_30_laptop_fjcm( io_keyboard = lo_keyboard ). "Composición, La laptop necesita un teclado
*
*lo_keyboard->keyboard_type = 'ES'.
*
*out->write( | Keyboard type: { lo_laptop->keyboard->keyboard_type }| ). "Acceso al teclado de la laptop a través de la composición

**ASOCIACION DE CLASES
*DATA(lo_credit_card) = NEW zcl_27_credit_card_fjcm( ).
*DATA(lo_client) = NEW zcl_28_client_fjcm( ).
*
*lo_credit_card->set_card_num( iv_card_num = '1234-5678-9012-3456' ).
*lo_client->set_credit_card( ir_credit_card = lo_credit_card  ). "Asignar la tarjeta de crédito al cliente *ASOCIACION
*out->write( lo_client->get_credit_card( )->get_card_num( ) ). "Concatenacion de metodos para obtener el número de la tarjeta de crédito del cliente.

*****Poliformismo con interfaces****

*    DATA: gt_co_companies TYPE STANDARD TABLE OF REF TO zif_08_co_company_fjcm, " Tabla interna de referencia a la interfaz "Se puede"
*          go_co_company   TYPE REF TO zif_08_co_company_fjcm, " Referencia a la interfaz "Interaz no se puede instanciar, solo se puede referenciar"
*          go_eu_company   TYPE REF TO zcl_24_company_eu_fjcm,
*          go_usa_company  TYPE REF TO zcl_25_company_usa_fjcm.
*    DATA(go_plant) = NEW zcl_26_plant_fjcm( ).
*
**OTRA FORMA DE LLENAR LA TABLA INTERNA PERO SIN DECLARAR OBJETOS
**    APPEND NEW zcl_24_company_eu_fjcm( ) TO gt_co_companies.
**   APPEND NEW zcl_25_company_usa_fjcm( ) TO gt_co_companies.
*** APPEND NEW zcl_24_company_eu_fjcm( ) TO gt_co_companies REFERENCE INTO DATA(go_temp).
*** DATA(go_eu_company) = CAST zcl_24_company_eu_fjcm( go_temp ).
*
*    go_eu_company = NEW #( ).
*    APPEND go_eu_company TO gt_co_companies.
*    go_usa_company = NEW #( ).
*    APPEND go_usa_company TO gt_co_companies.
*
*    LOOP AT gt_co_companies INTO go_co_company.
*      out->write( go_co_company->define_company( ) ).
*      out->write( go_plant->assign_company( go_co_company ) ).
*    ENDLOOP.

****Poliformismo

*    DATA gt_airplanes TYPE STANDARD TABLE OF REF TO zcl_21_airplane_fjcm. " Tabla interna de referencia a la clase padre
*
*    " Llenar la tabla directamente
*    APPEND NEW zcl_22_cargo_plane_fjcm( ) TO gt_airplanes.                " Instancia de la clase hija
*    APPEND NEW zcl_23_passenger_plane_fjcm( ) TO gt_airplanes.            " Instancia de la clase hija
*
*    LOOP AT gt_airplanes INTO DATA(lo_airplane).
*      out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.

* DATA(lo_bussines_partner) = NEW zcl_17_bp_fjcm( ).
*
* lo_bussines_partner->set_company_type( ). "Llamando con aliases
* lo_bussines_partner->set_group( ).


*  DATA(lo_department) = NEW zcl_lab_16_department_fjcm( ).
*
*  lo_department->zif_04_document_fjcm~set_sales_doc( iv_sales_doc = '123D'  ).  "Debo llamar a sus métodos de la interfaz independientemente
*  lo_department->zif_05_sales_order_fjcm~create_order( iv_order_id = '1234'  ). "Debo llamar a sus métodos de la interfaz independientemente

*     DATA(lo_screen) = NEW zcl_lab_15_screen_fjcm( 22 ).
*     out->write( lo_screen->zif_02_eu_unit_fjcm~dimensions_centimeters( ) ).
*     out->write( lo_screen->zif_03_en_unit_fjcm~dimension_inches( ) ).


*    DATA(lo_travel_agency) = NEW zcl_lab_14_travel_agency_fjcm( ).
*
*    lo_travel_agency->zif_01_agency_fjcm~set_name( iv_name = 'Gate2fly.com' ).
*    out->write( |Agency Name: { lo_travel_agency->zif_01_agency_fjcm~get_name( ) } | ).
*
*    zcl_lab_14_travel_agency_fjcm=>zif_01_agency_fjcm~set_adress( iv_address = 'Madrid-Spain' ).
*    out->write( |Agency Address: { zcl_lab_14_travel_agency_fjcm=>zif_01_agency_fjcm~get_address( ) } | ).

*    "      DATA(lo_citizen) = NEW zcl_09_citizen_fjcm( ).
*
*    zcl_09_citizen_fjcm=>get_instance( IMPORTING ev_instance = DATA(lo_citizen) ).
*
*
*    DATA(lo_animal) = NEW zcl_07_animal_fjcm( ).
*    DATA(lo_lion) = NEW zcl_08_lion_fjcm( ).
*
*    out->write( |Animal: { lo_animal->walk( ) } | ).
*    out->write( |Lion: { lo_lion->walk( ) } | ).
*
******Narrowing (Up Cast)*****
*    lo_animal = lo_lion. " Up Cast, convertir padre en hijo
*    out->write( '*****Narrowing (Up Cast)*****' ).
*    out->write( |Animal: { lo_animal->walk( ) } | ).
*    out->write( |Lion: { lo_lion->walk( ) } | ).
*
******Widening(Down Cast)*****  "Se utiliza siempre despues de UP CAST    "Obligatorio el uso de TRY CATCH para evitar errores de conversión
*
*    TRY.
*        lo_lion ?= lo_animal. " Down Cast, volver a convertir hijo en padre *ERROR* *Clase hija no puede apuntar a clase padre*.
*      CATCH cx_sy_move_cast_error.
*        out->write( |Error: Cannot cast Animal to Lion| ).
*        RETURN.
*    ENDTRY.
*
*    lo_lion ?= lo_animal. " Down Cast, volver a convertir lo_lion en lo_animal *ERROR* *Clase hija no puede apuntar a clase padre*.
*    out->write( '*****Widening Casting (Down Cast)*****' ).
*    out->write( |Animal: { lo_animal->walk( ) } | ).
*    out->write( |Lion: { lo_lion->walk( ) } | ).

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

  endmethod.
endclass.
