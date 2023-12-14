Scriptname AmorousAdvDLC1MarkQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

Function AnimateAmorousAdvLoveScene1 (actor aLover)

	;---| STORYBOARD DISPLAY --- FROM STAGE 60
	Debug.Trace("Amorous Adventures: AnimateMyLover: Serana ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard1.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| Player and serana make love
	Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_mark_anywhere_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

	;---| STORYBOARD DISPLAY --- FROM STAGE 75 - Ansilvund
	Debug.Trace("Amorous Adventures: AnimateMyLover: Serana First Art ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard2.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| Player and serana make love
	
	Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_mark_ansilvund_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover, actor bLover)

	;---| STORYBOARD DISPLAY
	Debug.Trace("AnimateMyLover: Ahlam and Serana Kiss ")

	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard3.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| NPC's Serana and Ahlam kiss each other
	Util.StartKissingScene(aLover, bLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover)

	;---| STORYBOARD DISPLAY
	Debug.Trace("AnimateMyLover: Ahlam Third Art ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard4.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| Player gives Ahlam anal
	;--| This should be an Anal only scene
	Util.StartUniqueSequence(PlayerRef, aLover, "amor_ahlam_mark_anywhere_anal", theme = "anal")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene5 (actor aLover, actor bLover)

	;---| STORYBOARD DISPLAY
	Debug.Trace("Amorous Adventures: AnimateMyLover: Ahlam and Serana ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard5.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| Scene between Ahlam and Serana - player watches
	; aLover - Ahlam
	; bLover - Serana
	; usually first actor is dom so place bLover(Serana) before aLover(Ahlam)
	Util.StartUniqueSequence(bLover, aLover, "amor_serana_ahlam_mark_anywhere_lesbian")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene6 (actor aLover)

	;---| STORYBOARD DISPLAY
	Debug.Trace("Amorous Adventures: AnimateMyLover: Serana ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard6.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| Player and Serana make love
	Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_mark_anywhere2_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene7 (actor aLover, actor bLover)

	;---| STORYBOARD DISPLAY -- Serana and Senna threesome
	Debug.Trace("Amorous Adventures: AnimateMyLover: Serana and Senna threesome ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard7.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| Threesome between Senna, Serana and Player
	Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_senna_mark_temple_of_dibella_threesome_chair", "chair", bLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene8 (actor aLover)

	;---| STORYBOARD DISPLAY
	Debug.Trace("Amorous Adventures: AnimateMyLover: Serana ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard8.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| player makes love with Serana
	Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_mark_temple_of_dibella_chair", "chair")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene9 (actor aLover)

	;---| STORYBOARD DISPLAY
	Debug.Trace("Amorous Adventures: AnimateMyLover: Serana ")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
		AmorousAdvStoryBoard9.Show()
	EndIf

;---| BEGIN ANIMATION CODE |------

	;--| player makes love with Serana
	Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_mark_anywhere_final_regular")

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgDLC1_Mark1
Message Property AmorousAdvStoryBoard2 Auto ;--| AmorousAdvSexMsgDLC1_Mark2
Message Property AmorousAdvStoryBoard3 Auto ;--| AmorousAdvSexMsgDLC1_Mark3
Message Property AmorousAdvStoryBoard4 Auto ;--| AmorousAdvSexMsgDLC1_Mark4
Message Property AmorousAdvStoryBoard5 Auto ;--| AmorousAdvSexMsgDLC1_Mark5
Message Property AmorousAdvStoryBoard6 Auto ;--| AmorousAdvSexMsgDLC1_Mark6
Message Property AmorousAdvStoryBoard7 Auto ;--| AmorousAdvSexMsgDLC1_Mark7
Message Property AmorousAdvStoryBoard8 Auto ;--| AmorousAdvSexMsgDLC1_Mark8
Message Property AmorousAdvStoryBoard9 Auto ;--| AmorousAdvSexMsgDLC1_Mark9
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
