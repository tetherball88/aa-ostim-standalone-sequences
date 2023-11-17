Scriptname AmorousAdvTailorsSetStageLinen extends ReferenceAlias  Conditional

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		SexLabAmorousAdventuresTailors.SetStage(50)
		SexLabAmorousAdventuresTextiles.SetObjectiveCompleted(40,1)
		SexLabAmorousAdventuresTextiles.SetObjectiveDisplayed(45,true,true)
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresTailors  Auto 
Quest Property SexLabAmorousAdventuresTextiles  Auto 
