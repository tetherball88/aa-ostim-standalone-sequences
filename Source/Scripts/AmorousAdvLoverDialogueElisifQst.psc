;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 17
Scriptname AmorousAdvLoverDialogueElisifQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AmorousAdvLoverDialogueElisifQstUtil
Quest __temp = self as Quest
AmorousAdvLoverDialogueElisifQstUtil kmyQuest = __temp as AmorousAdvLoverDialogueElisifQstUtil
;END AUTOCAST
;BEGIN CODE
;--| STAGE 51
;--| Make Love - Avatar Elisif
kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.RemoveMyLover(akLover,True)
AmorousAdvLoversMain.AnimateMyLover(akLover, 4)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE AmorousAdvLoverDialogueElisifQstUtil
Quest __temp = self as Quest
AmorousAdvLoverDialogueElisifQstUtil kmyQuest = __temp as AmorousAdvLoverDialogueElisifQstUtil
;END AUTOCAST
;BEGIN CODE
;--| STAGE 50
;--| Make Love - Real Elisif
kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.RemoveMyLover(akLover,True)
AmorousAdvLoversMain.AnimateMyLover(akLover, 4)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;--| STAGE 70
;--| Follow Me - Real Elisif
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AddMyLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;--| STAGE 41
;--| A Kiss - Avatar Elisif
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.AnimateKissMyLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;--| STAGE 100
;--| Solo - Real Elisif
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateSoloLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;--| STAGE 110
;--| Break Up - Both Elisif
;--| kmyquest.updateAmorousAdvLoverTimer()

actor akLover1 = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.MyBreakUp(akLover1)

actor akLover2 = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.MyBreakUp(akLover2)
akLover2.disable()

SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;--| STAGE 60
;--| Walk-up Threesome - Real Elisif
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateWalkUpThreesome(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE AmorousAdvLoverDialogueElisifQstUtil
Quest __temp = self as Quest
AmorousAdvLoverDialogueElisifQstUtil kmyQuest = __temp as AmorousAdvLoverDialogueElisifQstUtil
;END AUTOCAST
;BEGIN CODE
;--| STAGE 80
;--| Not Now - Real Elisif
kmyquest.updateAmorousAdvLoverTimer()
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;--| STAGE 91
;--| Walk-up Friends - Avatar Elisif
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.AnimateMyWalkUpFriends(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;--| STAGE 100
;--| Solo - Avatar Elisif
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.AnimateSoloLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;--| STAGE 90
;--| Walk-up Friends - Real Elisif
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateMyWalkUpFriends(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;--| STAGE 61
;--| Walk-up Threesome - Avatar Elisif
;--| kmyquest.updateAmorousAdvLoverTimer()
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.AnimateWalkUpThreesome(akLover)
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

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;--| STAGE 70
;--| Follow Me - Avatar Elisif
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.AddMyLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;--| STAGE 40
;--| A Kiss - Real Elisif
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.AnimateKissMyLover(akLover)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AmorousAdvLoverDialogueElisifQstUtil
Quest __temp = self as Quest
AmorousAdvLoverDialogueElisifQstUtil kmyQuest = __temp as AmorousAdvLoverDialogueElisifQstUtil
;END AUTOCAST
;BEGIN CODE
;---| STAGE 5: Initialize
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
AmorousAdvLoversMain.MyUniqueLover(akLover)
actor akLover2 = Alias_aAmorousAdvAlias2.GetReference() as Actor
AmorousAdvLoversMain.MyUniqueLover(akLover2)
kmyquest.updateAmorousAdvLoverTimer()
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

AmorousAdventuresLoversMain Property AmorousAdvLoversMain  Auto
