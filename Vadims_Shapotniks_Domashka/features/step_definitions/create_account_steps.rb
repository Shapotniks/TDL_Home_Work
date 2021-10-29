    Then(/^I am on the create account page$/) do
        @pages.create_account_page.visit
    end

    When('I fill the first name input field') do 
        gen_first_name = Time.now.strftime('%H%M%S%L')
        @pages.create_account_page.fill_first_name(gen_first_name)
    end

    When('I fill the last name input field') do
        gen_last_name = Time.now.strftime('%H%M%S%L')
        @pages.create_account_page.fill_last_name(gen_last_name)
    end

    When('I fill the email input field') do
        gen_email = Time.now.strftime('%H%M%S%L') + '@email.com'
        @pages.create_account_page.fill_email(gen_email)
    end

    When('I fill the adress input field') do
        gen_address = Time.now.strftime('%H%M%S%L')
        @pages.create_account_page.fill_address(gen_address)
    end
    
    When('I fill the city input field with {string}') do |city|
        @pages.create_account_page.fill_city(city)
        puts (city)
    end

    Then(/^I select country "(.*)" in the dropdown$/) do |value|
        @pages.create_account_page.select_country(value)
    end

    Then(/^I select region "(.*)" in the dropdown$/) do |value|
        @pages.create_account_page.select_region(value)
    end

    When('I fill the zip code input field with {string}') do |zip_code|
        @pages.create_account_page.fill_zip_code(zip_code)
        puts (zip_code)
    end

    When('I fill the login name input field') do
        gen_login_name = Time.now.strftime('%H%M%S%L')
        @pages.create_account_page.fill_login_name(gen_login_name)
    end

    When('I fill the password input field with {string}') do |password|
        @pages.create_account_page.fill_password(password)
        puts(password)
    end

    When('I fill the password confirmation input field with {string}') do |password|
        @pages.create_account_page.fill_password_confirmation(password)
        puts(password)
    end

    When('I select privacy policy checkbox') do 
        @pages.create_account_page.select_privacy_checkbox
    end

    When('I press continue button') do 
        @pages.create_account_page.press_continue
    end

    Then('I check whether I created account succesfully') do
        expect(@pages.create_account_page.registration_confirmation).to eq('YOUR ACCOUNT HAS BEEN CREATED!')
        sleep 5
    end
    

    