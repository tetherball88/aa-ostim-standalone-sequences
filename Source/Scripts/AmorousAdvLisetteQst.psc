;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 27
Scriptname AmorousAdvLisetteQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;stage 50
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Stage 90
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(90, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Stage 80
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(80, 1)
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
akLisette.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN AUTOCAST TYPE AmorousAdvLisetteQstUtil
Quest __temp = self as Quest
AmorousAdvLisetteQstUtil kmyQuest = __temp as AmorousAdvLisetteQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 105
kmyQuest.StopSongQuests()
kmyQuest.StopAllBardScenes()
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
akLisette.EvaluatePackage()
kmyQuest.StartSongQuests()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 40
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
akLisette.EvaluatePackage()
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Stage 120
SetObjectiveCompleted(110, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE AmorousAdvLisetteQstUtil
Quest __temp = self as Quest
AmorousAdvLisetteQstUtil kmyQuest = __temp as AmorousAdvLisetteQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 75
actor akIlldi = Alias_aAmorousAdvAlias4.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akIlldi)
Utility.Wait(5)
akIlldi.EvaluatePackage()
kmyQuest.MyNewLover(akIlldi)
If (akIlldi.GetRelationshipRank(PlayerRef) < 1)
    akIlldi.SetRelationshipRank(PlayerRef, 1)
EndIf
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.StopAllBardScenes()
akLisette.MoveTo(Alias_aAmorousAdvAlias6.GetReference())
akLisette.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 20
actor akErikur = Alias_aAmorousAdvAlias2.GetReference() as Actor
akErikur.EvaluatePackage()
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
akLisette.EvaluatePackage()
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE AmorousAdvLisetteQstUtil
Quest __temp = self as Quest
AmorousAdvLisetteQstUtil kmyQuest = __temp as AmorousAdvLisetteQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 100
actor akPantea = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.MyNewLover(akPantea)
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
;Stage 1
SetObjectiveDisplayed(1, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE AmorousAdvLisetteQstUtil
Quest __temp = self as Quest
AmorousAdvLisetteQstUtil kmyQuest = __temp as AmorousAdvLisetteQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 5
kmyQuest.StopSongQuests()
kmyQuest.StopAllBardScenes()
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
akLisette.EvaluatePackage()
kmyQuest.StartSongQuests()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN AUTOCAST TYPE AmorousAdvLisetteQstUtil
Quest __temp = self as Quest
AmorousAdvLisetteQstUtil kmyQuest = __temp as AmorousAdvLisetteQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 110
SetObjectiveCompleted(100, 1)
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akLisette)
kmyQuest.MyNewLover(akLisette)
If (akLisette.GetRelationshipRank(PlayerRef) < 1)
    akLisette.SetRelationshipRank(PlayerRef, 1)
EndIf
SetObjectiveDisplayed(110, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE AmorousAdvLisetteQstUtil
Quest __temp = self as Quest
AmorousAdvLisetteQstUtil kmyQuest = __temp as AmorousAdvLisetteQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 30
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
akLisette.EvaluatePackage()
actor akErikur = Alias_aAmorousAdvAlias2.GetReference() as Actor
akErikur.EvaluatePackage()
kmyQuest.ExitBardAudienceExcludedFaction(akErikur)
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AmorousAdvLisetteQstUtil
Quest __temp = self as Quest
AmorousAdvLisetteQstUtil kmyQuest = __temp as AmorousAdvLisetteQstUtil
;END AUTOCAST
;BEGIN CODE
;stage 10
actor akLisette = Alias_aAmorousAdvAlias1.GetReference() as Actor
actor akErikur = Alias_aAmorousAdvAlias2.GetReference() as Actor
akErikur.Disable()
akErikur.MoveTo(Alias_aAmorousAdvAlias5.GetReference())
akErikur.Enable()
kmyQuest.EnterBardAudienceExcludedFaction(akErikur)
akErikur.EvaluatePackage()

SetObjectiveCompleted(1, 1)
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;stage 70
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
actor akIlldi = Alias_aAmorousAdvAlias4.GetReference() as Actor
akIlldi.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto

