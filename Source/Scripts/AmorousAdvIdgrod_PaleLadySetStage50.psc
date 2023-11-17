Scriptname AmorousAdvIdgrod_PaleLadySetStage50 extends ReferenceAlias  

Quest Property SexLabAmorousAdventuresIdgrod Auto

Event OnDeath (Actor akKiller)

	Debug.Trace("Amorous Adventures: called OnDeath event for Pale Lady.")
	If SexLabAmorousAdventuresIdgrod.GetStage() == 40
		SexLabAmorousAdventuresIdgrod.SetStage(50)
	EndIf

EndEvent
