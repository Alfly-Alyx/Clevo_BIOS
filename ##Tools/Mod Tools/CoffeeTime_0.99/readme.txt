---------------------------------| CoffeeTime |------------------------------------
--------------------| s1151 bios updater for Coffee Lake CPUs |--------------------

-----------------------| ABOUT LICENSE TERMS AND DISCLAIMER |----------------------

- CoffeeTime bios modification tool distributed as free software and not using any license agreement.
- You can use and distribute CoffeeTime at your own decision.
- CoffeeTime tool is provided "as is" without warranty of any kind.
- All responsibility for the consequences of using CoffeeTime lies with the end user without any reservations.

----------------------------------| CHANGELOG |------------------------------------

v.0.99 (14.05.2021)
+ Added mod which inject support of 16-threaded CPUs for any bios. It's also includes fix of MflashPei module for MSI 100 bioses to allow starts 6-cores CPUs on it. Both methods provided by dsanke.
+ Corrected ACPI patch for MSI 100. It updates only part of important tables (GUIDS С118... and C38F...) to prevent bios crash. Research of this issue continues. 
+ Added "MSI Abnormal ME warning" fix, which removes this message on boot from MSI boards with disabled ME.
+ Added fix for Clevo Z370, which bypass automatic system shutdown when ME was disabled.
+ Added "Default RAM frequency" NVRAM setting. It allow to change RAM frequency for system boot and may provide better compatibility for 1440 CPUs with different RAM. Drop to defaults applies every time CMOS was cleared.
+ Removed "NVMe" and "ASUS 12T blocker" fixes, cause they no more needed using new 16t support method.
+ Microcodes of SKL/KBL/CFL updated to last EA revision.

v0.92 (06.10.2020)
+ Changed PCIe patch to improve compatibility: old patterns replaced and new added. If old patch will detected - label color changes to yellow. Replaced patterns has no any difference from old for work consumer CFL CPUs
+ Fixed PCIe 1440 patch for notebook CPUs. Left one type of fix for all cases. This fix required only for 6c/12t notebook CPUs (QNCT, QQLT)
+ Combo of changed PCIe and PCIe 1440 patches now make a better compatibility for notebooks 1440 CPUs. But still not 100%
+ Added new patterns for Init 8+ CPUs patch to improve compatibility
+ Uefireplace and Uefipatch tools downgraded to 0.25.0 to prevent problems with module updating
+ Completely reworked VBIOS and GOP updating system. Now it find and update all VBIOS, GOP driver and GOP Vbt copies at all places. Thanks to Dsanke for algo. Module from internal VBIOS base or custom module will inserted without any settings transfer, so it's not recommended for general using.
+ Added tooltips with basic info for all mods
+ Added SPD Write Protection unlock patch
+ Added fix for cores/threads count display type in BIOS from hexadecimal to decimal
+ Added fix to unlock maximum 128Gb RAM
+ Added possibility to patch AMI table with non-standard identifier. Some manufacturers (notebooks and servers mostly) may changes AMI table name to any custom for no reason. If ACPI patching finishes by info-window with unpatched single table name it may be the case. CoffeeTime use hardcoded algo to make all tables patched full and correctly. You can create a file "data/custom/aminames.txt" and place custom table name there (full name or partially, ID can be founded in the information message after ACPI patching try), one line - one identifier. Then reopen image and try patch ACPI again.
+ GOP driver module updated to 9.0.1107
+ Added microcodes:
.       - 906EB_5E, 906EC_98

v0.9 (24.09.2020)
+ CoffeeTime rewritten using C++, added GUI
+ Only advanced mode available atm. No any hints, so you need to know mod list wich required to make modbios exactly you want
+ Completely rework ACPI patch - now it works for everything, even for rare tables
+ Added custom modules support - just drop your microcode/ME/Vbios/GOP into "data/custom" directory
+ Improved personal data replacing system - partial/full/transfer. Fixed for MAC transfer from slot2  (e.g. ASUS Z170iPG)
+ Improved microcodes replacing system - specific microcodes selection and show available space
+ Added Vbios universal update using BMP. Vbioses from base also available, just in case
+ Available Vbios versions list for universal update:
.       - 1062, 1059, 1058, 1055, 1054
+ Available ME versions list changed to:
.	- 11.0.0.1168 | CON | Full
.	- 11.7.0.1229 | CON | Full
.	- 11.7.0.3307 | COR | Cut
.	- 11.8.77.3664 | COR | Cut
+ Available Microcodes list changed to:
.       - 506E0_18, 506E1_2A, 506E2_2E, 506E3_74, 506E3_DC, 506E8_34, 906E9_DE,
.       - 906EA_6A, 906EA_AA, 906EA_DE, 906EB_AA, 906EB_DE, 906EC_96, 906EC_BE, 906EC_DE, 906ED_BE, 906ED_DE
+ Changed NVMe fix - now it removes only 1 GUID
+ If loaded BIOS from Z370/B365/H310C board - PCIe patch switches to Xeon adaptation mode
+ MeRecovery fix deletes GUID according vendor - ASUS / Gigabyte
+ Added NVRAM defaults settings setup:
.	- BIOS Lock
.	- Hyper-Threading
+ Added two-options patch to fix processor PCIe lines when 1440 CPUs installed. Correct fix type is determined by test method. Not 100% cases working for now
+ No more any symbols restrictions in paths
+ Drag'n'Drop implemented
+ Using of dumped BIOS isn't restriction
+ Added launch option "Skip NVRAM" - may be useful if CT stucks on NVRAM checking (ifrextract.exe problem)
+ MSI: Patches for 8+ threads was blocked because it useless for MSI boards and even may be harmful (e.g. ACPI patch breaks any MSI BIOS)
+ ASUS: To restore capsule just save image with ".cap" extension



