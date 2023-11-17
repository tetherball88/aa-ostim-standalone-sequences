;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvTailorsLinenTurnIn Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;compile
SexLabAmorousAdventuresTextiles.SetStage(60)
Alias_aTaarie.GetActorReference().AddItem(Alias_aLinen.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property SexLabAmorousAdventuresTextiles Auto

ReferenceAlias Property Alias_aLinen  Auto
ReferenceAlias Property Alias_aTaarie  Auto
