CLASS zcl_03_employee_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING VALUE(iv_employee_id) TYPE string. " Metodo constructor para establecer los parametros que se necesitarn para instanciar
                                                                     " No se puede EXPORTING en Constructor
                                                                     " PUEDO DECLARAR EL CONSTRUCTOR PERO TIENE QUE COINCIDIR CON MI CREATE

    CLASS-METHODS class_constructor. " Constructor Estatico no contiene parametros   " Se llama sola una vez y se llama primero
                                     " SOLO SE DECLARA EN PUBLIC SECTION

    METHODS get_employee_id RETURNING VALUE(rv_employee_id) TYPE string.

    CLASS-DATA company TYPE string READ-ONLY.

    CLASS-DATA log TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA employee_id TYPE string.

ENDCLASS.


CLASS zcl_03_employee_fjcm IMPLEMENTATION.

  METHOD constructor.
    me->employee_id = iv_employee_id.
    log = |{ log }- instance constructor { employee_id }--->|.

  ENDMETHOD.

  METHOD get_employee_id.
    rv_employee_id = me->employee_id.
  ENDMETHOD.

  METHOD class_constructor.
    zcl_03_employee_fjcm=>company = 'FCASAS'.
    log = |{ log }- Static constructor --->|.

  ENDMETHOD.

ENDCLASS.
