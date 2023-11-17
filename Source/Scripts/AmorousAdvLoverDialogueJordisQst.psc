;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname AmorousAdvLoverDialogueJordisQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;--| STAGE 70
;--| Follow Me
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AddMyLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AmorousAdvLoverDialogueJordisQstUtil
Quest __temp = self as Quest
AmorousAdvLoverDialogueJordisQstUtil kmyQuest = __temp as AmorousAdvLoverDialogueJordisQstUtil
;END AUTOCAST
;BEGIN CODE
;--| STAGE 5: Initialize
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.MyUniqueLover(akLover)
kmyquest.updateAmorousAdvLoverTimer()
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE AmorousAdvLoverDialogueJordisQstUtil
Quest __temp = self as Quest
AmorousAdvLoverDialogueJordisQstUtil kmyQuest = __temp as AmorousAdvLoverDialogueJordisQstUtil
;END AUTOCAST
;BEGIN CODE
;--| STAGE 80
;--| Not Now
kmyquest.updateAmorousAdvLoverTimer()
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;--| STAGE 110
;--| Break Up
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.MyBreakUp(akLover)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;--| STAGE 40
;--| A Kiss
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateKissMyLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;--| STAGE 60
;--| Walk-up Threesome
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateWalkUpThreesome(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;--| STAGE 100
;--| Solo
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateSoloLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;--| STAGE 200
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE AmorousAdvLoverDialogueJordisQstUtil
Quest __temp = self as Quest
AmorousAdvLoverDialogueJordisQstUtil kmyQuest = __temp as AmorousAdvLoverDialogueJordisQstUtil
;END AUTOCAST
;BEGIN CODE
;--| STAGE 50
;--| Make Love
kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.RemoveMyLover(akLover,True)
AmorousAdvLoversMain.AnimateMyLover(akLover, 4)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;--| STAGE 90
;--| Walk-up Friends
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateMyWalkUpFriends(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

AmorousAdventuresLoversMain Property AmorousAdvLoversMain  Auto
