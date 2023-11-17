;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvDLC1_MarkSetStage20 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;Run Scene
SexLabAmorousAdventuresDLC1_Mark_SennaScene1.Start()
GetOwningQuest().SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property SexLabAmorousAdventuresDLC1_Mark_SennaScene1 Auto
