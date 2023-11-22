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

    StartOstimScene(dom, sub)

EndFunction

Function StartOralScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    OsexIntegrationMain ostim = OUtils.GetOStim()
    ; if dom is female, start a vaginal oral scene
    If (ostim.isFemale(dom))
        StartOstimScene(dom, sub, animationStart="OpS|LyF!Sit|VJ|SittingCunnilingus")
    ; if dom is male, start a blowjob oral scene
    Else
        StartOstimScene(dom, sub, animationStart="OpS|Sta!Kne|BJ|HandOnHeadBlowjob")
    EndIf

EndFunction

Function StartOral69Scene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    StartOralScene(dom, sub)

EndFunction

Function StartAnalScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    StartMissionaryScene(dom, sub)

EndFunction

Function StartMissionaryScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    StartOstimScene(dom, sub)

EndFunction

Function StartDoggyScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    StartOstimScene(dom, sub)

EndFunction

Function StartCowgirlScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    StartOstimScene(dom, sub)

EndFunction

; This function is currently unused
Function StartStandingScene(Actor dom, Actor sub)

    String animationClass = ""
    String animationStart = ""

    Utility.Wait(0.2)

    StartOstimScene(dom, sub, animationClass, animationStart)

EndFunction

Function StartThreesomeScene(Actor dom, Actor sub, Actor thr)

    Utility.Wait(0.2)

    OsexIntegrationMain ostim = OUtils.GetOStim()

    ostim.startScene(dom, sub, zThirdActor = thr)

EndFunction

Function StartNPCScene(Actor npc1, Actor npc2)
    Utility.Wait(0.2)

    OsexIntegrationMain ostim = OUtils.GetOStim()

    Int Time = 30 ; This is a looping times, not seconds.
    ; Enable Undress
    bool bAlwaysUndressAtAnimStart = ostim.AlwaysUndressAtAnimStart
    ostim.AlwaysUndressAtAnimStart = True
    ; Disable AI control
    bool bUseAIControl = ostim.UseAIControl
    ostim.UseAIControl = False
    bool bUseAINPConNPC = ostim.UseAINPConNPC
    ostim.UseAINPConNPC = False
    bool bUseAINonAggressive = ostim.UseAINonAggressive
    ostim.UseAINonAggressive = False

    ; NPC love scene
    ; all Amorous Adventures NPC scenes are between women
    ostim.StartScene(npc1, npc2, zStartingAnimation = "OpS|LyF!Sit|VJ|AceSittingCunnilingus")
    While (ostim.AnimationRunning())
        If (Time == 0)
            ostim.EndAnimation()
            Utility.Wait(3.0)
        Else
            Utility.Wait(1.0)
        EndIf
        Time -= 1
    EndWhile
    ; Init
    ostim.AlwaysUndressAtAnimStart = bAlwaysUndressAtAnimStart
    ostim.UseAIControl = bUseAIControl
    ostim.UseAINPConNPC = bUseAINPConNPC
    ostim.UseAINonAggressive = bUseAINonAggressive
EndFunction

Function StartMasturbationScene(Actor player, Actor lover)

    Utility.Wait(0.2)

    OsexIntegrationMain ostim = OUtils.GetOStim()

    Int Time = 30 ; This is a looping times, not seconds.
    ostim.HideAllSkyUIWidgets()
    ostim.DisableOSAControls = True
    ; Disable AI control
    bool bUseAIControl = ostim.UseAIControl
    ostim.UseAIControl = False
    bool bUseAINPConNPC = ostim.UseAINPConNPC
    ostim.UseAINPConNPC = False
    bool bUseAINonAggressive = ostim.UseAINonAggressive
    ostim.UseAINonAggressive = False
    ; Enable Undress
    bool bAlwaysUndressAtAnimStart = ostim.AlwaysUndressAtAnimStart
    ostim.AlwaysUndressAtAnimStart = True

    ; Masturbation scene
    ostim.StartScene(player, lover, zStartingAnimation ="OpS|Sit!Sit|Pf2|AceSittingMasturbationFemale")
    While (ostim.AnimationRunning())
        If (Time == 0)
            ostim.EndAnimation()
            Utility.Wait(3.0)
        Else
            Utility.Wait(1.0)
        EndIf
        Time -= 1
    EndWhile
    ; Init
    ostim.ShowAllSkyUIWidgets()
    ostim.DisableOSAControls = False
    ostim.UseAIControl = bUseAIControl
    ostim.UseAINPConNPC = bUseAINPConNPC
    ostim.UseAINonAggressive = bUseAINonAggressive
    ostim.AlwaysUndressAtAnimStart = bAlwaysUndressAtAnimStart

EndFunction

Function StartOstimScene(Actor dom, Actor sub, String animationClass = "", String animationStart = "", String animationHasInName = "")

    OsexIntegrationMain ostim = OUtils.GetOStim()
    String startingAnim = ""

    If (animationStart != "")
        startingAnim = animationStart
    EndIf

    If (dom != PlayerRef && sub != PlayerRef)
        ostim.GetUnusedSubthread().StartScene(dom, sub)
    Else
        ostim.startScene(dom, sub, zStartingAnimation = startingAnim)
    EndIf
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

    OsexIntegrationMain ostim = OUtils.GetOStim()

    ; Kiss scenes should only be a kiss and nothing else, so use the standard StandingKiss animation
    String animation = "OpS|Sta!Sta|Ho|StandingKiss"

    Int Time = 10 ; This is a looping times, not seconds.
    ostim.HideAllSkyUIWidgets()
    ostim.DisableOSAControls = True
    ; Disable AI control
    bool bUseAIControl = ostim.UseAIControl
    ostim.UseAIControl = False
    bool bUseAINPConNPC = ostim.UseAINPConNPC
    ostim.UseAINPConNPC = False
    bool bUseAINonAggressive = ostim.UseAINonAggressive
    ostim.UseAINonAggressive = False
    ; Disable Undress
    bool bAlwaysUndressAtAnimStart = ostim.AlwaysUndressAtAnimStart
    ostim.AlwaysUndressAtAnimStart = False

    ; Kiss scence
    ostim.StartScene(dom, sub, zStartingAnimation = animation);KISS
    While (ostim.AnimationRunning())
        If (Time == 0)
            ostim.EndAnimation()
            Utility.Wait(3.0)
        Else
            Utility.Wait(1.0)
        EndIf
        Time -= 1
    EndWhile
    ; Init
    ostim.ShowAllSkyUIWidgets()
    ostim.DisableOSAControls = False
    ostim.UseAIControl = bUseAIControl
    ostim.UseAINPConNPC = bUseAINPConNPC
    ostim.UseAINonAggressive = bUseAINonAggressive
    ostim.AlwaysUndressAtAnimStart = bAlwaysUndressAtAnimStart

EndFunction

; This is a special scence where start in elisif wedding
Function StartWeddingScene(Actor dom, Actor sub, ObjectReference oBed)

    Utility.Wait(0.2)
    StartOstimWedding(dom, sub, oBed)

EndFunction

Function StartOstimWedding(Actor dom, Actor sub, ObjectReference oBed)

    OsexIntegrationMain ostim = OUtils.GetOStim()

    ; Weding scence
    ostim.StartScene(dom, sub, zUndressDom = True, zUndressSub = True, zStartingAnimation = "", Bed = oBed)
EndFunction

Event OnInit()

    ; Check installed mods when this mod is loaded first time.
    CheckInstalledMods()
EndEvent
