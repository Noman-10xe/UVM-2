    class reg3_wr_sequence extends uvm_sequence;
    
    // Factory Registration
    `uvm_object_utils(reg3_wr_sequence)

    // Register Model
    reg_blk reg_model;

    // Constructor
    function new( string name = "reg3_wr_sequence");
        super.new(name);
    endfunction : new

    // Body Task
    task body();
        uvm_status_e status;
        bit [31:0] wdata;
        wdata = $urandom();
        reg_model.r3.write(status, wdata);
    endtask
        
    endclass : reg3_wr_sequence