module Actions_Login
  def goto_login
    visit "/"
    find("a[href='/login']").click
  end

  def login_with
    login = Login.new

    find("input[name='login']").set login.username
    find("input[name='password']").set login.senha
    click_on "Sign in"
  end

  def login_try(username, senha)
    find("input[name='login']").set username
    find("input[name='password']").set senha
    click_on "Sign in"
  end

  def login_message_alert
    return find("#js-flash-container .container-lg").text
  end
end
