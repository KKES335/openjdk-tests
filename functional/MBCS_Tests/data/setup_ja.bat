@echo off
rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem
rem      https://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

REM @echo ##### setting up test string variables #####
REM @echo TEST_STRING :  a string contains one DBCS word for testing
REM @echo TEST_STRINGS : a string contains multiple DBCS words for testing

set TEST_STRING=ΆέΌή\¦eXg@AISΚa`
set TEST_STRINGS=Ώ\¦\Ν JiΆΕjKana L:\~P\_`ac|Κ O:ϊUϊhV O:TU@AIS 

REM TEST_STRING= %TEST_STRING%
REM TEST_STRINGS= %TEST_STRINGS%


