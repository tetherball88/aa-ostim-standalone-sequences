Scriptname AmorousAdvYsoldaTreeSapOnChange extends ReferenceAlias  Conditional

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		SexLabAmorousAdventuresYsolda.SetStage(60)
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresYsolda  Auto 
