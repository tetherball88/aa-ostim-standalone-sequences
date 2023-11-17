Scriptname AmorousAdvTailorsSetStage40List extends ReferenceAlias  Conditional

Event OnRead()
	if SexLabAmorousAdventuresTailors.GetStage() == 35
		SexLabAmorousAdventuresTailors.SetStage(40)
		SexLabAmorousAdventuresTextiles.Start()
		SexLabAmorousAdventuresTextiles.SetStage(10)
	endif
EndEvent

Quest Property SexLabAmorousAdventuresTailors  Auto 
Quest Property SexLabAmorousAdventuresTextiles  Auto 
