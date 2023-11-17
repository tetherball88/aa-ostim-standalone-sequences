;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname AmorousAdvDanicaQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 50
SetObjectiveCompleted(30)
SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Stage 100
SetObjectiveCompleted(70)

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE AmorousAdvDanicaQstUtil
Quest __temp = self as Quest
AmorousAdvDanicaQstUtil kmyQuest = __temp as AmorousAdvDanicaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 70
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(50)
SetObjectiveDisplayed(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
; stage 30
SetObjectiveCompleted(10)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 10
Start()
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
