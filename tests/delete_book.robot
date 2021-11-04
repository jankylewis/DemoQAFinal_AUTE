*** Settings ***
Library             DataDriver         ../testdata/delete_book.xlsx

Resource            ../pageobjects/shared/login.resource
Resource            ../pageobjects/book_store_page.resource
Resource            ../pageobjects/profile_page.resource
Resource            ../pageobjects/locators/profile_page.resource
Resource            ../pageobjects/shared/login.resource
Suite Setup         Navigate To The Page        ${profile_url}      browser=${browser}
Suite Teardown      Close All Browsers
Test Template       Delete Book Successfully

*** Test Cases ***
Delete Book Successfully With Valid Book Name

*** Keywords ***
Delete Book Successfully
    [Arguments]                         ${deletedBookName}
    Click On Login Anchor
    Login To Profile
    Input Search Book                   ${deletedBookName}
    Assert Will-be-deleted Book         ${deletedBookname}
    Click On Delete Button
    Click On OK Button
    Click On Logout Button