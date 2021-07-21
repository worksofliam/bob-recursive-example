PFs := VATDEF.FILE SAMREF.FILE
MODULEs := VAT300.MODULE
SRVPGMs := FVAT.SRVPGM

# $(foreach v, \
#   $(.VARIABLES), \
#   $(info $(v) = $($(v))))

SAMREF.FILE = $(d)/SAMREF.FILE
SAMREF.FILE: $(SAMREF.FILE)
$(SAMREF.FILE): $(d)/SAMREF.PF

VAT300.MODULE = $(d)/VAT300.MODULE
VAT300.MODULE: $(VAT300.MODULE)
$(VAT300.MODULE): $(d)/VAT300.RPGLE VATDEF.FILE SAMREF.FILE

FVAT.SRVPGM = $(d)/FVAT.SRVPGM
FVAT.SRVPGM: $(FVAT.SRVPGM)
$(FVAT.SRVPGM): $(d)/FVAT.BND VAT300.MODULE

VATDEF.FILE = $(d)/VATDEF.FILE
VATDEF.FILE: $(VATDEF.FILE)
$(VATDEF.FILE): $(d)/VATDEF.PF SAMREF.FILE
