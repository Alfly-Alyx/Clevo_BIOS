#writing Strings into BIOS
H2OSDE-Sx64.efi -SM "EUROCOM"
H2OSDE-Sx64.efi -CM ""
H2OSDE-Sx64.efi -BM "EUROCOM"
H2OSDE-Sx64.efi -SP "Sky Z7 R2"
H2OSDE-Sx64.efi -SKU ""
H2OSDE-Sx64.efi -BP "X170KM-G"
H2OSDE-Sx64.efi -SF " "


@echo                                                     
@echo off                                                 
set BIOSROM X170KM.08RTR2-G2  
if '%1' == '' then                                       
goto flash                                                
endif                                                     
set BIOSROM %1                                           
:flash                                                    
# Check the file exist or not.                            
if not exist %BIOSROM% then                             
 echo The %BIOSROM% doesn't exist.                      
 goto end                                                 
endif                                                     
fpt -f %BIOSROM% -a 0 -l 0x1000000 -y                    
:end                                                      
X170KM08RTR2-G2.efi           
