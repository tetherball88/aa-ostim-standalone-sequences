Scriptname AmorousAdvUtil extends Quest

Actor Property PlayerRef Auto
Faction Property AmorAdvLoverFaction Auto

Bool Property IsOstimInstalled Auto

ImageSpaceModifier Property FadeToBlackImod Auto
ImageSpaceModifier Property FadeToBlackBackImod Auto
ImageSpaceModifier Property FadeToBlackHoldImod Auto

Function CheckInstalledMods()

    ; Check if OStim installed
    IsOstimInstalled = CheckInstalledMod("OStim.esp")

EndFunction

Bool Function CheckInstalledMod(String ModName)
    Bool result = false
    if Game.IsPluginInstalled(ModName)
        result = true
        Debug.Trace("AmorousAdvUtil: " + ModName + " is installed")
    else
        Debug.Trace("AmorousAdvUtil: " + ModName + " is not found.")
    endIf
    return result
EndFunction

Function StartNomalScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OThread.QuickStart(actors)

EndFunction

Function StartOralScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OsexIntegrationMain ostim = OUtils.GetOStim()

    ; if dom is female, start a vaginal oral scene
    If (ostim.isFemale(dom))
        OThread.QuickStart(actors, StartingAnimation=OLibrary.GetRandomSceneWithAction(actors, "cunnilingus"))
    ; if dom is male, start a blowjob oral scene
    Else
        OThread.QuickStart(actors, StartingAnimation=OLibrary.GetRandomSceneWithAction(actors, "blowjob"))
    EndIf

EndFunction

Function StartOral69Scene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OThread.QuickStart(actors, StartingAnimation=OLibrary.GetRandomSceneWithAllActionsCSV(actors, "cunnilingus,blowjob"))

EndFunction

Function StartAnalScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OThread.QuickStart(actors, StartingAnimation=OLibrary.GetRandomSceneWithAction(actors, "analsex"))

EndFunction

Function StartMissionaryScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OThread.QuickStart(actors, StartingAnimation=OLibrary.GetRandomSceneWithSceneTag(actors, "missionary"))

EndFunction

Function StartDoggyScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OThread.QuickStart(actors, StartingAnimation=OLibrary.GetRandomSceneWithSceneTag(actors, "doggystyle"))

EndFunction

Function StartCowgirlScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OThread.QuickStart(actors, StartingAnimation=OLibrary.GetRandomSceneWithSceneTag(actors, "cowgirl"))

EndFunction

Function StartThreesomeScene(Actor dom, Actor sub, Actor thr)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[3]
    actors[0] = dom
    actors[1] = sub
    actors[2] = thr

    OThread.QuickStart(actors)

EndFunction

Function StartNPCScene(Actor npc1, Actor npc2)
    Utility.Wait(0.2)

    Actor[] actors = new Actor[2]
	actors[0] = npc1
	actors[1] = npc2

	int BuilderID = OThreadBuilder.Create(actors)
	OThreadBuilder.NoFurniture(BuilderID)
	OThreadBuilder.Start(BuilderID)
EndFunction

Function StartMasturbationScene(Actor player, Actor lover)

    Utility.Wait(0.2)

    Actor[] actors = new Actor[1]
    actors[1] = lover

    String masturbationAnimation = OLibrary.GetRandomSceneWithSceneTag(actors, "femalemasturbation")

    if masturbationAnimation == ""
        StartNomalScene(player, lover)
    else
        int builder = OThreadBuilder.Create(actors)

        OThreadBuilder.SetDuration(builder, 30)
        OThreadBuilder.SetStartingAnimation(builder, masturbationAnimation)
        OThreadBuilder.NoAutoMode(builder)
        OThreadBuilder.NoPlayerControl(builder)
        OThreadBuilder.NoFurniture(builder)

        OThreadBuilder.Start(builder)
    endif
EndFunction

; Start scene without sexual animation
; TODO make text being passed from translation/radomizetion function.
Function StartFadeoutScene(Actor target, String type = "", String messageText = "")

    String targetName = target.GetDisplayName()
    String[] messageArray = new string[3]
    String editMessage = messageText
    If (editMessage == "")
        If (type == "kiss")
            messageArray[0] = "I'm surprised how sweet " + targetName + "'s lips are."
            messageArray[1] = targetName + " gave me a long kiss."
            messageArray[2] = targetName + " holds me tight and we can't help kissing each other."
        ElseIf (type == "mastur")
            ; LATER
            messageArray[0] = targetName + " masturbates."
            messageArray[1] = targetName + " masturbates."
            messageArray[2] = targetName + " masturbates."
        Else
            messageArray[0] = targetName + " and you spent a sweet time together."
            messageArray[1] = targetName + " seems really enjoyed. How about you?"
            messageArray[2] = "What a wonderful moment in such a hard time!"
        EndIf

        int random = Utility.RandomInt(0, 2)
        editMessage = messageArray[random]
    EndIf

    game.disablePlayerControls()
    FadeToBlackImod.apply()
    Utility.wait(2.0)
    FadeToBlackHoldImod.apply()
    Utility.wait(0.3)
    Debug.MessageBox(editMessage)
    FadeToBlackHoldImod.apply()
    Utility.wait(0.5)
    FadeToBlackBackImod.apply()
    Utility.wait(2.0)
    game.enablePlayerControls()

EndFunction

; Start kissing
Function StartKissingScene(Actor dom, Actor sub, String messageText = "")
    StartOstimKissing(dom, sub)
EndFunction

; Start OStim kissing secene without undressing
; TODO make passing "Em" into type running different kissing anim randomly.
Function StartOstimKissing(Actor dom, Actor sub)
    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    String kissingAnimation = OLibrary.GetRandomSceneSuperloadCSV(actors, AnyActionType = "kissing", ActionBlacklistTypes = "sexual")

    int builder = OThreadBuilder.Create(actors)

    OThreadBuilder.SetDuration(builder, 15)
    OThreadBuilder.SetStartingAnimation(builder, kissingAnimation)
    OThreadBuilder.NoAutoMode(builder)
    OThreadBuilder.NoPlayerControl(builder)
    OThreadBuilder.NoUndressing(builder)
    OThreadBuilder.NoFurniture(builder)

    OThreadBuilder.Start(builder)

EndFunction

; This is a special scence where start in elisif wedding
Function StartWeddingScene(Actor dom, Actor sub, ObjectReference oBed)

    Utility.Wait(0.2)
    StartOstimWedding(dom, sub, oBed)

EndFunction

Function StartOstimWedding(Actor dom, Actor sub, ObjectReference oBed)
    Actor[] actors = new Actor[2]
    actors[0] = dom
    actors[1] = sub

    OThread.QuickStart(actors, StartingAnimation="", FurnitureRef=oBed)
EndFunction

Event OnInit()

    ; Check installed mods when this mod is loaded first time.
    CheckInstalledMods()
EndEvent
