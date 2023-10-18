class HomePage < SitePrism::Page

  element :userName, :xpath, "//div[@class='t-16 t-black t-bold']"
  element :naveBarHome, :xpath, "//a[@aria-current='page']"
  element :myIcon, :id, "ember15"

  def checkLoginSuccessful
      expect(userName.text).to eql "Diógenes Jardim"
      expect(naveBarHome.text).to eql "Início"
      expect(myIcon.text).to eql 'Eu'
  end 
end