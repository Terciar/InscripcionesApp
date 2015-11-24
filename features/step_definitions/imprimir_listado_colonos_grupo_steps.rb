
Dado(/^que existen (\d+) inscriptos en el grupo "(.*?)" confirmados$/) do |cantidad, grupo, table|
  # table is a Cucumber::Ast::Table
  step %{que hay #{cantidad} inscriptos}, table
end

Entonces(/^se imprime una lista con los datos de los inscripos$/) do
  visit('imprimir_lista_colonos')
  #save_and_open_page
  #WIP: falta la verificación de que se muestre como se quiere
end