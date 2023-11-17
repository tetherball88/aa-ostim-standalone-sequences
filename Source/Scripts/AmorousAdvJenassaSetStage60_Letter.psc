Scriptname AmorousAdvJenassaSetStage60_Letter extends ReferenceAlias  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		SexLabAmorousAdventuresJenassa.SetStage(60)
		SexLabAmorousAdventuresJenassa.SetObjectiveCompleted(50)
		SexLabAmorousAdventuresJenassa.SetObjectiveDisplayed(60)
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresJenassa  Auto 
