;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 26
Scriptname AmorousAdvIdgrodQst Extends Quest Hidden

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

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AmorousAdvIdgrodQstUtil
Quest __temp = self as Quest
AmorousAdvIdgrodQstUtil kmyQuest = __temp as AmorousAdvIdgrodQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 80
;--| Jonna
actor akLover = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 40
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
Game.GetPlayer().AddItem(Book3ValuableLostLegends, 1)
;--| crypt map marker
Alias_aAmorousAdvAlias8.GetRef().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;Stage 160
SetObjectiveCompleted(150, 1)
SetObjectiveCompleted(151, 1)
SetObjectiveCompleted(152, 1)
SetObjectiveDisplayed(160, 1)
actor akYounger = Alias_aAmorousAdvAlias1.GetReference() as Actor
akYounger.EvaluatePackage()
;--| dead laura
If alias_aAmorousAdvAlias9.getReference().IsEnabled()
    alias_aAmorousAdvAlias9.getReference().Disable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;stage 70
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;stage 50
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Stage 120
SetObjectiveCompleted(115, 1)
SetObjectiveDisplayed(120, 1)
;--| Ghost of Laura
If alias_aAmorousAdvAlias10.getReference().IsEnabled()
    alias_aAmorousAdvAlias10.getReference().Disable(true)
EndIf
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
;Stage 150
SetObjectiveCompleted(140, 1)
SetObjectiveDisplayed(152, 1)
SetObjectiveDisplayed(151, 1)
SetObjectiveDisplayed(150, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AmorousAdvIdgrodQstUtil
Quest __temp = self as Quest
AmorousAdvIdgrodQstUtil kmyQuest = __temp as AmorousAdvIdgrodQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 90
actor akLover = Alias_aAmorousAdvAlias3.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Stage 109
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(109, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN AUTOCAST TYPE AmorousAdvIdgrodQstUtil
Quest __temp = self as Quest
AmorousAdvIdgrodQstUtil kmyQuest = __temp as AmorousAdvIdgrodQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 180
;--| Idgrod Younger
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akLover)
SetObjectiveCompleted(170, 1)
SetObjectiveDisplayed(180, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Stage 130
SetObjectiveCompleted(120, 1)
SetObjectiveDisplayed(130, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
;Stage 170
SetObjectiveCompleted(160, 1)
SetObjectiveDisplayed(170, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;Stage 45
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
SetStage(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;STAGE 110
SetObjectiveDisplayed(100, 1)
SetObjectiveDisplayed(109, 1)
SetObjectiveCompleted(100, 1)
SetObjectiveCompleted(109, 1)
SetObjectiveDisplayed(110, 1)
actor akYounger = Alias_aAmorousAdvAlias1.GetReference() as Actor
akYounger.EvaluatePackage()
;--| dead laura
If alias_aAmorousAdvAlias9.getReference().IsDisabled()
    alias_aAmorousAdvAlias9.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;STAGE 115
SetObjectiveCompleted(110, 1)
SetObjectiveDisplayed(115, 1)
;---| Ghost of Laura
If alias_aAmorousAdvAlias10.getReference().IsDisabled()
    alias_aAmorousAdvAlias10.getReference().Enable(true)
EndIf
actor akGhost = Alias_aAmorousAdvAlias10.GetReference() as Actor
akGhost.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;Stage 100
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;Stage 140
SetObjectiveCompleted(130, 1)
SetObjectiveDisplayed(140, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN AUTOCAST TYPE AmorousAdvIdgrodQstUtil
Quest __temp = self as Quest
AmorousAdvIdgrodQstUtil kmyQuest = __temp as AmorousAdvIdgrodQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 190
SetObjectiveCompleted(180, 1)
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


Book Property Book3ValuableLostLegends Auto
Actor Property PlayerRef Auto




