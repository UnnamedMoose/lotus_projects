#!MC 1300
# Created by Tecplot 360 build 13.1.0.15185

$!NEWLAYOUT 
$!READDATASET  ' "fort.100.plt" '
  READDATAOPTION = APPEND
  RESETSTYLE = YES
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  VARLOADMODE = BYNAME
  ASSIGNSTRANDIDS = YES
  INITIALPLOTTYPE = CARTESIAN3D
  VARNAMELIST = '"x" "y" "z" "p"'

$!VarSet |first_zone| = (|NUMZONES|+1)

$!FIELDLAYERS SHOWCONTOUR = YES
$!FIELDMAP CONTOUR{CONTOURTYPE = LINES}
$!CONTOURLEVELS NEW
  RAWDATA
1
0

$!CREATECONTOURLINEZONES
  CONTLINECREATEMODE = ONEZONEPERCONTOURLEVEL

$!WRITEDATASET  "body.plt"
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  INCLUDEDATASHARELINKAGE = YES
  ASSOCIATELAYOUTWITHDATAFILE = NO
  ZONELIST =  [|first_zone|-|NUMZONES|]
  VARPOSITIONLIST =  [1-2]
  BINARY = YES
  USEPOINTFORMAT = NO
  PRECISION = 9
