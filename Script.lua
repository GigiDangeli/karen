--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


hasKey = false;

function story(aName)
    if(aName == "start") then
	    setBackground("vegan teacher.jpg")
		createTextfield("you ran for 10 minutes form a crazed gay karen.... but you fall")
		createButton("pick yourself up and run away", "RUN")
	end
    if(aName == "pick yourself up and run away") then 
	    CLS()
		setBackground("huis.jpg")
		createTextfield("Er staat een verlaten huis voor je, de karen valt en laat haar lgbtq vlag vallen")
		createButton("naar binnen", "ren naar binnen en pak de lgbtq vlag")
	end
	if(aName == "naar binnen") then
	    CLS()
	    setBackground("gang.jpg")
		createTextfield("je hebt een trap voor je en links van je de woonkamer")
		createButton("trap2", "naar boven gaan")
		createButton("woonkamer", "naar de woonkamer gaan")
	end
	if(aName == "woonkamer") then
	    CLS()
	    setBackground("woonkamer.jpg")
		createTextfield("je zit in de woonkamer en je ziet een sleutel liggen op de eettafel")
		if(hasKey == false) then
			createButton("sleutel", "pak de sleutel op")
		end
		createButton("naar binnen", "Terug naar de gang")
	end
	if(aName == "sleutel") then
		CLS()
		setBackground("woonkamer.jpg")
		createTextfield("Je hebt de sleutel opgepakt")
		hasKey = true;
		createButton("naar binnen", "terug naar de gang gaan")
	end
	if(aName == "trap2") then 
		CLS()
		setBackground("gangb.jpg")
		createTextfield("je zit nu boven en je ziet 4 kamers 2 aan je linker kant en 2 rechts")
		createButton("gebedskamer", "ga naar de 2de rechtse kamer")
		createButton("toilet", "ga naar de 2de linker kamer")
			createButton("grote slaapkamer", "ga naar de 1ste rechter kamer")
		createButton("kinder kamer", "ga naar de 1ste linker kamer")
	end	
	if(aName == "grote slaapkamer") then 
	    if hasKey then
			CLS()
			setBackground("slaapkamer.jpg")
			createTextfield("je hebt met de sleutel de deur geopend en je ziet een kruis op het nachtkastje liggen")
			createButton("kruis", "pak het kruis")
			createButton("trap2", "ga terug")
		else
			CLS()
			createButton("trap2", "De deur zit op slot, ga terug.")
		end
	end
end



	      
	   


		
