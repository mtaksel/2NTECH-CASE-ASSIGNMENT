*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    Collections
Variables    ../keywords/Data.py
Variables    ../locators/Locators.py
Resource    ../locators/locators.py


*** Keywords ***
2NHaber Anasayfasına git
    Open Browser    ${Datas.URL}    Chrome
    Maximize Browser Window
    Title Should Be    2N Haber – Yarını Bugün Keşfet!
    
Arama çubuğunda "istanbul" ara
    Wait Until Element Is Visible    ${HaberLocators.SEARCH_BAR_LOCATE}
    Click Element   ${HaberLocators.SEARCH_BAR_LOCATE}
    Wait Until Element Is Visible    ${HaberLocators.SEARCH_INPUT}
    Input Text    ${HaberLocators.SEARCH_INPUT}    ${Datas.SEARCH_TEXT}
    Press Keys    ${HaberLocators.SEARCH_INPUT}    ENTER
Sayfayı kaydır
    Execute Javascript    window.scrollTo(0,1800);
    Sleep    3

Sekizinci Haberi Bul

    ${elements}=    Get Webelements    ${HaberLocators.HABER_SEKIZ_LOCATE}
    ${target_result}=    Get From List    ${elements}    ${Datas.INDEX-1}
    Click Element    ${target_result}
    Sleep    2
    ${news_title}=    Get Window Titles
    Log    Haber Başlığı: ${news_title}

Navbardaki öğeleri gez
  #  ${elements}=    Get Webelements    ${HaberLocators.NAVBAR_LOC}  # Navbar'daki tüm öğeleri al
  #  FOR    ${element}    IN    @{elements}  # Navbar'daki her bir öğe için
  #  Click Element    ${element}    # Öğeye tıklama
  #  Go To    ${Datas.URL}    # Ana sayfaya dön
  #  END
    Wait Until Element Is Visible    ${HaberLocators.NEDEN_LOCATE}
    Mouse over    ${HaberLocators.NEDEN_LOCATE}
    Click Element    ${HaberLocators.NEDEN_LOCATE}
    ${news_title}=    Get Window Titles
    Log    Sayfa Başlığı: ${news_title}
    Wait Until Element Is Visible    ${HaberLocators.NEDEN_LOCATE}
    Mouse over    ${HaberLocators.NEDEN_LOCATE}
    Click Element   ${HaberLocators.ASTRO_LOCATE}
    ${news_title}=    Get Window Titles
        Log    Sayfa Başlığı: ${news_title}
    Wait Until Element Is Visible    ${HaberLocators.NEDEN_LOCATE}
    Mouse over    ${HaberLocators.NEDEN_LOCATE}
    Click Element   ${HaberLocators.FIZIK_LOCATE}
    ${news_title}=    Get Window Titles
        Log    Sayfa Başlığı: ${news_title}
    Wait Until Element Is Visible    ${HaberLocators.NEDEN_LOCATE}
    Mouse over    ${HaberLocators.NEDEN_LOCATE}
    Click Element   ${HaberLocators.KIMYA_LOCATE}
    ${news_title}=    Get Window Titles
        Log    Sayfa Başlığı: ${news_title}
    Wait Until Element Is Visible    ${HaberLocators.NEDEN_LOCATE}
    Mouse over    ${HaberLocators.NEDEN_LOCATE}
    Click Element   ${HaberLocators.BIO_LOCATE}
    ${news_title}=    Get Window Titles
        Log    Sayfa Başlığı: ${news_title}
    Wait Until Element Is Visible    ${HaberLocators.NEDEN_LOCATE}
    Mouse over    ${HaberLocators.NEDEN_LOCATE}
    Click Element   ${HaberLocators.DIGER_LOCATE}
    ${news_title}=    Get Window Titles
        Log    Sayfa Başlığı: ${news_title}
    Sleep    2






