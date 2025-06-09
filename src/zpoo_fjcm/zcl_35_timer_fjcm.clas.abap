class zcl_35_timer_fjcm definition
  public
  final
  create public .

  public section.

    events  time_out exporting value(ev_hour) type zsyst_uzeit_emm. "El evento no se importa, EXPORTA

    methods: increment_counter importing iv_increment_counter type i,
      check_limit,
      constructor.

    data user type string.
  protected section.
  private section.
    data: counter type i.
endclass.



class zcl_35_timer_fjcm implementation.

  method check_limit.
    if me->counter >= 5. "Logica, si el contador es mayor o igual a 5 lanza el evento
      raise event time_out exporting ev_hour = cl_abap_context_info=>get_system_time(  ).
    endif.
  endmethod.

  method increment_counter.
    me->counter += iv_increment_counter.
  endmethod.

  method constructor.
    me->user = sy-uname.
  endmethod.

endclass.
