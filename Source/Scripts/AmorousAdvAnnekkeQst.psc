;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 18
Scriptname AmorousAdvAnnekkeQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;stage 30
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
SetObjectiveCompleted(20, 1)
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias5.GetReference())
SetObjectiveDisplayed(30, 1)

If (AmorousAdvQuestPointer1.IsRunning() == 0)
    AmorousAdvQuestPointer1.Start()
    AmorousAdvQuestPointer1.SetStage(10)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;stage 10
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE AmorousAdvAnnekkeQstUtil
Quest __temp = self as Quest
AmorousAdvAnnekkeQstUtil kmyQuest = __temp as AmorousAdvAnnekkeQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 80
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(70, 1)
AmorousAdvQuestPointer2.SetStage(30)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 40
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)

If (AmorousAdvQuestPointer1.IsRunning() == 1)
    AmorousAdvQuestPointer1.SetStage(300)
ElseIf (AmorousAdvQuestPointer1.IsRunning() == 0)
    AmorousAdvQuestPointer1.Start()
    AmorousAdvQuestPointer1.SetStage(10)
    AmorousAdvQuestPointer1.SetStage(300)
EndIf

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;stage 70
; Set by Senna Quest at Stage 20
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;stage 50
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;STAGE 60

SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)

AmorousAdvQuestPointer1.SetStage(60)

If (AmorousAdvQuestPointer2.IsRunning() == 0)
    AmorousAdvQuestPointer2.Start()
    AmorousAdvQuestPointer2.SetStage(5)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto

 ;---| SexLabAmorousAdventuresSylgja
Quest Property AmorousAdvQuestPointer1 Auto

;---| SexLabAmorousAdventuresSenna
Quest Property AmorousAdvQuestPointer2 Auto
