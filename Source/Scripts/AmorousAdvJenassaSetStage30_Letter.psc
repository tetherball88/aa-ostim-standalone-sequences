Scriptname AmorousAdvJenassaSetStage30_Letter extends ReferenceAlias  

Event OnRead()
	if SexLabAmorousAdventuresJenassa.GetStage() == 20
		SexLabAmorousAdventuresJenassa.SetStage(30)
	endif
EndEvent

Quest Property SexLabAmorousAdventuresJenassa  Auto 
