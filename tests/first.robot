*** Settings ***
Documentation

*** Variables ***


*** Test Cases ***
Intiger to string
    ${str}=    catenate  5    4
    log     ${str}

