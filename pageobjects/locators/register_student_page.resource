*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# Store selectors before registering student
${TXT_FIRST_NAME}           id:firstName
${TXT_LAST_NAME}            id:lastName
${TXT_EMAIL}                id:userEmail
${RDB_GENDER}               xpath://div[@id="genterWrapper"]//following::input[@id="gender-radio-1" and @value="Male"]
${TXT_MOBILE}               id:userNumber
${DTP_DOB}                  id:dateOfBirthInput
${TXT_SUBJECTS}             id:subjectsInput
${CHK_HOBBIES}              id:hobbies-checkbox-2
${BTN_CHOOSE_FILE}          id:uploadPicture
${TXA_CURRENT_ADDRESS}      id:currentAddress
${DDL_SELECT_STATE}         id:state
${DDL_SELECT_CITY}          id:city
${BTN_SUBMIT}               id:submit

# Store selectors after registering student
${LBL_STUDENT_NAME}         xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[1]/td[2]
${LBL_STUDENT_EMAIL}        xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[2]/td[2]
${LBL_GENDER}               xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[3]/td[2]
${LBL_MOBILE}               xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[4]/td[2]
${LBL_DOB}                  xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[5]/td[2]
${LBL_SUBJECTS}             xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[6]/td[2]
${LBL_HOBBIES}              xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[7]/td[2]
${LBL_PICTURE}              xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[8]/td[2]
${LBL_ADDRESS}              xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[9]/td[2]
${LBL_STATE_AND_CITY}       xpath://div[@role="document"]//div[@class="table-responsive"]//tbody/tr[10]/td[2]
${BTN_CLOSE}                id:closeLargeModal