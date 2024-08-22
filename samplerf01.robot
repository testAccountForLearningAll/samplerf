*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${BASE_URL}      https://www.google.com
# ${BROWSER}        Chrome
${search_term}      robotframework

*** Test Cases ***
Valid Login
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${BASE_URL}    browser=firefox
    Input Text    id=lst-ib    ${search_term}
    Press Keys    id=lst-ib    Enter
    Sleep    5s  # Wait for search results to load
