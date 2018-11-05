*** Settings ***
Library     Selenium2Library
Resource    Variable/01_var.robot

*** Keywords ***
Set Environment Variable   webdriver.gecko.driver  geckodriver.exe

Open Page
    Open Browser        ${SiteUrl}           ${Browser}
    Maximize Browser Window

Find SignIn Button
    Click Element       ${SignInBtn} 

Fill login Form
    Input Text          ${EmailInput}        ${Email}
    Input Password      ${PasswordInput}     ${Password}
    Sleep               ${Delay}

find SignInForm Button
    Click Element   ${SignInFormBtn}

Github Login Flow Should Pass
    Open Page
    Find SignIn Button
    Fill login Form
    find SignInForm Button



