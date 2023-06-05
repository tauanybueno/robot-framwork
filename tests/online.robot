*** Settings ***
Documentation        Online
Library              ../resources/base.robot

*** Test Cases ***
Webapp deve estar Online
    Start Session
    Get Title        equal        Mark85 by QAx
    Sleep    10s
