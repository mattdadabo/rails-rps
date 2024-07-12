class ZebraController < ApplicationController
  def homepage
    render({ :template => "game_templates/homepage" })
  end

  def giraffe
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @outcome = "tied"
    elsif @random_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({ :template => "game_templates/play_rock" })
  end

  def elephant
    @random_move_paper = ["rock", "paper", "scissors"].sample

    if @random_move_paper == "paper"
      @outcome_paper = "tied"
    elsif @random_move_paper == "scissors"
      @outcome_paper = "lost"
    else  
      @outcome_paper = "won"
    end

    render({ :template => "game_templates/play_paper" })
  end

  def lion
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "scissors"
      @outcome_scissors = "tied"
    elsif @comp_move == "rock"
      @outcome_scissors = "lost"
    else
      @outcome_scissors = "won"
    end

    render({ :template => "game_templates/play_scissors" })
  end
end
