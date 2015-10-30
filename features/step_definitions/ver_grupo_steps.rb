Entonces(/^veo el texto "(.*?)"$/) do |texto|
  step %{veo un mensaje "#{texto}"}
end
