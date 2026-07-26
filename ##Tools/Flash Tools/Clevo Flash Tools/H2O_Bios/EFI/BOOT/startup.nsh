@echo -off

# looking for startup.nsh in each file system, starting with fs

if exist fs0:\startup.nsh then
fs0:
goto FOUND
endif
if exist fs1:\startup.nsh then
fs1:
goto FOUND
endif
if exist fs2:\startup.nsh then
fs2:
goto FOUND
endif
if exist fs3:\startup.nsh then
fs3:
goto FOUND
endif
if exist fs4:\startup.nsh then
fs4:
goto FOUND
endif
if exist fs5:\startup.nsh then
fs5:
goto FOUND
endif
if exist fs6:\startup.nsh then
fs6:
goto FOUND
endif
if exist fs7:\startup.nsh then
fs7:
goto FOUND
endif
if exist fs8:\startup.nsh then
fs8:
goto FOUND
endif
if exist fs9:\startup.nsh then
fs9:
goto FOUND
endif

# looking for startup.nsh in blk file systems

if exist blk0:\startup.nsh then
blk0:
goto FOUND
endif
if exist blk1:\startup.nsh then
blk1:
goto FOUND
endif
if exist blk2:\startup.nsh then
blk2:
goto FOUND
endif
if exist blk3:\startup.nsh then
blk3:
goto FOUND
endif
if exist blk4:\startup.nsh then
blk4:
goto FOUND
endif
if exist blk5:\startup.nsh then
blk5:
goto FOUND
endif
if exist blk6:\startup.nsh then
blk6:
goto FOUND
endif

# If startup.nsh is not found in any file system, we display the following message
echo ""
echo Unable to automatically find correct file system.
echo Please navigate to the correct file system from the list above.
echo You can use PageUp and PageDown keys on your keyboard to scroll up and down.
echo For example, you can navigate to fs1 by typing 'fs1:' and hitting [Return].
echo Please note: EFI shell is running with US keyboard layout.
echo The [:] character (colon) is located next to "L" and below "P", with [Shift]
echo If you are unable to proceed, please contact support.
echo ""

goto END
# after message display, we jump to END OF FILE, jumping OVER the next paragraph


# startup.nsh is found. We display the message to explain the last steps
:FOUND

echo ""
echo Welcome to EC/BIOS Update via EFI Shell.
echo You are already in the correct file system.
echo ""
echo Please use commands 'dir' and 'cd' to navigate.
echo The command 'dir' will list the content of your current directory.
echo The command 'cd' (change directory) will navigate down to the next directory.
echo To navigate up to the parent folder again, use the command 'cd ..'
echo ""
echo Use tabulator [Tab] key on your keyboard for auto-completion.
echo Example: 'cd Firmware' and then press [Tab] a few times.
echo ""
echo After entering the appropriate folder, run the correct NSH file to Update.
echo NSH files in EFI Shell are the same as BAT files (Batch files) in MS-DOS.
echo To run an NSH file, simply type its name into the shell and hit [Return].
echo You can use [Tab] again to auto-complete the name of the NSH file.
echo Update files are named F.NSH, FLASH.NSH, FLASHME.NSH, ECFLASH.NSH or similar.
echo ""
echo If your BIOS update contains an ME Update, please run MESET first.
echo If you wish to update both EC and BIOS, please run the EC Update first.
echo Typical update sequence: 1) EC Update, 2) MESET, 3) ME/BIOS Update.
echo ""
echo You can use PageUp and PageDown keys on your keyboard to scroll up and down.
echo If you do not know how to proceed, please contact support.
echo ""

# That should be all.

:END
# END OF FILE
