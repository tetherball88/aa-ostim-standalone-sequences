;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 42
Scriptname AmorousAdvDLC1MarkQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

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

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias8
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias8 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias9
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias9 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Stage 40
SetObjectiveCompleted(35, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 125
;---| Set by final Ahlam Serana scene
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akAhlam = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene5(akAhlam,akSerana)
akSerana.AddSpell(AbFXSovengardeGlow)
akAhlam.EvaluatePackage()
SetObjectiveCompleted(115, 1)
SetObjectiveDisplayed(125, 1)

If (akAhlam.GetRelationshipRank(PlayerRef) < 1)
    akAhlam.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akAhlam)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 160
;---| Set by selecting only serana 1 on 1
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene8(akSerana)
SetStage(165)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_33
Function Fragment_33()
;BEGIN CODE
;STAGE 140
SetObjectiveCompleted(135, 1)
SetObjectiveDisplayed(140, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 10
;--- Fucked Stage...
SetStage(14)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;STAGE 88
;---| Set from Stage 85
actor akNazeem = Alias_aAmorousAdvAlias4.GetReference() as Actor
akNazeem.Disable()
akNazeem.MoveTo(PlayerRef, 100.0 * Math.Sin(PlayerRef.GetAngleZ() + 180), 100.0 * Math.Cos(PlayerRef.GetAngleZ() + 180), 0)
akNazeem.Enable()
akNazeem.EvaluatePackage()
SetObjectiveCompleted(75, 1)
SetObjectiveDisplayed(88, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
;Stage 95
SetObjectiveCompleted(90, 1)
SetObjectiveDisplayed(95, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_34
Function Fragment_34()
;BEGIN CODE
;STAGE 145
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
akSerana.EvaluatePackage()
SetObjectiveCompleted(140, 1)
SetObjectiveDisplayed(145, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;stage 35
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(35, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 85
;---| Set by Ahlam and Serana Kiss Scene
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akAhlam = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(akSerana,akAhlam)
Utility.Wait(12)
SetStage(88)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;Stage 45
Game.GetPlayer().AddItem(Gold001, 1)
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(45, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 115
actor akAhlam = Alias_aAmorousAdvAlias3.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene4(akAhlam)
SetObjectiveCompleted(110, 1)
SetObjectiveDisplayed(115, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_32
Function Fragment_32()
;BEGIN CODE
;STAGE 135
SetObjectiveCompleted(130, 1)
SetObjectiveDisplayed(135, 1)
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
akSerana.RemoveSpell(AbFXSovengardeGlow)
akSerana.Disable()
akSerana.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_41
Function Fragment_41()
;BEGIN CODE
;STAGE 185
;actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
;akSerana.Disable()
;akSerana.Enable()
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 130
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene6(akSerana)
SetObjectiveCompleted(125, 1)
SetObjectiveDisplayed(130, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_39
Function Fragment_39()
;BEGIN CODE
; STAGE 175
SetObjectiveCompleted(170, 1)
SetObjectiveDisplayed(175, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Stage 50
SetObjectiveCompleted(45, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN CODE
;Stage 110
SetObjectiveCompleted(105, 1)
SetObjectiveDisplayed(110, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;Stage 100
SetObjectiveCompleted(95, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
; STAGE 165
SetObjectiveCompleted(145, 1)
SetObjectiveDisplayed(165, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 155
;---| Set by selecting threesome scene
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor akSenna = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene7(akSenna,akSerana)
SetStage(165)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_40
Function Fragment_40()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 180
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene9(akSerana)
SetObjectiveCompleted(175, 1)
SetObjectiveDisplayed(180, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;Stage 65
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(65, 1)
If alias_aAmorousAdvAlias9.getReference().IsDisabled()
    alias_aAmorousAdvAlias9.getReference().Enable()
EndIf
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
akSerana.RemoveSpell(AbFXSovengardeGlow)
akSerana.Disable()
akSerana.Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 20
SetObjectiveCompleted(15, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_38
Function Fragment_38()
;BEGIN CODE
; STAGE 170
SetObjectiveCompleted(165, 1)
SetObjectiveDisplayed(170, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;Stage 90
SetObjectiveCompleted(88, 1)
SetObjectiveDisplayed(90, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 75
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akSerana)
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(75, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;stage 300
;---| From bad stage 10
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 22
;---| Give player note and Mark items
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias7.GetReference())
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias8.GetReference())
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(22, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;Stage 80
;actor akSerana = Alias_aSerana.GetReference() as Actor
;akSerana.AddSpell(AbFXSovengardeGlow)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE AmorousAdvDLC1MarkQstUtil
Quest __temp = self as Quest
AmorousAdvDLC1MarkQstUtil kmyQuest = __temp as AmorousAdvDLC1MarkQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 60
SetObjectiveCompleted(55, 1)
SetObjectiveDisplayed(60, 1)
actor akSerana = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akSerana)
Utility.Wait(5.0)
akSerana.AddSpell(AbFXSovengardeGlow)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;Stage 55
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(55, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;stage 11
;---| Stage 10 was Fucked by an unintended 
;---| early release of quest.
;---| Try to save players quest.
;actor akFaralda = Alias_aFaralda.GetReference() as Actor
;Alias_aAhlam.Clear()
;Alias_aAhlam.ForceRefTo(Ahlam)
;Alias_aNazeem.ForceRefTo(Nazeem)
;Alias_aMarkAhlam.ForceRefTo(AmorousAdvMarkDibellaAhlam)
;Alias_aNoteAhlam.ForceRefTo(AmorousAdvDLC1_MarkAhlamNote)
;Alias_aStatueAnsilvund.ForceRefTo(AmorousAdvDLC1MarkStatueDibellaAnsilvund)

;Alias_aHoldingChest.GetReference().AddItem(Alias_aNoteAhlam.GetReference())
;Alias_aHoldingChest.GetReference().AddItem(Alias_aMarkAhlam.GetReference())

SetStage(14)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Stage 15
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(15, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(25, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 25
SetObjectiveCompleted(22, 1)
SetObjectiveDisplayed(25, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;STAGE 14
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
;Stage 105
SetObjectiveCompleted(100, 1)
SetObjectiveDisplayed(105, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Stage 70
SetObjectiveCompleted(65, 1)
SetObjectiveDisplayed(70, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001 Auto
Actor Property PlayerRef Auto
Spell Property AbFXSovengardeGlow Auto

;---EffectShader Property SovengardeFXS Auto
;---Actor Property Ahlam Auto
;---Actor Property Nazeem Auto
;---ObjectReference Property AmorousAdvDLC1_MarkAhlamNote Auto
;---ObjectReference Property AmorousAdvDLC1MarkStatueDibellaAnsilvund Auto
;---ObjectReference Property AmorousAdvMarkDibellaAhlam Auto

