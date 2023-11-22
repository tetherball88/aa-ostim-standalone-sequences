Scriptname AmorousAdventuresCamillaArvelsLetter extends ReferenceAlias  

Quest Property SexLabAmorousAdventuresCamilla  Auto 

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
             SexLabAmorousAdventuresCamilla.SetObjectivedisplayed(60)
		SexLabAmorousAdventuresCamilla.SetStage(60)
	endif
EndEvent

Actor Property PlayerRef Auto
