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

* Vieja forma
*  DATA lo_contract type ref to zcl_02_contract_fjcm.
*
*  create object lo_contract.
*
* lo_contract = new #( ).

*********************************
    DATA(lo_contract) = NEW zcl_02_contract_fjcm( ). "Constructor *New* Para instanciar un objeto
    DATA(lo_contract2) = NEW zcl_02_contract_fjcm( ).

    DATA lv_process TYPE string. "Parametro Changing no aplica DATA().

    DATA: lt_address type zcl_02_contract_fjcm=>tty_address, "Tabla interna de direcciones obtenida de la clase
          ls_address type zcl_02_contract_fjcm=>ty_address.

    IF lo_contract IS BOUND. "Verifica si el objeto está instanciado

      lo_contract->set_client(            " IMPORTING NO ES OBLIGATORIO EN LA FIRMA por eso viene comentado, EXPORTING Y CHANGING SÍ.
        EXPORTING
          iv_client   = 'Freddy'
*          iv_location = 'Poland'
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process ).

      lo_contract->get_client(
      IMPORTING
      ev_client = DATA(lv_client)
      ev_location = DATA(lv_location)  ).

      lo_contract->region = 'PL'.

******** Metodo funcional***
*      lo_contract->get_client_name(
*        EXPORTING
*          iv_client_id   = '02'
*        RECEIVING
*          rv_client_name = DATA(lv_client_name)
*      ).

**** FUNCIONAL FORMA MAS LIMPIA, SI SOLO TIENE UN PARAMETRO****
      DATA(lv_client_name) = lo_contract->get_client_name( '001' ).

      IF NOT lv_client_name IS INITIAL. "Si el cliente existe
        out->write( lo_contract->get_client_name( '001' ) ).
      ENDIF.
    ENDIF.

    out->write( lv_client ).
    out->write( |{ lv_client } - { lv_process } - { lv_status }| ).

************ ESTATICOS =>  *************** " Solo atributos estaticos se accede con la clase estatica, no con la instancia

    zcl_02_contract_fjcm=>set_cntr_type( 'Construction' ).  "Metodo Estatico                     Metodo Estatico solo accede a atributo estatico.

    zcl_02_contract_fjcm=>get_cntr_type( IMPORTING ev_cntr_type = DATA(lv_ctnr_type) ).

    zcl_02_contract_fjcm=>currency = zcl_02_contract_fjcm=>cs_currency-usd. "Atributo estatico. Afecta a todos es como si fuera compartido, Cambias una instancia y afecta a todas las instancias

    out->write( lo_contract->currency ).
    out->write( lo_contract2->currency ).

    out->write( |{ lv_client } - { lv_location } - { lo_contract->region }| ).
    out->write( |{ lv_ctnr_type }| ).

    out->write( zcl_02_contract_fjcm=>company ). "Atributo estatico, afecta a todas las instancias 'TIENE READ ONLY'

  ENDMETHOD.
ENDCLASS.
