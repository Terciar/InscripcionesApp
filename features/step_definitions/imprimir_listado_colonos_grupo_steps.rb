
Dado(/^que existen (\d+) inscriptos en el grupo "(.*?)" confirmados$/) do |cantidad, grupo, table|
  # table is a Cucumber::Ast::Table
  step %{que hay #{cantidad} inscriptos}, table
  visit("/admin/groups/#{@group.id}/lista_colonos")
end

Entonces(/^se imprime una lista con los datos de los (\d+) inscripos$/) do |cantidad|
  visit('imprimir_lista_colonos')
  #save_and_open_page
  step %{veo la lista de los #{cantidad} inscriptos.}

  encabezados = ['Apellido y Nombre','Edad','F. de Nac.','Domicilio','Teléfono/s','Ob.y/o Inf.']
  encabezados.each do |encabezado|
    assert page.body.index(encabezado) != nil, msg = "Falto el encabezado: #{encabezado}" 
    #puts "\e[0;34m\e[47m\Encabezado: #{encabezado}\e[m"
  end
end