;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 24
Scriptname AmorousAdvSteelQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;Stage 10
SetObjectiveDisplayed(10)
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
;BEGIN AUTOCAST TYPE AmorousAdvSteelQstUtil
Quest __temp = self as Quest
AmorousAdvSteelQstUtil kmyQuest = __temp as AmorousAdvSteelQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 110
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(110, 1)
;--| Lydia
kmyQuest.MyNewLover(Alias_aAmorousAdvAlias1.GetReference() as Actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE AmorousAdvSteelQstUtil
Quest __temp = self as Quest
AmorousAdvSteelQstUtil kmyQuest = __temp as AmorousAdvSteelQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 80
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 40 -- from reading note
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;stage 70
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;Stage 120
SetObjectiveCompleted(110, 1)
SetObjectiveDisplayed(120, 1)
;--| give ore to Adrianne
Alias_aAmorousAdvAlias2.GetActorReference().AddItem(Alias_aAmorousAdvAlias6.GetReference())
;--| armor up Lydia
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(ArmorEbonyBoots,1)
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(ArmorEbonyCuirass,1)
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(ArmorEbonyGauntlets,1)
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(ArmorEbonyHelmet,1)
;Alias_aAmorousAdvAlias1.GetActorReference().AddItem(ArmorEbonyShield,1)
;--| put ore in chest
Alias_aAmorousAdvAlias4.GetReference().AddItem(Alias_aAmorousAdvAlias6.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN AUTOCAST TYPE AmorousAdvSteelQstUtil
Quest __temp = self as Quest
AmorousAdvSteelQstUtil kmyQuest = __temp as AmorousAdvSteelQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 130
SetObjectiveCompleted(120, 1)
SetObjectiveDisplayed(130, 1)
;--| Adrianne
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
;Stage 20
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;Stage 140
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE AmorousAdvSteelQstUtil
Quest __temp = self as Quest
AmorousAdvSteelQstUtil kmyQuest = __temp as AmorousAdvSteelQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 100
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akLover)
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 15
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(15, 1)
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

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 30
;--| give note
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias5.GetReference())
SetObjectiveCompleted(15, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;Stage 300
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;stage 60
;--| give Annekke note
Alias_aAmorousAdvAlias3.GetActorReference().AddItem(Alias_aAmorousAdvAlias5.GetReference())
;--| give player ore
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias6.GetReference())
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
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

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Armor Property ArmorEbonyBoots Auto
Armor Property ArmorEbonyCuirass Auto
Armor Property ArmorEbonyGauntlets Auto
Armor Property ArmorEbonyHelmet Auto
Armor Property ArmorEbonyShield Auto
MiscObject Property Gold001 Auto
Actor Property PlayerRef Auto

