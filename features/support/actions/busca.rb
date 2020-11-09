module Actions_Search
    def search_repo
      repositories = Repositories.new
  
      find("input[placeholder='Find a repository…']").set repositories.repo_correct
    end
  
    def result_found_incorrect_happy_path
      login = Login.new
      username = login.username
      repositorios = Repositories.new
      repo_name_incorrect = repositorios.repo_incorrect
  
      node = first("a[href='/#{username}/#{repo_name_incorrect}']")
      node2 = node.find(:xpath, "//*[@id='repos-container']/ul[1]/li")
      node2.matches_style?({ "display" => "none" })
    end
  
    def wrong_path
      repositorios = Repositories.new
      repo_name_incorrect = repositorios.repo_incorrect
  
      return "https://github.com/?q=#{repo_name_incorrect}"
    end
  
    def result_found_happy_path
      login = Login.new
      username = login.username
      repositorios = Repositories.new
      repo_name_correct = repositorios.repo_correct
  
      first("a[href='/#{username}/#{repo_name_correct}']").click
      return title = first("strong > a[href='/#{username}/#{repo_name_correct}']")
    end
  
    def right_path
      login = Login.new
      username = login.username
      repositorios = Repositories.new
      repo_name_correct = repositorios.repo_correct
  
      return "https://github.com/#{username}/#{repo_name_correct}"
    end
  
    def right_name
      repositorios = Repositories.new
      return repo_name_correct = repositorios.repo_correct
    end
  
    def search_results_critical(search)
        find("input[placeholder='Find a repository…']").set search
    end
  end