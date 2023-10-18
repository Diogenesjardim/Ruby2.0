class LoginPage < SitePrism::Page
     
  set_url ''
  element :emailField, :id, "session_key"
  element :passwordField, :id, "session_password"
  element :loginButton, :xpath, "//button[contains(@data-id,'submit-btn')]"


  def userLogin(email, password)
      emailField.set (email)
      passwordField.set (password)
      loginButton.click
  end
end