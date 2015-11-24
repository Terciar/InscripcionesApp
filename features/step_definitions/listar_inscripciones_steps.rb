Dado(/^que hay (\d+) inscriptos$/) do |cantidad, table|
  # table is a Cucumber::Ast::Table
  data = table.hashes
  data.map do |row|
  	#group = Group.find_by_nombre("#{row["Group"]}").id #Esto depende de los seed.
  	step %{existe el colono "#{row["Colono"]}" con estos datos: "#{row["Edad"]}", "13/08/2008", "#{row["Sexo"]}", "#{row["DNI"]}", "Av. Cabildo Nro 10550", "44444444444", "colono12@hotmail.com", "Sagrado corazón", "3", "Luis María Campos Nro. 5550", "11425587963", "osde", "false", "false", "false", "false", "false", "false", "false", "false", "true", "true", "#{row["Nadar"]}", "ninguna", "página de internet", "Casado", "Patricio Perez", "35", "true", "true", "correopapa@mail.com", "arquero de futbol", "1174569247", "Alba Roggio", "33", "true", "true", "correomama@mail.com", "arquitecta", "1124685391", "Madre", "true", "1"}
  end
  #@registrations = Registration.create!(table.hashes)
  visit('/registrations')
  assert_equal cantidad.to_i, data.count
  page.assert_selector('table tbody tr', :count => cantidad.to_i )
end

Entonces(/^veo la lista de los (\d+) inscriptos\.$/) do |cantidad|
  page.assert_selector('table tbody tr', :count => cantidad.to_i )
end

Entonces(/^veo una lista vacía\.$/) do
  page.has_table?('registrations-list') #Que este la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end

Dado(/^que no hay inscriptos$/) do
  @registration = Registration.destroy_all
end
