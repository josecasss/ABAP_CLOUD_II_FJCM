class zcl_lab_51_wz_friend_fjcm definition
  public
  final
  create public .

  public section.
  methods: get_helper.
  protected section.
  private section.
endclass.



class zcl_lab_51_wz_friend_fjcm implementation.

  method get_helper.
"    data(lo_work_zone) = NEW lcl_helper_fjcm( ).
    " No es posible. Ya que la clase lcl_helper_fjcm solo es visible dentro de su clase global
    " Aunque esta clase es amiga, no le da acceso a sus clases locales.
  endmethod.

endclass.
