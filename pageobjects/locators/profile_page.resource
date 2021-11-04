*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${ANCHOR_LOGIN}         xpath://div[@id="notLoggin-wrapper"]//a[text()="login"]
${ANCHOR_BOOK_TITLE}    xpath://div[@class="action-buttons"]//span//a
${TXT_SEARCH_BOOK}      xpath://div//input[@id="searchBox" and @type="text"]
${BTN_DELETE_BOOK}      css:div > div.action-buttons span:nth-child(1) svg:nth-child(1) > path:nth-child(1)
${BTN_OK}               xpath://button[@id="closeSmallModal-ok" and @type="button"]
${BTN_LOGOUT}           xpath://button[@id="submit" and @type="button" and text()="Log out"]