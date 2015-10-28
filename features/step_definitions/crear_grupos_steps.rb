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
