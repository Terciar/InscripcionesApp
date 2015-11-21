Entonces(/^veo el mensaje de confirmación$/) do
 # begin
 # message = accept_prompt(with: 'Cancelar') do
 #   click_link('Cancelar')
 # end
 # puts "ACA!!!!!!" + message
 # expect(message).to eq('¿Esta seguro de que desea eliminar el grupo \'Varones 2015\'?"')

  #
  #  evaluate_script("window.alert = function(msg) { return true; }")
    #evaluate_script("window.confirm = function(msg) { return true; }")
  #  rescue Capybara::NotSupportedByDriverError
  #end
end

Cuando(/^confirmo$/) do
  #page.driver.browser.switch_to.alert.accept
    #begin
    #evaluate_script("window.alert = function(msg) { return true; }")
    #evaluate_script("window.confirm = function(msg) { return true; }")
    #rescue Capybara::NotSupportedByDriverError
    #end 
    #page.driver.browser.accept_js_confirms

   #Capybara
   #dismiss_confirm do
   # click_link('Aceptar')
   #end
end

Cuando(/^cancelo$/) do
    #page.driver.browser.reject_js_confirms
    #page.driver.browser.switch_to.alert.dismiss
    #begin
    #evaluate_script("window.alert = function(msg) { return false; }")
    #evaluate_script("window.confirm = function(msg) { return false; }")
    #rescue Capybara::NotSupportedByDriverError
    #end 
end

Entonces(/^el grupo sigue estando en la lista$/) do
  #save_and_open_page
end

Dado(/^que borre todos los grupos$/) do
  @groups = Group.destroy_all
end  