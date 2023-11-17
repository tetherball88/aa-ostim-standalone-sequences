Scriptname AmorousAdvOarSetStageDress extends ReferenceAlias  Conditional

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if newContainer == PlayerRef
		SexLabAmorousAdventuresOar.SetStage(60)
	endif
EndEvent

Actor Property PlayerRef Auto
Quest Property SexLabAmorousAdventuresOar  Auto 

