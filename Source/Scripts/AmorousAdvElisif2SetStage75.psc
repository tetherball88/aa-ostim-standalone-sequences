Scriptname AmorousAdvElisif2SetStage75 extends ReferenceAlias  

Quest Property SexLabAmorousAdventuresElisif2 Auto

Event OnDying (Actor akKiller)

	If SexLabAmorousAdventuresElisif2.GetStage() == 70
		SexLabAmorousAdventuresElisif2.SetStage(75)
	EndIf

EndEvent
