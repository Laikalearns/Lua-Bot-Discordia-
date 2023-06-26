--This Bot was made for my Discord channel which is driven by user enchancement request. The themes below are evident. 

local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

--Random List #1 for !Family message command
local messages = {
  "This time it ain’t just about being fast.",
  "You know this ain’t no 10-second race.",
  "You break her heart, I’ll break your neck.",
  "I don’t feel like I’m under arrest.",
  "You’ve got balls, man.- Letty I’ve been told. ",
  "I'm more of a Corona man myself.",
  'You almost had me? You never had me - you never had your car.',
  'I dont have friends, I got family!',
  "You don't turn your back on family!",
  "Without family, you’ve got nothing",
  " Granny Shifting, not double clutching like you should. You're lucky that 100-shot of NOS didn't blow the welds on the intake",
  "You can have any brew you want... as long as it's a Corona.",
  "I live my life a quarter mile at a time. Nothing else matters.",
  }

-- Define a function to execute when the bot receives a message
client:on('messageCreate', function(message)
    -- Check if the message is not from the bot itself
    if message.content == '!Family' then
        -- Select a random message from the list
        local randomIndex = math.random(1, #messages)
        local randomMessage = messages[randomIndex]
	 	-- Send the random message
	 	message.channel:send(randomMessage)
	
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!Help' then
		message.channel:send('List of commands for Dombot: \n!Family\n!Joke\n!Dain\n!Fellowship\n!Corona\n!Grace\n!valkie\n!Dom mad\n!Dad Jokes')
	end
end)

--Additional on-off message commands from the !Help list 
client:on('messageCreate', function(message)
	if message.content == '!Joke' then
		message.channel:send('The thing about street fights...The street always wins.')
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!Dain' then
		message.channel:send("You are in my good graces, but you ain't keepin' your car.")
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!Fellowship' then
		message.channel:send("Certainty Of Death, Small Chance Of Success, What Are We Waiting For?")
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!Corona' then
		message.channel:send("You can have any brew you want... as long as it's a Corona!!")
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!Grace' then
		message.channel:send("You're saying grace tonight")
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!Dom mad' then
		message.channel:send("You got no honor. With no honor you got no family, with no family, you got nothing")
	end
end)

client:on('messageCreate', function(message)
	if message.content == '!valkie' then 
		message.channel:send("Imagine being me!")
	end
end)

-- --Random List #2 for !Dad Joke message command
local dadJokes = {
	"Say what you will about Switzerland, its flag is a real plus.",
	"Why did the scarecrow win an award? Because he was outstanding in his field..",
	"What do you call a fish with no eyes? Fsh.",
	"Why did the bicycle fall over? Because it was two tired.",
	"Why did the coffee go to the police? Because it got mugged.",
	"I used to hate facial hair, but then it grew on me.",
	"Why did the computer catch a cold? It left a window open.",
	"I only know 25 letters of the alphabet — I just don't know y.",
	"If money doesn’t grow on trees, then why do banks have branches?",
	"What is the most popular time for a dentist appointment?....Tooth hurty!",
	}

	client:on('messageCreate', function(message)
		-- Check if the message is not from the bot itself
		if message.content == '!Dad Jokes' then
			-- Select a random message from the list
			local randomIndex = math.random(1, #dadJokes)
			local randomMessage = dadJokes[randomIndex]
			 -- Send the random message
			 message.channel:send(randomMessage)
		
		end
	end)

--Runs the bot token provisioned from Dicord API. This is a unique ID (Do not share)
client:run('x')
