;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvElisifSetStage60 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
SexLabAmorousAdventuresElisifSongScene.Start()
GetOwningQuest().setstage(60)
aalUtil.AnimateAmorousAdvLoveScene2(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

AmorousAdvElisifQstUtil Property aalUtil  Auto
Scene Property SexLabAmorousAdventuresElisifSongScene Auto

