;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 24
Scriptname AmorousAdvBrelynaQst Extends Quest Hidden

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

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias8
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias8 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias9
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias9 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 30
;--- Set from Scene 1
actor akFaralda = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akNirya = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akNirya,akFaralda)
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;STAGE 15

actor akNirya = Alias_aAmorousAdvAlias3.GetReference() as Actor
actor akFaralda = Alias_aAmorousAdvAlias2.GetReference() as Actor
akFaralda.MoveTo(WinterholdArchMageQuartersCellMarker)
akNirya.MoveTo(WinterholdArchMageQuartersCellMarker)
akNirya.EvaluatePackage()
akFaralda.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;Stage 180
SetObjectiveCompleted(170, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Stage 45
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias7.GetReference())
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(45, 1)
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
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 170
SetObjectiveCompleted(160, 1)
SetObjectiveDisplayed(170, 1)
;---| Faralda
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene6(akLover)
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Stage 90
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 120
If alias_aAmorousAdvAlias9.getReference().IsDisabled()
    alias_aAmorousAdvAlias9.getReference().Enable()
EndIf
SetObjectiveCompleted(110, 1)
SetObjectiveDisplayed(120, 1)
;---| Brelyna
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Stage 80
;--- From picking up first book
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 160
SetObjectiveCompleted(150, 1)
SetObjectiveDisplayed(160, 1)
;---| Nirya
actor akLover = Alias_aAmorousAdvAlias3.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;STAGE 70
SetObjectiveCompleted(55, 1)
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
If alias_aAmorousAdvAlias8.getReference().IsDisabled()
    alias_aAmorousAdvAlias8.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 50
actor akBrelyna = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akBrelyna)
SetObjectiveCompleted(45, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 110
actor akBrelyna = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akBrelyna)
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(110, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Stage 100
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Stage 130
;--- from picking up Book Vol 2
SetObjectiveCompleted(120, 1)
SetObjectiveDisplayed(130, 1)
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

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;STAGE 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(55, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 140
actor akNirya = Alias_aAmorousAdvAlias3.GetReference() as Actor
actor akFaralda = Alias_aAmorousAdvAlias2.GetReference() as Actor
akFaralda.MoveTo(WinterholdArchMageQuartersCellMarker)
akNirya.MoveTo(WinterholdArchMageQuartersCellMarker)
akNirya.EvaluatePackage()
akFaralda.EvaluatePackage()

actor akBrelyna = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene4(akBrelyna)

SetObjectiveCompleted(130, 1)
SetObjectiveDisplayed(140, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN AUTOCAST TYPE AmorousAdvBrelynaQstUtil
Quest __temp = self as Quest
AmorousAdvBrelynaQstUtil kmyQuest = __temp as AmorousAdvBrelynaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 150
actor akNirya = Alias_aAmorousAdvAlias3.GetReference() as Actor
actor akFaralda = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akBrelyna = Alias_aAmorousAdvAlias1.GetReference() as Actor

kmyQuest.AnimateAmorousAdvLoveScene7(akFaralda,akBrelyna)
Utility.Wait(2.0)
kmyQuest.AnimateAmorousAdvLoveScene5(akNirya)
Utility.Wait(5.0)
AmorousAdvCircleOfSex.cast(akNirya, akNirya)
AmorousAdvCircleOfSex.cast(akFaralda, akFaralda)
SetObjectiveCompleted(140, 1)
SetObjectiveDisplayed(150, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
actor akNirya = Alias_aAmorousAdvAlias3.GetReference() as Actor
akNirya.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property WinterholdArchMageQuartersCellMarker Auto
Actor Property PlayerRef Auto
Spell Property AmorousAdvCircleOfSex Auto
