CLASS zcl_prueba_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_prueba_fjcm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_test) = NEW zcl_clase( ).

    IF lo_test IS BOUND.

      lo_test->set_person(
        iv_name   = 'José'
        iv_age    = '25'
        iv_height = '1.78'
      ).

      lo_test->get_person(
        IMPORTING
          ev_name   = DATA(lv_name)
          ev_age    = DATA(lv_age)
          ev_height = DATA(lv_height)
      ).

    ENDIF.

*    out->write( |Name: { lv_name } Age: { lv_age } Height: { lv_height } | ).


    DATA(lo_test2) = NEW zcl_product_fjcm( ).

    IF lo_test2 IS BOUND.

      lo_test2->set_product_details(
        EXPORTING
          iv_product_id          = 'P001'
          iv_product_name        = 'Smartphone'
          iv_product_price       = '699.99'
          iv_product_description = 'Latest model with advanced features'
        IMPORTING
          ev_product_category    = DATA(lv_product_category)
      ).

      lo_test2->get_product_details(
    IMPORTING
      ev_product_id          = DATA(lv_product_id)
      ev_product_name        = DATA(lv_product_name)
      ev_product_price       = DATA(lv_product_price)
      ev_product_description = DATA(lv_product_description)
      ).
    ENDIF.


    out->write( |Product ID: { lv_product_id } - Name: { lv_product_name } - Price: { lv_product_price } - Description: { lv_product_description } - Category: { lv_product_category } | ).

        DATA ls_elements TYPE zcl_lab_01_elements=>ty_elem_objects.

    zcl_lab_01_elements=>set_objects(
      iv_ms_object_class     = 'zcl_person'
      iv_ms_object_instance  = 'lo_person1'
      iv_ms_object_reference = 'zcl_person->'
    ).

    out->write( zcl_lab_01_elements=>ms_object ).






  ENDMETHOD.
ENDCLASS.
