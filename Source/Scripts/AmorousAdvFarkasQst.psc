;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 16
Scriptname AmorousAdvFarkasQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 20
SetObjectiveDisplayed(20, 1)
SetObjectiveDisplayed(21, 1)
SetObjectiveCompleted(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 10
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Stage 25
SetObjectiveCompleted(20, 1)
SetObjectiveCompleted(21, 1)
SetObjectiveDisplayed(25, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE AmorousAdvFarkasQstUtil
Quest __temp = self as Quest
AmorousAdvFarkasQstUtil kmyQuest = __temp as AmorousAdvFarkasQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 60
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(40, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 199
SetObjectiveCompleted(21, 1)
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE AmorousAdvFarkasQstUtil
Quest __temp = self as Quest
AmorousAdvFarkasQstUtil kmyQuest = __temp as AmorousAdvFarkasQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 50
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Stage 40
SetObjectiveCompleted(25, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN AUTOCAST TYPE AmorousAdvFarkasQstUtil
Quest __temp = self as Quest
AmorousAdvFarkasQstUtil kmyQuest = __temp as AmorousAdvFarkasQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 30 - cairn
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto 


