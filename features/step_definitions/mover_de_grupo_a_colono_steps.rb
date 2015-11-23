Dado(/^que existe el grupo "(.*?)" para "(.*?)" de "(.*?)" a "(.*?)"$/) do |nombre_grupo, sexo, edad_min, edad_max|
      @group = Group.create!({
     :nombre => nombre_grupo,
     :sexo => gender_text_to_number(sexo) ,
     :quota => 20,
     :extended_quota  => 5,
     :initial_age => edad_min,
     :maximun_age => edad_max
     })
end

Entonces(/^veo la pantalla para cambiar de grupo$/) do
  step %{estoy en la pantalla "Mover grupo"}  
end

Dado(/^que selecciono de la lista "(.*?)"$/) do |nombre_grupo|
  select nombre_grupo, :from => "group_select" if nombre_grupo != ""
end

Entonces(/^regreso a la pantalla "(.*?)"$/) do |pantalla|
  step %{estoy en la pantalla "#{pantalla}"} 
end

Entonces(/^el colono "(.*?)" sigue perteneciendo al "(.*?)"$/) do |nombre_colono, nombre_grupo|
  within_table('registrations-list') do
    page.has_content?("#{nombre_colono}")
    row = page.find('tr', :text => "#{nombre_colono}")
    #registrations-list > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(1)
    nombre_grupo_tabla = row.find('td', :text => "#{nombre_grupo}").text
    assert_equal nombre_grupo_tabla, nombre_grupo
  end  
end

Entonces(/^veo una lista con todos los grupos menos el grupo al que corresponde actualmente a ese colono\.$/) do
  pending # express the regexp above with the code you wish you had
end

Cuando(/^selecciono un "(.*?)" de la lista y presiono el botón "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Entonces(/^veo un mensaje El colono "(.*?)" ha sido movido exitosamente al "(.*?)"\.$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
