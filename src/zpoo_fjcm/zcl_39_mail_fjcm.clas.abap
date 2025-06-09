class zcl_39_mail_fjcm definition
  public
  final
  create public .

  public section.

  class-events new_mail exporting value(ev_subject) type string.

  class-methods compose_mail.
  protected section.
  private section.
endclass.



class zcl_39_mail_fjcm implementation.

  method compose_mail.
  raise event new_mail exporting ev_subject = |ABAP DEVELOPER JOB OFFER: { cl_abap_context_info=>get_system_time(  ) }|.
  endmethod.

endclass.
