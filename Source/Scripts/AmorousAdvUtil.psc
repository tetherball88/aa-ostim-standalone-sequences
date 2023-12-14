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
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    string animation = OLibrary.GetRandomSceneSuperloadCSV(actors, AnyActionType = "vaginalsex")

    StartOstimScene(actors, animation)
EndFunction

Function StartOralScene(Actor dom, Actor sub)

    Utility.Wait(0.2)

    Actor[] actors = OActorUtil.ToArray(dom, sub)

    ; prefer sequence which will exit right after playing sequence
    if(StartOralSeq(actors))
        return
    endif
    
    string animation = ""
    
    ; if dom is male, start a blowjob oral scene
    If (OActorUtil.HasSchlong(actors[0]))
        animation = OLibrary.GetRandomSceneWithAnyActionCSV(actors, "blowjob,deepthroat")
    Else
        animation = OLibrary.GetRandomSceneSuperloadCSV(actors, AnyActionType = "cunnilingus,lickingvagina", AnyActionTarget = "0,0")
    EndIf

    StartOstimScene(actors, animation)
EndFunction

Function StartOral69Scene(Actor dom, Actor sub)

    Utility.Wait(0.2)
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    string animation = OLibrary.GetRandomSceneWithAnySceneTagCSV(actors, "sixtynine,69")

    If (animation != "")
        StartOstimScene(actors, animation)
    Else
        StartOralScene(dom, sub)
    EndIf
EndFunction

Function StartAnalScene(Actor dom, Actor sub)

    Utility.Wait(0.2)
    
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    string animation = OLibrary.GetRandomSceneWithAction(actors, "analsex")

    StartOstimScene(actors, animation)
EndFunction

Function StartMissionaryScene(Actor dom, Actor sub)

    Utility.Wait(0.2)
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    string animation = OLibrary.GetRandomSceneWithSceneTag(actors, "missionary")

    StartOstimScene(actors, animation)

EndFunction

Function StartDoggyScene(Actor dom, Actor sub)

    Utility.Wait(0.2)
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    string animation = OLibrary.GetRandomSceneWithSceneTag(actors, "doggystyle")

    StartOstimScene(actors, animation)

EndFunction

Function StartCowgirlScene(Actor dom, Actor sub)

    Utility.Wait(0.2)
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    string animation = OLibrary.GetRandomSceneWithSceneTag(actors, "cowgirl")

    StartOstimScene(actors, animation)

EndFunction

Function StartThreesomeScene(Actor dom, Actor sub, Actor thr)

    Utility.Wait(0.2)

    Actor[] actors = OActorUtil.ToArray(dom, sub, thr)
    string animation = OLibrary.GetRandomSceneSuperloadCSV(actors, AnyActionType = "vaginalsex,analsex")

    StartOstimScene(actors, animation)
EndFunction

Function StartNPCScene(Actor npc1, Actor npc2)
    Utility.Wait(0.2)

    Actor[] actors = OActorUtil.ToArray(npc1, npc2)

	int BuilderID = OThreadBuilder.Create(actors)
	OThreadBuilder.NoFurniture(BuilderID)
	OThreadBuilder.Start(BuilderID)

EndFunction

Function StartMasturbationScene(Actor player, Actor lover)
    Utility.Wait(0.2)

    Actor[] actors = OActorUtil.ToArray(lover)
    ; Amourous adventures plays only female masturbation
    string animation = OLibrary.GetRandomSceneWithAnyActionCSV(actors, "femalemasturbation,rubbingclitoris,vaginalfingering")

    if animation == ""
        StartNomalScene(player, lover)
    else
        int builder = OThreadBuilder.Create(actors)

        OThreadBuilder.SetDuration(builder, 30)
        OThreadBuilder.SetStartingAnimation(builder, animation)
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
Function StartKissingScene(Actor dom, Actor sub, bool short = true)
    StartOstimKissing(dom, sub, short)
EndFunction

; Start OStim kissing secene without undressing
; TODO make passing "Em" into type running different kissing anim randomly.
Function StartOstimKissing(Actor dom, Actor sub, bool short = true)
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    if(!StartKissingSeq(actors, short))
        String animation = OLibrary.GetRandomSceneSuperloadCSV(actors, AnyActionType = "kissing", ActionBlacklistTypes = "sexual")
        StartOstimScene(actors, animation);KISS
    endif
EndFunction

; This is a special scence where start in elisif wedding
Function StartWeddingScene(Actor dom, Actor sub, ObjectReference oBed)

    Utility.Wait(0.2)
    StartOstimWedding(dom, sub, oBed)

EndFunction

