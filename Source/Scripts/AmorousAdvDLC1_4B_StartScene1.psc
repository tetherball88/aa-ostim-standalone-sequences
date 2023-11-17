;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvDLC1_4B_StartScene1 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;scene
SexLabAmorousAdventuresDLC1_4_ArgueScene.Start()
GetOwningQuest().SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property SexLabAmorousAdventuresDLC1_4_ArgueScene Auto
