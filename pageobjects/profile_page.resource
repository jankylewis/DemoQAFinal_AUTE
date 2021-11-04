*** Settings ***
Library              SeleniumLibrary
Resource             ../conf/env_configuration.resource
Resource             locators/profile_page.resource

*** Variables ***
${ALERT_DELETED}     Book deleted.

*** Keywords ***
Go To Profile
    Go To            ${profile_url}

Click On Login Anchor
    Click Element    ${ANCHOR_LOGIN}

Input Search Book
    [Arguments]      ${deletedBookName}
    Wait Until Element Is Visible               ${TXT_SEARCH_BOOK}
    Input Text       ${TXT_SEARCH_BOOK}         ${deletedBookName}

Assert Will-be-deleted Book
    [Arguments]      ${deletedBookname}
    Element Should Contain                      ${ANCHOR_BOOK_TITLE}        ${deletedBookname}

Click On Delete Button
    Click Element    ${BTN_DELETE_BOOK}

Click On OK Button
    Click Element    ${BTN_OK}

Click On Logout Button
    Click Element    ${BTN_LOGOUT}


