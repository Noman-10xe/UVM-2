class reg2 extends uvm_reg;
    // Factory Registration
    `uvm_object_utils(reg2)

    rand uvm_reg_field Register2;

    // Constructor
    function new ( string name = "reg2");
        super.new( name, 32, UVM_NO_COVERAGE )
    endfunction : new

    virtual function void build();
        control = uvm_reg_field::type_id::create("Register2");
        control.configure( this, 32, 0, "RW", 0, 0, 1, 1, 0  );
    endfunction : build

endclass : reg2