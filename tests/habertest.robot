*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/haberpage.robot

*** Test Cases ***

Sekizinci Haber Test
    2NHaber Anasayfasına git
    Arama çubuğunda "istanbul" ara
    Sayfayı kaydır
    Sekizinci Haberi Bul
    [Teardown]    Close Browser

Navbar Test
    2NHaber Anasayfasına git
    Navbardaki öğeleri gez
    [Teardown]    Close Browser

