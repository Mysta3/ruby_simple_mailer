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

   #message output
   puts "---BEGIN OF MESSAGE ---" 
   puts "Message Received at: #{time.strftime("%I:%M %p")}"
   puts "[+] To: #{to_name}: #{message}"
   puts "--- From: #{from_name}"
   puts "---END OF MESSAGE---"

   #message sent confirmation
   #message received notification
end

#Ask do you want to send another message?

#open message method
#prompt would you like to open message?
#Logic: if yes, display message in console, if no ask a question
# question = "Would you like to send a message?"