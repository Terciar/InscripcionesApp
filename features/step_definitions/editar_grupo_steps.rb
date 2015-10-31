
Dado(/^(?:que |)existe un grupo llamado "(.*?)"$/) do |nombre|
      @group = Group.create!({
     :nombre => nombre,
     :sexo => 1,
     :quota => 20,
     :extended_quota  => 5,
     :initial_age => 4,
     :maximun_age => 5
     })
end

Cuando(/^yo edito un grupo$/) do
  click_on('Editar')
end

Cuando(/^cambio "(.*?)" por "(.*?)"$/) do |campo, valor|
case campo
  when "nombre"
    @update_name = valor
    @group.update_attributes!({ :nombre => @update_name })

    if valor
      fill_in "group_nombre", :with => valor
    end
  when "cupo extra"
    if valor
      fill_in "group_extended_quota", :with => valor
    end
    @update_valor = valor
    @group.update_attributes!({ :extended_quota => valor })
  else

  end

  click_on("Guardar")
end

Entonces(/^veo que el nombre cambio$/) do
  step %{que estoy en la pantalla de "administración de grupos"}
  page.has_table?('groups-list') #Que este la tabla
  nuevo_nombre = page.find('#groups-list > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(1)').text
  #save_and_open_page
  assert_equal @update_name, nuevo_nombre #MiniTest assert_equal 'expected', 'actual'
end

Dado(/^existe un grupo llamado "(.*?)", sin cupo extra definido$/) do |nombre_grupo|
  # No hace falta crear el mock porque ya lo crea en Antecedentes.
  @group.update_attributes!({ :extended_quota => nil })
end

Entonces(/^veo que la cupo extra cambio, sin afectar al nombre del grupo$/) do
  step %{que estoy en la pantalla de "administración de grupos"}
  page.has_table?('groups-list') #Que este la tabla
  nuevo_valor = page.find('#groups-list > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(4)').text
  assert_equal @update_valor, nuevo_valor #MiniTest assert_equal 'expected', 'actual'
end

Cuando(/^yo edito el (\d+)do\. Grupo$/) do |arg1|
   page.find("#groups-list > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(9)").click_on('Editar')
end

Cuando(/^modifico el nombre por "(.*?)"$/) do |valor|
  if valor
     fill_in "group_nombre", :with => valor
  end
  
end

Entonces(/^veo el mensaje de error "(.*?)"$/) do |mensaje|
  step %{veo el mensaje "error"}
end