Dado(/^que completo los datos del formulario$/) do
   @group = Group.create!({
    :nombre => "nombre",
    :sexo => 1,
    :quota => 20,
    :extended_quota  => 5,
    :initial_age => 4,
    :maximun_age => 5
    })
end

Dado(/^que completo los siguientes datos del formulario$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Dado(/^completo los datos del grupo con "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |nombre, sexo, edad_minima, edad_maxima, cupo, cupo_extendido|
   #save_and_open_page
   fill_in "group_nombre", :with => nombre
   select sexo, :from => "sex_select"
   fill_in "group_quota", :with => cupo
   
   fill_in "group_extended_quota", :with => cupo_extendido if cupo_extendido
   fill_in "group_initial_age", :with => edad_minima
   fill_in "group_maximun_age", :with => edad_maxima


   #save_and_open_page

   #Crear mock
   # el proceso ya esta mokeado.
   @group = {"nombre" => nombre,"sexo" => sexo, "quota" => cupo, "extended_quota" => cupo_extendido, "initial_age" => edad_minima, "maximun_age" => edad_maxima}

end
