Scriptname AmorousAdvCarlottaSetStage60 extends ReferenceAlias  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		SexLabAmorousAdventuresCarlotta.SetStage(60)
		SexLabAmorousAdventuresCarlotta.SetObjectiveCompleted(50)
		SexLabAmorousAdventuresCarlotta.SetObjectiveDisplayed(60)
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresCarlotta  Auto 
