	component subsys_periph is
		port (
			ILC_irq_irq                           : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- irq
			button_pio_external_connection_export : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			button_pio_irq_irq                    : out std_logic;                                        -- irq
			dipsw_pio_external_connection_export  : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			dipsw_pio_irq_irq                     : out std_logic;                                        -- irq
			led_pio_external_connection_in_port   : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- in_port
			led_pio_external_connection_out_port  : out std_logic_vector(2 downto 0);                     -- out_port
			pb_cpu_0_s0_waitrequest               : out std_logic;                                        -- waitrequest
			pb_cpu_0_s0_readdata                  : out std_logic_vector(31 downto 0);                    -- readdata
			pb_cpu_0_s0_readdatavalid             : out std_logic;                                        -- readdatavalid
			pb_cpu_0_s0_burstcount                : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- burstcount
			pb_cpu_0_s0_writedata                 : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			pb_cpu_0_s0_address                   : in  std_logic_vector(8 downto 0)  := (others => 'X'); -- address
			pb_cpu_0_s0_write                     : in  std_logic                     := 'X';             -- write
			pb_cpu_0_s0_read                      : in  std_logic                     := 'X';             -- read
			pb_cpu_0_s0_byteenable                : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			pb_cpu_0_s0_debugaccess               : in  std_logic                     := 'X';             -- debugaccess
			clk_clk                               : in  std_logic                     := 'X';             -- clk
			reset_reset_n                         : in  std_logic                     := 'X'              -- reset_n
		);
	end component subsys_periph;

	u0 : component subsys_periph
		port map (
			ILC_irq_irq                           => CONNECTED_TO_ILC_irq_irq,                           --                        ILC_irq.irq
			button_pio_external_connection_export => CONNECTED_TO_button_pio_external_connection_export, -- button_pio_external_connection.export
			button_pio_irq_irq                    => CONNECTED_TO_button_pio_irq_irq,                    --                 button_pio_irq.irq
			dipsw_pio_external_connection_export  => CONNECTED_TO_dipsw_pio_external_connection_export,  --  dipsw_pio_external_connection.export
			dipsw_pio_irq_irq                     => CONNECTED_TO_dipsw_pio_irq_irq,                     --                  dipsw_pio_irq.irq
			led_pio_external_connection_in_port   => CONNECTED_TO_led_pio_external_connection_in_port,   --    led_pio_external_connection.in_port
			led_pio_external_connection_out_port  => CONNECTED_TO_led_pio_external_connection_out_port,  --                               .out_port
			pb_cpu_0_s0_waitrequest               => CONNECTED_TO_pb_cpu_0_s0_waitrequest,               --                    pb_cpu_0_s0.waitrequest
			pb_cpu_0_s0_readdata                  => CONNECTED_TO_pb_cpu_0_s0_readdata,                  --                               .readdata
			pb_cpu_0_s0_readdatavalid             => CONNECTED_TO_pb_cpu_0_s0_readdatavalid,             --                               .readdatavalid
			pb_cpu_0_s0_burstcount                => CONNECTED_TO_pb_cpu_0_s0_burstcount,                --                               .burstcount
			pb_cpu_0_s0_writedata                 => CONNECTED_TO_pb_cpu_0_s0_writedata,                 --                               .writedata
			pb_cpu_0_s0_address                   => CONNECTED_TO_pb_cpu_0_s0_address,                   --                               .address
			pb_cpu_0_s0_write                     => CONNECTED_TO_pb_cpu_0_s0_write,                     --                               .write
			pb_cpu_0_s0_read                      => CONNECTED_TO_pb_cpu_0_s0_read,                      --                               .read
			pb_cpu_0_s0_byteenable                => CONNECTED_TO_pb_cpu_0_s0_byteenable,                --                               .byteenable
			pb_cpu_0_s0_debugaccess               => CONNECTED_TO_pb_cpu_0_s0_debugaccess,               --                               .debugaccess
			clk_clk                               => CONNECTED_TO_clk_clk,                               --                            clk.clk
			reset_reset_n                         => CONNECTED_TO_reset_reset_n                          --                          reset.reset_n
		);

