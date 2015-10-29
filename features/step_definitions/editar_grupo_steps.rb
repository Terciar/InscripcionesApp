Dado(/^existe un grupo llamado "(.*?)"$/) do |nombre|
      @group = Group.create!({
     :nombre => nombre,
     :sexo => 2,
     :quota => 20,
     :extended_quota  => 5,
     :initial_age => 4,
     :maximun_age => 5
     })
end

Cuando(/^yo edito un grupo$/) do
  click_on('Editar')
end

Cuando(/^cambio el nombre por "(.*?)"$/) do |nuevo_nombre|
  @update_name = nuevo_nombre
  @group.update_attributes!({ :nombre => @update_name })

  if nuevo_nombre
    fill_in "group_nombre", :with => nuevo_nombre
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

Dado(/^que existe un Grupo llamado "(.*?)", sin cupo extra definido$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Cuando(/^yo edito un Grupo$/) do
  pending # express the regexp above with the code you wish you had
end

Cuando(/^cupo extra por "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entonces(/^veo que la cupo extra cambio, sin afectar al nombre del grupo$/) do
  pending # express the regexp above with the code you wish you had
end
