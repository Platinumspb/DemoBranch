*** Settings ***
Library             String
Library             DateTime
Resource            ../Settings/Settings.robot
Variables           ../TestData/Roles.py

*** Variables ***

*** Keywords ***
############################
# Common Setup Keywords
############################
Setup browser
    setup environment url
    Open the browser    ${START_HOME}
    maximize browser window
    sleep   1s



Close everything
    Close remote browser








####################################################################################
# Useful keywords
####################################################################################
