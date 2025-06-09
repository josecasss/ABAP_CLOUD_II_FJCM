class zcl_36_connection_fjcm definition "Clase receptora de eventos para el timer"
  public
  final
  create public .

  public section.

    data: hour type zsyst_uzeit_emm,
          sender_user type string.
    methods: on_time_out for event time_out of zcl_35_timer_fjcm  " On_ Mejores practicas
                         importing ev_hour
                         sender. " Sender is a reference to the object that raised the event.

  protected section.
  private section.

endclass.



class zcl_36_connection_fjcm implementation.

  method on_time_out.
    me->hour = ev_hour.
    me->sender_user = sender->user.
*Call logout method

  endmethod.

endclass.
