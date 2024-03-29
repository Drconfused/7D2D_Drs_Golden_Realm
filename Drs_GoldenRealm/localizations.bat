@echo off
for %%I in (.) do set CurrDirName=%%~nxI
IF NOT EXIST "Localization.txt" goto errorfile
IF NOT EXIST "..\..\data\config\Localization.txt" goto errorlocation
IF EXIST "Localization.txt" goto fileconfirmed
:fileconfirmed
IF EXIST "..\..\data\config\Localization.txt" goto confirmed
:errorlocation                                                                                                                                                                                                        
color 17
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRR   RRRRRRRRRRRRRRRRR        OOOOOOOOO     RRRRRRRRRRRRRRRRR   
echo E::::::::::::::::::::ER::::::::::::::::R  R::::::::::::::::R     OO:::::::::OO   R::::::::::::::::R  
echo E::::::::::::::::::::ER::::::RRRRRR:::::R R::::::RRRRRR:::::R  OO:::::::::::::OO R::::::RRRRRR:::::R 
echo EE::::::EEEEEEEEE::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E::::::EEEEEEEEEE     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E:::::::::::::::E     R:::::::::::::RR    R:::::::::::::RR  O:::::O     O:::::O  R:::::::::::::RR  
echo   E:::::::::::::::E     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E::::::EEEEEEEEEE     R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo EE::::::EEEEEEEE:::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R OO:::::::::::::OO R::::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R   OO:::::::::OO   R::::::R     R:::::R
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRR     RRRRRRRRRRRRRRR     RRRRRRR     OOOOOOOOO     RRRRRRRR     RRRRRRR
echo.
echo.
echo It looks like you are trying to run the batch script from a different location. Make sure this mod in the correct location.
echo.
goto end
:errorfile                                                                                                                                                                                                      
color 17
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRR   RRRRRRRRRRRRRRRRR        OOOOOOOOO     RRRRRRRRRRRRRRRRR   
echo E::::::::::::::::::::ER::::::::::::::::R  R::::::::::::::::R     OO:::::::::OO   R::::::::::::::::R  
echo E::::::::::::::::::::ER::::::RRRRRR:::::R R::::::RRRRRR:::::R  OO:::::::::::::OO R::::::RRRRRR:::::R 
echo EE::::::EEEEEEEEE::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E::::::EEEEEEEEEE     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E:::::::::::::::E     R:::::::::::::RR    R:::::::::::::RR  O:::::O     O:::::O  R:::::::::::::RR  
echo   E:::::::::::::::E     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E::::::EEEEEEEEEE     R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo EE::::::EEEEEEEE:::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R OO:::::::::::::OO R::::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R   OO:::::::::OO   R::::::R     R:::::R
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRR     RRRRRRRRRRRRRRR     RRRRRRR     OOOOOOOOO     RRRRRRRR     RRRRRRR
echo.
echo.
echo Well... it seems we are missing the follwoing files:
echo.
IF NOT EXIST "Localization.txt" echo Localization.txt
echo.
echo Make sure you have these files in the same place you are running this script.
echo Also make sure you haven't renamed them either.
echo.
goto end
:confirmed
color 0C                                                                                                         
echo	Welcome to the good Drs Golden Realm!                
echo.
pause
echo.                                                                       
echo.
for %%I in (.) do set CurrDirName=%%~nxI
echo This will load up the localization data for the mod "Drs_GoldenRealm".
echo.
echo Excellent, I see the localization file to append and I also see we are in the correct location.
echo.
echo This should be compatible with other batch scripts to append the data.
echo Please note the key word "SHOULD".
echo.
echo This script does make a backup of the current Localization file before it does anything. 
echo.
:start
echo.
echo Please type the number of your choice.
echo 1: Continue
echo 2: Quit
echo 3: Restore a backup if one exists
set /p choice=Option: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto install
if '%choice%'=='2' goto end
if '%choice%'=='3' goto restore
ECHO "%choice%" Choice is not valid, try again
ECHO.
goto start
:install
IF EXIST "Localization.txt" copy "..\..\data\config\Localization.txt" "..\..\data\config\Localization.txt.bak"
copy "..\..\data\config\Localization.txt" LocalizationTEMP.txt
del "..\..\data\config\Localization.txt"
FINDSTR /v "--Drs_GoldenRealm q_Second_Base q_BaseConstruc modEngine modGas modReserve modMotor modDiamond modBetter modChainsaw Quicker.Fixer mayicDrill Oil.Extractor OilShale resourceParaf Paraffin resourceTar resourceTarDesc batterybank_mini batterybank_enhanced generatorbank_MaxFuel solarbank_mini solarbank_Enhanced battery_small_ disposable_Battery junk_batteries battery_SuperDurable solarCell_mini solarCell_Super purifiedSilicone Calibration_Kit Generic_Turret TurretStone autoTurret_ cooked_food driftwoodDesc driftwood2Desc Paper_Mile Quest_Chit Coking Drs_Trader_ Drs_Construction_ Drs_Killer_" LocalizationTEMP.txt > "../../data/config/Localization.txt"
type localization.txt >> "../../data/config/Localization.txt"
del "LocalizationTEMP.txt"
echo Finished
goto end
:restore
IF NOT EXIST ..\..\data\config\Localization.txt.bak echo Localization backup does not exist
IF EXIST ..\..\data\config\Localization.txt.bak echo Restoring backuped up file.
IF EXIST ..\..\data\config\Localization.txt.bak copy "..\..\data\config\Localization.txt.bak" "..\..\data\config\Localization.txt"
IF EXIST ..\..\data\config\Localization.txt.bak del "..\..\data\config\Localization.txt.bak"
:end
pause

