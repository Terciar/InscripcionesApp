# encoding: utf-8
# # save_and_open_page
Entonces(/^veo un mensaje "(.*?)"$/) do |mensaje|
  #Capybara Quering, sin RSpec. Usa MiniTest.
  assert page.has_content?(mensaje)
end

Entonces(/^veo un mensaje que dice "(.*?)"$/) do |mensaje|
 #Capybara Quering, sin RSpec.
 assert page.has_content?(mensaje)
end

Dado(/^(?:estoy en la pantalla|estoy en la pantalla donde veo|que estoy en la pantalla de)? "(.*?)"$/) do |pantalla|
  case pantalla
  when 'identificación'
    visit('/users/sign_in')
  when 'Mis proyectos'
    visit('/')
  when 'las novedades'
    visit('/')
  else
    visit('/¿A donde queres ir?')
  end
end

Dado(/^seleccionó "(.*?)"$/) do |opcion|
  case opcion
  when 'Ver más'
    click_on("Ver más")
  else
    visit('/¿A donde queres ir?')
  end
end

Entonces(/^mostrame la pagina$/) do
  save_and_open_page
end



#Pa los mensajes de error.
#Then /^I should see an error message containing "([^\"]*)"$/ do |message|
#    page.should have_selector('#flash_alert', text: message)
#end
