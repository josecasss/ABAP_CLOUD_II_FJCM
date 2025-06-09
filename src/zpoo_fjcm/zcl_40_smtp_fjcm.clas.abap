class zcl_40_smtp_fjcm definition
  public
  final
  create public .

  public section.

  class-methods: on_new_mail for event new_mail of zcl_39_mail_fjcm
                 importing ev_subject.

  class-data  table_inbox type table of string.
  protected section.
  private section.
endclass.



class zcl_40_smtp_fjcm implementation.

  method on_new_mail.
  append ev_subject to table_inbox. "Añade el asunto del correo a la bandeja de entrada

  endmethod.

endclass.
