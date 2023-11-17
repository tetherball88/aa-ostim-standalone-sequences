;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname AmorousAdvLoversOptionsInstant3Some Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
aalMain.AnimateWalkUpThreesome(akSpeaker)
aalMain.RemoveMyLover(MyLover1.GetRef() as actor, True)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

AmorousAdventuresLoversMain Property aalMain  Auto 

ReferenceAlias Property MyLover1  Auto
ReferenceAlias Property MyLover2  Auto
