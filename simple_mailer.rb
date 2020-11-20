## maybe set a timer for message display to simulate message sent
def message()
    #grab input from user through CLI
   puts "Who are you sending a message to?"
   to_name = gets.chomp
   puts "Who is the message from?"
   from_name = gets.chomp
   puts "What is your message?" 
   message = gets.chomp
   #timestamp message
   time = Time.now
   timestamp = time.strftime("%I:%M %p")
   #message id
   message_id = (rand(100..400) / 2) * 256
   #message output
   puts "--- BEGIN OF MESSAGE ---" 
   puts "[+] Id: #{message_id}"
   puts "Message Received at: #{timestamp}"
   puts "To: #{to_name}:"
   puts "#{message}"
   puts "From: #{from_name}"
   puts "--- END OF MESSAGE ---"
   #message sent confirmation
   #message received notification
   doc = ["uid: #{message_id}", "time received: #{timestamp}" , "To: #{to_name}", "From: #{from_name}", "Message: #{message}"]
end
def checkUserInput(input, message_count,total_messages)
   time = Time.now
   timestamp = time.strftime("%A")
    case input
    when "send"
        total_messages.push(message())
    when "check"
        puts "You currently have #{message_count} message(s)"
    when "print"
        if message_count > 0
            puts total_messages
        else 
            puts "You currently have no messages to print"
        end
    when "quit"
        puts "have a great #{timestamp}!! "
        puts "Closing Program...."
        sleep(1)
        puts "Program was closed at #{time.strftime("%I:%M %p")}"
        sleep(0.5)
    end
end

total_messages  = []
items = 0

user_input = ''
status = true
puts "Hello and Welcome to Simple Message App!"
sleep(1)
puts "Here you can simulate sending messages to someone, almost like email."
sleep(1)
puts "Enjoy!"
puts "Loading program....."

while status
    sleep(1.5)
    puts "What would you like to do?"
    puts "[+] OPTIONS: send, check, print, quit"
    user_input = gets.chomp.downcase
    checkUserInput(user_input, items, total_messages)
    items += 1
end




#open message method
#prompt would you like to open message?

# FETCH METHOD
