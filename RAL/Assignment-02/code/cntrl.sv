class cntrl extends uvm_reg;
    // Factory Registration
    `uvm_object_utils(cntrl)

    rand uvm_reg_field control;

    // Constructor
    function new ( string name = "cntrl");
        super.new( name, 4, UVM_NO_COVERAGE )
    endfunction : new

    virtual function void build();
        control = uvm_reg_field::type_id::create("control");
        control.configure( this, 4, 0, "RW", 0, 0, 1, 1, 0  );
    endfunction : build

endclass : cntrl