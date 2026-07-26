@echo -off

set BIOSROM BIOS.ROM

#delete old MSDM file
if exist msdm.bin then
 del msdm.bin
endif

# save MSDM
gmsdmx64

if not %Lasterror% == 0 then
 goto end
endif

# update ME F/W
fpt -f %BIOSROM% -l 0x200000 -y

if not %Lasterror% == 0 then
 goto end
endif

# update SBIOS
afuefix64 %BIOSROM% /p /b /n /x /rlc:f

if not %Lasterror% == 0 then
 goto end
endif

# restore MSDM
if exist msdm.bin then
 oaidefix64 msdm.bin /oa
if not %Lasterror% == 0 then
  goto end
endif
 del msdm.bin
endif

# shutdown system
afuefix64 /s /shutdown

:end
@echo -on