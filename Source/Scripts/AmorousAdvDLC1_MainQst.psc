;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname AmorousAdvDLC1_MainQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 5
SexLabAmorousAdventuresDLC1_2.Start()
SexLabAmorousAdventuresDLC1_2.SetStage(5)
SexLabAmorousAdventuresDLC1_3.Start()
SexLabAmorousAdventuresDLC1_3.SetStage(5)
SexLabAmorousAdventuresDLC1_4.Start()
SexLabAmorousAdventuresDLC1_4.SetStage(5)
SexLabAmorousAdventuresDLC1_5.Start()
SexLabAmorousAdventuresDLC1_5.SetStage(5)

SetStage(10)

SexLabAmorousAdventuresDLC1_6.Start()
SexLabAmorousAdventuresDLC1_6.SetStage(5)
SexLabAmorousAdventuresDLC1_7.Start()
SexLabAmorousAdventuresDLC1_7.SetStage(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 10 -- Prophet

SetObjectiveDisplayed(20)
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;STAGE 30 --- Beyond Death

SetObjectiveDisplayed(70)
SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;STAGE 70 --- Dawnguard is complete

SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;STAGE 20 --- Chasing Echoes

SetObjectiveDisplayed(40)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;STAGE 60 --- Kindred Judgement

;SetObjectiveDisplayed(130)

;-- Not implemented. Close it down.
SexLabAmorousAdventuresDLC1_7.Stop()

SetStage(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 40 --- Unseen Visions

SetObjectiveDisplayed(110)
SexLabAmorousAdventuresDLC1_Hunger.Start()
SexLabAmorousAdventuresDLC1_Hunger.SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;STAGE 50 --- Touching The Sky

;SetObjectiveDisplayed(120)

;-- Not implemented. Close it down.
SexLabAmorousAdventuresDLC1_6.Stop()

SetStage(60)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property SexLabAmorousAdventuresDLC1_2 Auto
Quest Property SexLabAmorousAdventuresDLC1_3 Auto
Quest Property SexLabAmorousAdventuresDLC1_4 Auto
Quest Property SexLabAmorousAdventuresDLC1_5 Auto
Quest Property SexLabAmorousAdventuresDLC1_6 Auto
Quest Property SexLabAmorousAdventuresDLC1_7 Auto
Quest Property SexLabAmorousAdventuresDLC1_Hunger Auto

