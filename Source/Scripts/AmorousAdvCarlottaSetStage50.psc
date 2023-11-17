Scriptname AmorousAdvCarlottaSetStage50 extends ReferenceAlias  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		SexLabAmorousAdventuresCarlotta.SetStage(50)
		SexLabAmorousAdventuresCarlotta.SetObjectiveCompleted(40)
		SexLabAmorousAdventuresCarlotta.SetObjectiveDisplayed(50)
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresCarlotta  Auto 
