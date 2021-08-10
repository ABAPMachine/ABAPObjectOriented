CLASS zcl_divider DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS divisible_by_two
      CHANGING ct_integers TYPE zcl_nums_generator=>tt_num.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_divider IMPLEMENTATION.
  METHOD divisible_by_two.
    DATA lt_number_aux TYPE zcl_nums_generator=>tt_num.

    LOOP AT ct_integers ASSIGNING FIELD-SYMBOL(<ls_number>).
      IF <ls_number>-num MOD 2 EQ 0.
        APPEND <ls_number> TO lt_number_aux .
      ENDIF.
    ENDLOOP.

    ct_integers = lt_number_aux.

  ENDMETHOD.

ENDCLASS.