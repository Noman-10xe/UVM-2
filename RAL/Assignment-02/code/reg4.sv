class reg4 extends uvm_reg;
    // Factory Registration
    `uvm_object_utils(reg4)

    rand uvm_reg_field Register4;

    // Constructor
    function new ( string name = "reg4");
        super.new( name, 32, UVM_NO_COVERAGE )
    endfunction : new

    virtual function void build();
        control = uvm_reg_field::type_id::create("Register4");
        control.configure( this, 32, 0, "RW", 0, 0, 1, 1, 0  );
    endfunction : build

endclass : reg4