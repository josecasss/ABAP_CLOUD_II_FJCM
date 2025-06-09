class zcl_37_american_bank_fjcm definition
  public
  final
  create public .

  public section.
  interfaces zif_10_bank_fjcm. "Interfaz de un evento

  methods: create_notification returning value(rv_text) type string.

  protected section.
  private section.
endclass.



class zcl_37_american_bank_fjcm implementation.

  method create_notification.
  rv_text = |Event raise..... new transfer - { cl_abap_context_info=>get_system_time(  ) }| .
  raise event zif_10_bank_fjcm~new_transfer. " Declaracion del evento
  endmethod.

endclass.
