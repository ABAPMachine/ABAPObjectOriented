CLASS zcl_srp_scenario DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_num,
             num TYPE i,
           END OF ty_num,
           tt_num TYPE STANDARD TABLE OF ty_num.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS getNums  .
    METHODS generateNums .
    CLASS-DATA gr_out TYPE REF TO if_oo_adt_classrun_out.

    DATA gt_nums TYPE tt_num.

ENDCLASS.

CLASS zcl_srp_scenario IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    me->gr_out = out.
    me->generatenums(  ).
    me->getnums(  ).
    me->gr_out->write( gt_nums ).

  ENDMETHOD.

  METHOD getnums.

    DATA lt_number_aux TYPE tt_num.

    LOOP AT gt_nums ASSIGNING FIELD-SYMBOL(<ls_number>).
      IF <ls_number>-num MOD 2 EQ 0.
        APPEND <ls_number> TO lt_number_aux .
      ENDIF.
    ENDLOOP.

    gt_nums = lt_number_aux.

  ENDMETHOD.

  METHOD generatenums.

    DATA ls_num TYPE ty_num.
    DATA lv_num TYPE i.

    DO 100 TIMES.

      ls_num-num = lv_num.
      APPEND ls_num TO gt_nums.

      lv_num = lv_num + 1.

    ENDDO.

  ENDMETHOD.

ENDCLASS.