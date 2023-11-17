Scriptname AmorousAdvBrelynaSetStage130 extends ReferenceAlias  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		if SexLabAmorousAdventuresBrelyna.GetStage() == 120
			SexLabAmorousAdventuresBrelyna.SetStage(130)
		endif
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresBrelyna  Auto 