v0.85a (31.05.2019)
+ Added universal ME 11.8.60.3561_CORPORATE for using Xeon on any boards
+ Automodification unlocked for most of 200-series boards from ASRock, ASUS, Gigabyte and MSI
+ Confirmed work of 6/8-threads CPUs on MSI 200-series, so now automodification is unlocked for them
+ Added vbios 1062 base and it set by default for automod
+ Into Advanced mode added 906ED microcode for Coffee Lake R0
+ Updated microcodes:
.	- 506E3_rev_CC
.	- 906E9_rev_B4
.	- 906EA_rev_B4
.	- 906EB_rev_B4
.	- 906EC_rev_AE
.	- 906ED_rev_B8
+ Automodification deletes factory FD+ME backup (GUID 63F23E9D-...) for latest ASUS 200-series bioses
+ Unlocked possibility to apply NO_CAP-fix for ASUS 1xxx bioses
+ For ASUS boards added possibility to inject all (B0+U0+P0+R0) Coffee Lake microcodes into bios with keep existed. This mod always should be applied as last, after all other. Experimental function
+ Added support for ASUS H170-PLUS D3
+ Comparison image of 9700K P0 replaced to correct
+ Rewrited some info messages



v0.83 (12.03.2019)
+ Removed dump creation function and FPT tool. Now you can find FPT and other useful soft in Tools folder by general download link
+ Capsule restore function now add fake capsule. It's useful only for ASUS USB Flashback feature
+ SKU changing function replaced to SKU hack method
+ Added ME state toggle function (using HAP bit)
+ Added 9900K section
+ Added Xeon CPUs sections (now only for 100-series of ASRock, ASUS, Gigabyte and MSI-8MB)
+ Added MeRecoveryDxe module deleting function (for using Xeon on Gigabyte 100-series boards)
+ Added 12-threads blocking module deleting function (for using 12-threads CPUs on latest 3xxx bioses 100-series and some ASUS bioses 200-series)
+ Added NO_CAP fix to remove .CAP request on ASUS 100-series 2xxx bioses with changed ME. Works for most boards. If stat is N/A - issue can't be fixed yet or fix not required. Fix wont' work if your current bios has .CAP request issue.
+ Added NVME fix for ASUS (stock NVME drivers may cause 8-threads limit). This fix not compatible with Optane drives.
+ Added posibility to select ME version in Advanced mode:
.	- 11.7.0.1229_CONSUMER
.	- 11.7.0.1261_CORPORATE
.	- 11.0.0.1168_CONSUMER (for using Xeon)
.	- 11.8.50.3470_CORPORATE (cleaned 2.5MB version, for using Xeon)
+ Added microcodes:
.	- 906EA_rev_6A (Coffee Lake U0)
.	- 506E0_rev_18 (Skylake ES A0)
.	- 506E1_rev_2A (Skylake ES Q0)
.	- 506E8_rev_34 (kaby Lake ES A0)
+ In Autoupdate VBIOS version changed to 1054 for best compatibility. Version 1059 stay available in Advanced mode
+ In Autoupdate U0 microcode for 12-threads CPUs replaced to 906EA_rev_6A for best compatibility
+ Output modbios name format changed to <source_bios_file_name>.<tag>.bin (tag: CFL for regular; CFLX for Xeonmod; CTMOD for Advanced mode)
+ Reworked finalizing info. It shows lite version by default, but as option you can generate and save all extended info and hints in .txt
+ Reworked ASUS data transfer function. Fixed bug with 2xxx => 38xx transferring
+ Added drag'n'drop function. Just drop your file on CoffeeTime.exe to start
+ Fixed some mod detection conditions
+ Colored output. Green = OK; Red = Not OK; Yellow in Auto = CFL will work without, but pay attention; Yellow in Advanced = Depends of goals
+ A lot of changes and fixes for UI
+ Added support for MSI H110 PC MATE



v0.7hf (hotfix) (27.12.2018)
+ Fixed pinmod image



