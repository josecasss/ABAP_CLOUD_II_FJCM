class zcx_45_auth_fjcm definition
  public
  inheriting from cx_static_check
  final
  create public .

  public section.

    interfaces if_t100_message .
    interfaces if_t100_dyn_msg .

    constants:
      begin of no_auth,  " Pornerle el nombre, esta constate biene del default_textid
        msgid type symsgid value 'ZMC_FJCM', " Identificador del mensaje
        msgno type symsgno value '001',      " Numero del mensaje
        attr1 type scx_attrname value 'mv_msgv1',
        attr2 type scx_attrname value 'mv_msgv2',
        attr3 type scx_attrname value 'mv_msgv3',
        attr4 type scx_attrname value 'mv_msgv4',
      end of no_auth.

    constants:
      begin of no_resource,  " Pornerle el nombre, esta constate biene del default_textid
        msgid type symsgid value 'ZMC_FJCM', " Identificador del mensaje
        msgno type symsgno value '002',      " Numero del mensaje
        attr1 type scx_attrname value 'mv_msgv1',
        attr2 type scx_attrname value 'mv_msgv2',
        attr3 type scx_attrname value 'mv_msgv3',
        attr4 type scx_attrname value 'mv_msgv4',
      end of no_resource.

    "Crear atributos para asignar los valores de los mensajes
    data: mv_msgv1 type string,
          mv_msgv2 type string,
          mv_msgv3 type string,
          mv_msgv4 type string.

    methods constructor
      importing
        !textid   like if_t100_message=>t100key optional
        !previous like previous optional
        "Los copiamos aca los atributos
        msgv1  type string optional
        msgv2  type string optional
        msgv3  type string optional
        msgv4  type string optional.
  protected section.
  private section.
endclass.



class zcx_45_auth_fjcm implementation.

  method constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(
      previous = previous
    ).
    clear me->textid.
    if textid is initial.
      if_t100_message~t100key = if_t100_message=>default_textid.
    else.
      if_t100_message~t100key = textid.
    endif.
    "Asignamos los valores de los atributos para lmensajes
    me->mv_msgv1 = msgv1.
    me->mv_msgv2 = msgv2.
    me->mv_msgv3 = msgv3.
    me->mv_msgv4 = msgv4.
  endmethod.
endclass.



"      asdadasdasdasdasdasdas



