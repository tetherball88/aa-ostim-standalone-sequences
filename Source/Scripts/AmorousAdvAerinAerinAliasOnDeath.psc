Scriptname AmorousAdvAerinAerinAliasOnDeath extends ReferenceAlias  

Quest Property SexLabAmorousAdventuresAerin Auto

Event OnDying (Actor akKiller)

	If SexLabAmorousAdventuresAerin.GetStage() == 75
		SexLabAmorousAdventuresAerin.SetStage(80)
	Else
		SexLabAmorousAdventuresAerin.SetStage(300)
	EndIf

EndEvent

