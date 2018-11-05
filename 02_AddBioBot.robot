*** Settings ***
Library     Selenium2Library
Resource    Variable/02_var.robot

*** Keywords ***
Find Summary Button
    Click Element   ${SummaryButton}

Find Your Profile Button
    Click Element   ${ProfileButton}

Find Add Bio Button
    Click Element   ${BioButton}

Fill Bio Form
    Sleep   ${Delay}
    Input Text      ${BioArea}     ${Bio}

Find Save Button
    Click Element   ${BioSaveButton}
    Sleep   ${Delay}

Case with Subject Bio Button
    Sleep   ${Delay}
    ${status}           ${val} =      Run Keyword And Ignore Error    Find Add Bio Button
    Run Keyword If      '${status}' == 'PASS'   Fill Bio Form
    Find Save Button

Fill Bio Flow
    Find Summary Button
    Find Your Profile Button
    Case with Subject Bio Button

    

