*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/techpage.robot

*** Test Cases ***

Tech2N Kayit Formu doldur
    Tech2N Anasayfaya git
    Kayit formu doldur
    Ikinci Sayfa Formu Doldur
    [Teardown]    Close Browser
