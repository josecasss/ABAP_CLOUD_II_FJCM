class zcl_lab_50_work_zone_fjcm definition
  public
  final
  create public
  global friends zcl_lab_51_wz_friend_fjcm.

  public section.
  protected section.
  private section.
  methods: set_work_zone importing iv_work_zone type ty_work_zone.
  data: mv_work_zone type ty_work_zone,
        mo_helper type ref to lcl_helper_fjcm.

endclass.



class zcl_lab_50_work_zone_fjcm implementation.

  method set_work_zone.
  mv_work_zone = iv_work_zone.
  endmethod.

endclass.
