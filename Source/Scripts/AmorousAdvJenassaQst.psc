;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 30
Scriptname AmorousAdvJenassaQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias8
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias8 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias10
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias10 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias9
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias9 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN AUTOCAST TYPE AmorousAdvJenassaQstUtil
Quest __temp = self as Quest
AmorousAdvJenassaQstUtil kmyQuest = __temp as AmorousAdvJenassaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 175
actor bLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (bLover.GetRelationshipRank(PlayerRef) < 2)
    bLover.SetRelationshipRank(PlayerRef, 2)
EndIf
kmyQuest.MyNewLover(bLover)
kmyQuest.AnimateAmorousAdvLoveScene4(bLover)
SetObjectiveCompleted(170, 1)
SetObjectiveDisplayed(180, 1)
SetStage(185)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Stage 80
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;stage 70
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
;--| white river chest
If alias_aAmorousAdvAlias6.getReference().IsDisabled()
    alias_aAmorousAdvAlias6.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Stage 120
SetObjectiveCompleted(110, 1)
SetObjectiveDisplayed(120, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;Stage 20
;--| a letter from orthus
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias7.GetReference())
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE AmorousAdvJenassaQstUtil
Quest __temp = self as Quest
AmorousAdvJenassaQstUtil kmyQuest = __temp as AmorousAdvJenassaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 180
actor aLover = Alias_aAmorousAdvAlias4.GetReference() as Actor
actor bLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (aLover.GetRelationshipRank(PlayerRef) < 1)
    aLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(aLover)
If (bLover.GetRelationshipRank(PlayerRef) < 2)
    bLover.SetRelationshipRank(PlayerRef, 2)
EndIf
kmyQuest.MyNewLover(bLover)
kmyQuest.AnimateAmorousAdvLoveScene5(bLover,aLover)
SetObjectiveCompleted(170, 1)
SetObjectiveDisplayed(180, 1)
SetStage(185)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN AUTOCAST TYPE AmorousAdvJenassaQstUtil
Quest __temp = self as Quest
AmorousAdvJenassaQstUtil kmyQuest = __temp as AmorousAdvJenassaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 195
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Stage 140
;--| give orthus the folio
Alias_aAmorousAdvAlias3.GetActorReference().AddItem(Alias_aAmorousAdvAlias9.GetReference())
Game.GetPlayer().AddItem(Gold001, 500)
SetObjectiveCompleted(130, 1)
SetObjectiveDisplayed(140, 1)
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

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;Stage 170
SetObjectiveCompleted(160, 1)
SetObjectiveDisplayed(170, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Stage 100
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 50
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(50, 1)
;--| halted stream chest
If alias_aAmorousAdvAlias5.getReference().IsDisabled()
    alias_aAmorousAdvAlias5.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;Stage 150
SetObjectiveCompleted(140, 1)
SetObjectiveDisplayed(150, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN AUTOCAST TYPE AmorousAdvJenassaQstUtil
Quest __temp = self as Quest
AmorousAdvJenassaQstUtil kmyQuest = __temp as AmorousAdvJenassaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 190
SetObjectiveCompleted(180, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Stage 110
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(110, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN AUTOCAST TYPE AmorousAdvJenassaQstUtil
Quest __temp = self as Quest
AmorousAdvJenassaQstUtil kmyQuest = __temp as AmorousAdvJenassaQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 40
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Stage 130
SetObjectiveCompleted(120, 1)
SetObjectiveDisplayed(130, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN AUTOCAST TYPE AmorousAdvJenassaQstUtil
Quest __temp = self as Quest
AmorousAdvJenassaQstUtil kmyQuest = __temp as AmorousAdvJenassaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 160
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akLover)
SetObjectiveCompleted(150, 1)
SetObjectiveDisplayed(160, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AmorousAdvJenassaQstUtil
Quest __temp = self as Quest
AmorousAdvJenassaQstUtil kmyQuest = __temp as AmorousAdvJenassaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 90
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akLover)
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001 Auto
Actor Property PlayerRef Auto

