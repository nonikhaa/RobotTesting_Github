*** Settings ***
Library     Selenium2Library
Resource    Variable/03_var.robot

*** Keywords ***
Find Setting Menu
    Click Element   ${SettingMenu}

Input Profile Form
    Sleep           ${Delay}
    Input Text      ${InputName}         ${Name}
    Input Text      ${InputUrl}          ${Url}
    Input Text      ${InputCompany}      ${Company}
    Input Text      ${InputLocation}     ${Location}

Find Update Profile Button
    Click Element   ${UpdateProfilBtn}

Profile Flow
    Find Summary Button
    Find Setting Menu
    Input Profile Form
    Find Update Profile Button