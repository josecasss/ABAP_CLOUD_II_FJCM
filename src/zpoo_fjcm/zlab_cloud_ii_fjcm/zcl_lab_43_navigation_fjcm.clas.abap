CLASS zcl_lab_43_navigation_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: log type string.
  METHODS: on_touch_screen for event touch_screen of zcl_lab_42_screen_fjcm
                           IMPORTING ev_horizontal
                                      ev_vertical.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation_fjcm IMPLEMENTATION.

  METHOD on_touch_screen.
  log = |Horizontal: { ev_horizontal }, Vertical: { ev_vertical }|.
  ENDMETHOD.

ENDCLASS.
