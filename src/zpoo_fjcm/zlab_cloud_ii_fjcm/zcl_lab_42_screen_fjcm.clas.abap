CLASS zcl_lab_42_screen_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: element       TYPE i,
          lv_horizontal TYPE i,
          lv_vertical   TYPE i.

    EVENTS touch_screen EXPORTING VALUE(ev_horizontal) TYPE i
                                  VALUE(ev_vertical)   TYPE i.

    METHODS: element_selected IMPORTING iv_element TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_42_screen_fjcm IMPLEMENTATION.

  METHOD element_selected.
    me->element = iv_element.
    " Simulación de cálculo de coordenadas basado en el elemento
    lv_horizontal = iv_element * 10.  " Ejemplo: posición X
    lv_vertical = iv_element * 5.     " Ejemplo: posición Y

    " DISPARAR EL EVENTO
    RAISE EVENT touch_screen
      EXPORTING
        ev_horizontal = lv_horizontal
        ev_vertical = lv_vertical.
  ENDMETHOD..

ENDCLASS.
