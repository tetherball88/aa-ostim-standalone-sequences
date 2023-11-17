;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname AmorousAdvElisifQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias10
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias10 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias11
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias11 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias14
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias14 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias12
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias12 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias13
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias13 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias9
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias9 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias8
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias8 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;stage 200
If alias_aAmorousAdvAlias13.getReference().IsEnabled()
    alias_aAmorousAdvAlias13.getReference().Disable()
EndIf
If (AmorousAdvQuestPointer1.IsRunning())
    AmorousAdvQuestPointer1.Stop()
EndIf
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AmorousAdvElisifQstUtil
Quest __temp = self as Quest
AmorousAdvElisifQstUtil kmyQuest = __temp as AmorousAdvElisifQstUtil
;END AUTOCAST
;BEGIN CODE
;stage 70
SetObjectiveCompleted(60, 1)
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 20
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias11.GetReference())
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
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

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)

actor akLisette = Alias_aAmorousAdvAlias10.GetReference() as Actor
actor akFreier = Alias_aAmorousAdvAlias7.GetReference() as Actor
actor akSilana = Alias_aAmorousAdvAlias9.GetReference() as Actor
actor akRorlund = Alias_aAmorousAdvAlias8.GetReference() as Actor

akLisette.MoveTo(Alias_aAmorousAdvAlias14.GetReference())
akLisette.EvaluatePackage()
akSilana.MoveTo(Alias_aAmorousAdvAlias14.GetReference())
akSilana.EvaluatePackage()
akFreier.MoveTo(Alias_aAmorousAdvAlias14.GetReference())
akFreier.EvaluatePackage()
akRorlund.MoveTo(Alias_aAmorousAdvAlias14.GetReference())
akRorlund.EvaluatePackage()

actor akBryling = Alias_aAmorousAdvAlias3.GetReference() as Actor
actor akErikur = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akSybille = Alias_aAmorousAdvAlias5.GetReference() as Actor
actor akFalk = Alias_aAmorousAdvAlias4.GetReference() as Actor
akBryling.EvaluatePackage()
akErikur.EvaluatePackage()
akSybille.EvaluatePackage()
akFalk.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 40
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(Alias_aAmorousAdvAlias11.GetReference())
If alias_aAmorousAdvAlias13.getReference().IsDisabled()
    alias_aAmorousAdvAlias13.getReference().Enable()
EndIf
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
Alias_aAmorousAdvAlias1.GetActorReference().UnequipAll()
Alias_aAmorousAdvAlias1.GetActorReference().EquipItem(AmorousAdvWhiteWeddingDress, true)
actor akElisif = Alias_aAmorousAdvAlias1.GetReference() as Actor
akElisif.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Stage 50
Alias_aAmorousAdvAlias1.GetActorReference().UnequipItem(AmorousAdvWhiteWeddingDress)
Alias_aAmorousAdvAlias1.GetActorReference().UnequipAll()
Alias_aAmorousAdvAlias1.GetActorReference().EquipItem(AmorousAdvWhiteWeddingDress, false)
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Armor Property AmorousAdvWhiteWeddingDress Auto
Actor Property PlayerRef Auto
Quest Property AmorousAdvQuestPointer1 Auto  ;---| AmorousAdventuresQuestSaverSolitude
