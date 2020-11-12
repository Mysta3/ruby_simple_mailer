# Create Mailer template
## Receive input from User
## Have it run again
## currently used from within terminal
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
   #message id
   message_id = (rand(100..400) / 2) * 256
   #message output
   puts "---BEGIN OF MESSAGE ---" 
   puts "Id: #{message_id}"
   puts "Message Received at: #{time.strftime("%I:%M %p")}"
   puts "[+] To: #{to_name}: #{message}"
   puts "--- From: #{from_name}"
   puts "---END OF MESSAGE---"

   #message sent confirmation
   #message received notification
end




#set variables
user_input = ''
status = true

#while status == true call message
while status
    message()
    #Ask do you want to send another message?
    puts "Would you like to Send a New Message?"
    puts "Enter answer format Y/N"
    user_input = gets.chomp.downcase
    status = false if user_input == 'n'
    puts "Goodbye!"
end

#open message method
#prompt would you like to open message?
