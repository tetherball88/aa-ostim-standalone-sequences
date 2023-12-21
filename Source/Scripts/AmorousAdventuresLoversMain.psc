Scriptname AmorousAdventuresLoversMain extends Quest Conditional

Int Property LoversCount = 0 auto
Int Property PotentialLoversCount = 0 auto

Event OnInit()

	PlayerRef.AddToFaction(AmorAdvPlayersLoversCountFaction)
	PlayerRef.SetFactionRank(AmorAdvPlayersLoversCountFaction, 0)
	SexLabAmorousAdventuresLovers.SetStage(1)

EndEvent

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)

	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

Function MyUniqueLover(actor aLover)

	aLover.AddToFaction(AmorAdvUniqueLoverFaction)
	aLover.SetFactionRank(AmorAdvUniqueLoverFaction, 1)
EndFunction

Function MyBreakUp(actor aLover)
	RemoveMyLover(aLover,False)
	aLover.RemoveFromFaction(AmorAdvLoverFaction)
	aLover.RemoveFromFaction(AmorAdvUniqueLoverFaction)
EndFunction

;========[ Alias Functions ]=====================

Function AddMyLover(actor aLover)

	int iRank = PlayerRef.GetFactionRank(AmorAdvPlayersLoversCountFaction)
	If (iRank < 0)
		Debug.Trace("AddMyLover: AmorAdvPlayersLoversCountFaction is " + iRank + " Set to 0")
		PlayerRef.SetFactionRank(AmorAdvPlayersLoversCountFaction, 0)
		iRank = PlayerRef.GetFactionRank(AmorAdvPlayersLoversCountFaction)
	EndIf
	If (iRank == 0)
		PlayerRef.SetFactionRank(AmorAdvPlayersLoversCountFaction, 1)
		aLover.AddToFaction(AmorAdvCurrentLoversFaction)
		MyLover1.ForceRefTo(aLover)
		AmorAdvLoverFollowsMSG.Show()
		;--| Debug.Trace("AddMyLover: " + aLover.GetLeveledActorBase().GetName() + " Added! AmorAdvPlayersLoversCountFaction is " + iRank)
	ElseIf (iRank == 1)
		PlayerRef.SetFactionRank(AmorAdvPlayersLoversCountFaction, 2)
		aLover.AddToFaction(AmorAdvCurrentLoversFaction)
		MyLover2.ForceRefTo(aLover)
		;--| Debug.Trace("AddMyLover: " + aLover.GetLeveledActorBase().GetName() + " Added! AmorAdvPlayersLoversCountFaction is " + iRank)
		AmorAdvLoverFollowsMSG.Show()
	Else
		;--| Debug.Trace("AddMyLover: " + aLover.GetLeveledActorBase().GetName() + " Not added. AmorAdvPlayersLoversCountFaction is " + iRank)
	EndIf
EndFunction

Function RemoveMyLover(actor aLover, bool HadSex)

	actor akSwap
	int iLoversRank
	int iRank = PlayerRef.GetFactionRank(AmorAdvPlayersLoversCountFaction)

	If aLover.IsInFaction(AmorAdvCurrentLoversFaction)
		;--| Debug.Trace("RemoveMyLover: " + aLover.GetLeveledActorBase().GetName() + " IS IN AmorAdvCurrentLoversFaction")
		iRank -= 1
		aLover.RemoveFromFaction(AmorAdvCurrentLoversFaction)
		PlayerRef.SetFactionRank(AmorAdvPlayersLoversCountFaction, iRank)
		;--| Debug.Trace("RemoveMyLover: AmorAdvPlayersLoversCountFaction is now " + iRank)
		AmorAdvLoverStopsFollowMSG.Show()
	EndIf

	If (HadSex)
		If (aLover.IsInFaction(AmorAdvLoverFaction))
			iLoversRank = aLover.GetFactionRank(AmorAdvLoverFaction)
			iLoversRank += 1
			aLover.SetFactionRank(AmorAdvLoverFaction, iLoversRank)
			;--| Debug.Trace("RemoveMyLover: " + aLover.GetLeveledActorBase().GetName() + " Lover Rank is " + iLoversRank)
			If (iLoversRank >= 5)
				Int d25 = Utility.RandomInt(1,25)
				If (d25 < iLoversRank )
					If (aLover.GetRelationshipRank(PlayerRef) < 3)
						aLover.SetRelationshipRank(PlayerRef, 3)
						aLover.AddToFaction(PotentialFollowersFaction)
						AmorAdvDispositionImpMSG.Show()
						;--| Debug.Trace("Lover " + aLover.GetLeveledActorBase().GetName() + " Lovers disposition improves towards you")
					EndIf
				EndIf
			EndIf
		EndIf
	EndIf

	If (aLover == MyLover2.GetRef())
		MyLover2.Clear()
	EndIf
	If (aLover == MyLover1.GetRef())
		If (iRank > 0)
			MyLover1.Clear()
			akSwap = MyLover2.GetRef() as actor
			MyLover2.Clear()
			MyLover1.ForceRefTo(akSwap)
		Else
			MyLover1.Clear()
		EndIf
	EndIf
	aLover.EvaluatePackage()
