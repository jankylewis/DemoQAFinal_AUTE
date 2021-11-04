*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${BTN_ADD_BOOK}         xpath://div[@class="text-right fullButton"]//button[@id="addNewRecordButton"]
${ALERT_ADD_BOOK}       Book added to your collection.
${TXT_SEARCH_BOOK}      css:input#searchBox
${ANCHOR_RESULTS}       xpath://div[@class="action-buttons"]//a