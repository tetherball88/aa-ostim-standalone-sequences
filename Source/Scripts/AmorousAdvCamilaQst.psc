;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 24
Scriptname AmorousAdvCamilaQst Extends Quest Hidden

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

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;stage 40
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE AmorousAdvCamillaQstUtil
Quest __temp = self as Quest
AmorousAdvCamillaQstUtil kmyQuest = __temp as AmorousAdvCamillaQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 110
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias6.GetReference())
SetObjectiveCompleted(80, 1)
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
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

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;Stage 62 - Faendal bad
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(Alias_aAmorousAdvAlias5.GetReference())
Alias_aAmorousAdvAlias3.GetActorReference().SetRelationshipRank(Game.GetPlayer(), -1)
SetObjectiveCompleted(60, 1)
SetStage(70)
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
;stage 60
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias5.GetReference())
SetObjectiveCompleted(50, 1)
SetObjectiveCompleted(52, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;stage 41
setObjectiveDisplayed(41, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AmorousAdvCamillaQstUtil
Quest __temp = self as Quest
AmorousAdvCamillaQstUtil kmyQuest = __temp as AmorousAdvCamillaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 100
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(80, 1)
If alias_aAmorousAdvAlias6.getReference().IsDisabled()
    alias_aAmorousAdvAlias6.getReference().Enable()
EndIf
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Stage 61 - Sven bad
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(Alias_aAmorousAdvAlias5.GetReference())
Alias_aAmorousAdvAlias4.GetActorReference().SetRelationshipRank(Game.GetPlayer(), -1)
SetObjectiveCompleted(60, 1)
SetStage(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Stage 70
SetObjectiveDisplayed(70, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;Stage 50
SetObjectiveCompleted(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 52
SetObjectiveDisplayed(52, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto

