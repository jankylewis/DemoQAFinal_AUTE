*** Settings ***
Library     SeleniumLibrary
Resource    ../conf/env_configuration.resource
Resource    locators/register_student_page.resource

*** Keywords ***
Navigate To Register Student Page
    Navigate To The Page    ${register_url}      browser=${browser}

Input First Name
    [Arguments]             ${firstName}
    Input Text              ${TXT_FIRST_NAME}       ${firstName}

Input Last Name
    [Arguments]             ${lastName}
    Input Text              ${TXT_LAST_NAME}        ${lastName}

Input Email
    [Arguments]             ${email}
    Input Text              ${TXT_EMAIL}            ${email}

Input Gender
    [Arguments]             ${gender}
    Wait Until Element Is Visible                   xpath://div[@id="genterWrapper"]//following::label[text()="${gender}"]
    Click Element           xpath://div[@id="genterWrapper"]//following::label[text()="${gender}"]

#    Wait Until Element Is Visible                   xpath://div[@id="genterWrapper"]//following::input[@id="gender-radio-1" and @value="${gender}"]
#    Click Element           xpath://div[@id="genterWrapper"]//following::input[@id="gender-radio-1" and @value="${gender}"]

Input Phone
    [Arguments]             ${mobile}
    Input Text              ${TXT_MOBILE}           ${mobile}

Input DOB
    [Arguments]             ${year}                 ${month}            ${day}
    Click Element           ${DTP_DOB}
    Click Element           xpath://div[@id="dateOfBirth"]//option[@value="${year}"]
    Click Element           xpath://div[@id="dateOfBirth"]//option[text()="${month}"]
    Click Element           xpath://div[@class="react-datepicker__day react-datepicker__day--0${day}"]

Input Subject
    [Arguments]             ${subjects}
    Input Text              ${TXT_SUBJECTS}         ${subjects}
    Press Keys              ${TXT_SUBJECTS}         RETURN

Input Hobby
    [Arguments]             ${hobbies}
    Click Element           xpath://div[@id="hobbiesWrapper"]//preceding::label[text()="${hobbies}"]

Input Current Address
    [Arguments]             ${currentAddress}
    Input Text              ${TXA_CURRENT_ADDRESS}                      ${currentAddress}

Input State
    [Arguments]             ${state}
    Click Element           ${DDL_SELECT_STATE}
    Click Element           xpath://div[@id="stateCity-wrapper"]//div[text()="${state}"]

Input City
    [Arguments]             ${city}
    Click Element           ${DDL_SELECT_CITY}
    Click Element           xpath://div[@id="stateCity-wrapper"]//div[text()="${city}"]

Click on Submit Button
    Click Button            ${BTN_SUBMIT}

Input Data Into Registration Form
    [Arguments]             ${firstName}    ${lastName}     ${email}     ${gender}     ${mobile}     ${year}      ${month}     ${day}     ${subjects}     ${hobbies}     ${currentAddress}      ${state}     ${city}
    Input First Name        ${firstName}
    Input Last Name         ${lastName}
    Input Email             ${email}
    Input Gender            ${gender}
    Input Phone             ${mobile}
    Input DOB               ${year}         ${month}        ${day}
    Input Subject           ${subjects}
    Input Hobby             ${hobbies}
    Input Current Address   ${currentAddress}
    Execute Javascript      window.scrollTo(0,1600)
    Input State             ${state}
    Input City              ${city}











