;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname AmorousAdvDLC1_4Qst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;STAGE 5
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;STAGE 70 --- Final talk with Serana completed

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(100)
SexLabAmorousAdventuresDLC1_Main.SetStage(40)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;STAGE 40 --- Talk with Serana complete

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(80)
SexLabAmorousAdventuresDLC1_Main.SetObjectiveDisplayed(90)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 10 --- Opening Dialogue Complete

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_4QstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_4QstUtil kmyQuest = __temp as AmorousAdvDLC1_4QstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 50
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_4QstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_4QstUtil kmyQuest = __temp as AmorousAdvDLC1_4QstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 60 --- All Valerica completed

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(90)
SexLabAmorousAdventuresDLC1_Main.SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_4QstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_4QstUtil kmyQuest = __temp as AmorousAdvDLC1_4QstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 45
;--- Player chose to make love to Valerica
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetStage(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;STAGE 20 --- Retrieved Elder Scroll first dialogue complete

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(70)
SexLabAmorousAdventuresDLC1_Main.SetObjectiveDisplayed(80)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property SexLabAmorousAdventuresDLC1_Main Auto
Actor Property PlayerRef Auto

