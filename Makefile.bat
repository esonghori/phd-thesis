@setlocal EnableDelayedExpansion 

@if defined VS100COMNTOOLS  @set _VSCOMNTOOLS=%VS100COMNTOOLS%
@if defined VS110COMNTOOLS  @set _VSCOMNTOOLS=%VS110COMNTOOLS%
@if defined VS120COMNTOOLS  @set _VSCOMNTOOLS=%VS120COMNTOOLS%
@if defined VS130COMNTOOLS  @set _VSCOMNTOOLS=%VS130COMNTOOLS%
@if defined VS140COMNTOOLS  @set _VSCOMNTOOLS=%VS140COMNTOOLS%
@if defined VS150COMNTOOLS  @set _VSCOMNTOOLS=%VS150COMNTOOLS%

@call "%_VSCOMNTOOLS%vsvars32.bat"
@if exist "Makefile" @call "nmake" -f Makefile
@goto end

:end