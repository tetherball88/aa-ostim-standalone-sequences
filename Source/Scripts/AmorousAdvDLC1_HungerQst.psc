;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname AmorousAdvDLC1_HungerQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1_HungerQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1_HungerQstUtil kmyQuest = __temp as AmorousAdvDLC1_HungerQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 10
kmyQuest.FeedingSerana()
SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
