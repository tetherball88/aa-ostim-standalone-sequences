;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 29
Scriptname AmorousAdvSylgjaQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

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

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Stage 23
; Can be set by Annekke quest at stage 30
SetObjectiveDisplayed(23, 1)
SetObjectiveDisplayed(24, 1)
If (AmorousAdvQuestPointer1.IsRunning() == 0)
    AmorousAdvQuestPointer1.Start()
    AmorousAdvQuestPointer1.SetStage(10)
EndIf
SetStage(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;Stage 80
; Set by completing the Senna Quest at Stage 50
;--| give Mark
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias4.GetReference())
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
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

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;Stage 90
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Stage 70
;--| give note to Senna
Alias_aAmorousAdvAlias3.GetActorReference().AddItem(Alias_aAmorousAdvAlias5.GetReference())
AmorousAdvQuestPointer2.SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Stage 40
AmorousAdvQuestPointer1.SetStage(40)
SetObjectiveCompleted(23, 1)
SetObjectiveCompleted(24, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE AmorousAdvSylgjaQstUtil
Quest __temp = self as Quest
AmorousAdvSylgjaQstUtil kmyQuest = __temp as AmorousAdvSylgjaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 100
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(100, 1)
actor aLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor bLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(aLover,bLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
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

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN AUTOCAST TYPE AmorousAdvSylgjaQstUtil
Quest __temp = self as Quest
AmorousAdvSylgjaQstUtil kmyQuest = __temp as AmorousAdvSylgjaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 110
;--| give Syljga Mark
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(Alias_aAmorousAdvAlias4.GetReference())
;--| Sylgja
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(100, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Stage 50
AmorousAdvQuestPointer1.SetStage(50)
SetObjectiveDisplayed(50, 1)
;--| give note
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias5.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;STAGE 60
; Set by Annekke quest at Stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto
Quest Property AmorousAdvQuestPointer1 Auto  ;--|  SexLabAmorousAdventuresAnnekke
Quest Property AmorousAdvQuestPointer2 Auto  ;--|  SexLabAmorousAdventuresSenna


