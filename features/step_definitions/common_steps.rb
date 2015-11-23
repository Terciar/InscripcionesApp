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
  when 'Mover grupo'
    #visit('registrations/#{@registration.id}/change_group')
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

Dado(/^que presione la opción "(.*?)" del menú$/) do |opcion_menu|
  case opcion_menu
  when 'Listado Colonos'
    #save_and_open_page
    click_on("Listado Colonos")
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


Dado(/^que (?:presiono|he presionado) el botón "(.*?)" en el renglón del colono "(.*?)"$/) do |boton, nombre_colono|
  @nombre_colono = nombre_colono  
  #save_and_open_page
  within_table('registrations-list') do
    page.has_content?("#{nombre_colono}")
    row = page.find('tr', :text => "#{nombre_colono}")
    case boton
    when "Eliminar"
      row.find("a.btn-danger:nth-child(1)").click
    when "Confirmar"
      row.find("a.btn-success:nth-child(1)").click
    when "Rechazar"
      row.find("a.btn-danger:nth-child(2)").click
      #registrations-list > tbody:nth-child(2) > tr:nth-child(3) > td:nth-child(13) > a:nth-child(2)
    when "Mover"
      row.find("a.fa-exchange").click
    else
      raise 'Que botón buscas?'
    end
  end
end


#Pa los mensajes de error.
#Then /^I should see an error message containing "([^\"]*)"$/ do |message|
#    page.should have_selector('#flash_alert', text: message)
#end
