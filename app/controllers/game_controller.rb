class GameController < ApplicationController

  def user_plays_paper
    moves = ["rock", "paper", "scissors"]
    @computer_move_p = moves.sample
    if @computer_move_p == "paper"
      @result_p = "tied"
    elsif @computer_move_p == "rock"
      @result_p = "won"
    else
      @result_p = "lost"
    end

    if @result_p == "won"
      @label_p = "success"
    elsif @result_p == "lost"
      @label_p = "danger"
    else
      @label_p = "warning"
    end

    render("game/play_paper.html.erb")
  end

  def user_plays_rock
    moves = ["rock", "paper", "scissors"]
    @computer_move_r = moves.sample
    if @computer_move_r == "paper"
      @result_r = "lost"
    elsif @computer_move_r == "rock"
      @result_r = "tied"
    else
      @result_r = "won"
    end

    if @result_r == "won"
      @label_r = "success"
    elsif @result_r == "lost"
      @label_r = "danger"
    else
      @label_r = "warning"
    end

    render("game/play_rock.html.erb")
  end

  def user_plays_scissors
    moves = ["rock", "paper", "scissors"]
    @computer_move_s = moves.sample
    if @computer_move_s == "paper"
      @result_s = "won"
    elsif @computer_move_s == "rock"
      @result_s = "lost"
    else
      @result_s = "tied"
    end

    if @result_s == "won"
      @label_s = "success"
    elsif @result_s == "lost"
      @label_s = "danger"
    else
      @label_s = "warning"
    end

    render("game/play_scissors.html.erb")
  end
end
