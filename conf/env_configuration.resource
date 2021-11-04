*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}                  Chrome
${base_url}                 https://demoqa.com
${register_url}             ${base_url}/automation-practice-form
${login_url}                ${base_url}/login
${book_store_url}           ${base_url}/books
${profile_url}              ${base_url}/profile

*** Keywords ***
Navigate To The Page
    [Arguments]     ${locator}      ${browser}
    Open Browser    ${locator}      browser=${browser}
    Maximize Browser Window
