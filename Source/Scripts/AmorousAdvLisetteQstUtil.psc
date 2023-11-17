Scriptname AmorousAdvLisetteQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

Function EnterBardSingerFaction(actor aActor)
	aActor.AddToFaction(BardSingerFaction)
EndFunction

Function ExitBardSingerFaction(actor aActor)
	aActor.RemoveFromFaction(BardSingerFaction)
EndFunction

Function EnterJobBardFaction(actor aActor)
	aActor.AddToFaction(JobBardFaction)
EndFunction

Function ExitJobBardFaction(actor aActor)
	aActor.RemoveFromFaction(JobBardFaction)
EndFunction

Function EnterBardAudienceExcludedFaction(actor aActor)
	aActor.AddToFaction(BardAudienceExcludedFaction)
EndFunction

Function ExitBardAudienceExcludedFaction(actor aActor)
	aActor.RemoveFromFaction(BardAudienceExcludedFaction)
EndFunction

Function StopAllBardScenes()
    BardSongsBallad01Scene.Stop()
    BardSongsBallad01WithIntroScene.Stop()
    BardSongsDrinkingSong01Scene.Stop()
    BardSongsDrinkingSong01WithIntroScene.Stop()
    BardSongsDrinkingSong02Scene.Stop()
    BardSongsDrinkingSong02WithIntroScene.Stop()
    BardSongsDrinkingSong03Scene.Stop()
    BardSongsDrinkingSong03WithIntroScene.Stop()
    BardSongsInstrumentalFlute01.Stop()
    BardSongsInstrumentalFlute02.Stop()
    BardSongsInstrumentalLute01.Stop()
    BardSongsInstrumentalLute02.Stop()
    BardSongsInstrumentalDrum01.Stop()
    BardSongsInstrumentalDrum02.Stop()
    BardSongsInstrumentalFluteOnly01.Stop()
    BardSongsInstrumentalFluteOnly02.Stop()
    BardAudienceQuestScene.Stop()
EndFunction

Function StopSongQuests()
    BardSongs.Stop()
    BardSongsInstrumental.Stop()
EndFunction

Function StartSongQuests()
    BardSongs.Start()
    BardSongsInstrumental.Start()
EndFunction


;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
     Debug.Trace("Amorous Adventures: AnimateMyLover: Illdi ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| sex scene with Illdi the virgin


;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Lisette ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| Make love with Lisette


;---| END ANIMATION CODE |------

EndFunction

;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto  

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgIlldiEnd
Message Property AmorousAdvStoryBoard2 Auto ;--| AmorousAdvSexMsgLisetteEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

;--BARD SPECIFIC
Scene Property BardSongsBallad01Scene auto
Scene Property BardSongsBallad01WithIntroScene auto
Scene Property BardSongsDrinkingSong01Scene auto
Scene Property BardSongsDrinkingSong01WithIntroScene auto
Scene Property BardSongsDrinkingSong03Scene auto
Scene Property BardSongsDrinkingSong03WithIntroScene auto
Scene Property BardSongsDrinkingSong02Scene auto
Scene Property BardSongsDrinkingSong02WithIntroScene auto
Scene Property BardSongsInstrumentalFlute01 auto
Scene Property BardSongsInstrumentalFlute02 auto
Scene Property BardSongsInstrumentalLute01 auto
Scene Property BardSongsInstrumentalLute02 auto
Scene Property BardSongsInstrumentalDrum01 auto
Scene Property BardSongsInstrumentalDrum02 auto
Scene Property BardSongsInstrumentalFluteonly01 auto
Scene Property BardSongsInstrumentalFluteonly02 auto
Scene Property BardSongsInstrumentalBard2Drum01 auto
Scene Property BardSongsInstrumentalBard2Drum02 auto
Scene Property BardSongsInstrumentalWedding01 auto
Scene Property BardSongsInstrumentalWedding02 auto
Scene Property BardAudienceQuestScene  Auto
Quest Property BardSongs Auto
Quest Property BardSongsInstrumental Auto

Faction Property BardAudienceExcludedFaction Auto
Faction Property BardSingerFaction Auto
Faction Property JobBardFaction Auto

