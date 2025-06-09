class zcl_43_components_fjcm definition
  public
  final
  create public
  global friends zcl_44_comp_friends_fjcm.

  public section.
*   data: second2 type ty_first   "No se puede usar el tipo en Public Section pero si en metodo
    methods get_first exporting ev_first type string.
  protected section.
  private section.

    data: ms_second type ty_first.

    data: mo_helper type ref to lcl_helper.



endclass.



class zcl_43_components_fjcm implementation.

  method get_first.
    data ls_first type ty_first. "Aca si se puede usar el tipo en implementacion de metodos
    ev_first = me->ms_second-comp1.
    data: lo_helper type ref to lcl_helper2.
    data: ls_second type ty_first.

  endmethod.

endclass.
