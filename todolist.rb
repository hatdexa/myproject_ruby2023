# To-Do List application in Ruby

# Define an array to store the tasks

task = []

# Define a method to add tasks

def add_task(task)
    task << task
    puts "Task '#{task}' added to the list."
end

# Define a method to view tasks

def view_tasks
    puts "To-Do List:"
    tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{tasks}"
    end
end

# Define a method to delete tasks

def delete_task(index)
    tasks.delete_at(index -1)
    puts "Task deleted from the list."
end

# Display menu options

puts "Welcome to the To-Do List application"
puts "1. Add task"
puts "2. View tasks"
puts "3. Delete task"
puts "4. Exit"

# Continously display menu until user choose to exit

while true do
    print "Enter your choice: "
    choice = gets.to_i

    case choice
    when 1
        print "Enter task: "
        task = gets.chomp
        add_task(task)
    when 2
        view_tasks
    when 3
        print "Enter task number to delete: "
        index = gets.to_i
        delete_task(index)
    when 4
        break
    else
        puts "Invalid option. Try again. "
    end
end
