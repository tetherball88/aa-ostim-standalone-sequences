Scriptname AmorousAdvCounselingQstUtil extends Quest  Conditional


;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction


Function AnimateSoloLover(actor aLover)

	Debug.Trace("AnimateMyLover: Solo ")

	
EndFunction

Function AnimateOralSigrid(actor aLover)

	Debug.Trace("AnimateMyLover: Oral Sigrid")

		
EndFunction


Function AnimateAlvorLover(actor aLover)

	Debug.Trace("AnimateMyLover: Alvor ")


		
EndFunction

Function AnimateQuintusLover(actor aLover)

	Debug.Trace("AnimateMyLover: Quintus ")


		
EndFunction

Function AnimateMyThreesome(actor aLover, actor bLover)



EndFunction



Actor Property PlayerRef Auto
Message Property SexOptsFems  Auto
Message Property SexOpts  Auto
Faction Property AmorAdvLoverFaction Auto
