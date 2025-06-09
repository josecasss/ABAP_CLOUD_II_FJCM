class zcl_lab_44_operating_sys_fjcm definition
  public
  final
  create public .

  public section.

    interfaces zif_lab_05_browser_fjcm .
    methods: mouse_movement returning value(rv_log) type string.
  protected section.
  private section.
endclass.



class zcl_lab_44_operating_sys_fjcm implementation.

  method mouse_movement.
  rv_log = 'Mouse movement detected in the operating system.'.
  raise event zif_lab_05_browser_fjcm~close_window.
  endmethod.

endclass.
