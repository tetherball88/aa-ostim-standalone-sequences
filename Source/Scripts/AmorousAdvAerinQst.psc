;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 38
Scriptname AmorousAdvAerinQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 20
SetObjectiveCompleted(15, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 67
actor akIllia = Alias_aAmorousAdvAlias6.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akIllia)
SetObjectiveCompleted(65, 1)
SetObjectiveDisplayed(67, 1)
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
akAerin.EvaluatePackage()
actor akIngun = Alias_aAmorousAdvAlias3.GetReference() as Actor
akIngun.EvaluatePackage()
actor akSapphire = Alias_aAmorousAdvAlias4.GetReference() as Actor
akSapphire.EvaluatePackage()
actor akMjoll = Alias_aAmorousAdvAlias2.GetReference() as Actor
akMjoll.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
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

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;Stage 65
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(65, 1)
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
akAerin.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;stage 35
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
akAerin.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;Stage 80
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
SetObjectiveCompleted(75, 1)
SetObjectiveDisplayed(80, 1)
actor akMjoll = Alias_aAmorousAdvAlias2.GetReference() as Actor
akMjoll.EvaluatePackage()
; she walks to slow. I need to be sure she is in the house with beds
Utility.Wait(4)
kmyQuest.TeleportNpcToAerinsHouse(akMjoll)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage100
SetObjectiveCompleted(95, 1)
SetObjectiveDisplayed(100, 1)
;---| Sapphire
actor akLover = Alias_aAmorousAdvAlias4.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Stage 40
SetObjectiveCompleted(34, 1)
SetObjectiveDisplayed(40, 1)
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
akAerin.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 70
actor akLover = Alias_aAmorousAdvAlias6.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 3)
EndIf
kmyQuest.MyNewLover(akLover)

SetObjectiveCompleted(67, 1)
SetObjectiveDisplayed(70, 1)

actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
akAerin.EvaluatePackage()
actor akIngun = Alias_aAmorousAdvAlias3.GetReference() as Actor
akIngun.EvaluatePackage()
actor akSapphire = Alias_aAmorousAdvAlias4.GetReference() as Actor
akSapphire.EvaluatePackage()
actor akMjoll = Alias_aAmorousAdvAlias2.GetReference() as Actor
akMjoll.EvaluatePackage()

kmyQuest.EnterMjollsHouseFaction(PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;STAGE 32
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
actor akMjoll = Alias_aAmorousAdvAlias2.GetReference() as Actor
akMjoll.EvaluatePackage()
akAerin.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 90
SetObjectiveCompleted(85, 1)
SetObjectiveDisplayed(90, 1)
;---| Mjoll
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_34
Function Fragment_34()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 72
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor

kmyQuest.ExitMjollsHouseFaction(akAerin)
kmyQuest.ExitRiftenCrimeFaction(akAerin)
kmyQuest.ExitTownRiftenFaction(akAerin)
kmyQuest.EnterHagFaction(akAerin)

akAerin.EvaluatePackage()

kmyQuest.SpawnSomeHags(akAerin)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 105
actor akIngun = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene4(akIngun)
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(105, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Stage 15
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(15, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 75
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
akAerin.EvaluatePackage()

SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(75, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 95
actor akSapphire = Alias_aAmorousAdvAlias4.GetReference() as Actor
actor akIngun = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akSapphire)
; she walks to slow. I need to be sure she is in the house with beds
Utility.Wait(4)
kmyQuest.TeleportNpcToAerinsHouse(akIngun)
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(95, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;stage 50
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 110
SetObjectiveCompleted(105, 1)
;---| Ingun
actor akLover = Alias_aAmorousAdvAlias3.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;STAGE 31
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;STAGE 34
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(34, 1)
actor akAerin = Alias_aAmorousAdvAlias1.GetReference() as Actor
actor akMjoll = Alias_aAmorousAdvAlias2.GetReference() as Actor
akMjoll.EvaluatePackage()
akAerin.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
;STAGE 400
SetObjectiveCompleted(15, 1)
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN CODE
;Stage 300
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN AUTOCAST TYPE AmorousAdvAerinQstUtil
Quest __temp = self as Quest
AmorousAdvAerinQstUtil kmyQuest = __temp as AmorousAdvAerinQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 85
actor akMjoll = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akSapphire = Alias_aAmorousAdvAlias4.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akMjoll)
; she walks to slow. I need to be sure she is in the house with beds
Utility.Wait(4)
kmyQuest.TeleportNpcToAerinsHouse(akSapphire)
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(85, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto




