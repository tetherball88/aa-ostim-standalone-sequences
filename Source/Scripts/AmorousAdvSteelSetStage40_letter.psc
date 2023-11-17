Scriptname AmorousAdvSteelSetStage40_letter extends ReferenceAlias  

Event OnRead()
	if SexLabAmorousAdventuresSteel.GetStage() == 30
		SexLabAmorousAdventuresSteel.SetStage(40)
	endif
EndEvent

Quest Property SexLabAmorousAdventuresSteel  Auto 
