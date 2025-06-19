# frozen_string_literal: true

# task_tracker.rb

class Task
  attr_accessor :description, :done

  def initialize(description)
    @description = description
    @done = false
  end
end