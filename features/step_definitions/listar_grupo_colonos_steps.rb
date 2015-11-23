Dado(/^he presionado el botón "(.*?)" del primer grupo de la lista de grupos\.$/) do |boton|
  #save_and_open_page
  find("table#groups-list > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(1)").click_on('Colonos')
end

Dado(/^que hay (\d+) inscriptos en el grupo$/) do |cantidad, table|
  # table is a Cucumber::Ast::Table
  step %{que hay #{cantidad} inscriptos}, table
end

Entonces(/^veo la lista de  los (\d+) inscriptos a ese grupo\.$/) do |cantidad|
  step %{veo la lista de los #{cantidad} inscriptos.}
end

Dado(/^que no hay inscriptos al grupo\.$/) do
  step %{que no hay inscriptos}
end