;--| This is a special scene. 
;--| In SexLab player is naked while Elisif wears a wedding dress
;--| Elisif in dress rides player cowgirl
Function StartOstimWedding(Actor dom, Actor sub, ObjectReference oBed)

    MiscUtil.PrintConsole("StartOstimWedding2")

    OsexIntegrationMain ostim = OUtils.GetOStim()
    Actor[] actors = OActorUtil.ToArray(dom, sub)

    string seq = OSequence.GetRandomSequenceWithSequenceTag(actors, "amor_elisif_temple_of_the_divines_wedding_cowgirl")

    int BuilderID = OThreadBuilder.Create(actors)

    if(seq != "")
        OThreadBuilder.SetStartingSequence(BuilderID, seq)
    else
        string animation = OLibrary.GetRandomSceneSuperloadCSV(actors, FurnitureType = "bed", AnySceneTag = "cowgirl", AnyActionType = "vaginalsex")
        OThreadBuilder.SetStartingAnimation(BuilderID, animation)
    endif

    OThreadBuilder.EndAfterSequence(BuilderID)
	
    OThreadBuilder.SetFurniture(BuilderID, oBed)
    
	int threadID = OThreadBuilder.Start(BuilderID)
EndFunction

Event OnInit()

    ; Check installed mods when this mod is loaded first time.
    CheckInstalledMods()
EndEvent


; returns false if didn't find sequence and true if it was able to find and start sequence
bool Function StartOralSeq(Actor[] actors, bool Exit = true)

    string seq = ""
    If (OActorUtil.HasSchlong(actors[0]))
        seq = OSequence.GetRandomSequenceWithAllSequenceTagsCSV(actors, "blowjob,standing")
    Else
        seq = OSequence.GetRandomSequenceWithAllSequenceTagsCSV(actors, "cunnilingus,standing")
    EndIf

    if(seq == "") 
        return false
    endif

    StartOstimSequence(actors, seq, Exit)

    return true
EndFunction

; This function is currently unused
Function StartStandingScene(Actor actor1, Actor actor2)
    Utility.Wait(0.2)
    
    Actor[] actors = OActorUtil.ToArray(actor1, actor2)
    string tags = OCSV.CreateCSVMatrix(actors.Length, "standing")

    string animation = OLibrary.GetRandomSceneWithMultiActorTagForAnyCSV(actors, tags)

    StartOstimScene(actors, animation)
EndFunction

; start kissing sequence
bool Function StartKissingSeq(Actor[] actors, bool short = true)
    string sequenceTags = "standing,kissing"

    if(short)
        sequenceTags += ",short"
    else
        sequenceTags += ",long"
    endif

    MiscUtil.PrintConsole("Kissing with tags " + sequenceTags)

    string seq = OSequence.GetRandomSequenceWithAllSequenceTagsCSV(actors, sequenceTags)

    if(seq == "")
        return false
    endif

    StartOstimSequence(actors, seq)

    return true
EndFunction

int Function StartOstimScene(Actor[] actors, String startingAnim = "")
    return OThread.quickStart(actors, startingAnim)
EndFunction

; Serana hunger quest and sybille encounter
Function StartVampireScene(Actor dom, Actor sub)
    Utility.Wait(0.2)
    
    Actor[] actors = OActorUtil.ToArray(dom, sub)
    string animation = OLibrary.GetRandomSceneWithAction(actors, "vampirebite")

    StartOstimScene(actors, animation)
EndFunction

; Start scene by type
;  type = type of fallback animation. 
;    Possible types: 
;        "solo" - female masturbation
;        "missionary" - missionary style sex
;        "anal" - anal sex
;        "69" - 69 pose
;        "kissing" - only kissing
;        "oral" - only oral
;        "cowgirl" - cowgirl style
;        "doggystyle" - doggy style
;        "vamp" - with vampirebite action
;        "standing" - both actors standing
;        default: "regular" vaginal sex
bool Function StartSceneByTheme(Actor actor1, Actor actor2, string type = "regular")
    MiscUtil.PrintConsole("StartSceneByTheme")
    if(type == "solo")
        StartMasturbationScene(actor1, actor2)
    elseif(type == "missionary")
        StartMissionaryScene(actor1, actor2)
    elseif(type == "anal")
        StartAnalScene(actor1, actor2)
    elseif(type == "69")
        StartOral69Scene(actor1, actor2)
    elseif(type == "kissing")
        StartKissingScene(actor1, actor2)
    elseif(type == "oral")
        StartOralScene(actor1, actor2)
    elseif(type == "cowgirl")
        StartCowgirlScene(actor1, actor2)
    elseif(type == "doggystyle")
        StartDoggyScene(actor1, actor2)
    elseif(type == "vamp")
        StartVampireScene(actor1, actor2)
    elseif(type == "standing")
        StartStandingScene(actor1, actor2)
    else
        StartNomalScene(actor1, actor2)
    endif
EndFUnction

