*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
Like Facebook Automatically
    Open Browser        https://www.facebook.com/       browser=Chrome
    Maximize Browser Window
    Input Text          id:email                        0913358161
    Wait Until Element Is Visible                       xpath://*[@id="passContainer"]
    Click Element       xpath://*[@id="passContainer"]
    Input Password      xpath://input[@type="password"]                Tqvinh02092000@
    Click Button        xpath://button[@name="login" and @type="submit"]
    Sleep               5s
    Handle Alert        Allow      timeout=5s
    Click Button        xpath://div[@aria-label="Like"]


*** Keywords ***

