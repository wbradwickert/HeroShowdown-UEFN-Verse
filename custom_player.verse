using { /Fortnite.com/UI }
using {/Fortnite.com/Playspaces}
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /Verse.org/Colors }
using { /Verse.org/Colors/NamedColors }
using { /Fortnite.com/Characters}
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }

# See https://dev.epicgames.com/documentation/en-us/uefn/create-your-own-device-in-verse for how to create a verse device.

# A Verse-authored creative device that can be placed in a level
custom_player := class<unique>():
    Player : player
    PetAsset : creative_prop_asset
    var PetProp<private> : creative_prop = creative_prop{}

    var GemCount : int = 0
    var CanUseSpotter : logic = false
    var SpotterHit : logic = false
    var SpotterCount : int = 0
    var CanBeInvisible : logic = false
    var IsHealing : logic = false
    var IsTrapped : logic = false
    var SnowFreezeTick : int = 0
    var SnowFreezeSFXTick : int = 0
    var IsFrozen : logic = false
    var CanBeFrozen : logic = false
    var SuperReadyTick : int = 0
    var HealSFXTick : int = 0
    var HealZoneTick : int = 0
    var PlayerHitTick : int = 0
    var LeonSuperEnd : int = 0
    var CurrentElims<private> : int = 0
    var SuperMeter : float = 0.0
    var SuperReady : logic = false
    var SuperInUse : logic = false
    var IsPoisoned : logic = false
    var PoisonCounter : float = 0.0
    var PoisonTimer : float = 0.0
    var WeaponCharge1 : float = 0.0
    var WeaponCharge2 : float = 0.0
    var WeaponCharge3 : float = 0.0
    var WeaponCharge1Ready : logic = false
    var WeaponCharge2Ready : logic = false
    var WeaponCharge3Ready : logic = false
    var CurrentLocation : transform
    var CurrentVector3 : vector3
    var CurrentRotation : rotation
    var SurgeLvl : int = 0
    var Ammo : int = 0
    var Class : int = 0
    var Team : int = 1
    var MyUI : canvas = canvas{}
    var HalfHealth : int = 0
    var WipeoutTeamScore : int = 0
    var WipeoutEnemyScore : int = 0
    var GemTeamScore : int = 0
    var GemEnemyScore : int = 0

    GetGemCount()<transacts>:int=
        return GemCount
        
    SetGemCount(B:int):void=
        set GemCount = B
        Print("GemCOUNT: {GemCount}")

    GetSpotterCount()<transacts>:int=
            return SpotterCount
            
    SetSpotterCount(B:int):void=
        set SpotterCount = B

    GetSpotterHit()<transacts>:logic=
        return SpotterHit
            
    SetSpotterHit(B:logic):void=
        set SpotterHit = B

    GetCanUseSpotter()<transacts>:logic=
        return CanUseSpotter
        
    SetCanUseSpotter(B:logic):void=
        set CanUseSpotter = B

    GetCanBeInvisible()<transacts>:logic=
        return CanBeInvisible
    
    SetCanBeInvisible(B:logic):void=
        set CanBeInvisible = B

    GetSnowFreezeSFXTick()<transacts>:int=
        return SnowFreezeSFXTick
        
    SetSnowFreezeSFXTick(B:int):void=
        set SnowFreezeSFXTick = B

    GetIsHealing()<transacts>:logic=
            return IsHealing
            
    SetIsHealing(B:logic):void=
            set IsHealing = B

    GetIsTrapped()<transacts>:logic=
        return IsTrapped
        
    SetIsTrapped(B:logic):void=
        set IsTrapped = B

    GetCanBeFrozen()<transacts>:logic=
        return CanBeFrozen
    
    SetCanBeFrozen(B:logic):void=
        set CanBeFrozen = B

    GetIsFrozen()<transacts>:logic=
            return IsFrozen
        
    SetIsFrozen(B:logic):void=
            set IsFrozen = B

    GetSnowFreezeTick()<transacts>:int=
        return SnowFreezeTick
        
    SetSnowFreezeTick(B:int):void=
        set SnowFreezeTick = B

    GetHalfHealth()<transacts>:int=
        return HalfHealth

    GetHealSFXTick()<transacts>:int=
        return HealSFXTick
        
    SetHealSFXTick(B:int):void=
        set HealSFXTick = B


    GetSuperReadyTick()<transacts>:int=
        return SuperReadyTick
    
    SetSuperReadyTick(B:int):void=
        set SuperReadyTick = B

    GetHealZoneTick()<transacts>:int=
        return HealZoneTick
        
    SetHealZoneTick(B:int):void=
        set HealZoneTick = B

    GetLeonSuperEnd()<transacts>:int=
        return LeonSuperEnd
        
    SetLeonSuperEnd(B:int):void=
        set LeonSuperEnd = B

    GetCurrentLocation()<transacts>:transform=
        Tran1 := transform{Translation:=CurrentLocation.Translation - vector3{ Z:=70.0} + vector3{X:= 70.0} }
            
        return Tran1

    GetCurrentLocationMutator()<transacts>:transform=
        Tran1 := transform{Translation:=CurrentLocation.Translation - vector3{ Z:=150.0} + vector3{X:= 70.0} }
                
        return Tran1
     
    GetCurrentLocation2()<transacts>:transform=
        Tran1 := transform{Translation:=CurrentLocation.Translation}
                
        return Tran1

    GetCurrentLocation3()<transacts>:transform=
        Tran1 := transform{Translation:=CurrentLocation.Translation - vector3{ Z:=-70000.0} + vector3{X:= -70000.0} }
                    
        return Tran1

    SetCurrentLocation(V:transform):void=
        set CurrentLocation = V

    GetCurrentVector3()<transacts>:vector3=
        return CurrentVector3

    SetCurrentVector3(V:vector3):void=
        set CurrentVector3 = V

    GetCurrentRotation()<transacts>:rotation=
        return CurrentRotation
    
    SetCurrentRotation(R:rotation):void=
        set CurrentRotation = R
    
    GetSurgeLvl()<transacts>:int=
        return SurgeLvl
    
    SetSurgeLvl(B:int):void=
        set SurgeLvl = B

    GetSuperMeter()<transacts>:float=
        return SuperMeter

    AddSuperMeter(F:float):void=
        set SuperMeter += F

    GetSuperStatus()<transacts>:logic=
        return SuperReady

    GetSuperInUseStatus()<transacts>:logic=
        return SuperInUse
    
    SetSuperStatus(B:logic):void=
        set SuperReady = B

    GetWeapon1Status()<transacts>:logic=
        return WeaponCharge1Ready
    
    SetWeapon1Status(B:logic):void=
        set WeaponCharge1Ready = B

    GetWeapon2Status()<transacts>:logic=
        return WeaponCharge2Ready
        
    SetWeapon2Status(B:logic):void=
        set WeaponCharge2Ready = B

    GetWeapon3Status()<transacts>:logic=
        return WeaponCharge3Ready
        
    SetWeapon3Status(B:logic):void=
        set WeaponCharge3Ready = B

    GetClass()<transacts>:int=
        return Class

    SetClass(C:int):void=
        set Class = C
        if(C = 26):
            set SuperMeter = 0.999
        else:
            set SuperMeter = 0.0
        set WeaponCharge1 = 0.0
        set WeaponCharge2 = 0.0
        set WeaponCharge3 = 0.0
        set SurgeLvl = 0
        set SuperReady = false
        set SuperInUse = false
        

    GetTeam()<transacts>:int=
        return Team
    
    SetTeam(C:int):void=
        set Team = C
        Print("Team set to {Team}")

    AwardElimination():void=
        set CurrentElims += 1
        Print("YOUDIDIT!")

    GetElimCount()<transacts>:int=
        return CurrentElims
    
    GetPoisonStatus()<transacts>:logic=
        return IsPoisoned

    PoisonTickRestart():void=
        set IsPoisoned = true
        set PoisonCounter += 1.0
        set PoisonTimer = 5.0
        Print("Posioned!")

    

    
    Init():void=
        if:
            Agent := agent[Player]
            Fort := Agent.GetFortCharacter[]
        then:
            Scale := 1.0
            Tran := transform{Rotation:= Fort.GetViewRotation(), Translation:=Fort.GetTransform().Translation + vector3{Y:=120.0}, Scale := vector3{X:=Scale, Y:=Scale, Z:= Scale}}
            if (Prop := SpawnProp(PetAsset, Tran)(0)?):
                set PetProp = Prop
                spawn{MovePet(Fort)}            
            spawn{SuperLoop(Fort)}
            spawn{HealthLoop(Fort)}
            spawn{PoisonLoop(Fort)}
            spawn{FreezeLoop(Fort)}

    PlayerDeath():void=
        Print("Respawning...")
        set SurgeLvl = 0 

    HitPlayer():void=
        if(Class = 1):
            set SuperMeter += 0.08
            #Print("Shelly hit")
        else if(Class = 2):
            set SuperMeter += 0.01
            #Print("Max hit")
        else:
            set SuperMeter += 0.05
            #Print("Other hit")

        
                
    RemoveSuper():void=
        Print("Super Cancelled")
        set SuperMeter = 0.0
        set SuperInUse = false
        set SuperReady = false   
        
    SurgeUpgrade():void=
        if(Class = 8):
            set SurgeLvl = 1
            #Print("Upgraded to Lvl {SurgeLvl}")
        else:
            if(Class = 9):
                set SurgeLvl = 2
                #Print("Upgraded to Lvl {SurgeLvl}")
            else:
                if(Class = 10):
                    set SurgeLvl = 3
                    #Print("Upgraded to Lvl {SurgeLvl}")

        

    
                

    Dispose():void=
        PetProp.Dispose()

    UseSuper(Agent:agent):void=
        if(SuperMeter >= 1.0):

            Print("Super ACTIVATED")
            if:
                Class > 0
            then:
                #Print("{Class}")
                if:
                    Class > 0
                then:
                    set SuperMeter = 0.0
                    set SuperReady = false              
                else:
        else:

            Print("Super not ready... C")

    PlayerHealTick():void=
        set PlayerHitTick = 0
        #Print("PlayerHitTick Reset")


    HealthLoop<private>(Fort:fort_character)<suspends>:void=
        loop:
            if(Fort.GetHealth() <= (Fort.GetMaxHealth() / 2.0), Fort.GetHealth() > (Fort.GetMaxHealth() / 5.0)):
                set HalfHealth = 1
            else if(Fort.GetHealth() <= (Fort.GetMaxHealth() / 5.0)):
                set HalfHealth = 2
            else:
                set HalfHealth = 0
            Sleep(1.0)
            if(PlayerHitTick < 4):
                set IsHealing = false
                set PlayerHitTick += 1
                #Print("{PlayerHitTick}")
            else if(PlayerHitTick = 4):
                set IsHealing = true
                if(FortAgent : agent = Fort.GetAgent[]):
                    if(Fort.GetHealth() < Fort.GetMaxHealth()):
                        Fort.Heal(Fort.GetMaxHealth() * 0.13)
                        set HealSFXTick = 1
                        Print("Test")

    FreezeLoop<private>(Fort : fort_character)<suspends>:void=
        loop:
            Sleep(0.5)
            #Print("{PoisonTimer}, {PoisonCounter}")
            if(SnowFreezeTick >= 5):
                set IsFrozen = true
                set SnowFreezeSFXTick = 0
            else if(SnowFreezeTick <= 0):
                set IsFrozen = false
            if(IsFrozen = true):
                S:stasis_args = stasis_args{}
                if(S.AllowEmotes = false, S.AllowFalling = false, S.AllowTurning = false):
                    Fort.PutInStasis(S)
                    Print("Frozen")
                set SnowFreezeTick -= 1
                Print("{SnowFreezeTick}")
            else:
                if(IsTrapped = false):
                    Fort.ReleaseFromStasis()


    PoisonLoop<private>(Fort : fort_character)<suspends>:void=
        loop:
            Sleep(1.0)
            #Print("{PoisonTimer}, {PoisonCounter}")
            if(PoisonTimer > 0.0, IsPoisoned = true):
                Fort.Damage(2 * PoisonCounter)
                set PoisonTimer -= 1.0
            else:
                set IsPoisoned = false
                set PoisonTimer = 5.0
                set PoisonCounter = 0.0

    SuperLoop<private>(Fort : fort_character)<suspends>:void=
        loop:
            Sleep(0.25)
            UpdateUI()
            SetCurrentLocation(Fort.GetTransform())
            SetCurrentVector3(Fort.GetViewLocation())
            
            #Print("{CurrentLocation}")
            SetCurrentRotation(Fort.GetViewRotation())
            #Print("{CurrentRotation}")
            if(Agent := Fort.GetAgent[]):

                Sleep(0.001)
                if(IsTrapped = true):
                    S:stasis_args = stasis_args{}
                    if(S.AllowEmotes = false, S.AllowFalling = false, S.AllowTurning = false):
                        if(IsFrozen = false):
                            Fort.PutInStasis(S)
                            Print("Trapped")
                else:
                    if(IsFrozen = false):
                        Fort.ReleaseFromStasis()
                if(CanBeInvisible = true):
                    Fort.Hide()
                else:
                    Fort.Show()
                UpdateUI()
                # Print("Top of loop")
            
                if:
                    Class = 0
                    #Print("ERROR")
                else if:
                    Class = 19
                then:
                    Sleep(0.025)
                    Fort.SetShield(Fort.GetShield() - 1.0)
                if:
                    SuperReady = true
                then:
                        #Print("SUPER READY")
                    
                else:
                    if:
                        SuperInUse = true
                    then:
                        #Print("SUPER IN USE")
                        if(Class = 11):
                            # if(Class = 19):
                            #     Sleep(0.025)
                            #     Fort.SetShield(Fort.GetShield() - 1.0)
                        
                        SuperMeterLoop(Agent)

                        

                    else:
                            #Print("SUPER CHARGING")
                        # if(Class = 6):
                        #     Fort.Show()
                        if(Class = 19):
                                # Fort.SetVulnerability(true)
                            # else if(Class = 11):
                            #     Fort.SetVulnerability(true)
                        SuperMeterLoop(Agent)

                    

 
    
    MovePet<private>(Fort : fort_character)<suspends>:void=
        loop:
            #Break if not valid or we'll get an error
            if(not PetProp.IsValid[]):
                Print("DESTROYED")
                break
            # Print("MOVE")
            Scale := 1.0
            Tran := transform{Rotation:= Fort.GetViewRotation(), Translation:=Fort.GetTransform().Translation + vector3{Y:=120.0}, Scale := vector3{X:=Scale, Y:=Scale, Z:= Scale}}
            
            PetProp.MoveTo(Tran, 0.5)
           
    SuperMeterLoop(Agent:agent):void=
        if:
            SuperInUse = false
            
        then:
            if(SuperMeter >= 1.0):
                Print("Super ready!!!")
                set SuperReady = true
                set SuperMeter = 1.0

            
            else:
                if(SuperMeter >= 0.0):
                    set SuperMeter += 0.025
                    
        else:
            if(SuperMeter < 0.0):
                Print("{SuperMeter}")
                set SuperMeter += 0.0025
            else:
                Print("COOLDOWN DONE")
                set SuperInUse = false

    InitiateUI(): void=       #Initalizes and adds the players UI
        if(PlayerObj := Player, PlayerUI := GetPlayerUI[PlayerObj]):
            set MyUI = CreateMyUI()
            PlayerUI.AddWidget(MyUI)
                    
                                
    UpdateUI(): void=        #Updates the players UI to new values
        if(PlayerObj := Player, PlayerUI := GetPlayerUI[PlayerObj]):
            PlayerUI.RemoveWidget(MyUI)
            set MyUI = CreateMyUI()
            PlayerUI.AddWidget(MyUI)
            

    CreateMyUI() : canvas =   #Creates the Main Hud UI
        if(SuperInUse = true):
            MyCanvas: canvas = canvas:
                
                Slots := array:
                    canvas_slot:
                        Anchors := anchors{Minimum := vector2{X := 0.0, Y := 0.5}, Maximum := vector2{X := 0.0, Y := 0.5}}
                        Offsets := margin{Left := 105.0, Top := 0.0, Right := 170.0, Bottom := 45.0}
                        Alignment := vector2{X := 0.0, Y := 0.5}
                        SizeToContent := false
                        Widget := text_block:
                            DefaultTextColor := White
                            DefaultShadowOffset := option{vector2{X:=1.0,Y:=1.0}}
                            DefaultShadowColor := Black
                            DefaultText := NewMessageSec(SuperMeter)
                    
                    canvas_slot:
                        Anchors := anchors{Minimum := vector2{X:=0.01,Y:=0.5},Maximum:=vector2{X:=0.01,Y:=0.5}}
                        Alignment := vector2{X:=0.0,Y:=0.5}
                        SizeToContent:=true
                        Widget := overlay:
                            Slots:=array:
                                overlay_slot:
                                    HorizontalAlignment:=horizontal_alignment.Left
                                    VerticalAlignment:=vertical_alignment.Center
                                    Widget:=color_block{DefaultColor:=NamedColors.Black,DefaultDesiredSize:=vector2{X:=296.0,Y:=40.0}}
                                overlay_slot:
                                    HorizontalAlignment:=horizontal_alignment.Left
                                    VerticalAlignment:=vertical_alignment.Center
                                    Widget:=color_block{DefaultColor:=NamedColors.Orange,DefaultDesiredSize:=vector2{X:=(296.0 * SuperMeter),Y:=40.0}}
                                overlay_slot:
                                    HorizontalAlignment:=horizontal_alignment.Center
                                    VerticalAlignment:=vertical_alignment.Center
                                    Widget:=text_block{DefaultTextColor:=NamedColors.DarkSlateGray,DefaultText:=TextForUI("SUPER")}
        else:
            MyCanvas: canvas = canvas:
                
                Slots := array:
                    canvas_slot:
                        Anchors := anchors{Minimum := vector2{X := 0.0, Y := 0.5}, Maximum := vector2{X := 0.0, Y := 0.5}}
                        Offsets := margin{Left := 105.0, Top := 0.0, Right := 170.0, Bottom := 45.0}
                        Alignment := vector2{X := 0.0, Y := 0.5}
                        SizeToContent := false
                        Widget := text_block:
                            DefaultTextColor := White
                            DefaultShadowOffset := option{vector2{X:=1.0,Y:=1.0}}
                            DefaultShadowColor := Black
                            DefaultText := NewMessageSec(SuperMeter)
                    
                    canvas_slot:
                        Anchors := anchors{Minimum := vector2{X:=0.01,Y:=0.5},Maximum:=vector2{X:=0.01,Y:=0.5}}
                        Alignment := vector2{X:=0.0,Y:=0.5}
                        SizeToContent:=true
                        Widget := overlay:
                            Slots:=array:
                                overlay_slot:
                                    HorizontalAlignment:=horizontal_alignment.Left
                                    VerticalAlignment:=vertical_alignment.Center
                                    Widget:=color_block{DefaultColor:=NamedColors.Black,DefaultDesiredSize:=vector2{X:=296.0,Y:=40.0}}
                                overlay_slot:
                                    HorizontalAlignment:=horizontal_alignment.Left
                                    VerticalAlignment:=vertical_alignment.Center
                                    Widget:=color_block{DefaultColor:=NamedColors.Orange,DefaultDesiredSize:=vector2{X:=(296.0 * SuperMeter),Y:=40.0}}
                                overlay_slot:
                                    HorizontalAlignment:=horizontal_alignment.Center
                                    VerticalAlignment:=vertical_alignment.Center
                                    Widget:=text_block{DefaultTextColor:=NamedColors.White,DefaultText:=TextForUI("SUPER")}
    
        
    NewMessage (value : float) : message = 
        #Round if over 100k
        var newesstvalue : float = 0.0
        if(value > 100000.0 and value < 1000000.0):
            newvalue := ((value/1000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageThou(newesstvalue)
        
        #Round if over 1M
        else if(value > 1000000.0 and value < 1000000000.0):
            newvalue := ((value/1000000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageMil(newesstvalue)
        
        
        #Round if over 1B 
        else if(value > 1000000000.0 and value < 1000000000000.0):
            newvalue := ((value/1000000000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageBil(newesstvalue)
        
        #Round if over 1T 
        else if(value > 1000000000000.0):
            newvalue := ((value/1000000000000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageTril(newvalue)
        
        #Returns normal value if anything else
        else:
            return StringToMessage(value)
        
        
    NewMessageSec(value : float) : message=
        var newesstvalue : float = 0.0
        
        #Round if over 100k
        if(value > 100000.0 and value < 1000000.0):
            newvalue := ((value/1000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageSecThou(newesstvalue)
        
        #Round if over 1M
        else if(value > 1000000.0 and value < 1000000000.0):
                newvalue := ((value/1000000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageSecMil(newesstvalue)
        
        #Round if over 1B 
        else if(value > 1000000000.0 and value < 1000000000000.0):
            newvalue := ((value/1000000000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageSecBil(newesstvalue)
        
        #Round if over 1T 
        else if(value > 1000000000000.0):
            newvalue := ((value/1000000000000.0) * 10.0)
            if(roundvalue := (Round[newvalue]* 0.1)):
                set newesstvalue = roundvalue
            return StringToMessageSecTril(newesstvalue)
        
        #Returns normal value if anything else
        else:
            return StringToMessageSec(value)

    NewMessageSecInt(value : int) : message= 
        return StringToMessageSecInt(value)
        
        
    #Message Converters For Resources
    RealStringToMessage<localizes>(value:string) : message = "{value}"
    StringToMessage<localizes>(value:float) : message = "{value}"
    StringToMessageThou<localizes>(value:float) : message = "{value}K"
    StringToMessageMil<localizes>(value:float) : message = "{value}M"
    StringToMessageBil<localizes>(value:float) : message = "{value}B"
    StringToMessageTril<localizes>(value:float) : message = "{value}T"
        
        
    #Message Converters for Idle Values
    StringToMessageSec<localizes>(value:float) : message = "                            {value}"
    StringToMessageSecInt<localizes>(value:int) : message = "                           Elims: {value}"
    TextForUI<localizes>(Text:string):message="{Text}"
    StringToMessageSecThou<localizes>(value:float) : message = "{value}K / Sec"
    StringToMessageSecMil<localizes>(value:float) : message = "{value}M / Sec"
    StringToMessageSecBil<localizes>(value:float) : message = "{value}B / Sec"
    StringToMessageSecTril<localizes>(value:float) : message = "{value}T / Sec"
        
                    
        
            
                

    
    


    