EndFunction

;========[ LOVER Functions ]=====================

Function SetLoverEssential(actor aLover)

	int essentialChoice = 0

	If(aLover == DanicaPureSpring)
		If(AmorousAdventuresLoverEssentialDanica.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialDanica.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialDanica.Start()
			EndIf
		EndIf

	ElseIf(aLover == CamillaValerius)
		If(AmorousAdventuresLoverEssentialCamilla.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialCamilla.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialCamilla.Start()
			EndIf
		EndIf

	ElseIf(aLover == Endarie)
		If(AmorousAdventuresLoverEssentialEndarie.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialEndarie.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialEndarie.Start()
			EndIf
		EndIf

	ElseIf(aLover == Farkas)
		If(AmorousAdventuresLoverEssentialFarkas.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialFarkas.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialFarkas.Start()
			EndIf
		EndIf

	ElseIf(aLover == Illdi)
		If(AmorousAdventuresLoverEssentialIlldi.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialIlldi.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialIlldi.Start()
			EndIf
		EndIf

	ElseIf(aLover == Ingun)
		If(AmorousAdventuresLoverEssentialIngun.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialIngun.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialIngun.Start()
			EndIf
		EndIf

	ElseIf(aLover == NjadaStonearm)
		If(AmorousAdventuresLoverEssentialNjada.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialNjada.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialNjada.Start()
			EndIf
		EndIf

	ElseIf(aLover == PanteaAteia)
		If(AmorousAdventuresLoverEssentialPantea.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialPantea.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialPantea.Start()
			EndIf
		EndIf

	ElseIf(aLover == Sapphire)
		If(AmorousAdventuresLoverEssentialSapphire.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSapphire.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSapphire.Start()
			EndIf
		EndIf

	ElseIf(aLover == Senna)
		If(AmorousAdventuresLoverEssentialSenna.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSenna.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSenna.Start()
			EndIf
		EndIf

	ElseIf(aLover == SybilleStentor)
		If(AmorousAdventuresLoverEssentialSybille.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSybille.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSybille.Start()
			EndIf
		EndIf

	ElseIf(aLover == Sylgja)
		If(AmorousAdventuresLoverEssentialSylgja.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSylgja.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialSylgja.Start()
			EndIf
		EndIf

	ElseIf(aLover == Taarie)
		If(AmorousAdventuresLoverEssentialTaarie.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialTaarie.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialTaarie.Start()
			EndIf
		EndIf

	ElseIf(aLover == Vilkas)
		If(AmorousAdventuresLoverEssentialVilkas.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialVilkas.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialVilkas.Start()
			EndIf
		EndIf

	ElseIf(aLover == Adelaisa)
		If(AmorousAdventuresLoverEssentialAdelaisa.IsRunning())
			essentialChoice = AmorAdvSetEssentialFalse.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialAdelaisa.Stop()
			EndIf
		Else
			essentialChoice = AmorAdvSetEssentialTrue.Show()
			If (essentialChoice == 0)
				AmorousAdventuresLoverEssentialAdelaisa.Start()
			EndIf
		EndIf
	Else
		AmorAdvSetEssentialNoAction.Show()
	EndIf

EndFunction

;========[ Animate Functions ]=====================
Function AnimateMyLover(actor aLover, int sexType)

	Debug.Trace("Amorous Adventures: AnimateMyLover: Type: " + sexType)
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorAdvLoveHappensMSG.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------
	If (sexType == 1)
		Util.StartMissionaryScene(PlayerRef, aLover)
	ElseIf (sexType == 2)
		Util.StartAnalScene(PlayerRef, aLover)
	ElseIf (sexType == 0)
		Util.StartOralScene(PlayerRef, aLover, true)
	Else
		Util.StartNomalScene(PlayerRef, aLover)
	EndIf

;---| END ANIMATION CODE |------

EndFunction

Function AnimateMyFriends()

	Debug.Trace("Amorous Adventures: AnimateMyLovers ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorAdvLoveHappensMSG.Show()
	EndIf

	Actor aLover = MyLover1.GetRef() as actor
	Actor bLover = MyLover2.GetRef() as actor

;---| BEGIN ANIMATION CODE |------

	;--| Two NPC's knock boots
	Util.StartNPCScene(aLover, bLover)

;---| END ANIMATION CODE |------

	RemoveMyLover(bLover, True)
	RemoveMyLover(aLover, True)

EndFunction

Function AnimateMyWalkUpFriends(actor aLover)

	Debug.Trace("Amorous Adventures: AnimateMyLovers ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorAdvLoveHappensMSG.Show()
	EndIf

	Actor bLover = MyLover1.GetRef() as actor

;---| BEGIN ANIMATION CODE |------

	;--| Two NPC's knock boots
	Util.StartNPCScene(aLover, bLover)

;---| END ANIMATION CODE |------

	RemoveMyLover(aLover, True)

EndFunction

Function AnimateThreesome()

	Debug.Trace("Amorous Adventures: AnimateMyLover: threesome ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorAdvLoveHappensMSG.Show()
	EndIf

	Actor aLover = MyLover1.GetRef() as actor
	Actor bLover = MyLover2.GetRef() as actor

;---| BEGIN ANIMATION CODE |------

	;--| threesome with the player
	Util.StartThreesomeScene(PlayerRef, aLover, bLover)

;---| END ANIMATION CODE |------

	RemoveMyLover(bLover, True)
	RemoveMyLover(aLover, True)

EndFunction

Function AnimateWalkUpThreesome(actor aLover)

	Debug.Trace("Amorous Adventures: AnimateMyLover: threesome ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorAdvLoveHappensMSG.Show()
	EndIf

	Actor bLover = MyLover1.GetRef() as actor

;---| BEGIN ANIMATION CODE |------

	;--| threesome with the player
	Util.StartThreesomeScene(PlayerRef, aLover, bLover)

;---| END ANIMATION CODE |------

	RemoveMyLover(bLover, True)
	RemoveMyLover(aLover, True)

EndFunction

Function AnimateSoloLover(actor aLover)

	Debug.Trace("AnimateMyLover: solo ")

;---| BEGIN ANIMATION CODE |------

	;--| The NPC masturbates
	Util.StartMasturbationScene(PlayerRef, aLover)

	RemoveMyLover(aLover, True)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateKissMyLover(actor aLover)

	Debug.Trace("AnimateMyLover: Kiss ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorAdvLoveHappensMSG.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| Just a kiss only...
	Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

;========[ PROPERTIES ]=====================

Package Property AmorousAdventuresLoverFollow  Auto
Faction Property AmorAdvCurrentLoversFaction  Auto
Faction Property AmorAdvLoverFaction Auto
Faction Property AmorAdvPlayersLoversCountFaction Auto
Faction Property AmorAdvUniqueLoverFaction Auto
Faction Property PotentialFollowersFaction Auto

ReferenceAlias Property MyLover1 Auto
ReferenceAlias Property MyLover2 Auto

Message Property AmorAdvDispositionImpMSG Auto
Message Property AmorAdvLoverFollowsMSG Auto
Message Property AmorAdvLoverStopsFollowMSG Auto
Message Property AmorousAdvLoveMeNotMsg Auto
Message Property AmorAdvSetEssentialFalse Auto
Message Property AmorAdvSetEssentialTrue Auto
Message Property AmorAdvSetEssentialNoAction Auto
Message Property AmorAdvLoveHappensMSG Auto
GlobalVariable Property AmorousAdvUseBlackScreens Auto

Quest Property SexLabAmorousAdventuresLovers Auto
Quest Property AmorousAdventuresLoverEssentialCamilla Auto
Quest Property AmorousAdventuresLoverEssentialDanica Auto
Quest Property AmorousAdventuresLoverEssentialEndarie Auto
Quest Property AmorousAdventuresLoverEssentialFarkas Auto
Quest Property AmorousAdventuresLoverEssentialIlldi Auto
Quest Property AmorousAdventuresLoverEssentialIngun Auto
Quest Property AmorousAdventuresLoverEssentialNjada Auto
Quest Property AmorousAdventuresLoverEssentialPantea Auto
Quest Property AmorousAdventuresLoverEssentialSapphire Auto
Quest Property AmorousAdventuresLoverEssentialSenna Auto
Quest Property AmorousAdventuresLoverEssentialSybille Auto
Quest Property AmorousAdventuresLoverEssentialSylgja Auto
Quest Property AmorousAdventuresLoverEssentialTaarie Auto
Quest Property AmorousAdventuresLoverEssentialVilkas Auto
Quest Property AmorousAdventuresLoverEssentialAdelaisa Auto

Actor Property DanicaPureSpring Auto
Actor Property CamillaValerius Auto
Actor Property Endarie Auto
Actor Property Farkas Auto
Actor Property Illdi Auto
Actor Property Ingun Auto
Actor Property NjadaStonearm Auto
Actor Property PanteaAteia Auto
Actor Property Sapphire Auto
Actor Property Senna Auto
Actor Property SybilleStentor Auto
Actor Property Sylgja Auto
Actor Property Taarie Auto
Actor Property Vilkas Auto
Actor Property Adelaisa Auto
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
