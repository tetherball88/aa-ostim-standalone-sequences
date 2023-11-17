;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname AmorousAdvCarlottaQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias8
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias8 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Stage 100

SetObjectiveCompleted(90, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Stage 80

SetObjectiveCompleted(70, 1)
SetObjectiveCompleted(75, 1)
SetObjectiveDisplayed(80, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE AmorousAdvCarlottaQstUtil
Quest __temp = self as Quest
AmorousAdvCarlottaQstUtil kmyQuest = __temp as AmorousAdvCarlottaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 90
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
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

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Stage 75
actor akCarlotta = Alias_aAmorousAdvAlias1.GetReference() as Actor
akCarlotta.EvaluatePackage()
actor akMila = Alias_aAmorousAdvAlias2.GetReference() as Actor
akMila.EvaluatePackage()
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(75, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 40
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias6.GetReference())
If alias_aAmorousAdvAlias5.getReference().IsDisabled()
    alias_aAmorousAdvAlias5.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;Stage 20
actor akMila = Alias_aAmorousAdvAlias2.GetReference() as Actor
akMila.EvaluatePackage()
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;stage 70
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
actor akMila = Alias_aAmorousAdvAlias2.GetReference() as Actor
If (akMila.GetRelationshipRank(PlayerRef) < 1)
    akMila.SetRelationshipRank(PlayerRef, 1)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 50
If alias_aAmorousAdvAlias4.getReference().IsDisabled()
    alias_aAmorousAdvAlias4.getReference().Enable()
EndIf
;-- set by getting journal
;SetObjectiveCompleted(40, 1)
;SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef Auto
