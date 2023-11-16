*** Settings ***
Documentation   Database Page Variables and Keywords

*** Variables ***
${database_page}            ${url_database}
${database_connect}         //*[@value="Connect"]
${iframe_query_section}     /iframe[@id="h2iframeTransport"]
${query_section}            //textarea[@name="sql" and @cols="80"]
${query_result}             //td[contains(text(), 'hasibuandre@gmail.com')]
${button_run}             //*[@value="Run"]

*** Keywords ***