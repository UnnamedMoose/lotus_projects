#!MC 1120
# Created by Tecplot 360 build 11.3.29.563

$!Varset |time| = 7.3

$!ADDONCOMMAND ADDONID='Extend Time MCR' 
  COMMAND='QUERY.NUMTIMESTEPS NUMTIMESTEPS'

$!LOOP |NUMTIMESTEPS|
   $!ADDONCOMMAND ADDONID='Extend Time MCR' 
     COMMAND='QUERY.TIMEATSTEP |LOOP| CURTIME'
   $!IF |CURTIME|==|time|
      $!EXTENDEDCOMMAND 
        COMMANDPROCESSORID='extend time mcr' 
        COMMAND='SET.CURTIMESTEP |LOOP|'
      $!EXTENDEDCOMMAND 
        COMMANDPROCESSORID='extendmcr'
	COMMAND='QUERY.ACTIVEZONES ZNUMS'
      $!WRITEDATASET  "./|time|.plt"
        INCLUDETEXT = NO
	INCLUDEGEOM = NO
	INCLUDECUSTOMLABELS = NO
	ASSOCIATELAYOUTWITHDATAFILE = NO
	ZONELIST =  [|ZNUMS|]
	BINARY = YES
	USEPOINTFORMAT = NO
	PRECISION = 9
   $!ENDIF
$!ENDLOOP
