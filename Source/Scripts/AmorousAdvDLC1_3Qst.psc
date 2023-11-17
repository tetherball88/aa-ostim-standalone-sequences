;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname AmorousAdvDLC1_3Qst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_3QstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_3QstUtil kmyQuest = __temp as AmorousAdvDLC1_3QstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 50
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;STAGE 60 - laboratory complete

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(50)
SexLabAmorousAdventuresDLC1_Main.SetStage(30)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_3QstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_3QstUtil kmyQuest = __temp as AmorousAdvDLC1_3QstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 30
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 5
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;STAGE 10 - First dialogue completed

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 40 - garden complete

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(40)
SexLabAmorousAdventuresDLC1_Main.SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property SexLabAmorousAdventuresDLC1_Main Auto
