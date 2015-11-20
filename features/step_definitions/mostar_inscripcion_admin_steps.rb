Dado(/^que existe un colono "(.*?)"$/) do |nombre|
    step %{existe el colono "#{nombre}" con estos datos: "5", "21/09/2010", "Varón", "41248778", "Grecia 3435 1º B", "111542769881", "juanbadi@live.com", "Esclavas del sagrado corazón de jesús", "5", "|Luis María Campos N 3877", "114675991", "Osde", "Ninguno", "No", "false", "false", "false", "false", "----------", "false", "true", "true", "Hipocampo", "Era lejos de mi casa", "Vi su página en Internet", "Casados", "Rogelio Ramón Badía", "41", "true", "true", "papa_badi@yahoo.com", "Abogado", "114781004", "Juana Mateyko", "34", "true", "true", "juanitamat@ole.es", "ama de casa", "1145762214", "Madre", "true", ""}
end

Entonces(/^veo la pantalla "(.*?)" con los datos que cargó en el momento en que se inscribió\.$/) do |arg1, table|
  # table is a Cucumber::Ast::Table
  #save_and_open_page
  table.rows_hash.map do |etiqueta, valor|
    #puts coloreados.
    #puts "\e[0;34m\e[47m\Etiqueta: #{etiqueta}, valor: #{valor}\e[m"
    #puts "\e[0;34m\e[47m\Etiqueta: #{page.body.index(etiqueta)}, valor: #{page.body.index(valor)}\e[m"
    assert page.body.index(etiqueta) != nil, msg = "Falto etiqueta: #{etiqueta}"  
    assert page.body.index(valor) != nil, msg = "Falto valor: #{valor}"   
  end
  
end
