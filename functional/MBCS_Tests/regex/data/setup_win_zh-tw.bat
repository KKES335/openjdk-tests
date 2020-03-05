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

@echo ------------ Pattern matching test ------------

java SimpleGrep ������������ %PWD%\win_zh-tw.txt
@echo --- Confirm that the line(s) includes "������������". 
@echo --- Did you get the line(s)?

java SimpleGrep "��*��" %PWD%\win_zh-tw.txt
@echo --- Confirm that the line(s) includes the pattern "��*��". 
@echo --- Did you get the line(s) ?

java SimpleGrep "^�A" %PWD%\win_zh-tw.txt
@echo --- Confirm that the line(s) starts with "�A".
@echo --- Did you get the line ?

java SimpleGrep �� %PWD%\win_zh-tw.txt
@echo --- Confirm that the line(s) includes "��". 
@echo --- Did you get the line ?

java SimpleGrep �z %PWD%\win_zh-tw.txt
@echo --- Confirm that the line(s) includes "�z". 
@echo --- Did you get the line?

java SimpleGrep \u8868\u5642\u5341\u8c79 %PWD%\win_zh-tw.txt
@echo --- Confirm that the line(s) includes "���èh". 
@echo --- Did you get the line ?


@echo\
@echo ------------ Pattern replacement test ------------

java RegexReplaceTest ������������ aiueo %PWD%\win_zh-tw.txt -v
@echo --- Confirm that "������������" was replaced by "aiueo". 
@echo --- OK ?

java RegexReplaceTest �� ��� %PWD%\win_zh-tw.txt -v
@echo --- Confirm that "��" was replaced by "���". 
@echo --- OK ?

java RegexReplaceTest �z \\ %PWD%\win_zh-tw.txt -v
@echo --- Confirm that "�z" was replaced by "\". 
@echo --- OK ?

java RegexReplaceTest \u8868\u5642\u5341\u8c79 �B�C %PWD%\win_zh-tw.txt -v
@echo --- Confirm that "�����Q�\" was replaced by "�B�C". 
@echo --- OK ?

