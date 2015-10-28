Dado(/^que completo los datos del formulario$/) do
 pending
   @group = Group.create!({
    :nombre => nombre,
    :sexo => 1,
    :quota => 20,
    :extended_quota  => 5,
    :initial_age => 4,
    :maximun_age => 5
    })
end

Cuando(/^presiono el boton "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entonces(/^me muestra el mensaje "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Dado(/^que completo los siguientes datos del formulario$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end
