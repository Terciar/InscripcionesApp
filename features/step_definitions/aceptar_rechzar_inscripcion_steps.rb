

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
