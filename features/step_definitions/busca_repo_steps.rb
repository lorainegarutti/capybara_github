Dado("Login com credenciais validas") do
  goto_login
  login_with
end

Dado("que eu esteja na minha pagina inicial") do
  expect(page).to have_css ".logged-in"
end

Quando("eu fizer a busca por repositorio") do
  search_repo
end

Entao("nao verei outro repositorio") do
  result_found_incorrect_happy_path
  expect(page).to have_no_current_path(wrong_path, url: true)
end

Entao("eu verei o repositorio correto") do
  result_found_happy_path
  expect(title).to have_text right_name
  expect(page).to have_current_path(right_path, url: true)
end

Quando("eu fizer a busca pelo repositorio: {string}") do |search|
  search_results_critical(search)
end

Entao("eu nao verei nenhum resultado {string}") do |search|
  expect(page).to have_current_path("https://github.com/?q=#{search}", url: true)
end
