# encoding: utf-8
Dado(/^que soy profesor registrado$/) do
end

Dado(/^(?:que estoy identificado|que estoy logueado) como? "(.*?)"$/) do |tipo|
  if tipo == "profesor"
    step %{existe un Usuario: "Rubén Aguirre Jirafales", "profjirafales@elchavo.com", "clave12345" y "1"}
    step %{completo mi email "profjirafales@elchavo.com" y contraseña "clave12345"}
  end
end

Dado(/^me identifico como "(.*?)"$/) do |usuario|
  step %{existe un Usuario: "Rubén Aguirre Jirafales", "#{usuario}", "clave12345" y "1"}
  #step %{completo mi email "#{usuario}" y contraseña "clave12345"}
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
