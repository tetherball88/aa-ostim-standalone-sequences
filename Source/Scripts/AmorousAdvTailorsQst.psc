;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 28
Scriptname AmorousAdvTailorsQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias9
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias9 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias10
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias10 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias11
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias11 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias8
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias8 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias12
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias12 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;stage 35
;--| Give List
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias11.GetReference())
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(35, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Stage 3
;--| black dress
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias8.GetReference())
SetObjectiveCompleted(2, 1)
SetObjectiveDisplayed(3, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;STAGE 31
;--| give Taarie black dress
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(Alias_aAmorousAdvAlias8.GetReference())
If alias_aAmorousAdvAlias8.getReference().IsEnabled()
    alias_aAmorousAdvAlias8.getReference().Disable()
EndIf
;--| List
If alias_aAmorousAdvAlias11.getReference().IsDisabled()
    alias_aAmorousAdvAlias11.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 28
;--| endarie
actor aLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(aLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 29
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(29, 1)
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

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 60
;--| Jordis
actor aLover = Alias_aAmorousAdvAlias4.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(aLover)
SetObjectiveCompleted(55, 1)
SetObjectiveDisplayed(60, 1)
If (aLover.GetRelationshipRank(PlayerRef) < 1)
    aLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(aLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 80
;--| Taarie
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
;--| Start Quest: SexLabAmorousAdventuresElisif
AmorousAdvQuestPointer1.Start()
AmorousAdvQuestPointer1.SetStage(10)
SetObjectiveCompleted(70, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 180
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 55
;--| Lydia
actor aLover = Alias_aAmorousAdvAlias5.GetReference() as Actor
;--| Jordis
actor bLover = Alias_aAmorousAdvAlias4.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(bLover,aLover)
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(55, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 170
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 65
;--| Endarie
actor akEndarie = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akJordis = Alias_aAmorousAdvAlias4.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene4(akJordis,akEndarie)
If (akEndarie.GetRelationshipRank(PlayerRef) < 1)
    akEndarie.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akEndarie)
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(65, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AmorousAdvTailorsQstUtil
Quest __temp = self as Quest
AmorousAdvTailorsQstUtil kmyQuest = __temp as AmorousAdvTailorsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 40 -- Set by reading List
;--| Chest
If alias_aAmorousAdvAlias7.getReference().IsDisabled()
    alias_aAmorousAdvAlias7.getReference().Enable()
EndIf
Alias_aAmorousAdvAlias7.GetReference().AddItem(Gold001,4651)
SetObjectiveCompleted(35, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;stage 50
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;Stage 6
;--| book
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias10.GetReference())
SetObjectiveCompleted(3, 1)
SetObjectiveDisplayed(6, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Stage 70
SetObjectiveCompleted(65, 1)
SetObjectiveDisplayed(70, 1)
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

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Stage 2

SetObjectiveDisplayed(2, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(29, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Stage 9
SetObjectiveCompleted(6, 1)
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
MiscObject Property Gold001 Auto
Quest Property AmorousAdvQuestPointer1 Auto  ;--| SexLabAmorousAdventuresElisif
