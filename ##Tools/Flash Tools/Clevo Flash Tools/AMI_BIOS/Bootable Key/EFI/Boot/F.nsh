@echo -off
if exist msdm.bin then
 oaidefix64 msdm.bin /oa
 del msdm.bin
endif
@echo -on