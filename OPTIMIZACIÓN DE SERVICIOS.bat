REM Creado por WAPORI y gestionado por Andrés Frutos.


			REM CREACION DEL MENU:

:MENU_START
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
set "OPTION3_INPUT="
set "OPTION4_INPUT="
set "OPTION5_INPUT="
echo +===============================================+
echo . OPCIONES DE TRABAJOS                          .
echo +===============================================+
echo .                                               
echo .  1) EQUIPO ANTIGUO O MUY LENTO                
echo .  2) ENTORNO DE OFICINA (SIN FAX)              
echo .  3) DESACTIVAR UN SERVICIO EN CONCRETO      
echo .  4) REACTIVAR TODOS LOS SERVICIOS ELIMINADOS
echo .  5) REACTIVAR UN SERVICIO EN CONCRETO                                
echo .  6) SALIR
echo .                                          
echo +===============================================+
set /p MENU_OPTION="OPTION: "

IF %MENU_OPTION%==1 GOTO OPTION1
IF %MENU_OPTION%==2 GOTO OPTION2
IF %MENU_OPTION%==3 GOTO OPTION3
IF %MENU_OPTION%==4 GOTO OPTION4
IF %MENU_OPTION%==5 GOTO OPTION5
IF %MENU_OPTION%==6 GOTO OPTION6
IF %INPUT%==false GOTO DEFAULT

			REM OPCIÓN NUMERO 1
:OPTION1
set INPUT=true

net stop ALG
sc config ALG start= disabled
net stop PeerDistSvc
sc config PeerDistSvc start= disabled
net stop NfsClnt
sc config NfsClnt start= disabled
net stop dmwappushsvc
sc config dmwappushsvc start= disabled
net stop MapsBroker
sc config MapsBroker start= disabled
net stop Fax
sc config Fax start= disabled
net stop lfsvc
sc config lfsvc start= disabled
net stop hns
sc config hns start= disabled
net stop HvHost
sc config HvHost start= disabled
net stop vmickvpexchange
sc config vmickvpexchange start= disabled
net stop vmicguestinterface
sc config vmicguestinterface start= disabled
net stop vmicshutdown
sc config vmicshutdown start= disabled
net stop vmicheartbeat
sc config vmicheartbeat start= disabled
net stop vmcompute
sc config vmcompute start= disabled
net stop vmicvmsession
sc config vmicvmsession start= disabled
net stop vmicrdv
sc config vmicrdv start= disabled
net stop vmictimesync
sc config vmictimesync start= disabled
net stop vmms
sc config vmms start= disabled
net stop vmicvss
sc config vmicvss start= disabled
net stop IISADMIN
sc config IISADMIN start= disabled
net stop irmon
sc config irmon start= disabled
net stop SharedAccess
sc config SharedAccess start= disabled
net stop MSiSCSI
sc config MSiSCSI start= disabled
net stop SmsRouter
sc config SmsRouter start= disabled
net stop CscService
sc config CscService start= disabled
net stop WpcMonSvc
sc config WpcMonSvc start= disabled
net stop SEMgrSvc
sc config SEMgrSvc start= disabled
net stop PhoneSvc
sc config PhoneSvc start= disabled
net stop RpcLocator
sc config RpcLocator start= disabled
net stop SensrSvc
sc config SensrSvc start= disabled
net stop SensorService
sc config SensorService start= disabled
net stop ScDeviceEnum
sc config ScDeviceEnum start= disabled
net stop SCPolicySvc
sc config SCPolicySvc start= disabled
net stop SNMPTRAP
sc config SNMPTRAP start= disabled
net stop TabletInputService
sc config TabletInputService start= disabled
net stop WFDSConSvc
sc config WFDSConSvc start= disabledv
net stop FrameServer
sc config FrameServer start= disabled
net stop wisvc
sc config wisvc start= disabled
net stop WMPNetworkSvc
sc config WMPNetworkSvc start= disabled
net stop icssvc
sc config icssvc start= disabled
net stop WinRM
sc config WinRM start= disabled
net stop workfolderssvc
sc config workfolderssvc start= disabled
net stop WwanSvc
sc config WwanSvc start= disabled
net stop XblAuthManager
sc config XblAuthManager start= disabled
net stop XblGameSave
sc config XblGameSave start= disabled
net stop XboxNetApiSvc
sc config XboxNetApiSvc start= disabled

timeout 2 > NUL
GOTO MENU_START

			REM OPCIÓN NUMERO 2

:OPTION2
set INPUT=true

