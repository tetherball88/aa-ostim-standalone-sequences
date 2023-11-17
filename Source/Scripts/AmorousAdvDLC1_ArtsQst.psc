;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 16
Scriptname AmorousAdvDLC1_ArtsQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 5

kmyQuest.FeedingInitialize()
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 40 --- Lesson 2 complete

kmyQuest.FeedingSerana()
SetObjectiveCompleted(30)
SetObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 54 ---lesson 4 Art
actor akSerana = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene6(akSerana)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 44 ---lesson 3 Art
actor akSerana = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene5(akSerana)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 24 --- lesson 1 Art
actor akSerana = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akSerana)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 20 --- First dialogue complete

kmyQuest.FeedingSerana()
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 50 --- Lesson 3 complete
kmyQuest.FeedingSerana()
SetObjectiveCompleted(40)
SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 30 --- Lesson 1 complete
actor akSerana = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akSerana)
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
kmyQuest.FeedingSerana()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 34 --- Lesson 2 Art
actor akSerana = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene4(akSerana)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_ArtsQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_ArtsQstUtil kmyQuest = __temp as AmorousAdvDLC1_ArtsQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 60 --- Lesson 4 complete
kmyQuest.FeedingSerana()
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(50)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 10

SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
