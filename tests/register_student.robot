*** Settings ***
#Resource        ../conf/env_configuration.resource
Resource        ../pageobjects/register_student_page.resource
Library         DataDriver         ../testdata/register_student.xlsx
Test Template   Register Student
Suite Setup     Navigate To Register Student Page
#Suite Teardown  Close All Browsers

*** Test Cases ***
Register Student Successfully With All Fields

*** Keywords ***
Register Student
    [Arguments]     ${firstName}     ${lastName}     ${email}    ${gender}   ${mobile}   ${year}     ${month}     ${day}    ${subjects}    ${hobbies}     ${picture}     ${currentAddress}     ${state}     ${city}
    Input Data Into Registration Form                ${firstName}     ${lastName}     ${email}    ${gender}   ${mobile}   ${year}     ${month}     ${day}    ${subjects}    ${hobbies}    ${currentAddress}     ${state}     ${city}
    Click on Submit Button
#   Assertions
    Element Text Should Be          ${LBL_STUDENT_NAME}          ${firstName} ${lastName}
    Element Text Should Be          ${LBL_STUDENT_EMAIL}         ${email}
    Element Text Should Be          ${LBL_GENDER}                ${gender}
    Element Text Should Be          ${LBL_MOBILE}                ${mobile}
    Element Text Should Be          ${LBL_DOB}                   ${day} ${month},${year}
    Element Text Should Be          ${LBL_SUBJECTS}              ${subjects}
    Element Text Should Be          ${LBL_HOBBIES}               ${hobbies}
    Element Text Should Be          ${LBL_ADDRESS}               ${currentAddress}
    Element Text Should Be          ${LBL_STATE_AND_CITY}        ${state} ${city}




