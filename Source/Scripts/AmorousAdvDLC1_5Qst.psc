;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname AmorousAdvDLC1_5Qst Extends Quest Hidden

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

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;STAGE 30 --- completed second dialogue in Ancestor Glade

SexLabAmorousAdventuresDLC1_Main.SetObjectiveCompleted(110)
SexLabAmorousAdventuresDLC1_Main.SetStage(50)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_5QstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_5QstUtil kmyQuest = __temp as AmorousAdvDLC1_5QstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 10 --- Completed first dialogue in Ancestor Glade
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
AmorousAdvQuestPointer1.Stop()
AmorousAdvQuestPointer2.Start()
AmorousAdvQuestPointer2.SetStage(5)
SetStage(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property SexLabAmorousAdventuresDLC1_Main Auto
Quest Property AmorousAdvQuestPointer1 Auto  ;--|  SexLabAmorousAdventuresDLC1_Hunger
Quest Property AmorousAdvQuestPointer2 Auto  ;--|  SexLabAmorousAdventuresDLC1_Arts

