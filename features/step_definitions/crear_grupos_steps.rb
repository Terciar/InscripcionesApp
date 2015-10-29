Dado(/^que completo los datos del formulario$/) do
   # @group = Group.create!({
   #  :nombre => "Grupo 1",
   #  :sexo => 1,
   #  :quota => 20,
   #  :extended_quota  => 5,
   #  :initial_age => 4,
   #  :maximun_age => 5
   #  })
 step %{completo los datos del grupo con "Nombre", "Varones", "3", "4", "15", "5"}

end

Dado(/^completo los datos del grupo con "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |nombre, sexo, edad_minima, edad_maxima, cupo, cupo_extendido|
   #save_and_open_page
   fill_in "group_nombre", :with => nombre
   select sexo, :from => "sex_select" if sexo
   fill_in "group_quota", :with => cupo   
   fill_in "group_extended_quota", :with => cupo_extendido if cupo_extendido
   fill_in "group_initial_age", :with => edad_minima
   fill_in "group_maximun_age", :with => edad_maxima

   #Crear mock
   # el proceso ya esta mokeado.
   @group = {"nombre" => nombre,"sexo" => sexo, "quota" => cupo, "extended_quota" => cupo_extendido, "initial_age" => edad_minima, "maximun_age" => edad_maxima}
end