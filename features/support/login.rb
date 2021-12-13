class Login
  def with(email, senha)
    find_element(id: ""),send_keys(email)
    find_element(id: ""),send_keys(senha)
    find_element(id: ""),click
  end

  def popup 
     find_element(id:"android:id/message")
  end
  end

  class MyAccount
    def view
        find_element(id:"")
    end

end
