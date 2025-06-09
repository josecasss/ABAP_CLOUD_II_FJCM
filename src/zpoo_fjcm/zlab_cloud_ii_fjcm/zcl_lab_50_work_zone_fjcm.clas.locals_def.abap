*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section

types: begin of ty_work_zone,
         launchpad type string,
         dashboard type string,
         space     type string,
       end of ty_work_zone.

class lcl_helper_fjcm definition.
  public section.
  data ms_work_zone type ty_work_zone.
  methods: get_work_zone returning value(rv_work_zone) type ty_work_zone.
  protected section.
  private section.

endclass.
