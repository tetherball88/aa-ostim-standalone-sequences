;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 16
Scriptname AmorousAdvCounselingQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

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

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 70 - go see Quintus
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(70, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;Stage 20 - go see Alvor
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE AmorousAdvCounselingQstUtil
Quest __temp = self as Quest
AmorousAdvCounselingQstUtil kmyQuest = __temp as AmorousAdvCounselingQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 100 - back to Sigrid
If alias_aAmorousAdvAlias7.getReference().IsDisabled()
    alias_aAmorousAdvAlias7.getReference().Enable()
EndIf
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias7.GetReference())
actor akLover = Alias_aAmorousAdvAlias4.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(95, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;Stage 10 - Go see Senna
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE AmorousAdvCounselingQstUtil
Quest __temp = self as Quest
AmorousAdvCounselingQstUtil kmyQuest = __temp as AmorousAdvCounselingQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 130

actor aLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
actor bLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateMyThreesome(bLover,aLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Stage 90

SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 30 - go see Sigrid
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AmorousAdvCounselingQstUtil
Quest __temp = self as Quest
AmorousAdvCounselingQstUtil kmyQuest = __temp as AmorousAdvCounselingQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 110
Alias_aAmorousAdvAlias2.GetActorReference().AddItem(Alias_aAmorousAdvAlias7.GetReference())
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateSoloLover(akLover)
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(110, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;Stage 95

SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(95, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Stage 80
If alias_aAmorousAdvAlias6.getReference().IsDisabled()
    alias_aAmorousAdvAlias6.getReference().Enable()
EndIf
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias6.GetReference())
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 50 - go see Alvor
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
