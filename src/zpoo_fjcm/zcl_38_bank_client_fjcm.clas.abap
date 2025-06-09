class zcl_38_bank_client_fjcm definition
  public
  final
  create public .

  public section.
    methods on_new_transfer for event new_transfer of zif_10_bank_fjcm
                            importing sender.

  data notification type string.
  protected section.
  private section.
endclass.



class zcl_38_bank_client_fjcm implementation.

  method on_new_transfer.
  me->notification = |{ sender->office } - { cl_abap_context_info=>get_system_time( ) }|.
  endmethod.

endclass.
