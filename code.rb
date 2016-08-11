require 'pry'

class PersonalizedHavocError < StandardError
end

module PartyGoer
  def drink
    @drinks += 1
    if @drinks < 4
      true
    else
      false
    end
  end

  def sing
    <<-JOURNEY
      Don't stop believin'
      Hold on to that feelin'
      Streetlight people
      Don't stop believin'
    JOURNEY
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def invited?
    true
  end
end

class Launcher
  include PartyGoer

  def initialize
    @drinks = 0
  end
end
