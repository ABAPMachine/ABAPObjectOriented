CLASS zcl_main_ng DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    CLASS-DATA gt_nums TYPE zcl_nums_generator=>tt_num.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA if_oo_adt_classrun_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.

CLASS zcl_main_ng IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lr_generator) = NEW zcl_nums_generator(  ).
    DATA(lr_logger) = NEW zcl_logger(  ).
    DATA(lr_divider) = NEW zcl_divider(  ).

    "Class for generate numbers, could be any methos genarating numbers with different patterns
    lr_generator->number_counter_generator(
        EXPORTING
            iv_times = 100
        IMPORTING
            et_nums = gt_nums
    ).

    "Check if a number is divisible by two, could be any methods checking any kind of arithmetic
    lr_divider->divisible_by_two(
      CHANGING
        ct_integers = gt_nums
    ).

    "One class for deliver data, could be on console or maybe in a report, who the hell knows !!!
    lr_logger->logger(
        EXPORTING
            i_data = gt_nums
            ir_out = out
    ).

  ENDMETHOD.

ENDCLASS.