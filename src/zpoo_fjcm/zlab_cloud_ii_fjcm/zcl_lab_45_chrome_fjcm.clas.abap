class zcl_lab_45_chrome_fjcm definition
  public
  final
  create public .

  public section.
    methods: on_close_window for event close_window of zif_lab_05_browser_fjcm
                                                    importing sender.
    data: log type string.
  protected section.
  private section.
endclass.



class zcl_lab_45_chrome_fjcm implementation.

  method on_close_window.
  me->log = |{ zif_lab_05_browser_fjcm=>log } - { cl_abap_context_info=>get_system_time( ) }|.
  endmethod.

endclass.
