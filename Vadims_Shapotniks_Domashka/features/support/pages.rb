# Initializes all page objects
class Pages

  attr_accessor :create_account_page

  def initialize
    @create_account_page = CreateAccountPage.new
  end


end