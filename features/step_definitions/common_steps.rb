# encoding: utf-8
Entonces(/^(?:veo un mensaje|veo el mensaje|veo un mensaje que dice)? "(.*?)"$/) do |mensaje|
  #Capybara Quering, sin RSpec. Usa MiniTest.
  #save_and_open_page
  assert page.has_content?(mensaje)
end

Dado(/^(?:estoy en la pantalla|me encuentro en la pantalla|estoy en la pantalla donde veo|que estoy en la pantalla de)? "(.*?)"$/) do |pantalla|
  case pantalla
  when 'identificación'
    visit('/users/sign_in')
  when 'Inicio'
    visit('/')
  when 'administración de grupos'
    visit('/admin/groups')
  when 'ver todos los grupos'
    visit('/admin/groups')
  when 'Colonos'
    visit('registrations')
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

Cuando(/^(?:presiono|que presione|que hice click en) el botón "(.*?)"$/) do |button|
  #if button == "Guardar cambios"
   #puts("current_user: #{@selection_process.organizer.user_id}#")
   #puts("Weeeep!!!: #{current_user.id}#")
   #save_and_open_page 
  #end
  #click_button button #me da problemas con Capybara.
  #find_button(button).click #me da problemas con Capybara.
  #save_and_open_page
  click_link_or_button(button) # clicks on either links or buttons
end


#Pa los mensajes de error.
#Then /^I should see an error message containing "([^\"]*)"$/ do |message|
#    page.should have_selector('#flash_alert', text: message)
#end
