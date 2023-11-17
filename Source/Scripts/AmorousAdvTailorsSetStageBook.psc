Scriptname AmorousAdvTailorsSetStageBook extends ReferenceAlias  

Event OnRead()
	if SexLabAmorousAdventuresTailors.GetStage() == 6
		SexLabAmorousAdventuresTailors.SetStage(9)
	endif
EndEvent

Quest Property SexLabAmorousAdventuresTailors  Auto 
