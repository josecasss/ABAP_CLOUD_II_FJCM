CLASS zcl_30_laptop_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA keyboard TYPE REF TO zcl_29_keyboard_fjcm. " Composición: el teclado es parte del laptop
    METHODS: constructor IMPORTING io_keyboard TYPE REF TO zcl_29_keyboard_fjcm. " Se necesita un teclado para el laptop *COMPOSICION* Sin teclado no hay laptop
                                                                                 " io_ : Importing Object
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_30_laptop_fjcm IMPLEMENTATION.

  METHOD constructor.
    me->keyboard = io_keyboard. " Asignación del teclado al laptop
  ENDMETHOD.

ENDCLASS.
