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
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartOralScene(Actor dom, Actor sub)

	String animationType = "BJ"
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub, animationType)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartOral69Scene(Actor dom, Actor sub)

	String animationType = "VBJ"
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub, animationType)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartAnalScene(Actor dom, Actor sub)

	String animationType = "An"
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub, animationType)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartMissionaryScene(Actor dom, Actor sub)

	String animationType = ""
	String animationStart = ""
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub, animationType, animationStart)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartDoggyScene(Actor dom, Actor sub)

	String animationType = ""
	String animationStart = ""
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub, animationType, animationStart)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartCowgirlScene(Actor dom, Actor sub)

	String animationType = ""
	String animationStart = ""
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub, animationType, animationStart)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartStandingScene(Actor dom, Actor sub)

	String animationType = ""
	String animationStart = ""
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimScene(dom, sub, animationType, animationStart)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartThreesomeScene(Actor dom, Actor sub, Actor thr)

    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        OsexIntegrationMain ostim = OUtils.GetOStim()
        ostim.startScene(dom, sub, zThirdActor = thr)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartMasturbationScene(Actor act)

    ; String animationType = "Po"
    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        OsexIntegrationMain ostim = OUtils.GetOStim()
        Ostim.Masturbate(act)
    Else
        StartFadeoutScene(act)
    EndIf

EndFunction

Function StartOstimScene(Actor dom, Actor sub, String animationType = "", String animationStart = "")

    OsexIntegrationMain ostim = OUtils.GetOStim()
    String startingAnim
    If (animationType != "")
        startingAnim = GetRandomAnimationByCondirions(animationClass = animationType)
    ElseIf (animationStart != "")
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
; With messageText being passed + no OStim, black scereen with message box pops up.
Function StartKissingScene(Actor dom, Actor sub, String messageText = "")
    If (IsOstimInstalled) 
        StartOstimKissing(dom, sub)
    Else
        StartFadeoutScene(sub, "kiss", messageText)
    EndIf
EndFunction

; Start OStim kissing secene without undressing
; TODO make passing "Em" into type running different kissing anim randomly.
Function StartOstimKissing(Actor dom, Actor sub)

    OsexIntegrationMain ostim = OUtils.GetOStim()
    String animation

    ; Get kissing animations from OpenSex and other animation packages.
    animation = GetRandomAnimationByCondirions(animationClass = "", positionKey = "S", tag = "Kiss", excludeKey = "job")

    ; failsafe using OSex scene
    If (animation == "")
        animation = "0MF|Sy6!Sy9|Em|St9AdoreKm"
    EndIf

    Int Time = 10 ; This is a looping times, not seconds.
    ostim.HideAllSkyUIWidgets()
    ostim.DisableOSAControls = True
    ; Disable Bed
    bool bUseBed = ostim.UseBed
    ostim.UseBed = False
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
    ; Force First Person
    bool bUseFreeCam = ostim.UseFreeCam
    ostim.UseFreeCam = False
    bool bForceFirstPersonAfter = ostim.ForceFirstPersonAfter
    ostim.ForceFirstPersonAfter = False    
    If (PlayerRef.GetAnimationVariableInt("i1stPerson"))
        Game.ForceThirdPerson()
        Utility.Wait(0.20)
    EndIf
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
    ostim.UseBed = bUseBed
    ostim.UseFreeCam = bUseFreeCam
    ostim.ForceFirstPersonAfter = bForceFirstPersonAfter
    ostim.UseAIControl = bUseAIControl
    ostim.UseAINPConNPC = bUseAINPConNPC
    ostim.UseAINonAggressive = bUseAINonAggressive
    ostim.AlwaysUndressAtAnimStart = bAlwaysUndressAtAnimStart

EndFunction

; This is a special scence where start in elisif wedding
Function StartWeddingScene(Actor dom, Actor sub, ObjectReference oBed)

    Utility.Wait(0.2)
    If (IsOstimInstalled) 
        StartOstimWedding(dom, sub, oBed)
    Else
        StartFadeoutScene(sub)
    EndIf

EndFunction

Function StartOstimWedding(Actor dom, Actor sub, ObjectReference oBed)

    OsexIntegrationMain ostim = OUtils.GetOStim()
    String animation = "0MF|MIy9!KNy6|Sx|KnCowGSxGL"

    ; Use Bed
    bool bUseBed = ostim.UseBed
    ostim.UseBed = True
    ; Disable Undress
    bool bAlwaysUndressAtAnimStart = ostim.AlwaysUndressAtAnimStart
    ostim.AlwaysUndressAtAnimStart = False
    ; Weding scence
    ostim.StartScene(dom, sub, zUndressDom = True, zUndressSub = False, zStartingAnimation = animation, Bed = oBed);Cowgirl
    Utility.Wait(1.0)
    While (ostim.AnimationRunning())
        Utility.Wait(3.0)
    EndWhile
    ; Init
    ostim.UseBed = bUseBed
    ostim.AlwaysUndressAtAnimStart = bAlwaysUndressAtAnimStart
EndFunction

; Select Animation with scene type function, copied from ORomance 
string function GetRandomAnimationByCondirions(String animationClass, String positionKey = "", String tag = "", String excludeKey = "")
    OsexIntegrationMain ostim = OUtils.GetOStim()

    ODatabaseScript ODatabase = ostim.GetODatabase()

    Int animations = ODatabase.GetAnimationsWithActorCount(ODatabase.GetDatabaseOArray(), 2)
    ; animations = ODatabase.GetHubAnimations(animations, False) ; exclude hub anim
    animations = ODatabase.GetTransitoryAnimations(animations, False) ; exclude transition anim

    ; Don't run class filtering if animationClass is empty.
    If (animationClass != "")
        animations = ODatabase.GetAnimationsWithAnimationClass(animations, animationClass)
    EndIf

    ; Don't run class filtering if positionKey is empty.
    If (positionKey != "")
        animations = ODatabase.GetAnimationsWithSpecificPositionData(animations, positionKey, 0, true)
        animations = ODatabase.GetAnimationsWithSpecificPositionData(animations, positionKey, 1, true)
    EndIf

    Int i = 0
    Int max =  ODatabase.getLengthOArray(animations)
    Int ret = ODatabase.newOArray()
    String animationName = ""
    bool hasTagInName = false

    while i < max

        ; ; Get each elements from looping item
        animationName = ODatabase.GetFullName(ODatabase.getObjectOArray(animations, i))

        ; Exclude anim when excludeKey in included in animationName
        If (StringUtil.Find(animationName, excludeKey) == -1)

            ; Filtering with animation name
            hasTagInName = StringUtil.Find(animationName, tag) != -1
            If (hasTagInName)
                ODatabase.appendObjectOArray(ret, ODatabase.getObjectOArray(animations, i))
            Endif
        EndIf

        ; reset conditions
        animationName = ""
        hasTagInName = false
        i += 1
    EndWhile

    ; Randomly choose animation from filtered array.
    Int l = ODatabase.GetLengthOArray(ret)
    Int random = ODatabase.GetObjectOArray(ret, ostim.randomint(0, l - 1))
    string animationID = ODatabase.GetSceneID(random)

    ODatabase.unload()

    Return animationID
endfunction

Event OnInit()

    ; Check installed mods when this mod is loaded first time.
    CheckInstalledMods()    
EndEvent
