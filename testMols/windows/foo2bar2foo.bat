@REM %1 primary file suffix (".foo")
@REM %1 secondary file suffix (".bar")
@REM %3 file root ("test")

@REM test.foo to test.bar and roundtrip to test.bar.foo

babel.exe -i%1 %1\%3.%1 -o%2 %1\%3.%2
babel.exe -i%2 %1\%3.%2 -o%1 %1\%3.%2.%1

