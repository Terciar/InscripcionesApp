Dado(/^he presionado el botón "(.*?)" del menú principal$/) do |boton|
  step %{presiono el botón "#{boton}"}
end

Dado(/^que hay (\d+) grupos creados\.$/) do |cantidad, table|
  # table is a Cucumber::Ast::Table
  @groups = Group.create!(table.hashes)
  assert_equal cantidad.to_i, @groups.count
end

Entonces(/^veo un listado con (\d+) grupos$/) do |cantidad_grupos|
  page.has_table?('groups-list') #Que exista la tabla
  page.assert_selector('table tbody tr', :count => cantidad_grupos ) #Que tenga X filas. OJO esto puede fallar con filas vacias.
end

Entonces(/^debo ver "(.*?)" antes que "(.*?)"$/) do |cadena1, cadena2|
  #regexp = /#{cadena1}.*#{cadena2}/m # /m means match across newlines
  #page.body.should =~ regexp #Esto necesita que este definido should
  # match = /#{cadena1}.*#{cadena2}/m =~ page.body #Esto no me funcionaba.
  #save_and_open_page
  assert page.body.index(cadena1) < page.body.index(cadena2)
end

Dado(/^que no hay grupos creados$/) do
  @groups = nil
end

Entonces(/^veo una lista vacía$/) do
  page.has_table?('groups-list') #Que exista la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end