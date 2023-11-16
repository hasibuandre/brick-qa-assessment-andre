*** Settings ***
Documentation   Login Page Variables and Keywords

*** Variables ***
${login_page}           ${url_login_page}
${username_input}       //*[@id="your_email"]
${password_input}       //*[@id="password"]
${login_button}         //*[@name="login"]

*** Keywords ***