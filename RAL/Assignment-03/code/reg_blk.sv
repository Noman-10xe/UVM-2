class reg_blk extends uvm_reg_block;
    
    // Factory Registration
    `uvm_object_utils(reg_blk)

    // Register instances
    cntrl ctrl; 
    reg1 r1;
    reg2 r2;
    reg3 r3;
    reg4 r4;

    // Constructor
    function new ( string name = "reg_blk" );
        super.new( name, UVM_NO_COVERAGE )
    endfunction : new
    
    // Build
    function void build();
        ctrl = cntrl::type_id::create("ctrl");
        ctrl.build;
        ctrl.configure(this);

        r1 = reg1::type_id::create("r1");
        r1.build;
        r1.configure(this);

        r2 = reg2::type_id::create("r2");
        r2.build;
        r2.configure(this);

        r3 = reg3::type_id::create("r3");
        r3.build;
        r3.configure(this);

        r4 = reg4::type_id::create("r4");
        r4.build;
        r4.configure(this);

    // Map
    default_map = create( "default_map", 0, 4, UVM_LITTLE_ENDIAN, 1 )

    default_map.add_reg( ctrl,  'h0,    "RW"   );
    default_map.add_reg( r1,    'h4,    "RW"   );
    default_map.add_reg( r2,    'h8,    "RW"   );
    default_map.add_reg( r3,    'hC,    "RW"   );
    default_map.add_reg( r4,    'h10,   "RW"   );
    endfunction : build

endclass : reg_blk