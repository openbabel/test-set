@REM %1 is main suffix (e.g. mol, cml...)
@REM %2 is file root (e.g. test...)
@echo ------------------- testing %2.%1-------------------------

@call foo2bar2foo %1 cml %2
@call foo2bar2foo %1 feat %2
@call foo2bar2foo %1 sdf %2
@call foo2bar2foo %1 mol %2
@call foo2bar2foo %1 unixyz %2
@call foo2bar2foo %1 vmol %2
@call foo2bar2foo %1 xyz %2

@REM these may have memory leaks on input
@call foo2bar2foo %1 pdb %2

@REM these may have memory leaks on output
@call foo2bar2foo %1 alc %2
@call foo2bar2foo %1 c3d1 %2
@call foo2bar2foo %1 c3d2 %2
@call foo2bar2foo %1 hin %2
@call foo2bar2foo %1 mmod %2
@call foo2bar2foo %1 mol2 %2
:skip

@echo .... output only ...
@call foo2bar %1 cacint %2
@call foo2bar %1 cache %2
@call foo2bar %1 cssr %2
@call foo2bar %1 gamin %2
@call foo2bar %1 jin %2
@call foo2bar %1 csr %2
@call foo2bar %1 nw %2
@call foo2bar %1 qcin %2
@call foo2bar %1 txt %2

@REM memory leaks on output
@call foo2bar %1 bgf %2
@call foo2bar %1 report %2


goto skip1
@REM apparently not allowed
@call foo2bar %1 gr96N %2
:skip1

@REM no useful output or unknown
@call foo2bar %1 caccrt %2

:exit