*** Variables ***
&{login_page_locator}
...    box_username=xpath=//input[@name="username"]
...    box_password=xpath=//input[@name="password"]
...    btn_submit=xpath=//button[@type="submit"]
...    txt_error=xpath=//div[@id="flash-messages"]/div
...    btn_logout=xpath=//i[text()=" Logout"]