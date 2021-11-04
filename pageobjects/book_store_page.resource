*** Settings ***
Library             SeleniumLibrary
Resource            ../conf/env_configuration.resource
Resource            locators/book_store_page.resource

*** Keywords ***
Go To Book Store
    Go To           ${book_store_url}

Select Book
    [Arguments]     ${bookName}
    Wait Until Element Is Visible       xpath://a[text()="${bookName}"]
    Click Element                       xpath://a[text()="${bookName}"]

Click On Add Button
    Execute JavaScript                  window.scrollTo(0,1500)
    Execute JavaScript                  window.scrollTo(0,800)
    Wait Until Element Is Visible       xpath://div[@class="text-right fullButton"]//button[@id="addNewRecordButton"]
    Click Button                        xpath://div[@class="text-right fullButton"]//button[@id="addNewRecordButton"]

Input Search Book Name
    [Arguments]     ${searchBookName}
    Input Text      ${TXT_SEARCH_BOOK}      ${searchBookName}

Assertions After Searching Book
    [Arguments]     ${searchBookName}
    ${bookCount}    Get Element Count           ${ANCHOR_RESULTS}
    Log To Console          \n\n${bookCount}\n\n
        FOR        ${index}         IN RANGE    1    ${bookCount} + 1
        Exit For Loop If      ${index} > ${bookCount}
        ${afSearchBookName}              Get Text                    xpath://div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[2]/div[${index}]/div[1]/div[2]
        Log To Console              \n${afSearchBookName}\n
        Element Should Contain      xpath://div[@id='app']/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[2]/div[${index}]/div[1]/div[2]         ${searchBookName}
        ${index}                    Evaluate                            ${index} + 1
    END
