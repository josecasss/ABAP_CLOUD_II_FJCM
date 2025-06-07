CLASS zcl_26_plant_fjcm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS assign_company IMPORTING ir_co_company TYPE ref to zif_08_co_company_fjcm "Referencia a la interfaz zif_08_co_company_fjcm *Poliformismo* *ir = input reference*
                         RETURNING VALUE(rv_plant) TYPE string. "Referencia a la interfaz zif_08_plant_fjcm *Poliformismo*
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_26_plant_fjcm IMPLEMENTATION.

  METHOD assign_company.
  rv_plant = |Plant was assigned to { ir_co_company->define_company( ) }|.
  ENDMETHOD.

ENDCLASS.
