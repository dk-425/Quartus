qsys:
quartus_ipgenerate --generate_project_ip_files --synthesis=verilog ghrd_agfb014r24b2e2v
sof:

rbf:
quartus_pfg -c ./output_files/ghrd_agfb014r24b2e2v.sof ghrd.jic -o device=MT25QU02G -o flash_loader=agfb014r24b2e2v -o hps_path=u-boot-spl-dtb.hex -o mode=ASX4 -o hps=on
