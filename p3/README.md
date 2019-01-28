# Known Issues
No known issues, all tests passing. Some chips depend on other chips, so put them all in the same directory so they're not overridden by the stock chips.

# How to run
Open the hardware simulator, (`sh tools/HardwareSimulator.sh`). For each chip, load chip `hunterAbiProject3/<a or b>/CHIPNAME.hdl`, and then load script `nand2tetris/projects/03/<a or b>/CHIPNAME.tst`, press run. Presto!
