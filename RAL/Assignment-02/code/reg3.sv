class reg3 extends uvm_reg;
    // Factory Registration
    `uvm_object_utils(reg3)

    rand uvm_reg_field Register3;

    // Constructor
    function new ( string name = "reg3");
        super.new( name, 32, UVM_NO_COVERAGE )
    endfunction : new

    virtual function void build();
        control = uvm_reg_field::type_id::create("Register3");
        control.configure( this, 32, 0, "RW", 0, 0, 1, 1, 0  );
    endfunction : build

endclass : reg3