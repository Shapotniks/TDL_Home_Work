# ---------------------------------------------------------------------#
# -----------------------BEFORE HOOKS ---------------------------------#
# ---------------------------------------------------------------------#
Before() do
  Capybara.default_max_wait_time = 15
  Capybara.current_session.driver.browser.manage.window.maximize
  @pages = Pages.new
end
