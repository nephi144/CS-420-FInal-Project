# frozen_string_literal: true

# task_tracker.rb

# Defines a Task class to represent a to-do item
class Task
  
  #  Java: private String description;
  #        private boolean done;
  #        public String getDescription(), setDescription(String)
  #        public boolean isDone(), setDone(boolean)

  attr_accessor :description, :done # Automatically creates getter and setter methods for :description and :done

  #  Java: public Task(String description) {
  #        this.description = description;
  #         this.done = false;
  #   }
  def initialize(description)  #Constructor called when a new takes obj is created. 
    @description = description  # The task's text description The @description is used instances variable = (Java this.description)
    @done = false               # start Default for nothing = [ ].
  end

  # In Java, this would be:
  #   @Override
  #   public String toString() {
  #     return (done ? "[x] " : "[ ] ") + description;
  #   }
  def to_s # Task object convert to string.  
    status = @done ? "[x]" : "[ ]" #If done = [x], else [ ]
    # Equivalent in Java: return status + " " + description;
    "#{status} #{@description}"  # Return the formatted string with status and description

  end
end
