*** Settings ***

Library           SeleniumLibrary
Suite Setup       Open browser and login
Suite Teardown    Logout and close browser

*** Variables ***

${USERNAME}=    name:username
${PASSWORD}=    name:password
${DROPDOWN}=    class:oxd-userdropdown-tab
${LOGIN}=       class:orangehrm-login-button
${BODY}=        class:orangehrm-dashboard-widget-body
${URL}          https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${LOGOUT}=      xpath:/html/body/div/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a

*** Test Cases ***

Exit When Body Is Loaded
    Capture Screenshot When Page Is Loaded

*** Keywords ***

Open browser and log in
    Open Browser    ${URL}
    Wait Until Element Is Enabled    ${USERNAME}    timeout=10
    Input Text      ${USERNAME}     Admin
    Input Text      ${PASSWORD}     admin123
    Wait Until Element Is Enabled    ${LOGIN}    timeout=10
    Click Button    ${LOGIN}

Logout and close browser
    Wait Until Element Is Enabled    ${DROPDOWN}    timeout=10
    Click Element    ${DROPDOWN}
    Wait Until Element Is Enabled    ${LOGOUT}    timeout=10
    Click Element    ${LOGOUT}
    Close Browser

Capture Screenshot When Page Is Loaded
    Set Screenshot Directory    EMBED
    Wait until Element Is Visible    ${BODY}
    Capture Page Screenshot
