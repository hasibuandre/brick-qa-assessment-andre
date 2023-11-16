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
Resource        ../src/pages/register_page.robot
Resource        ../src/pages/dashboard_page.robot
Resource        ../src/constants/constant.robot

** Variables **
${firstname_text}           andre
${lastname_text}            hasibuan
${email_text}               hasibuandre@gmail.com
${phonenumber_text}         082125208801
${address_text}             address test brick
${password_text}            password
${confirm_password_text}    password

** Test Case **
Guest can register account on register page
    Open Browser                                ${register_page}                        browser=chrome
    Wait Until Page Contains Element            ${sign_up_text}
    Input Text                                  ${firstname_input}                      ${firstname_text}
    Input Text                                  ${lastname_input}                       ${lastname_text}
    Input Text                                  ${email_input}                          ${email_text}
    Input Text                                  ${phone_number_input}                   ${phonenumber_text}
    Input Text                                  ${address_input}                        ${address_text}
    Input Text                                  ${password_input}                       ${password_text}
    Input Text                                  ${confirm_password_input}               ${confirm_password_text}
    Click Element                               ${register_button}
    Wait Until Page Contains Element            ${success_register_pop_up_title}
    Element Should Be Visible                   ${success_register_pop_up_title}
    Wait Until Page Contains Element            ${success_register_ticker_message}
    Element Should Be Visible                   ${success_register_ticker_message}
    ${success_register_popup_text}=             Get Text                                ${success_register_pop_up_title}
    ${success_register_ticker_message_text}=    Get Text                                ${success_register_ticker_message}
    Capture Page Screenshot                     results.png

    Log To Console                              \n
    Log To Console                              notification register : ${success_register_popup_text}
    Log To Console                              notification register message ticker : ${success_register_ticker_message_text}