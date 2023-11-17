;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvCarlottaGiveNotes Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;give quest items
akSpeaker.AddItem(Alias_aAmorousAdvAlias5.GetReference())
akSpeaker.AddItem(Alias_aAmorousAdvAlias7.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property Alias_aAmorousAdvAlias5  Auto
ReferenceAlias Property Alias_aAmorousAdvAlias7  Auto
