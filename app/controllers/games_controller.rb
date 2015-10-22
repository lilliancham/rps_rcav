class GamesController < ApplicationController
  def rock
    @user_move = "Rock"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @user_move == @computer_move
        @result = "You tied!"
    elsif (@user_move == "Rock" && @computer_move == "Paper") || (@user_move == "Paper" && @computer_move == "Scissors")
        @result = "You lost!"
    elsif @user_move == "Scissors" && @computer_move == "Rock"
        @result = "You lost!"
    else
        @result = "You won!"
    end

    if @result = "You tied!"
        @label_color= "warning"
    elsif @result = "You won!"
        @label_color= "success"
    else @label_color = "danger"
    end

    render("rock.html.erb")
  end

  def paper
    @user_move = "Paper"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @user_move == @computer_move
        @result = "You tied!"
    elsif (@user_move == "Rock" && @computer_move == "Paper") || (@user_move == "Paper" && @computer_move == "Scissors")
        @result = "You lost!"
    elsif @user_move == "Scissors" && @computer_move == "Rock"
        @result = "You lost!"
    else
        @result = "You won!"
    end

    if @result = "You tied!"
        @label_color= "warning"
    elsif @result = "You won!"
        @label_color= "success"
    else @label_color = "danger"
    end

    render("paper.html.erb")
  end

  def scissors
    @user_move = "Scissors"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @user_move == @computer_move
        @result = "You tied!"
    elsif (@user_move == "Rock" && @computer_move == "Paper") || (@user_move == "Paper" && @computer_move == "Scissors")
        @result = "You lost!"
    elsif @user_move == "Scissors" && @computer_move == "Rock"
        @result = "You lost!"
    else
        @result = "You won!"
    end

    if @result = "You tied!"
        @label_color= "warning"
    elsif @result = "You won!"
        @label_color= "success"
    else @label_color = "danger"
    end


    render("scissors.html.erb")
  end

end

