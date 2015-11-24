Entonces(/^el colono "(.*?)" ya no aparece en la lista$/) do |nombre_colono|
  step %{me encuentro en la pantalla "Colonos"}
  page.has_no_content?("#{nombre_colono}")
end

Entonces(/^veo un mensaje de confirmación "(.*?)"Juan Jacinto Perez"(.*?)"$/) do |arg1, arg2|
  #RackTest no soporta JS, por lo tanto no soporta ventanas modales.
  #page.accept_confirm do
  #  accept_modal(:warning)
  #end
end

Entonces(/^el colono "(.*?)" sigue estando en la lista$/) do
  step %{me encuentro en la pantalla "Colonos"}
  page.has_no_content?("#{nombre_colono}")
end

Dado(/^que borre todos los colonos$/) do
  @registrations = Registration.destroy_all
  @registrations = nil
end

Entonces(/^veo la lista de colonos vacía$/) do
  step %{me encuentro en la pantalla "Colonos"}
  page.has_table?('registrations-list') #Que exista la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end

Entonces(/^veo la lista de colonos del grupo vacía$/) do
  page.has_table?('registrations-list') #Que exista la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end
