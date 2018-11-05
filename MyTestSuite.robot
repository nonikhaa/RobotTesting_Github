*** Settings ***
Library     Selenium2Library
Resource    01_AutoLoginBot.robot
Resource    02_AddBioBot.robot
Resource    03_EditProfile.robot

*** Test Case ***
Test Github Flow
    Github Login Flow Should Pass
    Fill Bio Flow
    Profile Flow
    [Teardown]      Close Browser
    
