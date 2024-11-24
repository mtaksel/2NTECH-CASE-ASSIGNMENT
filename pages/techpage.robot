*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    Collections
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py
Resource    ../locators/locators.py


*** Keywords ***

Tech2N Anasayfaya git
    Open Browser    ${Datas.URLtech}    Chrome
    Maximize Browser Window
    Title Should Be    2NTech

Kayit formu doldur
    Wait Until Element Is Visible    ${HaberLocators.NAME_LOCATE}
    Input Text    ${HaberLocators.NAME_LOCATE}    ${Datas.NAME}
    Input Text    ${HaberLocators.ID_NUMBER_LOCATE}    ${Datas.ID_NUMBER}
    Input Text    ${HaberLocators.EMAIL_LOCATE}    ${Datas.EMAIL}
    Input Text    ${HaberLocators.PHONE_LOCATE}    ${Datas.PHONE_NUMBER}
    Input Text    ${HaberLocators.BIRTH_LOCATE}    ${Datas.BIRTH_DATE}
    Choose File   ${HaberLocators.FILE_LOCATE}     ${EXECDIR}${/}test_data${/}pdf-test.pdf
    Click Element    ${HaberLocators.LISANS_LOCATE}
    Wait Until Element Is Visible    ${HaberLocators.PAGE1_SUBMIT_LOCATE}
    Click Element    ${HaberLocators.PAGE1_SUBMIT_LOCATE}


Ikinci Sayfa Formu Doldur

    Wait Until Element Is Visible    ${HaberLocators.POSITION_LOCATE}
    ${elements}=    Get Webelements    ${HaberLocators.POSITION_LOCATE}
    ${target_result}=    Get From List    ${elements}    ${Datas.PAGE_INDEX-1}
    Wait Until Element Is Visible    ${target_result}
    Click Element    ${target_result}
    Wait Until Element Is Enabled    ${HaberLocators.PAGE2_SUBMIT_LOCATE}
    Click Element    ${HaberLocators.PAGE2_SUBMIT_LOCATE}
    Wait Until Element Is Visible    ${HaberLocators.VERIFY_TEXT_LOCATE}
    ${actual_text}    Get Text    ${HaberLocators.VERIFY_TEXT_LOCATE}
    Should Be Equal As Strings    ${actual_text}    ${Datas.EXPECTED_TEXT}