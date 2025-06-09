class zcl_44_comp_friends_fjcm definition
  public
  final
  create public .

  public section.

  methods get_helper.
  protected section.
  private section.
endclass.



class zcl_44_comp_friends_fjcm implementation.

  method get_helper.
  data(lo_components) = NEW zcl_43_components_fjcm( ).
   data(ls_first) = lo_components->mo_helper->get_first( ).
   lo_components->get_first( ).
  endmethod.

endclass.
