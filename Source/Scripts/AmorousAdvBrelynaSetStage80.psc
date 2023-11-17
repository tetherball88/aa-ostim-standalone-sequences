Scriptname AmorousAdvBrelynaSetStage80 extends ReferenceAlias  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		if SexLabAmorousAdventuresBrelyna.GetStage() == 70
			SexLabAmorousAdventuresBrelyna.SetStage(80)
		endif
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresBrelyna  Auto 

