*** Settings ***
Library         DataDriver         ../testdata/search_book.xlsx

Resource            ../pageobjects/shared/login.resource
Resource            ../pageobjects/book_store_page.resource
Suite Setup         Navigate To The Page        ${book_store_url}       browser=${browser}
Suite Teardown      Close All Browsers
Test Template       Search Book Successfully

*** Test Cases ***
Search Book Successfully With Multiple Results

*** Keywords ***
Search Book Successfully
    [Arguments]                         ${searchBookName}
    Input Search Book Name              ${searchBookName}
    Assertions After Searching Book     ${searchBookName}