CLASS zcl_nums_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   TYPES: BEGIN OF ty_num,
                 num TYPE i,
               END OF ty_num,
               tt_num TYPE STANDARD TABLE OF ty_num.
    METHODS number_counter_generator
        IMPORTING
            iv_times  TYPE i
        EXPORTING
            et_nums   TYPE tt_num.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_nums_generator IMPLEMENTATION.
  METHOD number_counter_generator.
        DATA ls_num TYPE ty_num.
        DATA lv_num TYPE i.

        DO iv_times TIMES.
          ls_num-num = lv_num.
          APPEND ls_num TO et_nums.
          lv_num = lv_num + 1.
        ENDDO.
  ENDMETHOD.

ENDCLASS.