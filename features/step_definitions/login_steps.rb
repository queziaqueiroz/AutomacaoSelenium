Given('que estou no website Ecred') do
    visit('')
end

  When('clico no botão login') do
    find("a[href='/entrar?redirectUrl=/area-cliente/solucoes/area-credito']").click
  end

  Then('devo ser direcionado para pagina de login') do 
    find("input[name='cpf']").click
    find("input[name='cpf']").send_keys "37146161870"
    sleep 2
    # find("input[name='password']").click
    # find("input[name='password']").send_keys password
    find("button[type='submit']").click
    sleep 20
  end