net stop Fax
sc config Fax start= disabled
net stop Spooler
sc config Spooler start= disabled
net stop bthserv
sc config bthserv start= disabled
net stop wisvc
sc config wisvc start= disabled
net stop seclogon
sc config seclogon start= disabled
net stop RemoteRegistry
sc config RemoteRegistry start= disabled
net stop WerSvc
sc config WerSvc start= disabled
net stop DPS
sc config DPS start= disabled
net stop TabletInputService
sc config TabletInputService start= disabled
net stop RetailDemo
sc config RetailDemo start= disabled
net stop WbioSrvc
sc config WbioSrvc start= disabled
net stop XblAuthManager
sc config XblAuthManager start= disabled
net stop XblGameSave
sc config XblGameSave start= disabled
net stop XboxNetApiSvc
sc config XboxNetApiSvc start= disabled

timeout 2 > NUL
GOTO MENU_START

			REM OPCIÓN NUMERO 3

:OPTION3
set INPUT=true

set /p SERVICIO="ELIJE EL SERVICIO A DESACTIVAR:(escribe el nombre del servicio)"
net stop %SERVICIO%
sc config %SERVICIO% start= disabled

timeout 2 > NUL
GOTO MENU_START

			REM OPCIÓN NUMERO 4

:OPTION4
set INPUT=true

sc config ALG start= auto
net start ALG
sc config PeerDistSvc start= auto
net start PeerDistSvc
sc config NfsClnt start= auto
net start NfsClnt
sc config dmwappushsvc start= auto
net start dmwappushsvc
sc config MapsBroker start= auto
net start MapsBroker
sc config Fax start= auto
net start Fax
sc config lfsvc start= auto
net start lfsvc
sc config hns start= auto
net start hns
sc config HvHost start= auto
net start HvHost
sc config vmickvpexchange start= auto
net start vmickvpexchange
sc config vmicguestinterface start= auto
net start vmicguestinterface
sc config vmicshutdown start= auto
net start vmicshutdown
sc config vmicheartbeat start= auto
net start vmicheartbeat
sc config vmcompute start= auto
net start vmcompute
sc config vmicvmsession start= auto
net start vmicvmsession
sc config vmicrdv start= auto
net start vmicrdv
sc config vmictimesync start= auto
net start vmictimesync
sc config vmms start= auto
net start vmms
sc config vmicvss start= auto
net start vmicvss
sc config IISADMIN start= auto
net start IISADMIN
sc config irmon start= auto
net start irmon
sc config SharedAccess start= auto
net start SharedAccess
sc config MSiSCSI start= auto
net start MSiSCSI
sc config SmsRouter start= auto
net start SmsRouter
sc config CscService start= auto
net start CscService
sc config WpcMonSvc start= auto
net start WpcMonSvc
sc config SEMgrSvc start= auto
net start SEMgrSvc
sc config PhoneSvc start= auto
net start PhoneSvc
sc config RpcLocator start= auto
net start RpcLocator
sc config SensrSvc start= auto
net start SensrSvc
sc config SensorService start= auto
net start SensorService
sc config ScDeviceEnum start= auto
net start ScDeviceEnum
sc config SCPolicySvc start= auto
net start SCPolicySvc
sc config SNMPTRAP start= auto
net start SNMPTRAP
sc config TabletInputService start= auto
net start TabletInputService
sc config WFDSConSvc start= auto
net start WFDSConSvc
sc config FrameServer start= auto
net start FrameServer
sc config wisvc start= auto
net start wisvc
sc config WMPNetworkSvc start= auto
net start WMPNetworkSvc
sc config icssvc start= auto
net start icssvc
sc config WinRM start= auto
net start WinRM
sc config workfolderssvc start= auto
net start workfolderssvc
sc config WwanSvc start= auto
net start WwanSvc
sc config XblAuthManager start= auto
net start XblAuthManager
sc config XblGameSave start= auto
net start XblGameSave
sc config XboxNetApiSvc start= auto
net start XboxNetApiSvc

timeout 2 > NUL
GOTO MENU_START

			REM OPCIÓN NUMERO 5

:OPTION5
set INPUT=true

set /p ASERVICIO="ELIJE EL SERVICIO A ACTIVAR:(escribe el nombre del servicio)"

sc config %ASERVICIO% start= auto
net stART %ASERVICIO%



timeout 2 > NUL
GOTO MENU_START


			REM OPCIÓN NUMERO 6

:OPTION6
set INPUT=true
echo Gracias y adios.
timeout 2 > NUL
exit /b

:DEFAULT
echo Opcion invalida, escrive un numero entre el 1 y el 6
timeout 2 > NUL
GOTO MENU_START