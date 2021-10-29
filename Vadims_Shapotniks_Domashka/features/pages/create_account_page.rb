# Here we define all the elements we are gonna interact with
# All the elements are from Create Account page
#
# Give to the new element a name with '@' at the beginning
# Then we say that it is equal to 'Element' with a parametre '.new()'
# Then in () we use the following structure 
# (:selector_type, 'id of the element we wanna assign our element to')
#

class CreateAccountPage

    include Capybara::DSL

    def initialize
        @first_name_input = Element.new(:css, '#AccountFrm_firstname')
        @last_name_input = Element.new(:css, '#AccountFrm_lastname')
        @email_input = Element.new(:css, '#AccountFrm_email')
        @address_input = Element.new(:css, '#AccountFrm_address_1')
        @city_input = Element.new(:css, '#AccountFrm_city')
        @region_options = Element.new(:xpath, '//*[@id="AccountFrm_zone_id"]/option')
        @region_dropdown = Element.new(:css, '#AccountFrm_zone_id')
        @zip_code_input = Element.new(:css, '#AccountFrm_postcode')
        @country_options = Element.new(:xpath, '//*[@id="AccountFrm_country_id"]/option')
        @country_dropdown = Element.new(:css, '#AccountFrm_country_id')
        @login_name_input = Element.new(:css, '#AccountFrm_loginname')
        @password_input = Element.new(:css, '#AccountFrm_password')
        @password_conf_input = Element.new(:css, '#AccountFrm_confirm')
        @privacy_checkbox = Element.new(:css, '#AccountFrm_agree')
        @continue_btn = Element.new(:css, '[title="Continue"]')
        @succesful_registration = Element.new(:xpath, '//*[@id="maincontainer"]/div/div[1]/div/h1/span[1]')
    end

    def visit
        Capybara.visit('/index.php?rt=account/create')
    end

    def fill_first_name(text)
        @first_name_input.set(text)
    end

    def fill_last_name(text)
        @last_name_input.set(text)
    end

    def fill_email(text)
        @email_input.set(text)
    end

    def fill_address(text)
        @address_input.set(text)
    end

    def fill_city(text)
        @city_input.set(text)
    end

    def select_region(text)
        @region_dropdown.click
        Capybara.find(:xpath, @region_options.path, text: /#{text}/i, match: :first).click
    end

    def fill_zip_code(text)
        @zip_code_input.set(text)
    end

    def select_country(value)
        @country_dropdown.click
        Capybara.find(:xpath, @country_options.path, text: /#{value}/).click
    end

    def fill_login_name(text)
        @login_name_input.set(text)
    end

    def fill_password(text)
        @password_input.set(text)
    end

    def fill_password_confirmation(text)
        @password_conf_input.set(text)
    end

    def select_privacy_checkbox
        @privacy_checkbox.click
    end

    def press_continue
        @continue_btn.click
    end

    def registration_confirmation
        @succesful_registration.text
    end
end