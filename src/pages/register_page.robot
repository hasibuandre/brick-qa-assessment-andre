*** Settings ***
Documentation   Register Page Variables and Keywords

*** Variables ***
${register_page}                    ${url_register_page}
${sign_up_text}                     //h2[contains(text(), 'Sign Up')]
${firstname_input}                  //*[@id="firstName"]
${lastname_input}                   //*[@id="lastName"]
${email_input}                      //*[@id="email"]
${phone_number_input}               //*[@id="phoneNumber"]
${address_input}                    //*[@id="address"]
${password_input}                   //*[@id="password"]
${confirm_password_input}           //*[@id="confirm_password"]
${register_button}                  //*[@name="register"]
${success_register_pop_up_title}    //*[@id="swal2-title"]
${success_register_ticker_message}  //*[@id="swal2-content"]

*** Keywords ***