Function StartOstimSequence(Actor[] actors, string sequenceName, bool exitOnEnd = true, ObjectReference furnObj = none)
    int BuilderID = OThreadBuilder.Create(actors)
    OThreadBuilder.SetStartingSequence(BuilderID, sequenceName)

    MiscUtil.PrintConsole("About to start sequence: " + sequenceName)

    if exitOnEnd
        MiscUtil.PrintConsole("Sequence exit on end")
        OThreadBuilder.EndAfterSequence(BuilderID)
    endif

    if(!furnObj)
        MiscUtil.PrintConsole("Seq No Furniture")
        OThreadBuilder.NoFurniture(BuilderID)
    else
        MiscUtil.PrintConsole("Seq With Furniture")
        OThreadBuilder.SetFurniture(BuilderID, furnObj)
    endif
    int threadID = OThreadBuilder.Start(BuilderID)
    MiscUtil.PrintConsole("StartOstimSequence: " + sequenceName + ", ID: " + threadID + "Builder ID: " + BuilderID)
EndFunction

; type - furniture type
; "table" - table furniture in OStim 
ObjectReference Function FindFurnitureByType(int actorCount = 2, string type)
    ObjectReference[] furn = OFurniture.FindFurniture(actorCount, PlayerRef, 10000, 1000)

    int index = 0

    int index2 = 0

    MiscUtil.PrintConsole("Amount of furntiture found - " + furn.Length)

    while(index2 < furn.length)
        MiscUtil.PrintConsole("Nearby furniture index " + index2 + " found " + OFurniture.GetFurnitureType(furn[index2]))
        index2 += 1
    endwhile

    while(index < furn.length)
        string currentFurnitureType = OFurniture.GetFurnitureType(furn[index])
        bool foundFurniture = false
        if(type == "bed")
            if(currentFurnitureType == "singlebed" || currentFurnitureType == "doublebed")
                return furn[index]
            endif
        else
            if(OFurniture.GetFurnitureType(furn[index]) == type)
                return furn[index]
            endif
        endif
        index += 1
    endwhile

    return none
EndFunction

; Try run unique sequence(with unique sequence tag for particular situation in quests)
; If couldn't - run regular or threesome scene
; dom = player
; sub = second actor (main actor for solo)
; actor3 = third actor(optional)
; tag = unique tag by which you search sequence(optional)
; furnitureType = singlebed,doublebed,tableleanmarker types from ostim in vicinity around player if you want scene to be with furniture(optional)
; furnObj - particular furniture object reference
; exitOnEnd = if you want exit sequence on end(optional)
; undress = if you want undress actors at start of sequence(optional)
; theme = type of fallback animation. 
;    Possible types: 
;        "solo" - female masturbation
;        "missionary" - missionary style sex
;        "anal" - anal sex
;        "69" - 69 pose
;        "kissing" - only kissing
;        "oral" - only oral
;        "cowgirl" - cowgirl style
;        "doggystyle" - doggy style
;        "vamp" - with vampirebite action
;        default: "regular" vaginal sex
Function StartUniqueSequence(Actor dom, Actor sub, string tags, string furnitureType = "", Actor actor3 = none, string theme = "regular", bool exitOnEnd = false, bool undress = false, ObjectReference furnObj = none)
    Actor[] actors

    if(actor3)
        actors = OActorUtil.ToArray(dom, sub, actor3)
    elseif(theme == "solo")
        actors = OActorUtil.ToArray(sub)
    else
        actors = OActorUtil.ToArray(dom, sub)
    endif

    string seq = ""
    ObjectReference furn = furnObj

    if(furnitureType && !furn)
        furn = FindFurnitureByType(actors.Length, furnitureType)
        ; switch when fixed in OStim
        ; furn = OFurniture.FindFurnitureOfType(furnitureType, PlayerRef, 10000, 1000)
    endif

    MiscUtil.PrintConsole("Furniture of type " + furnitureType + " and id " + furn)
    MiscUtil.PrintConsole("Unique sequence tag " + tags)

    if(!furn)
        MiscUtil.PrintConsole("Look without furniture")
        seq = OSequence.GetRandomSequenceWithAllSequenceTagsCSV(actors, tags)
    else
        MiscUtil.PrintConsole("Look for sequence with furniture " + furnitureType + " and tag" + tags)
        seq = OSequence.GetRandomFurnitureSequenceWithAllSequenceTagsCSV(actors, furnitureType, tags)
    endif

    MiscUtil.PrintConsole("Sequence: " + seq)

    if (seq != "")
        StartOstimSequence(actors, seq, exitOnEnd, furn)
    else
        if(!actor3)
            StartSceneByTheme(dom, sub, theme)
        else
            StartThreesomeScene(actors[0], actors[1], actors[2])
        endif
    endif
EndFunction
