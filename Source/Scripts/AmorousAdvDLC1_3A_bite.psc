;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvDLC1_3A_bite Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;bite
GetOwningQuest().SetStage(20)
akSpeaker.PlayIdleWithTarget(IdleVampireStandingFeedFront_Loose, PlayerRef)
Utility.Wait(4.0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
Idle Property IdleVampireStandingFeedFront_Loose Auto
