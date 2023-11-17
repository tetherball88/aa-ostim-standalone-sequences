;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvDLC1_2A_biteAndKiss Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;bite and kiss
akSpeaker.PlayIdleWithTarget(IdleVampireStandingFeedFront_Loose, PlayerRef)
Utility.Wait(4.0)
aalUtil.AnimateAmorousAdvLoveScene2(akSpeaker)
GetOwningQuest().SetStage(30)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

AmorousAdvDLC1_2QstUtil Property aalUtil  Auto
Idle Property IdleVampireStandingFeedFront_Loose Auto
Actor Property PlayerRef Auto
