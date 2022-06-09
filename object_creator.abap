class zcl_object_creator definition
  public
  final
  create public .

  public section.
    interfaces if_oo_adt_classrun .

  protected section.
  private section.
    methods object_creator
     returning
      value(ro_object_creator) type ref to zcl_object_creator .
endclass.


class zcl_object_creator implementation.


  method if_oo_adt_classrun~main.
    DATA(lo_obj) = object_creator( ).
  endmethod.

  method object_creator.
    ro_object_creator = new #(  ).
  endmethod.

endclass.
