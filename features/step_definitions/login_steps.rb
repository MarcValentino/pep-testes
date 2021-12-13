Dado("que eu acesso a tela de login") do
  find_element(id: "").click
end

Quando("eu faço login com |email|, |senha|") do |email, senha|
  @email = email
  find_element("")
  find_element("")
  find_element("")
end

Então("devo ser autenticado com sucesso") do
  expect(page).to have_content @email
end

Então ("devo ver {string} como popup") do |mensagem_esperada|
  popup = find_element(id: "android:id/message")
  expect(popup.text).to eql mensagem_esperada
end

After("@logout") do
  click_link @email
end
