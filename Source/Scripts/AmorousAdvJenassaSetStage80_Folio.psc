Scriptname AmorousAdvJenassaSetStage80_Folio extends ReferenceAlias  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		SexLabAmorousAdventuresJenassa.SetStage(80)
		SexLabAmorousAdventuresJenassa.SetObjectiveCompleted(70)
		SexLabAmorousAdventuresJenassa.SetObjectiveDisplayed(80)
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresJenassa  Auto 
