# encoding: utf-8
Dado(/^que soy administador registrado$/) do
   step %{existe un Usuario: "Sr. Pepito Argento", "admin@club.com", "clave12345" y "1"}
end

Dado(/^me identifico como "(.*?)"$/) do |usuario|
  step %{completo mi email "#{usuario}" y contraseña "clave12345"}
end

Dado(/^que soy profesor registrado$/) do
    step %{existe un Usuario: "Rubén Aguirre Jirafales", "profjirafales@elchavo.com", "clave12345" y "2"}
end

Dado(/^(?:que estoy identificado|que estoy logueado) como? "(.*?)"$/) do |tipo|
  if tipo == "profesor"
    step %{existe un Usuario: "Rubén Aguirre Jirafales", "profjirafales@elchavo.com", "clave12345" y "2"}
    step %{completo mi email "profjirafales@elchavo.com" y contraseña "clave12345"}
  end

  if tipo == "Administrador"
    step %{existe un Usuario: "Sr. Pepito Argento", "admin@club.com", "clave12345" y "1"}
    step %{completo mi email "admin@club.com" y contraseña "clave12345"}
  end
end



Dado(/^que el usuario esta "(.*?)"$/) do |estado|
  if estado == "habilitado"
    estado_usuario = true
  else
    estado_usuario = false
  end
  @user.habilitado = estado_usuario
  @user.save!
  step %{completo mi email "profjirafales@elchavo.com" y contraseña "clave12345"}
end

Dado(/^existe un Usuario: "(.*?)", "(.*?)", "(.*?)" y "(.*?)"$/) do |nombre, email, clave, tipo|
    @user = User.create!({
    :nombre => nombre,
    :email => email,
    :password => clave,
    :password_confirmation => clave,
    :tipo => tipo,
    :habilitado => true
    })
end

Dado(/^completo mi email "(.*?)" y contraseña "(.*?)"$/) do |correo, clave|
  #visit '/users/sign_out'
  visit '/pages/index'
  
  # Esto es para evitar el Ambiguous match
  fill_in('user_email', with: "#{correo}", :match => :prefer_exact)
  fill_in('user_password', with: "#{clave}", :match => :prefer_exact)
  
  click_button "Ingresar"
  #save_and_open_page
end
