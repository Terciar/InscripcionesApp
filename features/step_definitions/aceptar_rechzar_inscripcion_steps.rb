Entonces(/^el botón cambia a la palabra "(.*?)"$/) do |palabra|
  #save_and_open_page
  within_table('registrations-list') do
      page.has_content?("#{@nombre_colono}")
      row = page.find('tr', :text => "#{@nombre_colono}")

    case palabra
    when "Aceptado"
        row.has_content?("Aceptado")
    when "Rechazado"
        row.has_content?("Rechazado")
    end
  end
end

Entonces(/^el estado del colono "(.*?)" cambia a "(.*?)"$/) do |nombre_colono, estado|
  #status= 2 aprobado
  #status = 3 rechazado
  colono = Registration.find_by_colonist_name(nombre_colono)
  assert colono.status, 2 if estado == "Aceptado"
  assert colono.status, 3 if estado == "Rechazado"
end

Dado(/^que existe el colono "(.*?)" con DNI "(.*?)" perteneciente al grupo$/) do |nombre_colono, dni_colono|
  step %{existe el colono "#{nombre_colono}" con estos datos: "9", "21/09/2010", "Varón", "#{dni_colono}", "Grecia 3435 1º B", "111542769881", "juanbadi@live.com", "Esclavas del sagrado corazón de jesús", "5", "|Luis María Campos N 3877", "114675991", "Osde", "Ninguno", "No", "false", "false", "false", "false", "----------", "false", "true", "true", "Hipocampo", "Era lejos de mi casa", "Vi su página en Internet", "Casados", "Rogelio Ramón Badía", "41", "true", "true", "papa_badi@yahoo.com", "Abogado", "114781004", "Juana Mateyko", "34", "true", "true", "juanitamat@ole.es", "ama de casa", "1145762214", "Madre", "true", "1"}
end