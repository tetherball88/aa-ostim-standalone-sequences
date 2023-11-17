;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname AmorousAdvIrilethQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE AmorousAdveIrilethQstUtil
Quest __temp = self as Quest
AmorousAdveIrilethQstUtil kmyQuest = __temp as AmorousAdveIrilethQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 25
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(25, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE AmorousAdveIrilethQstUtil
Quest __temp = self as Quest
AmorousAdveIrilethQstUtil kmyQuest = __temp as AmorousAdveIrilethQstUtil
;END AUTOCAST
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 0
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
; STAGE 200

stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;STAGE 5
SetObjectiveDisplayed(5, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 10
setObjectiveCompleted(5, 1)
setObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AmorousAdveIrilethQstUtil
Quest __temp = self as Quest
AmorousAdveIrilethQstUtil kmyQuest = __temp as AmorousAdveIrilethQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 30
setObjectiveCompleted(25, 1)
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)


SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;STAGE 300
setObjectiveCompleted(5, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
