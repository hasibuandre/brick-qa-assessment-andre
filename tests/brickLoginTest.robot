* Settings *
# Library
Library         SeleniumLibrary
Library         OperatingSystem
Library         String
Library         BuiltIn
Library         Collections
Library         DateTime
Library         Process
Library         XML
Resource        ../src/pages/login_page.robot
Resource        ../src/pages/dashboard_page.robot
Resource        ../src/constants/constant.robot

** Variables **
${username_text}    hasibuandre@gmail.com
${password_text}    password

** Test Case **
User can login on login page
    Open Browser   ${login_page}    browser=chrome
    Input Text      ${username_input}    ${username_text}
    Input Text      ${password_input}    ${password_text}
    Click Element   ${login_button}
    Wait Until Page Contains Element     ${dashboard_content}
    Element Should Be Visible    ${dashboard_content}
    Capture Page Screenshot     results.png