v0.7 (26.12.2018)
+ Added 9700K/9600K section
+ Unlocked ASUS i7 8xxx section
+ Correct SKU changing method
+ Added backup BIOS function (using FPT)
+ Added personal data transfer for ASUS boards (using FD44Cpr)
+ Unlocks regions and setup MAC moved from autoupdate to single options
+ Microcodes updated: 906E9_rev_9A, 906EA_rev_9A, 906EB_rev_A4, 906EC_rev_A2
+ Added possibility to mod unsupported boards in Advanced mode, exclude VBIOS
+ Added support for:
.	- BIOSTAR all boards whose bios can be found on official website
.	- Colorful all boards whose bios can be found on official website
.	- MAXSUN all boards whose bios can be found on official website
.	- ASUS Z170-AR
.	- ASUS Zen AiO ZN270IE
+ Fixed ME updating for corporate chipsets
+ Pinmod images compiled to single. Thanks to dsanke for additional info
+ Added Contacts and Support info, it can be found at bottom of readme.txt
+ Recompiled ACPI patches to minimize AV warnings
+ A lot of minor changes



v0.6a_fix_fix (15.10.2018)
+ Fixed pinmod images



v0.6a_fix (12.10.2018)
+ Rebuild 6b5c_7e37.exe to remove antivirus warning
+ Added support for ASUS H110M-R



v0.6a (07.10.2018)
+ Now CoffeeTime can make full mod for any B0/U0 Coffee CPU. But still not for every board
+ Added i7 section
+ Added ME region replace func
.    - version 11.7.0.1229
+ Added SKU change func, LAN port will be kept
+ Separated autoupdate logic
+ Changed menus logic
+ Reworked Advanced menu
+ Added ACPI patcher for 6A06 module
+ Added support for ASUS Zen AiO Pro Z240IE



v0.5a (01.10.2018)
+ Added auto cleaner for temporary files
+ Added ACPI patch at manual mode. Only for advanced users for now
.  Known issues:
.	- Can't disassemble table in C118 module for some bioses
.	- Can't compile tables in EA13, 3BBB, 6B5C, 7E37 modules for some bioses



v0.4a (21.09.2018)
+ Movax's pcie patcher reworked and merged. No more antiviruses warnings!
+ Fixed cores sync patch (incorrect work on MSI boards before)
+ Added known issues section at the end for specific boards
+ Added HT initialize patch (CpuMpPei) at manual mode. It will required for i7 in future. Only for advanced users for now.



v0.3a (16.09.2018)
+ Added changelog
+ Added chipset id parser
+ Added regions unlock mod
+ Added all cores sync mod
+ Added mac-address transfer for bioses with gbe (unknown behavior on 2-ethernet boards)
+ Restructurized menus
+ Reworked mCodes add func
+ Added 906EC mCode, just in case
+ Added warnings, infos and hints
+ Added info images
+ Added support list viewer
+ Some code optimization
+ Converted to .exe



v0.2a (05.09.2018)
+ Added microcodes inject func
.    - 506E3 (Skylake)
.    - 906E9 (Kabylake)
.    - 906EB (Coffee B0)
.    - 906EA (Coffee U0)
+ Some code optimization



v0.1a (31.08.2018)
+ Start version
+ Supported all Asus, Asrock, Msi and Gigabyte boards, whose bios can be found on official website
+ Show status info. Detect me, gop, vbios, pcie, cfl mcodes
+ Base update funcs:
.    - gop driver 9.0.1080
.    - vbios 1059
.    - pcie patcher by Movax
+ Manual mod selection
+ Capsule detection and restore posibility



-----------------------------------| CONTACTS |-----------------------------------

You can leave feedback on discord channel, forum or mail. It will help to improve
quality and compatibility of CoffeeTime. Any suggestions are welcome too.

Discord:	discord.gg/jjexcK5   -   svarmod#6147
Forum:		win-raid.com/forum.php   -   svarmod
Forum:		forums.overclockers.ru   -   svarmod
Mail:		svarmod.coffeetime@gmail.com

-----------------------------------| SUPPORT |-----------------------------------

Thanks for your support!

Yandex.Money:	410018234138411

BTC:	1AShkP5NuXe6pjvgahjTNSxE8CasUe22wZ
ETH:	0x2D075301D306fF3B0E7471c281F7CcD95fd53001


-----------------------------------| CREDITS |-----------------------------------

CoffeeTime made by svarmod

Great thanks to:

	elisw          -   coffee 4-cores adaptation manual author
	dsanke         -   research and experiments, dsdt & ht patchers dev
	LittleHill     -   research and experiments
	Movax          -   pcie x16 patcher dev
	s.napi         -   ht fix manual author
	CodeRush       -   uefi tools dev
	SoniX (LS_29)  -   uefi bios updater dev
	plutomaniac    -   mea/mce dev
	PROIIIu3Hb     -   experiments and info support
	MexicanHead    -   experiments and info support
	ATRedline      -   python scripting

	And to a lot of other people who helped with tests.




