REM babel round trips
set path=%path%;..\src

@call runtest0 cml test2d
@call runtest0 cml test3d

@call runtest0 mol test2d
@call runtest0 mol test3d

@call runtest0 mol2 test
@call runtest0 pdb test
@call runtest0 xyz test


