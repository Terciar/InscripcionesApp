Dado(/^que presiono el botón "(.*?)" en el renglón del colono "(.*?)"$/) do |boton, nombre_colono|
@nombre_colono = nombre_colono  
  #save_and_open_page
  within_table('registrations-list') do
    page.has_content?("#{nombre_colono}")
    row = page.find('tr', :text => "#{nombre_colono}")
    if boton == "Confirmar"
      row.find("a.btn-success:nth-child(1)").click
      # a:nth-child(1)
      #registrations-list > tbody:nth-child(2) > tr:nth-child(3) > td:nth-child(13) > a:nth-child(1)
    elsif boton == "Rechazar"
      row.find("a.btn-danger:nth-child(1)").click
    end
  end
end

Entonces(/^el botón cambia a la palabra "(.*?)"$/) do |palabra|
  #save_and_open_page
  within_table('registrations-list') do
    page.has_content?("#{@nombre_colono}")
    row = page.find('tr', :text => "#{@nombre_colono}")
    row.has_content?("Aceptado")
 end
end

Entonces(/^el estado del colono cambia a "(.*?)"$/) do |estado|
  #status= 2 aprobado
  #status = 3 rechazado

end

Entonces(/^el estado del colono "(.*?)" cambia a "(.*?)"$/) do |nombre_colono, estado|
  colono = Registration.find_by_colonist_name(nombre_colono)
  assert colono.status, 2
end
