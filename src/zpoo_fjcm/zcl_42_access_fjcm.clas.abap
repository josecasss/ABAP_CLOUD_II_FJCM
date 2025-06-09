class zcl_42_access_fjcm definition
  public
  final
  create public .

  public section.

  methods: on_blocked_entrance for event blocked_entrance of zcl_41_building_fjcm
                               importing ev_entry,
           constructor.

  class-data table_blocked_entries type table of string.

  protected section.
  private section.
endclass.



class zcl_42_access_fjcm implementation.

  method on_blocked_entrance.
  append |{ ev_entry } entry blocked| to table_blocked_entries.
  endmethod.

  method constructor.
  set handler me->on_blocked_entrance for all instances.
  endmethod.

endclass.
