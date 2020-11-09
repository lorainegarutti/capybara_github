Dado("que eu acesse a pagina de login") do
  goto_login
end

Quando("eu submeter o login com username e senha") do
  #binding.pry
  login_with
end

Entao("serei redirecionada para minha pagina inicial") do
  expect(page).to have_css ".logged-in"
end

Quando("eu submeter o login com:") do |table|
  user = table.rows_hash
  username = user[:username]
  senha = user[:senha]

  login_try(username, senha)
end

Entao("devo ver um aviso {string}") do |text_message|
  expect(login_message_alert).to eql text_message
end

# steps dinamicos
Quando("eu acesse a pagina de login") do
  steps %(
    Dado que eu acesse a pagina de login
  )
end

Entao("deve exibir o seguinte css selector: {string}") do |expected_css|
  expect(page).to have_css expected_css
end
