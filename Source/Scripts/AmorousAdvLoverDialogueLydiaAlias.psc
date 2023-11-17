Scriptname AmorousAdvLoverDialogueLydiaAlias extends ReferenceAlias  

;Event OnDying (Actor akKiller)
;	AmorousAdvQuestPointer1.SetStage(200)
;EndEvent

Event OnDeath (Actor akKiller)
	AmorousAdvQuestPointer1.SetStage(200)
EndEvent

Quest Property AmorousAdvQuestPointer1 Auto ;--| AmorousAdventuresLoverDialogueLydia
