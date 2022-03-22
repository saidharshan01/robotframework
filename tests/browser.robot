*** Settings ***

Library    SeleniumLibrary

Suite Teardown       Close All Browsers

*** Test Cases ***

b64 encode reckonsys
    Open Browser    url=https://www.base64encode.org/
    Input Text    id:input    sai darshan
    Click Button    id:submit_text
    Sleep    1
    ${encoded}=    Get Value    id:output
    Should Be Equal    ${encoded}    c2FpIGRhcnNoYW4=
    Capture Page Screenshot
    My Keyword



*** Keywords ***

My Keyword
  Log     foo
