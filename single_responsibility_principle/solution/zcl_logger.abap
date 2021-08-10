CLASS zcl_logger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    CLASS-DATA gr_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS logger
        IMPORTING i_data TYPE ANY
        ir_out TYPE REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_logger IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    gr_out = out.
  ENDMETHOD.

  METHOD logger.
    me->if_oo_adt_classrun~main( ir_out ).
    gr_out->write( i_data ).
  ENDMETHOD.

ENDCLASS.