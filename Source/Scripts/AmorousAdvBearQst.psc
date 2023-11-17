;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 27
Scriptname AmorousAdvBearQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Stage 80 - lynly is following player to barrow
SetObjectiveCompleted(75, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
; Stage 65
SetObjectiveCompleted(55, 1)
SetObjectiveDisplayed(65, 1)
actor akRia = Alias_aAmorousAdvAlias1.GetReference() as Actor
akRia.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AmorousAdvBearQstUtil
Quest __temp = self as Quest
AmorousAdvBearQstUtil kmyQuest = __temp as AmorousAdvBearQstUtil
;END AUTOCAST
;BEGIN CODE
; Stage 45
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(45, 1)
;---| Temba
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 15
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias5.GetReference())
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(15, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(25, 1)
SetObjectiveDisplayed(26, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
; Stage 95 - Player must talk to Lynly
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(95, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
; Stage 100 - Talk to Ria 
SetObjectiveCompleted(95, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE AmorousAdvBearQstUtil
Quest __temp = self as Quest
AmorousAdvBearQstUtil kmyQuest = __temp as AmorousAdvBearQstUtil
;END AUTOCAST
;BEGIN CODE
; Stage 90 - Kiss scene + Talk to Ria
actor akRia = Alias_aAmorousAdvAlias1.GetReference() as Actor
actor akLynly = Alias_aAmorousAdvAlias6.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akRia,akLynly)
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
akLynly.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
;- Stage 115 - Ria + Lynly farewell scene
SexLabAmorousAdventuresBear_1D_Scene.Start()
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

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
; Stage 85 - Ria and Lynly scene
actor akRia = Alias_aAmorousAdvAlias1.GetReference() as Actor
actor akLynly = Alias_aAmorousAdvAlias6.GetReference() as Actor
SexLabAmorousAdventuresBear_1B_Scene.Start()
akRia.EvaluatePackage()
akLynly.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE AmorousAdvBearQstUtil
Quest __temp = self as Quest
AmorousAdvBearQstUtil kmyQuest = __temp as AmorousAdvBearQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 40
actor akTemba = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akTemba)
SetObjectiveCompleted(35, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE AmorousAdvBearQstUtil
Quest __temp = self as Quest
AmorousAdvBearQstUtil kmyQuest = __temp as AmorousAdvBearQstUtil
;END AUTOCAST
;BEGIN CODE
;- Stage 110 - Love scene + Talk to Lynly Final
actor aLover = Alias_aAmorousAdvAlias6.GetReference() as Actor
actor bLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene4(aLover,bLover)
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(110, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Stage 70 - barrow quest 
SetObjectiveCompleted(65, 1)
SetObjectiveDisplayed(70, 1)
SetObjectiveDisplayed(71, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;- Stage 105 - Ria's & Lynly quick scene
SexLabAmorousAdventuresBear_1C_Scene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
; Stage 200
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Stage 130
SetObjectiveCompleted(120, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Stage 75 - Lynly follow dialogue
SetObjectiveCompleted(70, 1)
SetObjectiveCompleted(71, 1)
SetObjectiveDisplayed(75, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 20
SetObjectiveCompleted(15, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
; Stage 55
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(55, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN AUTOCAST TYPE AmorousAdvBearQstUtil
Quest __temp = self as Quest
AmorousAdvBearQstUtil kmyQuest = __temp as AmorousAdvBearQstUtil
;END AUTOCAST
;BEGIN CODE
; Stage 125
actor akRia = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.MyNewLover(akRia)
If (akRia.GetRelationshipRank(PlayerRef) < 1)
    akRia.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.AnimateAmorousAdvLoveScene5(akRia)
SetStage(130)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AmorousAdvBearQstUtil
Quest __temp = self as Quest
AmorousAdvBearQstUtil kmyQuest = __temp as AmorousAdvBearQstUtil
;END AUTOCAST
;BEGIN CODE
; Stage 50
actor akRia = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akRia)
SetObjectiveCompleted(45, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 25
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(25, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN AUTOCAST TYPE AmorousAdvBearQstUtil
Quest __temp = self as Quest
AmorousAdvBearQstUtil kmyQuest = __temp as AmorousAdvBearQstUtil
;END AUTOCAST
;BEGIN CODE
;- Stage 120 - Talk to Ria
SetObjectiveCompleted(110, 1)
SetObjectiveDisplayed(120, 1)
actor akLynly = Alias_aAmorousAdvAlias6.GetReference() as Actor
actor akRia = Alias_aAmorousAdvAlias1.GetReference() as Actor
akLynly.EvaluatePackage()
If (akLynly.GetRelationshipRank(PlayerRef) < 1)
    akLynly.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLynly)
If (akLynly.GetRelationshipRank(akRia) < 2)
    akLynly.SetRelationshipRank(akRia, 2)
EndIf
If (akRia.GetRelationshipRank(akLynly) < 2)
    akRia.SetRelationshipRank(akLynly, 2)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;stage 35

actor akTemba = Alias_aAmorousAdvAlias2.GetReference() as Actor
akTemba.EvaluatePackage()

SetObjectiveCompleted(26, 1)
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(35, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
; Stage 60
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
Scene Property SexLabAmorousAdventuresBear_1B_Scene Auto
Scene Property SexLabAmorousAdventuresBear_1C_Scene Auto
Scene Property SexLabAmorousAdventuresBear_1D_Scene Auto

