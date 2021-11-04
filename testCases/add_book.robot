*** Settings ***
Library         DataDriver         ../testdata/add_book.xlsx

Resource            ../pageobjects/shared/login.resource
Resource            ../pageobjects/book_store_page.resource
Resource            ../pageobjects/locators/book_store_page.resource
Suite Setup         Navigate To The Page        ${book_store_url}       browser=${browser}
Suite Teardown      Close All Browsers
Test Template       Add Book Successfully

*** Test Cases ***
Add Book Successfully With Valid Book Name

*** Keywords ***
Add Book Successfully
    [Arguments]     ${bookName}
    Select Book     ${bookName}
    Login To Book Store
    Click On Add Button
    Alert Should Be Present    ${ALERT_ADD_BOOK}
