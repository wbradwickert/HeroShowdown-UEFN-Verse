using { /UnrealEngine.com/Temporary/UI }
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using {/Verse.org/Random}
using {/Fortnite.com/Characters}
using {/Fortnite.com/Game}
using { /Verse.org/Simulation/Tags }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Verse.org/Colors }

spawner := class(tag){}

Game_Manager := class(creative_device):
    @editable PetAssets : []creative_prop_asset = array{}
    @editable DesertBGAssets : []creative_prop = array{}
    @editable SubwayAssets : []creative_prop = array{}
    @editable SubwayCenterProp : []creative_prop = array{}
    @editable Train1AlarmOn : []creative_prop = array{}
    @editable Train1AlarmOff : []creative_prop = array{}
    @editable Train1Cinematic : cinematic_sequence_device = cinematic_sequence_device{}
    @editable Train1AlarmSFX : audio_player_device = audio_player_device{}
    @editable Train1WooshSFX : audio_player_device = audio_player_device{}
    @editable Train2AlarmOn : []creative_prop = array{}
    @editable Train2AlarmOff : []creative_prop = array{}
    @editable Train2Cinematic : cinematic_sequence_device = cinematic_sequence_device{}
    @editable Train2AlarmSFX : audio_player_device = audio_player_device{}
    @editable Train2WooshSFX : audio_player_device = audio_player_device{}
    @editable BillboardTeam1 : billboard_device = billboard_device{}
    @editable GamemodePickSFX : audio_player_device = audio_player_device{}
    @editable CameraPreGameTeam1 : gameplay_camera_fixed_angle_device = gameplay_camera_fixed_angle_device{}
    @editable CameraPreGameTeam2 : gameplay_camera_fixed_angle_device = gameplay_camera_fixed_angle_device{}
    @editable CameraDesertIntroTeam1 : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}
    @editable CinematicDesertIntro : cinematic_sequence_device = cinematic_sequence_device{}
    @editable CameraDesertIntroTeam2 : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}
    @editable CameraSubwayIntroTeam1 : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}
    @editable CinematicSubwayIntro : cinematic_sequence_device = cinematic_sequence_device{}
    @editable CameraSubwayIntroTeam2 : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}
    @editable SpawnerPreGameTeam1 : player_spawner_device = player_spawner_device{}
    @editable Spawner1Team1 : player_spawner_device = player_spawner_device{}
    @editable Spawner2Team1 : player_spawner_device = player_spawner_device{}
    @editable Spawner3Team1 : player_spawner_device = player_spawner_device{}
    @editable Spawner4Team1 : player_spawner_device = player_spawner_device{}
    @editable Spawner5Team1 : player_spawner_device = player_spawner_device{}
    @editable SpawnerPreGameTeam2 : player_spawner_device = player_spawner_device{}
    @editable Spawner1Team2 : player_spawner_device = player_spawner_device{}
    @editable Spawner2Team2 : player_spawner_device = player_spawner_device{}
    @editable Spawner3Team2 : player_spawner_device = player_spawner_device{}
    @editable Spawner4Team2 : player_spawner_device = player_spawner_device{}
    @editable Spawner5Team2 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner1Team1 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner2Team1 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner3Team1 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner4Team1 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner5Team1 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner1Team2 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner2Team2 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner3Team2 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner4Team2 : player_spawner_device = player_spawner_device{}
    @editable SubwaySpawner5Team2 : player_spawner_device = player_spawner_device{}
    @editable HUDSuperUse : hud_message_device = hud_message_device{}
    @editable SafeTeam1Desert : objective_device = objective_device{}
    @editable SafeTeam2Desert : objective_device = objective_device{}
    @editable SafeTeam1Subway : objective_device = objective_device{}
    @editable SafeTeam2Subway : objective_device = objective_device{}
    @editable GemTimerTeam1 : timer_device = timer_device{}
    @editable GemTimerTeam2 : timer_device = timer_device{}
    @editable GemCountCheck : conditional_button_device = conditional_button_device{}
    @editable GemDeathSpawn : item_spawner_device = item_spawner_device{}
    @editable GemSpawner : item_spawner_device = item_spawner_device{}
    @editable GemSpawnLight : customizable_light_device = customizable_light_device{}
    @editable GemSpawningSFX : audio_player_device = audio_player_device{}
    @editable GemSpawnSFX : audio_player_device = audio_player_device{}
    @editable DrinkGainSFX : audio_player_device = audio_player_device{}
    @editable GemGrabVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable GemPickupSFX : audio_player_device = audio_player_device{}
    @editable HUDEnemyCountdown : hud_message_device = hud_message_device{}
    @editable HUDTeamCountdown : hud_message_device = hud_message_device{}
    @editable DamageMultiplier : damage_amplifier_powerup_device = damage_amplifier_powerup_device{}
    @editable GameStartCinematicCameraTeam1 : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}
    @editable GameStartCinematicCameraTeam2 : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}
    @editable HUDController : hud_controller_device = hud_controller_device{}
    #@editable RoundSettings : round_settings_device = round_settings_device{}
    @editable Team1Settings : team_settings_and_inventory_device = team_settings_and_inventory_device{}
    @editable Team2Settings : team_settings_and_inventory_device = team_settings_and_inventory_device{}
    @editable HUDPickIntro : hud_message_device = hud_message_device{}
    @editable HUDPickStinger : hud_message_device = hud_message_device{}
    @editable HUDHeistMatchIntro : hud_message_device = hud_message_device{}
    @editable HUDHeistMatchStinger : hud_message_device = hud_message_device{}
    @editable HUDWipeoutMatchIntro : hud_message_device = hud_message_device{}
    @editable HUDWipeoutMatchStinger : hud_message_device = hud_message_device{}
    @editable HUDGemGrabMatchIntro : hud_message_device = hud_message_device{}
    @editable HUDGemGrabMatchStinger : hud_message_device = hud_message_device{}
    @editable PickClockSFX : audio_player_device = audio_player_device{}
    @editable PickBrawlerSFX : audio_player_device = audio_player_device{}
    @editable HUDMatchGo : hud_message_device = hud_message_device{}
    @editable MatchTimer : timer_device = timer_device{}
    @editable PlayerMarker : player_marker_device = player_marker_device{}
    @editable Class1SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class1SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    #@editable Class1ReloadTrigger : trigger_device = trigger_device{}
    @editable GoodKillNotifSFX : audio_player_device = audio_player_device{}
    @editable BadKillNotifSFX : audio_player_device = audio_player_device{}
    @editable SuperReadySFX : audio_player_device = audio_player_device{}
    @editable SuperReadyVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable DamageUpVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable PlayerFreezedVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable SuperReadyVFXToggle : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable SuperGainSFX : audio_player_device = audio_player_device{}
    @editable DeathSFX : audio_player_device = audio_player_device{}
    @editable PlayerRespawnSFX : audio_player_device = audio_player_device{}
    @editable EnemyRespawnSFX : audio_player_device = audio_player_device{}
    @editable PlayerGadgetSFX : audio_player_device = audio_player_device{}
    @editable EnemyGadgetSFX : audio_player_device = audio_player_device{}
    @editable LowHealthSFX : audio_player_device = audio_player_device{}
    @editable StarPowerSpeedSFX : audio_player_device = audio_player_device{}
    @editable StarPowerShieldSFX : audio_player_device = audio_player_device{}
    @editable VeryLowHealthSFX : audio_player_device = audio_player_device{}
    @editable HealHealthSFX : audio_player_device = audio_player_device{}
    @editable SuperUseErrorSFX : audio_player_device = audio_player_device{}
    @editable PlayerFreezedSFX : audio_player_device = audio_player_device{}
    @editable PlayerFreezedPostProcess : post_process_device = post_process_device{}
    @editable SuperTrigger : input_trigger_device = input_trigger_device{}
    @editable SuperGranter : item_granter_device = item_granter_device{}
    @editable SuperGranter2 : movement_modulator_device = movement_modulator_device{}
    @editable Class2SuperUseVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable WeaponTrigger : input_trigger_device = input_trigger_device{}
    #@editable AmmoGranter : item_granter_device = item_granter_device{}
    @editable Class2SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class2SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable MaxSuperSFX : audio_player_device = audio_player_device{}
    @editable Class3SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class3SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable BelleSuperTimerTeam1 : timer_device = timer_device{}
    @editable BelleSuperTimerTeam2 : timer_device = timer_device{}
    @editable BelleSpotterHitSFX : audio_player_device = audio_player_device{}
    @editable Class4SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class4SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable ProxMineRemover : item_remover_device = item_remover_device{}
    @editable Class5SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class5SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable DamageMultiplier2 : damage_amplifier_powerup_device = damage_amplifier_powerup_device{}
    @editable Class6SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class6SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable LeonTimerTeam1 : timer_device = timer_device{}
    @editable LeonTimerTeam2 : timer_device = timer_device{}
    @editable InvisibilityStartSFX : audio_player_device = audio_player_device{}
    @editable InvisibilityEndSFX : audio_player_device = audio_player_device{}
    @editable InvisibilityVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable Class7SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class7SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable UpwardImpulse : movement_modulator_device = movement_modulator_device{}
    @editable SurgeClassLVL1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable SurgeClassLVL2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable SurgeClassLVL3 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable SurgeSuperSFX : audio_player_device = audio_player_device{}
    @editable SurgeVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable Class11SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class11SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable PiperSuperSFX : audio_player_device = audio_player_device{}
    @editable PiperExplosionTeam1 : explosive_device = explosive_device{}
    @editable PiperExplosionTeam2 : explosive_device = explosive_device{}
    @editable PiperSuperLocationSFX : audio_player_device = audio_player_device{}
    @editable UpwardImpulse2 : movement_modulator_device = movement_modulator_device{}
    @editable PiperSuperTimerTeam1 : timer_device = timer_device{}
    @editable PiperSuperTimerTeam2 : timer_device = timer_device{}
    @editable DamageAmpMutatorZoneTeam1 : mutator_zone_device = mutator_zone_device{}
    @editable DamageAmpMutatorZoneTeam2 : mutator_zone_device = mutator_zone_device{}
    @editable DamageMultiplierZone : damage_amplifier_powerup_device = damage_amplifier_powerup_device{}
    @editable DamageAmpBuildingTeam1 : explosive_device = explosive_device{}
    @editable DamageAmpBuildingTeam2 : explosive_device = explosive_device{}
    @editable Class12SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class12SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable BrockClassSuper : class_and_team_selector_device = class_and_team_selector_device{}
    @editable BrockSuperTimerTeam1 : timer_device = timer_device{}
    @editable BrockSuperTimerTeam2 : timer_device = timer_device{}
    @editable BrockSuperUseVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable Class14SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class14SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable AutoTurretTeam1 : automated_turret_device = automated_turret_device{}
    @editable AutoTurretTeam2 : automated_turret_device = automated_turret_device{}
    @editable Class15SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class15SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable DamageAmpSFX : audio_player_device = audio_player_device{}
    @editable AmpPlaceSFX : audio_player_device = audio_player_device{}
    @editable Class16SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class16SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable WildlifeSpawnerTeam1 : wildlife_spawner_device = wildlife_spawner_device{}
    @editable WildlifeSpawnerTeam2 : wildlife_spawner_device = wildlife_spawner_device{}
    @editable NitaSuperSFX : audio_player_device = audio_player_device{}
    @editable Class17SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class17SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable PiperTireTeam1 : bouncer_device = bouncer_device{}
    @editable PiperTireTeam2 : bouncer_device = bouncer_device{}
    @editable HealMutatorZoneTeam1 : mutator_zone_device = mutator_zone_device{}
    @editable HealMutatorZoneTeam2 : mutator_zone_device = mutator_zone_device{}
    @editable HealPowerUpStart : health_powerup_device = health_powerup_device{}
    @editable HealBuildingTeam1 : explosive_device = explosive_device{}
    @editable HealBuildingTeam2 : explosive_device = explosive_device{}
    @editable Class18SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class18SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable ExplosiveLaunchClass18 : explosive_device = explosive_device{}
    @editable CrowTireTeam1 : bouncer_device = bouncer_device{}
    @editable CrowTireTeam2 : bouncer_device = bouncer_device{}
    @editable Class19SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class19SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable GusSuperTimerTeam1 : timer_device = timer_device{}
    @editable GusSuperTimerTeam2 : timer_device = timer_device{}
    @editable Class20SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class20SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable SupplyDropSuperTeam1 : supply_drop_spawner_device = supply_drop_spawner_device{}
    @editable SupplyDropSuperTeam2 : supply_drop_spawner_device = supply_drop_spawner_device{}
    @editable ExplosiveDropClass20Team1 : explosive_device = explosive_device{}
    @editable ExplosiveDropClass20Team2 : explosive_device = explosive_device{}
    @editable RuffSuperTimerTeam1 : timer_device = timer_device{}
    @editable RuffSuperTimerTeam2 : timer_device = timer_device{}
    @editable RuffSupplyDropSpawnSFX : audio_player_device = audio_player_device{}
    @editable MiscSuperUseVFX : visual_effect_powerup_device = visual_effect_powerup_device{}
    @editable Class21SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class21SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable LouDamageMutatorTeam1 : damage_volume_device = damage_volume_device{}
    @editable LouDamageMutatorSFXTeam1 : audio_player_device = audio_player_device{}
    @editable LouDamageMutatorTeam2 : damage_volume_device = damage_volume_device{}
    @editable LouDamageMutatorSFXTeam2 : audio_player_device = audio_player_device{}
    @editable LouSuperTimerTeam1 : timer_device = timer_device{}
    @editable LouSuperTimerTeam2 : timer_device = timer_device{}
    @editable Class22SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class22SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Fire1 : fire_volume_device = fire_volume_device{}
    @editable StuMovement : movement_modulator_device = movement_modulator_device{}
    @editable StuFireMutatorTeam1 : damage_volume_device = damage_volume_device{}
    @editable StuFireMutatorTeam2 : damage_volume_device = damage_volume_device{}
    @editable StuSuperSFX : audio_player_device = audio_player_device{}
    @editable StuFireSFXTeam1 : audio_player_device = audio_player_device{}
    @editable StuFireSFXTeam2 : audio_player_device = audio_player_device{}
    @editable StuTimerTeam1 : timer_device = timer_device{}
    @editable StuTimerTeam2 : timer_device = timer_device{}
    @editable Class23SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class23SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable CharlieTrapTimerTeam1 : timer_device = timer_device{}
    @editable CharlieTrapTimerTeam2 : timer_device = timer_device{}
    @editable Class24SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class24SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable MaisieExplosionTimerTeam1 : timer_device = timer_device{}
    @editable MaisieExplosionTimerTeam2 : timer_device = timer_device{}
    @editable ExplosiveDropClass24Team1 : explosive_device = explosive_device{}
    @editable ExplosiveDropClass24Team2 : explosive_device = explosive_device{}
    @editable MaisieSuperLocationSFX : audio_player_device = audio_player_device{}
    @editable Class25SelectorTeam1 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable Class25SelectorTeam2 : class_and_team_selector_device = class_and_team_selector_device{}
    @editable LilySuperTimerTeam1 : timer_device = timer_device{}
    @editable LilySuperTimerTeam2 : timer_device = timer_device{}
    @editable LilySuperClass : class_and_team_selector_device = class_and_team_selector_device{}
    @editable LilyTeleportSFX : audio_player_device = audio_player_device{}
    @editable LilyTimerSFX : audio_player_device = audio_player_device{}
    @editable Guard : guard_spawner_device = guard_spawner_device{}

    
    



    
    
    StringToMessage<localizes>(String : string) : message = "{String}"
    var CustomPlayers : [player]custom_player = map{}
    CLASS_1 : int = 1
    CLASS_2 : int = 2
    CLASS_3 : int = 3
    CLASS_4 : int = 4
    CLASS_5 : int = 5
    CLASS_6 : int = 6
    CLASS_7 : int = 7
    SURGE_LVL1 : int = 8
    SURGE_LVL2 : int = 9
    SURGE_LVL3 : int = 10
    CLASS_11 : int = 11
    CLASS_12 : int = 12
    BROCK_SUPER : int = 13
    CLASS_14 : int = 14
    CLASS_15 : int = 15
    CLASS_16 : int = 16
    CLASS_17 : int = 17
    CLASS_18 : int = 18
    CLASS_19 : int = 19
    CLASS_20 : int = 20
    CLASS_21 : int = 21
    CLASS_22 : int = 22
    CLASS_23 : int = 23
    CLASS_24 : int = 24
    CLASS_25 : int = 25
    LILY_SUPER : int = 26
    CLASS_TOTAL : int = 21
    var ClassesInUseTeam1 : []logic = array{true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true}
    var ClassesInUseTeam2 : []logic = array{true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true}
    var GameTime : float = 0.0
    var MatchTime : float = 0.0
    var PickStarted : logic = false
    var IntroRunning : logic = false
    var PickDone : logic = false
    var GameType : int = 0
    var GameMap : int = 0
    var ModifierType : int = 0
    var GameStarted : logic = false
    var DebugMode : logic = false
    var WipeoutTeam1Score : int = 0
    var WipeoutTeam2Score : int = 0
    var GemsTeam1 : int = 0
    var GemsTeam2 : int = 0
    var GemsTeam1Winning : logic = false
    var GemsTeam2Winning : logic = false
    var Train1Status : int = 0
    var Train2Status : int = 0
    
    
    OnBegin<override>()<suspends>:void=
        Print("START")
        
        for(Item: DesertBGAssets):
            Item.Hide()
        GetPlayspace().PlayerRemovedEvent().Subscribe(OnPlayerLeftServer)
        InitSpawners()
        spawn{TimerCheck()}
        
        
        GemTimerTeam1.SuccessEvent.Subscribe(OnGemTimerTeam1)
        GemTimerTeam2.SuccessEvent.Subscribe(OnGemTimerTeam2)
        GemSpawner.ItemPickedUpEvent.Subscribe(OnGemPickup)
        GemDeathSpawn.ItemPickedUpEvent.Subscribe(OnGemDeathPickup)
        Team1Settings.EnemyEliminatedEvent.Subscribe(OnTeam1EnemyEliminated)
        Team1Settings.TeamMemberEliminatedEvent.Subscribe(OnTeam1TeamMemberEliminated)
        Team1Settings.TeamMemberSpawnedEvent.Subscribe(OnTeam1TeamMemberSpawned)
        Team2Settings.EnemyEliminatedEvent.Subscribe(OnTeam2EnemyEliminated)
        Team2Settings.TeamMemberEliminatedEvent.Subscribe(OnTeam2TeamMemberEliminated)
        Team2Settings.TeamMemberSpawnedEvent.Subscribe(OnTeam2TeamMemberSpawned)
        SafeTeam1Desert.DestroyedEvent.Subscribe(OnTeam1Safe)
        SafeTeam2Desert.DestroyedEvent.Subscribe(OnTeam2Safe)
        SafeTeam1Subway.DestroyedEvent.Subscribe(OnTeam1Safe)
        SafeTeam2Subway.DestroyedEvent.Subscribe(OnTeam2Safe)
        Class1SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass1Change)
        Class1SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass1Change)
        SuperTrigger.PressedEvent.Subscribe(TrySuper)
        WeaponTrigger.PressedEvent.Subscribe(TryWeapon)
        Class2SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass2Change)
        Class2SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass2Change)
        Class3SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass3Change)
        BelleSuperTimerTeam1.SuccessEvent.Subscribe(OnBelleTimer)
        BelleSuperTimerTeam2.SuccessEvent.Subscribe(OnBelleTimer)
        Class3SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass3Change)
        Class4SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass4Change)
        Class4SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass4Change)
        Class5SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass5Change)
        Class5SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass5Change)
        Class6SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass6Change)
        Class6SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass6Change)
        LeonTimerTeam1.SuccessEvent.Subscribe(OnLeonTimer)
        LeonTimerTeam2.SuccessEvent.Subscribe(OnLeonTimer)
        Class7SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass7Change)
        Class7SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass7Change)
        Class11SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass11Change)
        Class11SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass11Change)
        Class12SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass12Change)
        Class12SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass12Change)
        BrockSuperTimerTeam1.SuccessEvent.Subscribe(OnBrockTimer)
        BrockSuperTimerTeam2.SuccessEvent.Subscribe(OnBrockTimer)
        Class14SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass14Change)
        Class14SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass14Change)
        DamageAmpMutatorZoneTeam1.AgentEntersEvent.Subscribe(OnDamageMutatorTeam1Enter)
        DamageAmpMutatorZoneTeam2.AgentEntersEvent.Subscribe(OnDamageMutatorTeam2Enter)
        DamageAmpMutatorZoneTeam1.AgentExitsEvent.Subscribe(OnDamageMutatorTeam1Exit)
        DamageAmpMutatorZoneTeam2.AgentExitsEvent.Subscribe(OnDamageMutatorTeam2Exit)
        DamageAmpBuildingTeam1.ExplodedEvent.Subscribe(OnDamageAmpTeam1Destroyed)
        DamageAmpBuildingTeam2.ExplodedEvent.Subscribe(OnDamageAmpTeam2Destroyed)
        HealBuildingTeam1.ExplodedEvent.Subscribe(OnHealZoneTeam1Destroyed)
        HealBuildingTeam2.ExplodedEvent.Subscribe(OnHealZoneTeam2Destroyed)
        Class15SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass15Change)
        Class15SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass15Change)
        Class16SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass16Change)
        Class16SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass16Change)
        Class17SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass17Change)
        Class17SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass17Change)
        Class18SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass18Change)
        Class18SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass18Change)
        Class19SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass19Change)
        Class19SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass19Change)
        Class20SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass20Change)
        Class20SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass20Change)
        RuffSuperTimerTeam1.SuccessEvent.Subscribe(OnRuffTimerTeam1)
        RuffSuperTimerTeam2.SuccessEvent.Subscribe(OnRuffTimerTeam2)
        Class21SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass21Change)
        Class21SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass21Change)
        LouSuperTimerTeam1.SuccessEvent.Subscribe(OnLouTimerTeam1)
        LouSuperTimerTeam2.SuccessEvent.Subscribe(OnLouTimerTeam2)
        PiperSuperTimerTeam1.SuccessEvent.Subscribe(OnPiperTimerTeam1)
        PiperSuperTimerTeam2.SuccessEvent.Subscribe(OnPiperTimerTeam2)
        Class22SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass22Change)
        Class22SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass22Change)
        Class23SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass23Change)
        Class23SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass23Change)
        CharlieTrapTimerTeam1.SuccessEvent.Subscribe(OnCharlieTimer)
        CharlieTrapTimerTeam2.SuccessEvent.Subscribe(OnCharlieTimer)
        Class24SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass24Change)
        Class24SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass24Change)
        MaisieExplosionTimerTeam1.SuccessEvent.Subscribe(OnMaisieTimerTeam1)
        MaisieExplosionTimerTeam2.SuccessEvent.Subscribe(OnMaisieTimerTeam2)
        Class25SelectorTeam1.ClassSwitchedEvent.Subscribe(OnClass25Change)
        Class25SelectorTeam2.ClassSwitchedEvent.Subscribe(OnClass25Change)
        LilySuperTimerTeam1.SuccessEvent.Subscribe(OnLilyTimer)
        LilySuperTimerTeam2.SuccessEvent.Subscribe(OnLilyTimer)
        StuTimerTeam1.SuccessEvent.Subscribe(OnStuTimer)
        StuTimerTeam2.SuccessEvent.Subscribe(OnStuTimer)
        CinematicDesertIntro.StoppedEvent.Subscribe(OnCineDone)

    OnCineDone():void=
        Print("TestDONE")

    OnGemTimerTeam1(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                Team1Settings.EndRound()

    OnGemTimerTeam2(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                Team2Settings.EndRound()

    OnTeam1EnemyEliminated(Agent : agent):void=
        GoodKillNotifSFX.UnregisterAll()
        for (Key -> Value : CustomPlayers):
            if(Value.GetTeam() = 1):
                GoodKillNotifSFX.Register(Key)
                GoodKillNotifSFX.Play()
        Print("! 1 ! : Team 2 Member eliminated")
        
        if(GameType = 2):
            set WipeoutTeam1Score += 1
            Print("Team 1 Score: {WipeoutTeam1Score}")
            UpdateWipeoutHUDScore()
            if(WipeoutTeam1Score = 10):
                Team1Settings.EndRound()
            


    OnTeam1TeamMemberEliminated(Agent : agent):void=
        BadKillNotifSFX.UnregisterAll()
        for (Key -> Value : CustomPlayers):
            if(Value.GetTeam() = 1):
                BadKillNotifSFX.Register(Key)
                BadKillNotifSFX.Play()

        if(CP:custom_player = CustomPlayers[Agent]):
            if(CP.GetGemCount() > 0):
                if:
                    SpawnGemDrop := GemDeathSpawn.TeleportTo[CP.GetCurrentLocationMutator()]
                then:
                    SpawnGemDrop
                    var GemTemp : int = GemCountCheck.GetItemCount(Agent, 0)
                    Print("Loop starting")
                    loop:
                        if(CP.GetGemCount() <= 0):
                            Print("Break")
                            CP.SetGemCount(0)
                        
                            UpdateGemGrabHUDScore()
                            break
                        else:
                            GemDeathSpawn.SpawnItem()
                            CP.SetGemCount(CP.GetGemCount() - 1)
                            Print("Gem spawned")
                    
                            
                     

        Print("! 1 ! : Team Member eliminated")
        set GemsTeam1 = 0
        for (Key -> Value : CustomPlayers):
            if(Value.GetTeam() = 1):
                set GemsTeam1 = GemsTeam1 + Value.GetGemCount()
        if(GemsTeam1 <= 9):
            GemTimerTeam1.Reset()
            set GemsTeam1Winning = false

            
        UpdateGemGrabHUDScore()

    OnTeam1TeamMemberSpawned(Agent : agent):void=
        PlayerRespawnSFX.UnregisterAll()
        EnemyRespawnSFX.UnregisterAll()
        for (Key -> Value : CustomPlayers):
            if(Value.GetTeam() = 1):
                PlayerRespawnSFX.Register(Key)
                PlayerRespawnSFX.Play()
                EnemyRespawnSFX.Register(Key)
                EnemyRespawnSFX.Play()
            else if(Value.GetTeam() = 2):

        Print("! 1 ! : Team Member spawned")

    OnTeam2EnemyEliminated(Agent : agent):void=
        GoodKillNotifSFX.UnregisterAll()
        for (Key -> Value : CustomPlayers):
            if(Value.GetTeam() = 2):
                GoodKillNotifSFX.Register(Key)
                GoodKillNotifSFX.Play()
        Print("! 2 ! : Team 1 Member eliminated")
        if(GameType = 2):
            set WipeoutTeam2Score += 1
            Print("Team 2 Score: {WipeoutTeam2Score}")
            UpdateWipeoutHUDScore()
            if(WipeoutTeam2Score = 10):
                Team2Settings.EndRound()
    
    OnTeam2TeamMemberEliminated(Agent : agent):void=
        BadKillNotifSFX.UnregisterAll()
        for (Key -> Value : CustomPlayers):
            if(Value.GetTeam() = 2):
                BadKillNotifSFX.Register(Key)
                BadKillNotifSFX.Play()

        if(CP:custom_player = CustomPlayers[Agent]):
            if(CP.GetGemCount() > 0):
                Print("Gem Count Greater than 0")
                if:
                    SpawnGemDrop := GemDeathSpawn.TeleportTo[CP.GetCurrentLocationMutator()]
                then:
                    SpawnGemDrop
                    var GemTemp : int = GemCountCheck.GetItemCount(Agent, 0)
                        if(GemsTeam2Winning = true, GemsTeam2 <= 10):
                            GemTimerTeam2.Reset()
                            set GemsTeam2Winning = false
                    CP.SetGemCount(CP.GetGemCount() - 1)
                    Print("Loop starting")
                    loop:
                        if(CP.GetGemCount() > 0):
                            CP.SetGemCount(CP.GetGemCount() - 1)
                        if(CP.GetGemCount() = 0):
                            Print("Break")
                            CP.SetGemCount(CP.GetGemCount() - 1)
                            
                            UpdateGemGrabHUDScore()
                            break
                        else:
                            GemDeathSpawn.SpawnItem()
                            Print("Gem spawned")

        Print("! 2 ! : Team Member eliminated")
        set GemsTeam2 = 0
            for (Key -> Value : CustomPlayers):
                if(Value.GetTeam() = 2):
                    set GemsTeam2 = GemsTeam2 + Value.GetGemCount()
        UpdateGemGrabHUDScore()
    
    OnTeam2TeamMemberSpawned(Agent : agent):void=
        PlayerRespawnSFX.UnregisterAll()
        EnemyRespawnSFX.UnregisterAll()
        for (Key -> Value : CustomPlayers):
            if(Value.GetTeam() = 2):
                PlayerRespawnSFX.Register(Key)
                PlayerRespawnSFX.Play()
                EnemyRespawnSFX.Register(Key)
                EnemyRespawnSFX.Play()
            else if(Value.GetTeam() = 1):
        Print("! 2 ! : Team Member spawned")

    PlayPanicSFX(WinningTeam : int):void=
        for (Key -> Value : CustomPlayers):
            if(WinningTeam = 1):
                if(Value.GetTeam() = 1):
                    HUDTeamCountdown.Show(Key)
                else if(Value.GetTeam() = 2):
                    HUDEnemyCountdown.Show(Key)
            else if(WinningTeam = 2):
                if(Value.GetTeam() = 1):
                    HUDEnemyCountdown.Show(Key)
                else if(Value.GetTeam() = 2):
                    HUDTeamCountdown.Show(Key)

    OnGemPickup(Agent : agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            var GemTemp : int = GemCountCheck.GetItemCount(Agent, 0)
            CP.SetGemCount(GemTemp)
            
            if(CP.GetTeam() = 1):
                set GemsTeam1 = 0
                for (Key -> Value : CustomPlayers):
                    set GemsTeam1 = GemsTeam1 + Value.GetGemCount()
                    
                    if(GemsTeam1 >= 10):
                        PlayPanicSFX(1)
                        GemTimerTeam1.Start(Agent)
                        set GemsTeam1Winning = true
            else if(CP.GetTeam() = 2):
                set GemsTeam2 = 0
                for (Key -> Value : CustomPlayers):
                    set GemsTeam2 = GemsTeam2 + Value.GetGemCount()
                    if(GemsTeam2 >= 10):
                        PlayPanicSFX(2)
                        GemTimerTeam2.Start(Agent)
                        set GemsTeam2Winning = true
            UpdateGemGrabHUDScore()
            GemPickupSFX.UnregisterAll()
            GemPickupSFX.Register(Agent)
            GemPickupSFX.Play()
            GemGrabVFX.Pickup(Agent)
        

    OnGemDeathPickup(Agent : agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            var GemTemp : int = GemCountCheck.GetItemCount(Agent, 0)
            CP.SetGemCount(GemTemp)
            
            if(CP.GetTeam() = 1):
                set GemsTeam1 = 0
                for (Key -> Value : CustomPlayers):
                    set GemsTeam1 = GemsTeam1 + Value.GetGemCount()
                    
                    if(GemsTeam1 >= 10):
                        PlayPanicSFX(1)
                        GemTimerTeam1.Start(Agent)
                        set GemsTeam1Winning = true
            else if(CP.GetTeam() = 2):
                set GemsTeam2 = 0
                for (Key -> Value : CustomPlayers):
                    set GemsTeam2 = GemsTeam2 + Value.GetGemCount()
                    if(GemsTeam2 >= 10):
                        PlayPanicSFX(2)
                        GemTimerTeam2.Start(Agent)
                        set GemsTeam2Winning = true
            UpdateGemGrabHUDScore()
            GemPickupSFX.UnregisterAll()
            GemPickupSFX.Register(Agent)
            GemPickupSFX.Play()
            GemGrabVFX.Pickup(Agent)

    OnTeam1Safe(Agent : agent):void=
        Team2Settings.EndRound()
        Print("TEAM 2 WINS")

        
    OnTeam2Safe(Agent : agent):void=
        Team1Settings.EndRound()
        Print("TEAM 1 WINS")

    OnStuTimer(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                if(CP.GetTeam() = 1):
                    if:
                        ResetLouMutator := StuFireMutatorTeam1.TeleportTo[CP.GetCurrentLocation3()]
                    then:
                        ResetLouMutator
                else if(CP.GetTeam() = 2):
                    if:
                        ResetLouMutator := StuFireMutatorTeam2.TeleportTo[CP.GetCurrentLocation3()]
                    then:
                        ResetLouMutator


    OnLilyTimer(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                if(CP.GetTeam() = 1):
                    Class25SelectorTeam1.ChangeClass(RealAgent)
                else if(CP.GetTeam() = 2):
                    Class25SelectorTeam2.ChangeClass(RealAgent)
                CP.SetClass(25)
                

    OnBrockTimer(Agent:?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                if(CP.GetTeam() = 1):
                    Class12SelectorTeam1.ChangeClass(RealAgent)
                else if(CP.GetTeam() = 2):
                    Class12SelectorTeam2.ChangeClass(RealAgent)
                Print("Timer Done")

    OnLeonTimer(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                CP.SetCanBeInvisible(false)
                InvisibilityEndSFX.UnregisterAll()
                InvisibilityEndSFX.Register(RealAgent)
                InvisibilityEndSFX.Play()
                
    OnMaisieTimerTeam1(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                ExplosiveDropClass24Team1.Explode(RealAgent)

    OnMaisieTimerTeam2(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                ExplosiveDropClass24Team2.Explode(RealAgent)


    OnCharlieTimer(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                CP.SetIsTrapped(false)

    OnPiperTimerTeam1(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                PiperExplosionTeam1.Explode(RealAgent)

    OnPiperTimerTeam2(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                PiperExplosionTeam2.Explode(RealAgent)


    OnSupplyDropLand<private>():void=
        Print("DROPPED")
    
    OnLouTimerTeam1(Agent:?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                if:
                    ResetLouMutator := LouDamageMutatorTeam1.TeleportTo[CP.GetCurrentLocation3()]
                then:
                    ResetLouMutator
            Print("Lou Timer Done")

    OnLouTimerTeam2(Agent:?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                if:
                    ResetLouMutator := LouDamageMutatorTeam2.TeleportTo[CP.GetCurrentLocation3()]
                then:
                    ResetLouMutator
            Print("Lou Timer Done")

    OnRuffTimerTeam1(Agent:?agent):void=
        if(RealAgent := Agent?):
            ExplosiveDropClass20Team1.Explode(RealAgent)
            Print("Timer Done")

    OnRuffTimerTeam2(Agent:?agent):void=
        if(RealAgent := Agent?):
            ExplosiveDropClass20Team2.Explode(RealAgent)
            Print("Timer Done")


    OnBelleTimer(Agent : ?agent):void=
        if(RealAgent := Agent?):
            if(CP:custom_player = CustomPlayers[RealAgent]):
                CP.SetCanUseSpotter(false)

    TimerCheck<private>()<suspends>:void=
        loop:
            Sleep(0.5)
            set GameTime += 0.5
            #Print("{GameTime}")
            if(GameTime = 0.0):
                for (Key -> Value : CustomPlayers):
                    S:stasis_args = stasis_args{}
                    if(S.AllowEmotes = false, S.AllowFalling = false, S.AllowTurning = false):
                        if(Hold := Key.GetFortCharacter[].PutInStasis(S)):
                            Hold
            if(GameTime = 1.0):
                RandShow : int = GetRandomInt(1, 3)
                Print("{RandShow}")
                GamemodePickSFX.Play()
            if(GameTime = 1.50):
                RandShow : int = GetRandomInt(1, 3)
                Print("{RandShow}")
                GamemodePickSFX.Play()
            if(GameTime = 2.0):
                RandShow : int = GetRandomInt(1, 3)
                Print("{RandShow}")
                GamemodePickSFX.Play()
            if(GameTime = 2.50):
                RandShow : int = GetRandomInt(1, 3)
                Print("{RandShow}")
                GamemodePickSFX.Play()
                
            if(GameTime = 3.0):
                for (Key -> Value : CustomPlayers):
                    if(Value.GetTeam() = 1):
                        CameraPreGameTeam1.AddTo(Key)
                    else if(Value.GetTeam() = 2):
                        CameraPreGameTeam2.AddTo(Key)
                HUDPickIntro.Show()
                RandMode : int = GetRandomInt(1, 3)
                RandMap : int = GetRandomInt(1, 2)
                set GameType = RandMode
                set GameMap = RandMap
                Print("GameMode: {GameType}")
                Print("GameMap: {GameMap}")

                if(GameMap = 1):
                    Print("Desert")
                    for(Item: DesertBGAssets):
                        Item.Show()
                else if(GameMap = 2):
                    Print("Subway")
                    for(Item: DesertBGAssets):
                        if:
                            DisposeAsset := Item.TeleportTo[LouDamageMutatorTeam2.GetTransform()]
                        then:
                            DisposeAsset
                    
            

            if(GameTime = 3.5):
                CameraPreGameTeam1.RemoveFromAll()
                CameraPreGameTeam2.RemoveFromAll()
            if(GameTime = 4.0):
                HUDPickStinger.Show()
                for (Key -> Value : CustomPlayers):
                    if(Release := Key.GetFortCharacter[].ReleaseFromStasis()):
                        Release
            if(GameTime >= 4.0, GameTime <= 14.0):
                PickClockSFX.Play()
            if(GameTime = 14.0):
            if(GameTime = 14.5):
                set PickDone = true
                PlayerMarker.Enable()
                spawn{GemSpawnLoop()}
                GemSpawner.Enable()
                for (Key -> Value : CustomPlayers):
                    var ValidPick : logic = false
                    PlayerMarker.Attach(Key)
                    if(Value.GetClass() = 0):
                        loop:
                            if(ValidPick = true):
                                break
                            Rand : int = GetRandomInt(0, (CLASS_TOTAL - 1))
                            if(ClassesInUseTeam1[Rand] = false, Value.GetTeam() = 1):
                                Value.SetClass(Rand)
                                case(Rand):
                                    0=>
                                        Class1SelectorTeam1.ChangeClass(Key)
                                    1=>
                                        Class2SelectorTeam1.ChangeClass(Key)
                                    2=>
                                        Class3SelectorTeam1.ChangeClass(Key)
                                    3=>
                                        Class4SelectorTeam1.ChangeClass(Key)
                                    4=>
                                        Class5SelectorTeam1.ChangeClass(Key)
                                    5=>
                                        Class6SelectorTeam1.ChangeClass(Key)
                                    6=>
                                        Class7SelectorTeam1.ChangeClass(Key)
                                    7=>
                                        Class11SelectorTeam1.ChangeClass(Key)
                                    8=>
                                        Class12SelectorTeam1.ChangeClass(Key)
                                    9=>
                                        Class14SelectorTeam1.ChangeClass(Key)
                                    10=>
                                        Class15SelectorTeam1.ChangeClass(Key)
                                    11=>
                                        Class16SelectorTeam1.ChangeClass(Key)
                                    12=>
                                        Class17SelectorTeam1.ChangeClass(Key)
                                    13=>
                                        Class18SelectorTeam1.ChangeClass(Key)
                                    14=>
                                        Class19SelectorTeam1.ChangeClass(Key)
                                    15=>
                                        Class20SelectorTeam1.ChangeClass(Key)
                                    16=>
                                        Class21SelectorTeam1.ChangeClass(Key)
                                    17=>
                                        Class22SelectorTeam1.ChangeClass(Key)
                                    18=>
                                        Class23SelectorTeam1.ChangeClass(Key) 
                                    19=>
                                        Class24SelectorTeam1.ChangeClass(Key)
                                    20=>
                                        Class25SelectorTeam1.ChangeClass(Key)                           
                                    _ =>
                                        Print("Error assigning random class")
                                set ValidPick = true
                            else if(ClassesInUseTeam2[Rand] = false, Value.GetTeam() = 2):
                                Value.SetClass(Rand)
                                case(Rand):
                                    0=>
                                        Class1SelectorTeam2.ChangeClass(Key)
                                    1=>
                                        Class2SelectorTeam2.ChangeClass(Key)
                                    2=>
                                        Class3SelectorTeam2.ChangeClass(Key)
                                    3=>
                                        Class4SelectorTeam2.ChangeClass(Key)
                                    4=>
                                        Class5SelectorTeam2.ChangeClass(Key)
                                    5=>
                                        Class6SelectorTeam2.ChangeClass(Key)
                                    6=>
                                        Class7SelectorTeam2.ChangeClass(Key)
                                    7=>
                                        Class11SelectorTeam2.ChangeClass(Key)
                                    8=>
                                        Class12SelectorTeam2.ChangeClass(Key)
                                    9=>
                                        Class14SelectorTeam2.ChangeClass(Key)
                                    10=>
                                        Class15SelectorTeam2.ChangeClass(Key)
                                    11=>
                                        Class16SelectorTeam2.ChangeClass(Key)
                                    12=>
                                        Class17SelectorTeam2.ChangeClass(Key)
                                    13=>
                                        Class18SelectorTeam2.ChangeClass(Key)
                                    14=>
                                        Class19SelectorTeam2.ChangeClass(Key)
                                    15=>
                                        Class20SelectorTeam2.ChangeClass(Key)
                                    16=>
                                        Class21SelectorTeam2.ChangeClass(Key)
                                    17=>
                                        Class22SelectorTeam2.ChangeClass(Key)
                                    18=>
                                        Class23SelectorTeam2.ChangeClass(Key) 
                                    19=>
                                        Class24SelectorTeam2.ChangeClass(Key)
                                    20=>
                                        Class25SelectorTeam2.ChangeClass(Key)                           
                                    _ =>
                                        Print("Error assigning random class")
                                set ValidPick = true
                            
                            else:
                                Print("Redoing Pick")
                            
                        PickBrawlerSFX.Play(Key)
                        
                        
                        





            if(PickDone = true):
                set MatchTime += 0.5

                
            if(MatchTime = 0.5):
                SpawnerPreGameTeam1.Disable()
                SpawnerPreGameTeam2.Disable()
                if(GameMap = 1):
                    Spawner1Team1.Enable()
                    Spawner2Team1.Enable()
                    Spawner3Team1.Enable()
                    Spawner4Team1.Enable()
                    Spawner5Team1.Enable()
                    Spawner1Team2.Enable()
                    Spawner2Team2.Enable()
                    Spawner3Team2.Enable()
                    Spawner4Team2.Enable()
                    Spawner5Team2.Enable()
                    
                else if(GameMap = 2):
                    spawn{TrainLoop()}
                    SubwaySpawner1Team1.Enable()
                    SubwaySpawner2Team1.Enable()
                    SubwaySpawner3Team1.Enable()
                    SubwaySpawner4Team1.Enable()
                    SubwaySpawner5Team1.Enable()
                    SubwaySpawner1Team2.Enable()
                    SubwaySpawner2Team2.Enable()
                    SubwaySpawner3Team2.Enable()
                    SubwaySpawner4Team2.Enable()
                    SubwaySpawner5Team2.Enable()
                var Team1Tick : int = 0
                var Team2Tick : int = 0
                
                for (Key -> Value : CustomPlayers):
                    S:stasis_args = stasis_args{}
                    if(S.AllowEmotes = false, S.AllowFalling = false, S.AllowTurning = false):
                        if(Freeze := Key.GetFortCharacter[].PutInStasis(S)):
                            Freeze
                    if(Value.GetTeam() = 1):
                        set Team1Tick += 1
                        CameraDesertIntroTeam1.AddTo(Key)
                        if(Team1Tick = 1):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner1Team1.GetTransform().Translation + vector3{Z:=60.0}, Spawner1Team1.GetTransform().Rotation]):
                                    Teleport
                                    Print("HELLO")
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner1Team1.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner1Team1.GetTransform().Rotation]):
                                    Teleport
                                Print("{SubwaySpawner1Team1.GetTransform().Translation}")
                                Print("{SubwaySpawner1Team1.GetTransform().Rotation}")
                        else if(Team1Tick = 2):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner2Team1.GetTransform().Translation, Spawner2Team1.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner2Team1.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner2Team1.GetTransform().Rotation]):
                                    Teleport
                        else if(Team1Tick = 3):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner3Team1.GetTransform().Translation, Spawner3Team1.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner3Team1.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner3Team1.GetTransform().Rotation]):
                                    Teleport
                        else if(Team1Tick = 4):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner4Team1.GetTransform().Translation, Spawner4Team1.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner4Team1.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner4Team1.GetTransform().Rotation]):
                                    Teleport
                        else if(Team1Tick = 5):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner5Team1.GetTransform().Translation, Spawner5Team1.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner5Team1.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner5Team1.GetTransform().Rotation]):
                                    Teleport
                    else if(Value.GetTeam() = 2):
                        set Team2Tick += 1
                        CameraDesertIntroTeam2.AddTo(Key)
                        if(Team2Tick = 1):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner1Team2.GetTransform().Translation, Spawner1Team2.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner1Team2.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner1Team2.GetTransform().Rotation]):
                                    Teleport
                        else if(Team2Tick = 2):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner2Team2.GetTransform().Translation, Spawner2Team2.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner2Team2.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner2Team2.GetTransform().Rotation]):
                                    Teleport
                        else if(Team2Tick = 3):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner3Team2.GetTransform().Translation, Spawner3Team2.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner3Team2.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner3Team2.GetTransform().Rotation]):
                                    Teleport
                        else if(Team2Tick = 4):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner4Team2.GetTransform().Translation, Spawner4Team2.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner4Team2.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner4Team2.GetTransform().Rotation]):
                                    Teleport
                        else if(Team2Tick = 5):
                            if(GameMap = 1):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[Spawner5Team2.GetTransform().Translation, Spawner5Team2.GetTransform().Rotation]):
                                    Teleport
                            else if(GameMap = 2):
                                if(Teleport := Key.GetFortCharacter[].TeleportTo[SubwaySpawner5Team2.GetTransform().Translation + vector3{Z:=60.0}, SubwaySpawner5Team2.GetTransform().Rotation]):
                                    Teleport
                if(GameMap = 1):
                    CinematicDesertIntro.Play()
                else if(GameMap = 2):
                    CinematicSubwayIntro.Play()
                if(GameType = 1):
                    HUDHeistMatchIntro.Show()
                    if:
                        DisposeGemSpawnerLight := GemSpawnLight.TeleportTo[LouDamageMutatorTeam2.GetTransform()]
                    then:
                        DisposeGemSpawnerLight
                    
                else if(GameType = 2):
                    HUDWipeoutMatchIntro.Show()
                    for (Key -> Value : CustomPlayers):
                        InitHUD(Key)
                    if:
                        DisposeObjective := SafeTeam1Desert.TeleportTo[LouDamageMutatorTeam2.GetTransform()], SafeTeam2Desert.TeleportTo[LouDamageMutatorTeam2.GetTransform()],
                        SafeTeam1Subway.TeleportTo[LouDamageMutatorTeam2.GetTransform()], SafeTeam2Subway.TeleportTo[LouDamageMutatorTeam2.GetTransform()]
                    then:
                        DisposeObjective
                    if:
                        DisposeGemSpawnerLight := GemSpawnLight.TeleportTo[LouDamageMutatorTeam2.GetTransform()]
                    then:
                        DisposeGemSpawnerLight

                else if(GameType = 3):
                    HUDGemGrabMatchIntro.Show()
                    for (Key -> Value : CustomPlayers):
                        InitHUD(Key)
                    if:
                        DisposeObjective := SafeTeam1Desert.TeleportTo[LouDamageMutatorTeam2.GetTransform()], SafeTeam2Desert.TeleportTo[LouDamageMutatorTeam2.GetTransform()],
                        SafeTeam1Subway.TeleportTo[LouDamageMutatorTeam2.GetTransform()], SafeTeam2Subway.TeleportTo[LouDamageMutatorTeam2.GetTransform()]
                    then:
                        DisposeObjective
                    if(GameMap = 2):
                        for(Item : SubwayCenterProp):
                            if:
                                SpawnGemSpawn := GemSpawner.TeleportTo[Item.GetTransform()], GemSpawnLight.TeleportTo[Item.GetTransform()], GemSpawningSFX.TeleportTo[Item.GetTransform()], GemSpawnSFX.TeleportTo[Item.GetTransform()]
                            then:
                                SpawnGemSpawn
            if(MatchTime = 3.0):
                if(GameType = 1):
                    HUDHeistMatchStinger.Show()
                else if(GameType = 2):
                    HUDWipeoutMatchStinger.Show()
                else if(GameType = 3):
                    HUDGemGrabMatchStinger.Show()
            if(MatchTime = 4.5):
                CameraDesertIntroTeam1.RemoveFromAll()
                CameraDesertIntroTeam2.RemoveFromAll()
            if(MatchTime = 7.0):
                HUDMatchGo.Show()
                for (Key -> Value : CustomPlayers):
                    if(Unfreeze := Key.GetFortCharacter[].ReleaseFromStasis()):
                            Unfreeze

                
                set GameStarted = true


    
            
    OnDamageAmpTeam1Destroyed<private>(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if:
                ResetDamageAmpMutator := DamageAmpMutatorZoneTeam1.TeleportTo[CP.GetCurrentLocation3()]
            then:
                ResetDamageAmpMutator
                Print("DESTROYED TEAM 1 DAMAGE AMP")

    OnDamageAmpTeam2Destroyed<private>(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if:
                ResetDamageAmpMutator := DamageAmpMutatorZoneTeam2.TeleportTo[CP.GetCurrentLocation3()]
            then:
                ResetDamageAmpMutator
                Print("DESTROYED TEAM 2 DAMAGE AMP")

    OnHealZoneTeam1Destroyed<private>(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if:
                ResetHealZoneMutator := HealMutatorZoneTeam1.TeleportTo[CP.GetCurrentLocation3()]
            then:
                ResetHealZoneMutator
                Print("DESTROYED TEAM 1 HEAL ZONE")

    OnHealZoneTeam2Destroyed<private>(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if:
                ResetHealZoneMutator := HealMutatorZoneTeam2.TeleportTo[CP.GetCurrentLocation3()]
            then:
                ResetHealZoneMutator
                Print("DESTROYED TEAM 2 HEAL ZONE")
                    
    FreezeZoneLoop<private>(Agent:agent)<suspends>:void=
        loop:
            Sleep(0.001)
            if(CP:custom_player = CustomPlayers[Agent]):
                if(LouDamageMutatorTeam1.IsInVolume[Agent]):
                    if(CP.GetCanBeFrozen() = true, CP.GetIsFrozen() = false, CP.GetTeam() = 2):
                        CP.SetSnowFreezeTick(CP.GetSnowFreezeTick() + 1)
                        CP.SetCanBeFrozen(false)
                if(LouDamageMutatorTeam2.IsInVolume[Agent]):
                    if(CP.GetCanBeFrozen() = true, CP.GetIsFrozen() = false, CP.GetTeam() = 1):
                        CP.SetSnowFreezeTick(CP.GetSnowFreezeTick() + 1)
                        CP.SetCanBeFrozen(false)
            else:
                break
                        


    HealZoneLoop<private>(Agent:agent)<suspends>:void=
        loop:
            Sleep(0.1)
            if(CP:custom_player = CustomPlayers[Agent]):
                if(HealMutatorZoneTeam1.IsInVolume[Agent], CP.GetHealZoneTick() < 5, CP.GetTeam() = 1):
                    CP.SetHealZoneTick(CP.GetHealZoneTick() + 1)
                    if(CP.GetHealZoneTick() = 5):
                        HealPowerUpStart.Pickup(Agent)
                        CP.SetHealZoneTick(0)
                if(HealMutatorZoneTeam2.IsInVolume[Agent], CP.GetHealZoneTick() < 5, CP.GetTeam() = 2):
                    CP.SetHealZoneTick(CP.GetHealZoneTick() + 1)
                    if(CP.GetHealZoneTick() = 5):
                        HealPowerUpStart.Pickup(Agent)
                        CP.SetHealZoneTick(0)
            else:
                break

    TrainLoop<private>()<suspends>:void=
        loop:
            if(GameMap = 2):
                for(Item: Train1AlarmOn):
                    Item.Hide()
                for(Item: Train1AlarmOff):
                    Item.Show()
                for(Item: Train2AlarmOn):
                    Item.Hide()
                for(Item: Train2AlarmOff):
                    Item.Show()
                Sleep(3.0)

                Train1AlarmSFX.Play()
                for(Item: Train1AlarmOff):
                    Item.Hide()
                for(Item: Train1AlarmOn):
                    Item.Show()
                Sleep(0.5)
                for(Item: Train1AlarmOff):
                    Item.Show()
                for(Item: Train1AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                for(Item: Train1AlarmOff):
                    Item.Hide()
                for(Item: Train1AlarmOn):
                    Item.Show()
                Sleep(0.5)
                for(Item: Train1AlarmOff):
                    Item.Show()
                for(Item: Train1AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                for(Item: Train1AlarmOff):
                    Item.Hide()
                for(Item: Train1AlarmOn):
                    Item.Show()
                Sleep(0.5)
                for(Item: Train1AlarmOff):
                    Item.Show()
                for(Item: Train1AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                for(Item: Train1AlarmOff):
                    Item.Hide()
                for(Item: Train1AlarmOn):
                    Item.Show()
                Train1WooshSFX.Play()
                Sleep(0.5)
                for(Item: Train1AlarmOff):
                    Item.Show()
                for(Item: Train1AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                Train1Cinematic.Play()
                Sleep(6.0)

                Train2AlarmSFX.Play()
                for(Item: Train2AlarmOff):
                    Item.Hide()
                for(Item: Train2AlarmOn):
                    Item.Show()
                Sleep(0.5)
                for(Item: Train2AlarmOff):
                    Item.Show()
                for(Item: Train2AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                for(Item: Train2AlarmOff):
                    Item.Hide()
                for(Item: Train2AlarmOn):
                    Item.Show()
                Sleep(0.5)
                for(Item: Train2AlarmOff):
                    Item.Show()
                for(Item: Train2AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                for(Item: Train2AlarmOff):
                    Item.Hide()
                for(Item: Train2AlarmOn):
                    Item.Show()
                Sleep(0.5)
                for(Item: Train2AlarmOff):
                    Item.Show()
                for(Item: Train2AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                for(Item: Train2AlarmOff):
                    Item.Hide()
                for(Item: Train2AlarmOn):
                    Item.Show()
                Train2WooshSFX.Play()
                Sleep(0.5)
                for(Item: Train2AlarmOff):
                    Item.Show()
                for(Item: Train2AlarmOn):
                    Item.Hide()
                Sleep(0.5)
                Train2Cinematic.Play()
                Sleep(6.0)
            else:
                break
        
    GemSpawnLoop<private>()<suspends>:void=
        loop:
            if(GameType = 3):
                GemSpawnLight.UndimLight()
                GemSpawningSFX.Play()
                Sleep(3.0)
                GemSpawnLight.DimLight()
                GemSpawner.SpawnItem()
                GemSpawnSFX.Play()
                Sleep(6.0)
            else:
                break

    CustomPlayerHealCheck<private>(Agent:agent)<suspends>:void=
        loop:   
            Sleep(0.0001)
            if(CP:custom_player = CustomPlayers[Agent]):
                if(CP.GetHealSFXTick() = 1):
                    HealHealthSFX.Play(Agent)
                    CP.SetHealSFXTick(0)
            

    CustomPlayerCheck<private>(Agent:agent)<suspends>:void=
        loop:   
            Sleep(0.0001)
            if(CP:custom_player = CustomPlayers[Agent]):
                if(CP.GetHalfHealth() = 1):
                    Sleep(0.5)
                    LowHealthSFX.Play(Agent)
                    #Print("LOW")
                else if(CP.GetHalfHealth() = 2):
                    Sleep(0.2)
                    VeryLowHealthSFX.Play(Agent)
                    #Print("VERY LOW")
                if(CP.GetIsHealing() = true):
                    Sleep(1.0)
                    #HealHealthSFX.Play(Agent)
                if(CP.GetSuperMeter() = 1.0):
                    SuperReadyVFX.Pickup(Agent)
                if(CP.GetSuperMeter() = 1.0, CP.GetSuperReadyTick() = 0):
                    SuperReadySFX.Play(Agent)
                    CP.SetSuperReadyTick(1)
                    #Print("{CP.GetClass()}")
                if(CP.GetIsFrozen() = true, CP.GetSnowFreezeSFXTick() = 0):
                    PlayerFreezedSFX.UnregisterAll()
                    PlayerFreezedSFX.Register(Agent)
                    PlayerFreezedSFX.Play()
                    PlayerFreezedVFX.Pickup(Agent)
                    PlayerFreezedPostProcess.Reset(Agent)
                    PlayerFreezedPostProcess.BlendIn(Agent)
                    CP.SetSnowFreezeSFXTick(1)


                if(CP.GetClass() = 1):
                    if:
                        DamageAmpMutatorZoneTeam1.IsInVolume[Agent] = true
                        CP.GetTeam() = 1
                    then:
                        
                        #Print("Shelly in")
                        if:
                            CP.GetSuperInUseStatus() = false
                        then:
                            #Print("Gave shelly her super")
                            DamageMultiplierZone.SetDuration(99999999.99)
                            DamageMultiplierZone.Pickup(Agent)
                        else:
                            #Print("Poo")
                        
                    else:
                        if:
                            DamageAmpMutatorZoneTeam2.IsInVolume[Agent] = true
                            CP.GetTeam() = 2
                        then:
                            
                            #Print("Shelly in")
                            if:
                                CP.GetSuperInUseStatus() = false
                            then:
                                #Print("Gave shelly her super")
                                DamageMultiplierZone.SetDuration(99999999.99)
                                DamageMultiplierZone.Pickup(Agent)
                            else:
                                #Print("Poo")
                        else:
                            #Print("Shelly out")
                else if(CP.GetClass() = 18):
                    if:
                        CP.GetSuperInUseStatus() = true
                    then:
                        if(CP.GetTeam() = 1):
                            if(SpawnBouncer := CrowTireTeam1.TeleportTo[CP.GetCurrentLocation3()]):
                                SpawnBouncer
                            CrowTireTeam1.Disable()
                        else if(CP.GetTeam() = 2):
                            if(SpawnBouncer := CrowTireTeam2.TeleportTo[CP.GetCurrentLocation3()]):
                                SpawnBouncer
                            CrowTireTeam2.Disable()
                        

            else:
                break
                    
                    


      

    OnDamageMutatorTeam1Enter(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if(CP.GetTeam() = 1):
                if(CP.GetClass() = 1):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Shelly already has DAMAGE BOOSTER")
                    else:
                        Print("Shelly Damage boosted 35%")
                        DamageMultiplierZone.SetDuration(99999999.99)
                        DamageMultiplierZone.Pickup(Agent)
                else if(CP.GetClass() = 5):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Dynamike already has DAMAGE BOOSTER")
                    else:
                        Print("Dynamike Damage boosted 35%")
                        DamageMultiplierZone.SetDuration(99999999.99)
                        DamageMultiplierZone.Pickup(Agent)
                else:
                    #Print("In")
                    DamageMultiplierZone.SetDuration(99999999.99)
                    DamageMultiplierZone.Pickup(Agent)

    OnDamageMutatorTeam1Exit(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if(CP.GetTeam() = 1):
                if(CP.GetClass() = 1):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Shelly already has DAMAGE BOOSTER")
                    else:
                        Print("Shelly 35% Damage booster removed")
                        DamageMultiplierZone.SetDuration(0.5)
                        DamageMultiplierZone.Pickup(Agent)
                else if(CP.GetClass() = 5):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Dynamike already has DAMAGE BOOSTER")
                    else:
                        Print("Dynamike 35% Damage boosted removed")
                        DamageMultiplierZone.SetDuration(0.5)
                        DamageMultiplierZone.Pickup(Agent)
                else:
                    #Print("Out")
                    DamageMultiplierZone.SetDuration(0.5)
                    DamageMultiplierZone.Pickup(Agent)
    OnDamageMutatorTeam2Enter(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if(CP.GetTeam() = 2):
                if(CP.GetClass() = 1):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Shelly already has DAMAGE BOOSTER")
                    else:
                        Print("Shelly Damage boosted 35%")
                        DamageMultiplierZone.SetDuration(99999999.99)
                        DamageMultiplierZone.Pickup(Agent)
                else if(CP.GetClass() = 5):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Dynamike already has DAMAGE BOOSTER")
                    else:
                        Print("Dynamike Damage boosted 35%")
                        DamageMultiplierZone.SetDuration(99999999.99)
                        DamageMultiplierZone.Pickup(Agent)
                else:
                    #Print("In")
                    DamageMultiplierZone.SetDuration(99999999.99)
                    DamageMultiplierZone.Pickup(Agent)
                
    OnDamageMutatorTeam2Exit(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if(CP.GetTeam() = 2):
                if(CP.GetClass() = 1):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Shelly already has DAMAGE BOOSTER")
                    else:
                        Print("Shelly 35% Damage booster removed")
                        DamageMultiplierZone.SetDuration(0.5)
                        DamageMultiplierZone.Pickup(Agent)
                else if(CP.GetClass() = 5):
                    if(CP.GetSuperInUseStatus() = true):
                        Print("Dynamike already has DAMAGE BOOSTER")
                    else:
                        Print("Dynamike 35% Damage boosted removed")
                        DamageMultiplierZone.SetDuration(0.5)
                        DamageMultiplierZone.Pickup(Agent)
                else:
                                    #Print("Out")
                    DamageMultiplierZone.SetDuration(0.5)
                    DamageMultiplierZone.Pickup(Agent)
                
    OnHealMutatorEnter(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            #HealPowerUpStart.SetDuration(99999999.99)
            #HealPowerUpStart.Pickup(Agent)
            
    OnHealMutatorExit(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            #CP.SetHealZoneTick(0)
            #HealPowerUpStart.SetDuration(0.5)
            #HealPowerUpStart.Pickup(Agent)


    PlayerHealSFX(Agent:agent):void=
        HealHealthSFX.Play(Agent)


        

    
        

    OnClass1Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_1)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[0] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[0] = true):
                Set
                Print("Set Team 2")
                # Class1Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Shelly")
            #VFXSuper.SpawnAt(Agent)


    OnClass2Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_2)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[1] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[1] = true):
                Set
                Print("Set Team 2")
                #Class2Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Max")
    
    OnClass3Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_3)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[2] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[2] = true):
                Set
                Print("Set Team 2")
                #Class3Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Belle")

    OnClass4Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_4)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[3] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[3] = true):
                Set
                Print("Set Team 2")
                #Class4Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Bo")

    OnClass5Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_5)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[4] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[4] = true):
                Set
                Print("Set Team 2")
                #Class5Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Dynamike")

    OnClass6Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_6)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[5] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[5] = true):
                Set
                Print("Set Team 2")
                #Class6Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Leon")

    OnClass7Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_7)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[6] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[6] = true):
                Set
                Print("Set Team 2")
                #Class7Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Surge")

    OnClass11Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_11)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[7] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[7] = true):
                Set
                Print("Set Team 2")
                #Class11Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Piper")
    
    OnClass12Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_12)
            CP.SetSuperReadyTick(0)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[8] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[8] = true):
                Set
                Print("Set Team 2")
                #Class12Selector.Disable()
                PickBrawlerSFX.Play(Agent)
            # CP.AssignUI(Agent)
            Print("Switched to Brock")
    
    OnClass14Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_14)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[9] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[9] = true):
                Set
                Print("Set Team 2")
                #Class14Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Jess")

    OnClass15Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_15)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[10] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[10] = true):
                Set
                Print("Set Team 2")
                #Class15Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to 8-Bit")

    OnClass16Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_16)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[11] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[11] = true):
                Set
                Print("Set Team 2")
                #Class16Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Nita")
    
    OnClass17Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_17)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[12] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[12] = true):
                Set
                Print("Set Team 2")
                #Class17Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Pam")

    OnClass18Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_18)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[13] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[13] = true):
                Set
                Print("Set Team 2")
                #Class18Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Crow")

    OnClass19Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_19)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[14] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[14] = true):
                Set
                Print("Set Team 2")
                #Class19Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Gus")
    
    OnGusTimer(Agent:?agent):void=
        if(RealAgent := Agent?):
            InvisibilityEndSFX.UnregisterAll()
            InvisibilityEndSFX.Register(RealAgent)
            InvisibilityEndSFX.Play()
            if(Fort := RealAgent.GetFortCharacter[]):
                Fort.SetShield(0.0)

            #CP.SetSuperReadyTick(0)
            Print("Timer Done")
    
    OnClass20Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_20)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[15] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[15] = true):
                Set
                Print("Set Team 2")
                #Class20Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Ruffs")

    OnClass21Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_21)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            # CP.AssignUI(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[16] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[16] = true):
                Set
                Print("Set Team 2")
                #Class21Selector.Disable()
            Print("Switched to Lou")

    OnClass22Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_22)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[17] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[17] = true):
                Set
                Print("Set Team 2")
                #Class22Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Stu")

    OnClass23Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_23)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[18] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[18] = true):
                Set
                Print("Set Team 2")
                #Class23Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Charlie")

    OnClass24Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_24)
            CP.SetSuperReadyTick(0)
            PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[19] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[19] = true):
                Set
                Print("Set Team 2")
                #Class24Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Maisie")

    OnClass25Change(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            CP.SetClass(CLASS_25)
            CP.SetSuperReadyTick(0)
            if(GameStarted = false):
                PickBrawlerSFX.Play(Agent)
            if(CP.GetTeam() = 1, Set := set ClassesInUseTeam1[20] = true):
                Set
                Print("Set Team 1")
            else if(CP.GetTeam() = 2, Set := set ClassesInUseTeam2[20] = true):
                Set
                Print("Set Team 2")
                #Class25Selector.Disable()
            # CP.AssignUI(Agent)
            Print("Switched to Lily")

    

    
        

        
        
   
    
    TrySuper(Agent:agent):void=
        if:
            CP:custom_player = CustomPlayers[Agent]
            Fort := Agent.GetFortCharacter[]
            
        then:
            Print("{CP.GetSuperMeter()}")
            if(CP.GetSuperStatus() = true):
                #SuperUseAudio.Play(Agent)
                SuperReadyVFXToggle.Pickup(Agent)
                CP.SetSuperReadyTick(0)
                if:
                    CP.GetClass() = 1
                then:
                    CP.UseSuper(Agent)
                    StarPowerSpeedSFX.UnregisterAll()
                    StarPowerSpeedSFX.Register(Agent)
                    StarPowerSpeedSFX.Play()
                    DamageUpVFX.Pickup(Agent)
                    DamageMultiplier.Pickup(Agent)
                    Print("250% Damage Actived")
                    
                    HUDSuperUse.SetText(StringToMessage("DAMAGE BOOSTER"))
                    HUDSuperUse.Show(Agent)
                    
                else:
                    if:
                        CP.GetClass() = 2
                    then:
                        CP.UseSuper(Agent)
                        SuperGranter2.Activate(Agent)
                        MaxSuperSFX.Play(Agent)
                        DrinkGainSFX.Play(Agent)
                        Class2SuperUseVFX.Pickup(Agent)
                        Print("Super Speed Granted")
                        HUDSuperUse.SetText(StringToMessage("SUPER SPEED"))
                        HUDSuperUse.Show(Agent)
                    else:
                        if:
                            CP.GetClass() = 3
                        then:
                            CP.UseSuper(Agent)
                            SuperGranter.SetNextItem(0)
                            SuperGranter.GrantItem(Agent)
                            DrinkGainSFX.Play(Agent)
                            MaxSuperSFX.Play(Agent)
                            MiscSuperUseVFX.Pickup(Agent)
                            CP.SetCanUseSpotter(true)
                            if(CP.GetTeam() = 1):
                                BelleSuperTimerTeam1.Start(Agent)
                            else if(CP.GetTeam() = 2):
                                BelleSuperTimerTeam2.Start(Agent)
                            Print("Flopper Granted")
                            HUDSuperUse.SetText(StringToMessage("SPOTTER ON NEXT HIT"))
                            HUDSuperUse.Show(Agent)

                        else:
                            if:
                                CP.GetClass() = 4
                            then:
                                CP.UseSuper(Agent)
                                ProxMineRemover.Remove(Agent)
                                SuperGranter.SetNextItem(1)
                                SuperGranter.GrantItem(Agent)
                                EnemyGadgetSFX.UnregisterAll()
                                PlayerGadgetSFX.Play(Agent)
                                EnemyGadgetSFX.Register(Agent)
                                EnemyGadgetSFX.Play()
                                MiscSuperUseVFX.Pickup(Agent)
                                Print("Mines Granted")
                                HUDSuperUse.SetText(StringToMessage("MINES GRANTED"))
                                HUDSuperUse.Show(Agent)
                            else:
                                if:
                                    CP.GetClass() = 5
                                then:
                                    CP.UseSuper(Agent)
                                    StarPowerSpeedSFX.UnregisterAll()
                                    StarPowerSpeedSFX.Register(Agent)
                                    StarPowerSpeedSFX.Play()
                                    DamageUpVFX.Pickup(Agent)
                                    DamageMultiplier2.Pickup(Agent)
                                    Print("250% Damage Actived")
                                    HUDSuperUse.SetText(StringToMessage("DAMAGE BOOSTER"))
                                    HUDSuperUse.Show(Agent)
                                else:
                                    if:
                                        CP.GetClass() = 6
                                    then:
                                        CP.UseSuper(Agent)
                                        # CP.SetLeonSuperEnd(0)
                                        InvisibilityStartSFX.UnregisterAll()
                                        InvisibilityStartSFX.Register(Agent)
                                        InvisibilityStartSFX.Play()
                                        InvisibilityVFX.Pickup(Agent)
                                        CP.SetCanBeInvisible(true)
                                        if(CP.GetTeam() = 1):
                                            LeonTimerTeam1.Start(Agent)
                                        else if(CP.GetTeam() = 2):
                                            LeonTimerTeam2.Start(Agent)
                                        Print("Invisibility Activated")
                                        HUDSuperUse.SetText(StringToMessage("INVISIBILITY"))
                                        HUDSuperUse.Show(Agent)
                                    else:
                                        if:
                                            CP.GetClass() = 7
                                        then:
                                            CP.UseSuper(Agent)
                                            UpwardImpulse.Activate(Agent)
                                            SurgeClassLVL1.ChangeClass(Agent)
                                            CP.SetClass(SURGE_LVL1)
                                            CP.SurgeUpgrade()
                                            SurgeSuperSFX.UnregisterAll()
                                            SurgeSuperSFX.Register(Agent)
                                            SurgeSuperSFX.Play()
                                            SurgeVFX.Pickup(Agent)
                                            Print("Surge MOVEMENT UPGRADED")
                                            HUDSuperUse.SetText(StringToMessage("MOVEMENT UPGRADED"))
                                            HUDSuperUse.Show(Agent)
                                        else:
                                            if:
                                                CP.GetClass() = 8
                                            then:
                                                CP.UseSuper(Agent)
                                                UpwardImpulse.Activate(Agent)
                                                SurgeClassLVL2.ChangeClass(Agent)
                                                CP.SetClass(SURGE_LVL2)
                                                CP.SurgeUpgrade()
                                                SurgeSuperSFX.UnregisterAll()
                                                SurgeSuperSFX.Register(Agent)
                                                SurgeSuperSFX.Play()
                                                SurgeVFX.Pickup(Agent)
                                                Print("Surge HEALTH UPGRADED")
                                                HUDSuperUse.SetText(StringToMessage("HEALTH UPGRADED"))
                                                HUDSuperUse.Show(Agent)
                                            else:
                                                if:
                                                    CP.GetClass() = 9
                                                then:
                                                    CP.UseSuper(Agent)
                                                    UpwardImpulse.Activate(Agent)
                                                    SurgeClassLVL3.ChangeClass(Agent)
                                                    CP.SetClass(SURGE_LVL3)
                                                    CP.SurgeUpgrade()
                                                    SurgeSuperSFX.UnregisterAll()
                                                    SurgeSuperSFX.Register(Agent)
                                                    SurgeSuperSFX.Play()
                                                    SurgeVFX.Pickup(Agent)
                                                    Print("Surge WEAPON UPGRADED")
                                                    HUDSuperUse.SetText(StringToMessage("WEAPON UPGRADED"))
                                                    HUDSuperUse.Show(Agent)
                                                else:
                                                    if:
                                                        CP.GetClass() = 10
                                                    then:
                                                        CP.UseSuper(Agent)
                                                        CP.SurgeUpgrade()
                                                        UpwardImpulse.Activate(Agent)
                                                        SurgeSuperSFX.UnregisterAll()
                                                        SurgeSuperSFX.Register(Agent)
                                                        SurgeSuperSFX.Play()
                                                        SurgeVFX.Pickup(Agent)
                                                        Print("Surge MAX LEVEL")
                                                        HUDSuperUse.SetText(StringToMessage("MAX LEVEL REACHED"))
                                                        HUDSuperUse.Show(Agent)
                                                    else:
                                                        if:
                                                            CP.GetClass() = 11
                                                        then:
                                                            HUDSuperUse.SetText(StringToMessage("LAUNCHED"))
                                                            HUDSuperUse.Show(Agent)
                                                            if(CP.GetTeam() = 1):
                                                                PiperExplosionTeam1.Reset()
                                                                PiperTireTeam1.Enable()
                                                                EnemyGadgetSFX.UnregisterAll()
                                                                PlayerGadgetSFX.Play(Agent)
                                                                EnemyGadgetSFX.Register(Agent)
                                                                EnemyGadgetSFX.Play()
                                                                MiscSuperUseVFX.Pickup(Agent)
                                                                if(SpawnBouncer := PiperTireTeam1.TeleportTo[CP.GetCurrentLocation2()]):
                                                                    SpawnBouncer
                                                                #UpwardImpulse2.Activate(Agent)
                                                                if:
                                                                    SpawnExplosion := PiperExplosionTeam1.TeleportTo[CP.GetCurrentLocation2()]
                                                                then:
                                                                    SpawnExplosion
                                                                    PiperSuperTimerTeam1.Start(Agent)
                                                                    PiperSuperSFX.UnregisterAll()
                                                                    PiperSuperSFX.Register(Agent)
                                                                    PiperSuperSFX.Play()
                                                                    PiperSuperLocationSFX.UnregisterAll()
                                                                    PiperSuperLocationSFX.Register(Agent)
                                                                    if:
                                                                        SpawnPiperSuperSFX := PiperSuperLocationSFX.TeleportTo[PiperExplosionTeam1.GetTransform()]
                                                                    then:
                                                                        SpawnPiperSuperSFX
                                                                        PiperSuperLocationSFX.Play()
                                                                    
                                                                        PiperTireTeam1.Disable()
                                                                    if:
                                                                        ResetBouncer := PiperTireTeam1.TeleportTo[CP.GetCurrentLocation3()]
                                                                    then:
                                                                        ResetBouncer
                                                            else if(CP.GetTeam() = 2):
                                                                PiperExplosionTeam2.Reset()
                                                                PiperTireTeam2.Enable()
                                                                EnemyGadgetSFX.UnregisterAll()
                                                                PlayerGadgetSFX.Play(Agent)
                                                                EnemyGadgetSFX.Register(Agent)
                                                                EnemyGadgetSFX.Play()
                                                                MiscSuperUseVFX.Pickup(Agent)
                                                                if(SpawnBouncer := PiperTireTeam2.TeleportTo[CP.GetCurrentLocation2()]):
                                                                    SpawnBouncer
                                                                #UpwardImpulse2.Activate(Agent)
                                                                if:
                                                                    SpawnExplosion := PiperExplosionTeam2.TeleportTo[CP.GetCurrentLocation2()]
                                                                then:
                                                                    SpawnExplosion
                                                                    PiperSuperTimerTeam2.Start(Agent)
                                                                    PiperSuperSFX.UnregisterAll()
                                                                    PiperSuperSFX.Register(Agent)
                                                                    PiperSuperSFX.Play()
                                                                    PiperSuperLocationSFX.UnregisterAll()
                                                                    PiperSuperLocationSFX.Register(Agent)
                                                                    if:
                                                                        SpawnPiperSuperSFX := PiperSuperLocationSFX.TeleportTo[PiperExplosionTeam2.GetTransform()]
                                                                    then:
                                                                        SpawnPiperSuperSFX
                                                                        PiperSuperLocationSFX.Play()
                                                                    
                                                                        PiperTireTeam2.Disable()
                                                                    if:
                                                                        ResetBouncer := PiperTireTeam2.TeleportTo[CP.GetCurrentLocation3()]
                                                                    then:
                                                                        ResetBouncer
                                                            
                                                           
                                                                
                                                                
                                                               
                                                            Print("Launched")
                                                            CP.UseSuper(Agent)
                                                        else:
                                                            if:
                                                                CP.GetClass() = 12
                                                            then:
                                                                CP.UseSuper(Agent)
                                                                HUDSuperUse.SetText(StringToMessage("ROCKET RAIN ACTIVATED"))
                                                                HUDSuperUse.Show(Agent)
                                                                BrockClassSuper.ChangeClass(Agent)
                                                                CP.SetClass(BROCK_SUPER)
                                                                StarPowerSpeedSFX.UnregisterAll()
                                                                StarPowerSpeedSFX.Register(Agent)
                                                                StarPowerSpeedSFX.Play()
                                                                BrockSuperUseVFX.Pickup(Agent)
                                                                if(CP.GetTeam() = 1):
                                                                    BrockSuperTimerTeam1.Start(Agent)
                                                                else if(CP.GetTeam() = 2):
                                                                    BrockSuperTimerTeam2.Start(Agent)
                                                                Print("ROCKET RAIN ACTIVATED")
                                                            else:
                                                                if:
                                                                    CP.GetClass() = 14
                                                                then:
                                                                    CP.UseSuper(Agent)
                                                                    HUDSuperUse.SetText(StringToMessage("TURRET PLACED"))
                                                                    HUDSuperUse.Show(Agent)
                                                                    if:
                                                                        SpawnTurret := AutoTurretTeam1.TeleportTo[CP.GetCurrentLocation()]
                                                                        CP.GetTeam() = 1
                                                                    then:
                                                                        SpawnTurret
                                                                        AutoTurretTeam1.Enable()
                                                                        AmpPlaceSFX.Play(Agent)
                                                                        MiscSuperUseVFX.Pickup(Agent)
                                                                        Print("Turret Placed")
                                                                    else:
                                                                        if:
                                                                            SpawnTurret := AutoTurretTeam2.TeleportTo[CP.GetCurrentLocation()]
                                                                            CP.GetTeam() = 2
                                                                        then:
                                                                            SpawnTurret
                                                                            AutoTurretTeam2.Enable()
                                                                            AmpPlaceSFX.Play(Agent)
                                                                            MiscSuperUseVFX.Pickup(Agent)
                                                                            Print("Turret Placed")
                                                                else:
                                                                    if:
                                                                        CP.GetClass() = 15
                                                                    then:
                                                                        CP.UseSuper(Agent)
                                                                        HUDSuperUse.SetText(StringToMessage("DAMAGE AMP PLACED"))
                                                                        HUDSuperUse.Show(Agent)
                                                                        if(CP.GetTeam() = 1):
                                                                            DamageAmpBuildingTeam1.Reset()
                                                                            if:
                                                                                SpawnAmpZone := DamageAmpMutatorZoneTeam1.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                            then:
                                                                                SpawnAmpZone
                                                                            
                                                                                DamageAmpSFX.Play(Agent)
                                                                                if:
                                                                                    SpawnAmpBuilding := DamageAmpBuildingTeam1.TeleportTo[CP.GetCurrentLocation()]
                                                                                then:
                                                                                    SpawnAmpBuilding
                                                                                    MiscSuperUseVFX.Pickup(Agent)
                                                                                    Print("Damage Amplifier Placed")
                                                                        else if(CP.GetTeam() = 2):
                                                                            DamageAmpBuildingTeam2.Reset()
                                                                            if:
                                                                                SpawnAmpZone := DamageAmpMutatorZoneTeam2.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                            then:
                                                                                SpawnAmpZone
                                                                            
                                                                                DamageAmpSFX.Play(Agent)
                                                                                if:
                                                                                    SpawnAmpBuilding := DamageAmpBuildingTeam2.TeleportTo[CP.GetCurrentLocation()]
                                                                                then:
                                                                                    SpawnAmpBuilding
                                                                                    MiscSuperUseVFX.Pickup(Agent)
                                                                                    Print("Damage Amplifier Placed")
                                                                            
                                                                    else:
                                                                        if:
                                                                            CP.GetClass() = 16
                                                                        then:
                                                                            CP.UseSuper(Agent)
                                                                            HUDSuperUse.SetText(StringToMessage("WOLF SPAWNED"))
                                                                            HUDSuperUse.Show(Agent)
                                                                            if(CP.GetTeam() = 1):
                                                                                if:
                                                                                    SpawnWildlife := WildlifeSpawnerTeam1.TeleportTo[CP.GetCurrentLocation()]
                                                                                then:
                                                                                    SpawnWildlife
                                                                                    WildlifeSpawnerTeam1.Spawn()
                                                                                    NitaSuperSFX.Play(Agent)
                                                                                    MiscSuperUseVFX.Pickup(Agent)
                                                                                    Print("Wolf Spawned")
                                                                            else if(CP.GetTeam() = 2):
                                                                                if:
                                                                                    SpawnWildlife := WildlifeSpawnerTeam2.TeleportTo[CP.GetCurrentLocation()]
                                                                                then:
                                                                                    SpawnWildlife
                                                                                    WildlifeSpawnerTeam2.Spawn()
                                                                                    NitaSuperSFX.Play(Agent)
                                                                                    MiscSuperUseVFX.Pickup(Agent)
                                                                                    Print("Wolf Spawned")
                                                                        else:
                                                                                if:
                                                                                    CP.GetClass() = 17
                                                                                then:
                                                                                    CP.UseSuper(Agent)
                                                                                    HUDSuperUse.SetText(StringToMessage("HEAL-ZONE PLACED"))
                                                                                    HUDSuperUse.Show(Agent)
                                                                                    if(CP.GetTeam() = 1):
                                                                                        HealBuildingTeam1.Reset()
                                                                                        Print("UseSuper")
                                                                                        if:
                                                                                            SpawnHealZone := HealMutatorZoneTeam1.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                                        then:
                                                                                            SpawnHealZone
                                                                                            if:
                                                                                                SpawnHealBuilding := HealBuildingTeam1.TeleportTo[CP.GetCurrentLocation()]
                                                                                            then:
                                                                                                SpawnHealBuilding
                                                                                            AmpPlaceSFX.Play(Agent)
                                                                                            MiscSuperUseVFX.Pickup(Agent)
                                                                                            Print("Heal Zone Placed")
                                                                                    else if(CP.GetTeam() = 2):
                                                                                        HealBuildingTeam2.Reset()
                                                                                        Print("UseSuper")
                                                                                        if:
                                                                                            SpawnHealZone := HealMutatorZoneTeam2.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                                        then:
                                                                                            SpawnHealZone
                                                                                            if:
                                                                                                SpawnHealBuilding := HealBuildingTeam2.TeleportTo[CP.GetCurrentLocation()]
                                                                                            then:
                                                                                                SpawnHealBuilding
                                                                                            AmpPlaceSFX.Play(Agent)
                                                                                            MiscSuperUseVFX.Pickup(Agent)
                                                                                            Print("Heal Zone Placed")
                                                                                        
                                                                                else:
                                                                                    if:
                                                                                        CP.GetClass() = 18
                                                                                    then:
                                                                                        if(CP.GetTeam() = 1):
                                                                                            HUDSuperUse.SetText(StringToMessage("LAUNCHED"))
                                                                                            HUDSuperUse.Show(Agent)
                                                                                            ExplosiveLaunchClass18.Reset()
                                                                                            CrowTireTeam1.Enable()
                                                                                            EnemyGadgetSFX.UnregisterAll()
                                                                                            PlayerGadgetSFX.Play(Agent)
                                                                                            EnemyGadgetSFX.Register(Agent)
                                                                                            EnemyGadgetSFX.Play()
                                                                                            MiscSuperUseVFX.Pickup(Agent)
                                                                                            if(SpawnBouncer := CrowTireTeam1.TeleportTo[CP.GetCurrentLocation2()]):
                                                                                                SpawnBouncer
                                                                                        else if(CP.GetTeam() = 2):
                                                                                            ExplosiveLaunchClass18.Reset()
                                                                                            CrowTireTeam2.Enable()
                                                                                            EnemyGadgetSFX.UnregisterAll()
                                                                                            PlayerGadgetSFX.Play(Agent)
                                                                                            EnemyGadgetSFX.Register(Agent)
                                                                                            EnemyGadgetSFX.Play()
                                                                                            MiscSuperUseVFX.Pickup(Agent)
                                                                                            if(SpawnBouncer := CrowTireTeam2.TeleportTo[CP.GetCurrentLocation2()]):
                                                                                                SpawnBouncer
                                                                                        
                                                               
                                                                                        Print("Launched")
                                                                                        CP.UseSuper(Agent)
                                                                                    else:
                                                                                        if:
                                                                                            CP.GetClass() = 19
                                                                                        then:
                                                                                            CP.UseSuper(Agent)
                                                                                            HUDSuperUse.SetText(StringToMessage("SHIELD ACTIVATED"))
                                                                                            HUDSuperUse.Show(Agent)
                                                                                            if(CP.GetTeam() = 1):
                                                                                                GusSuperTimerTeam1.Start(Agent)
                                                                                            else if(CP.GetTeam() = 2):
                                                                                                GusSuperTimerTeam2.Start(Agent)
                                                                                            Fort.SetShield(Fort.GetMaxShield())
                                                                                            StarPowerShieldSFX.UnregisterAll()
                                                                                            StarPowerShieldSFX.Register(Agent)
                                                                                            StarPowerShieldSFX.Play()
                                                                                            MiscSuperUseVFX.Pickup(Agent)
                                                                                            Print("Shield Granted")
                                                                                        else:
                                                                                            if:
                                                                                                CP.GetClass() = 20
                                                                                            then:
                                                                                                CP.UseSuper(Agent)
                                                                                                HUDSuperUse.SetText(StringToMessage("SUPPLY DROP DIALED"))
                                                                                                HUDSuperUse.Show(Agent)
                                                                                                EnemyGadgetSFX.UnregisterAll()
                                                                                                PlayerGadgetSFX.Play(Agent)
                                                                                                EnemyGadgetSFX.Register(Agent)
                                                                                                EnemyGadgetSFX.Play()
                                                                                                if(CP.GetTeam() = 1):
                                                                                                    SupplyDropSuperTeam1.Open(Agent)
                                                                                                    ExplosiveDropClass20Team1.Reset()
                                                                                                    RuffSuperTimerTeam1.Start(Agent)
                                                                                                    if(SpawnDrop := SupplyDropSuperTeam1.TeleportTo[CP.GetCurrentLocation2()]):
                                                                                                        SpawnDrop
                                                                                                        if:
                                                                                                            SpawnExplosionDrop := ExplosiveDropClass20Team1.TeleportTo[SupplyDropSuperTeam1.GetTransform()]
                                                                                                        then:
                                                                                                            SpawnExplosionDrop
                                                                                                            if:
                                                                                                                SpawnSupplySpawnSFX := RuffSupplyDropSpawnSFX.TeleportTo[SupplyDropSuperTeam1.GetTransform()]
                                                                                                            then:
                                                                                                                SpawnSupplySpawnSFX
                                                                                                                MiscSuperUseVFX.Pickup(Agent)
                                                                                                                RuffSupplyDropSpawnSFX.Play()
                                                                                                                SupplyDropSuperTeam1.Spawn(Agent)
                                                                                                else if(CP.GetTeam() = 2):
                                                                                                    SupplyDropSuperTeam2.Open(Agent)
                                                                                                    ExplosiveDropClass20Team2.Reset()
                                                                                                    RuffSuperTimerTeam2.Start(Agent)
                                                                                                    if(SpawnDrop := SupplyDropSuperTeam2.TeleportTo[CP.GetCurrentLocation2()]):
                                                                                                        SpawnDrop
                                                                                                        if:
                                                                                                            SpawnExplosionDrop := ExplosiveDropClass20Team2.TeleportTo[SupplyDropSuperTeam2.GetTransform()]
                                                                                                        then:
                                                                                                            SpawnExplosionDrop
                                                                                                            if:
                                                                                                                SpawnSupplySpawnSFX := RuffSupplyDropSpawnSFX.TeleportTo[SupplyDropSuperTeam2.GetTransform()]
                                                                                                            then:
                                                                                                                SpawnSupplySpawnSFX
                                                                                                                MiscSuperUseVFX.Pickup(Agent)
                                                                                                                RuffSupplyDropSpawnSFX.Play()
                                                                                                                SupplyDropSuperTeam2.Spawn(Agent)
                                                                                                
                                                                                            else:
                                                                                                if:
                                                                                                    CP.GetClass() = 21
                                                                                                then:
                                                                                                    CP.UseSuper(Agent)
                                                                                                    HUDSuperUse.SetText(StringToMessage("SNOW STORM"))
                                                                                                    HUDSuperUse.Show(Agent)
                                                                                                    if(CP.GetTeam() = 1):
                                                                                                        if:
                                                                                                            SpawnFreezeZone := LouDamageMutatorTeam1.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                                                        then:
                                                                                                            SpawnFreezeZone
                                                                                                            LouDamageMutatorSFXTeam1.Play()
                                                                                                            LouSuperTimerTeam1.Start(Agent)
                                                                                                    else if(CP.GetTeam() = 2):
                                                                                                        if:
                                                                                                            SpawnFreezeZone := LouDamageMutatorTeam2.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                                                        then:
                                                                                                            SpawnFreezeZone
                                                                                                            LouDamageMutatorSFXTeam2.Play()
                                                                                                            LouSuperTimerTeam2.Start(Agent)
                                                                                                    EnemyGadgetSFX.UnregisterAll()
                                                                                                    PlayerGadgetSFX.Play(Agent)
                                                                                                    EnemyGadgetSFX.Register(Agent)
                                                                                                    EnemyGadgetSFX.Play()
                                                                                                    MiscSuperUseVFX.Pickup(Agent)
                                                                                                else:
                                                                                                    if:
                                                                                                        CP.GetClass() = 22
                                                                                                    then:
                                                                                                        HUDSuperUse.SetText(StringToMessage("COMBUSTED"))
                                                                                                        HUDSuperUse.Show(Agent)
                                                                                                        CP.UseSuper(Agent)
                                                                                                        if(CP.GetTeam() = 1):
                                                                                                            if:
                                                                                                                SpawnFireZone := StuFireMutatorTeam1.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                                                            then:
                                                                                                                SpawnFireZone
                                                                                                                
                                                                                                                StuFireSFXTeam1.Play()
                                                                                                                StuTimerTeam1.Reset(Agent)
                                                                                                                StuTimerTeam1.Start(Agent)
                                                                                                        else if(CP.GetTeam() = 2):
                                                                                                            if:
                                                                                                                SpawnFireZone := StuFireMutatorTeam2.TeleportTo[CP.GetCurrentLocationMutator()]
                                                                                                            then:
                                                                                                                SpawnFireZone
                                                                                                                
                                                                                                                StuFireSFXTeam2.Play()
                                                                                                                StuTimerTeam2.Reset(Agent)
                                                                                                                StuTimerTeam2.Start(Agent)
                                                                                                        StuMovement.Activate(Agent)
                                                                                                        StuSuperSFX.Play(Agent)
                                                                                                        MiscSuperUseVFX.Pickup(Agent)
                                                                                                        
                                                                                                    else:
                                                                                                        if:
                                                                                                            CP.GetClass() = 23
                                                                                                        then:
                                                                                                            CP.UseSuper(Agent)
                                                                                                            EnemyGadgetSFX.UnregisterAll()
                                                                                                            PlayerGadgetSFX.Play(Agent)
                                                                                                            EnemyGadgetSFX.Register(Agent)
                                                                                                            EnemyGadgetSFX.Play()
                                                                                                            MiscSuperUseVFX.Pickup(Agent)
                                                                                                            HUDSuperUse.SetText(StringToMessage("CACOON-ING ACTIVE"))
                                                                                                            HUDSuperUse.Show(Agent)
                                                                                                           
                                                                                                        else:
                                                                                                            if:
                                                                                                                CP.GetClass() = 24
                                                                                                            then:
                                                                                                                CP.UseSuper(Agent)
                                                                                                                HUDSuperUse.SetText(StringToMessage("SHOCK-BOMB"))
                                                                                                                HUDSuperUse.Show(Agent)
                                                                                                                UpwardImpulse.Activate(Agent)
                                                                                                                if(CP.GetTeam() = 1):
                                                                                                                    ExplosiveDropClass24Team1.Reset()
                                                                                                                    if:
                                                                                                                        SpawnExplosion := ExplosiveDropClass24Team1.TeleportTo[CP.GetCurrentLocation2()]
                                                                                                                    then:
                                                                                                                        SpawnExplosion
                                                                                                                        MaisieExplosionTimerTeam1.Start(Agent)
                                                                                                                        if:
                                                                                                                            SpawnSuperSFX := MaisieSuperLocationSFX.TeleportTo[ExplosiveDropClass24Team1.GetTransform()]
                                                                                                                        then:
                                                                                                                            SpawnSuperSFX
                                                                                                                            MaisieSuperLocationSFX.Play()
                                                                                                                else if(CP.GetTeam() = 2):
                                                                                                                    ExplosiveDropClass24Team2.Reset()
                                                                                                                    if:
                                                                                                                        SpawnExplosion := ExplosiveDropClass24Team2.TeleportTo[CP.GetCurrentLocation2()]
                                                                                                                    then:
                                                                                                                        SpawnExplosion
                                                                                                                        MaisieExplosionTimerTeam2.Start(Agent)
                                                                                                                        if:
                                                                                                                            SpawnSuperSFX := MaisieSuperLocationSFX.TeleportTo[ExplosiveDropClass24Team2.GetTransform()]
                                                                                                                        then:
                                                                                                                            SpawnSuperSFX
                                                                                                                            MaisieSuperLocationSFX.Play()
                                                                                                                EnemyGadgetSFX.UnregisterAll()
                                                                                                                PlayerGadgetSFX.Play(Agent)
                                                                                                                EnemyGadgetSFX.Register(Agent)
                                                                                                                EnemyGadgetSFX.Play()
                                                                                                                MiscSuperUseVFX.Pickup(Agent)
                                                                                                            else:
                                                                                                                if:
                                                                                                                    CP.GetClass() = 25
                                                                                                                then:
                                                                                                                    CP.UseSuper(Agent)
                                                                                                                    HUDSuperUse.SetText(StringToMessage("TELEPORT ON HIT"))
                                                                                                                    HUDSuperUse.Show(Agent)
                                                                                                                    StarPowerSpeedSFX.UnregisterAll()
                                                                                                                    StarPowerSpeedSFX.Register(Agent)
                                                                                                                    StarPowerSpeedSFX.Play()
                                                                                                                    MiscSuperUseVFX.Pickup(Agent)
                                                                                                                    LilySuperClass.ChangeClass(Agent)
                                                                                                                    CP.SetClass(26)
                                                                                                                    if(CP.GetTeam() = 1):
                                                                                                                        LilySuperTimerTeam1.Start(Agent)
                                                                                                                    else if(CP.GetTeam() = 2):
                                                                                                                        LilySuperTimerTeam2.Start(Agent)
                                                                                                                    LilyTimerSFX.UnregisterAll()
                                                                                                                    LilyTimerSFX.Register(Agent)
                                                                                                                    LilyTimerSFX.Play()
                                                                                                                else:

                                                                                                        

                                                                                                        



                                                                                    

                                                                        
                                                                        
                                            

                
            else:
                if(CP.GetSuperInUseStatus() = true):
                    Print("Super already in use!")
                    SuperUseErrorSFX.Play(Agent)
                else:
                    
                    Print("Super not ready...")
                    SuperUseErrorSFX.Play(Agent)
    

           

    
 



    TryWeapon(Agent:agent):void=
        if(CP:custom_player = CustomPlayers[Agent]):
            if(CP.GetSuperInUseStatus() = true):
                if(CP.GetClass() = 6):
                    CP.RemoveSuper()
                

    InitSpawners():void=
        Spawners := GetCreativeObjectsWithTag(spawner{})
        for (Obj : Spawners):
            if (Spawner := player_spawner_device[Obj]):
                Spawner.SpawnedEvent.Subscribe(OnPlayerSpawned)
                Print("InitSpawners")


    OnPlayerSpawned(Agent: agent):void=
        if(Player := player[Agent]):
            Print("OnPlayerSpawned")
            InitPlayer(Player)
            
            
            
            

                      
            # WeaponTrigger.Register(Player)


            
            
    InitTeam(Agent : agent): void =
        TeamCollection := GetPlayspace().GetTeamCollection()
        if(AgentsTeam := TeamCollection.GetTeam[Agent]):
            TeamsArray := TeamCollection.GetTeams()
            for(TeamNumber -> Team : TeamsArray):
                if(AgentsTeam = Team):
                    if(CP:custom_player = CustomPlayers[Agent]):
                        CP.SetTeam(TeamNumber + 1)




    InitPlayer(Player : player):void=
        Rand := GetRandomInt(0, PetAssets.Length - 1)
        #Print("INIT PLAYER BEFORE")
        if:
            PetAsset := PetAssets[Rand]
            Agent := agent[Player]
            Fort := Agent.GetFortCharacter[]
            
        then:
            if (Existing := CustomPlayers[Player]){}
            else:
                CustomPlayer := custom_player{Player := Player, PetAsset := PetAsset, CurrentLocation := Fort.GetTransform(), CurrentRotation := Fort.GetViewRotation(), CurrentVector3 := Fort.GetViewLocation()}
                CustomPlayer.Init()
                #Print("INIT PLAYER AFTER")
                CustomPlayer.InitiateUI()
                if (set CustomPlayers[Player] = CustomPlayer){}
                InitTeam(Agent)
                #Print("INIT PLAYER good")
                Fort.EliminatedEvent().Subscribe(OnPlayerEliminated)
                Fort.DamagedEvent().Subscribe(OnPlayerDamaged)
                spawn{CustomPlayerCheck(Agent)}
                spawn{CustomPlayerHealCheck(Agent)}
                spawn{HealZoneLoop(Agent)}
                spawn{FreezeZoneLoop(Agent)}
                

    OnPlayerHealed(Result : healing_result):void=
        Print("Player healed")
    
    
            
        
    

    OnPlayerDamaged(Result : damage_result):void=
        Print("Player Damaged")
        if(InstigatorCharacter := fort_character[Result.Target], player[InstigatorCharacter.GetAgent[]]):
            if(HitterCharacter := fort_character[Result.Target], player[HitterCharacter.GetAgent[]]):
                #Print("1")
                if(CPHit:custom_player = CustomPlayers[InstigatorCharacter.GetAgent[]]):
                    #Print("2")
                    #if(DeathSFXPlay := DeathSFX.Play(InstigatorCharacter.GetAgent[])):
                    CPHit.PlayerHealTick()
                    
                    
                    MaybeInstigator := Result.Instigator
                    
                    if(Instigator:=MaybeInstigator?):
                        #Print("3")
                        if(InstigatingAgent:=Instigator.GetInstigatorAgent[]):
                            
                            #DeathSFX.Play(InstigatingAgent)
                            if(CPHitter:custom_player = CustomPlayers[InstigatingAgent]):
                                if(CPHitter = CPHit):
                                    #Print("Self hit")
                                    if(LouDamageMutatorTeam1.IsInVolume[InstigatorCharacter.GetAgent[]], CPHit.GetTeam() = 2):
                                        CPHit.SetCanBeFrozen(true)
                                    else if(LouDamageMutatorTeam2.IsInVolume[InstigatorCharacter.GetAgent[]], CPHit.GetTeam() = 1):
                                        CPHit.SetCanBeFrozen(true)
                                else:
                                    if(CPHit.GetSpotterCount() > 0):
                                        InstigatorCharacter.Damage(80.0)
                                        CPHit.SetSpotterCount(CPHit.GetSpotterCount() - 1)
                                        Print("{CPHit.GetSpotterCount()}")
                                    #Print("NOT SELF HIT")
                                if(CPHitter.GetClass() = 1):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.06)
                                else if(CPHitter.GetClass() = 2):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.25) 
                                else if(CPHitter.GetClass() = 3):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        if(CPHitter.GetCanUseSpotter() = true):
                                            #CPHit.SetSpotterHit(true)
                                            CPHit.SetSpotterCount(3)
                                            Print("Spotter hit")
                                        CPHitter.AddSuperMeter(0.4)
                                else if(CPHitter.GetClass() = 4):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.12)
                                else if(CPHitter.GetClass() = 5):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.15) 
                                else if(CPHitter.GetClass() = 6):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.08)
                                else if(CPHitter.GetClass() = 7):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.35)
                                else if(CPHitter.GetClass() = 8):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.3)
                                else if(CPHitter.GetClass() = 9):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.3)
                                else if(CPHitter.GetClass() = 10):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.3)
                                else if(CPHitter.GetClass() = 11):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.4)
                                else if(CPHitter.GetClass() = 12):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.3)
                                else if(CPHitter.GetClass() = 13):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.0) 
                                else if(CPHitter.GetClass() = 14):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.2)
                                else if(CPHitter.GetClass() = 15):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent) 
                                        CPHitter.AddSuperMeter(0.1)
                                else if(CPHitter.GetClass() = 16):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.35)
                                else if(CPHitter.GetClass() = 17):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.05)
                                else if(CPHitter.GetClass() = 18):
                                    if(CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter = CPHit):
                                            Print("Self hit")
                                        else:
                                            CPHit.PoisonTickRestart()
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.2)
                                else if(CPHitter.GetClass() = 19):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.35)
                                else if(CPHitter.GetClass() = 20):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.25)
                                else if(CPHitter.GetClass() = 21):
                                    if(CPHitter.GetSuperInUseStatus() = false):
                                        
                                        if(CPHitter = CPHit):
                                            Print("Self hit")
                                        else:
                                            if(CPHit.GetSnowFreezeTick() < 10):
                                                CPHit.SetSnowFreezeTick(CPHit.GetSnowFreezeTick() + 1)
                                                Print("Freeze Tick GM")
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.25)
                                else if(CPHitter.GetClass() = 22):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.5)
                                else if(CPHitter.GetClass() = 23):
                                    
                                    if(CPHitter.GetSuperInUseStatus() = false):
                                                
                                        if(CPHitter = CPHit):
                                            Print("Self hit")
                                        else:
                                    if(CPHitter.GetSuperInUseStatus() = true):
                                        if(HitAgent := InstigatorCharacter.GetAgent[]):
                                            CPHit.SetIsTrapped(true)
                                            if(CPHitter.GetTeam() = 1):
                                                CharlieTrapTimerTeam1.Start(HitAgent)
                                            else if(CPHitter.GetTeam() = 2):
                                                CharlieTrapTimerTeam2.Start(HitAgent)
                                            SuperGranter.GrantItem(HitAgent)
                                        Print("Charlie trap made")
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.25)

                                else if(CPHitter.GetClass() = 24):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.25)

                                else if(CPHitter.GetClass() = 25):
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false): 
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.25)

                                else if(CPHitter.GetClass() = 26):
                                    if(CPHitter.GetSuperInUseStatus() = false):
                                        if(HitAgent := InstigatorCharacter.GetAgent[]):
                                            if(HitterFortCharacter := InstigatingAgent.GetFortCharacter[]):

                                                if(Teleport := HitterFortCharacter.TeleportTo[CPHit.GetCurrentVector3(), CPHit.GetCurrentRotation()]):
                                                    Teleport
                                                    if(SFXLily := LilyTeleportSFX.TeleportTo[CPHitter.GetCurrentLocation2()]):
                                                        SFXLily
                                                        LilyTeleportSFX.UnregisterAll()
                                                        LilyTeleportSFX.Register(HitAgent)
                                                        LilyTeleportSFX.Play()
                                                        Print("TELEPORTED")
                                                        if(CPHitter.GetTeam() = 1):
                                                            Class25SelectorTeam1.ChangeClass(InstigatingAgent)
                                                        else if(CPHitter.GetTeam() = 2):
                                                            Class25SelectorTeam2.ChangeClass(InstigatingAgent)
                                    if(CPHitter.GetSuperMeter() < 1.0, CPHitter.GetSuperInUseStatus() = false):
                                        if(CPHitter.GetSuperMeter() < 1.0):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        else if(CPHitter.GetSuperInUseStatus() = false):
                                            SuperGainSFX.Play(InstigatingAgent)
                                        CPHitter.AddSuperMeter(0.25)
                                
                                else:
                                    Print("NO CLASS")
                                    
        else:
            Print("Damage Other" )        



    var Team1TextBlock :text_block = text_block{}
    var Team2TextBlock :text_block = text_block{}

    StringToMessageHUD<localizes>(value:string)<computes> : message = "{value}"

    InitHUD(Player : player):void=
        if(GameType = 2):
            Print("InitHUD Started")
            set Team1TextBlock = text_block{DefaultText := StringToMessageHUD("Team 1: {WipeoutTeam1Score}"),
            DefaultTextColor:=NamedColors.Blue,
            DefaultShadowColor:=NamedColors.Black,
            DefaultShadowOffset:=option{vector2{X:=2.0, Y:=2.0}}}
            Team1TextBlock.SetShadowOpacity(1.0)

            set Team2TextBlock = text_block{DefaultText := StringToMessageHUD("Team 2: {WipeoutTeam1Score}"),
            DefaultTextColor:=NamedColors.Red,
            DefaultShadowColor:=NamedColors.Black,
            DefaultShadowOffset:=option{vector2{X:=2.0, Y:=2.0}}}
            Team2TextBlock.SetShadowOpacity(1.0)

            PlayerScoreWidget:canvas = CreateWipeoutUI()
            if(PlayerUI := GetPlayerUI[Player]):
                PlayerUI.AddWidget(PlayerScoreWidget)
        else if(GameType = 3):
            Print("InitHUD Started")
            set Team1TextBlock = text_block{DefaultText := StringToMessageHUD("Team 1 Gems: {GemsTeam1}"),
            DefaultTextColor:=NamedColors.Blue,
            DefaultShadowColor:=NamedColors.Black,
            DefaultShadowOffset:=option{vector2{X:=2.0, Y:=2.0}}}
            Team1TextBlock.SetShadowOpacity(1.0)

            set Team2TextBlock = text_block{DefaultText := StringToMessageHUD("Team 2 Gems: {GemsTeam2}"),
            DefaultTextColor:=NamedColors.Red,
            DefaultShadowColor:=NamedColors.Black,
            DefaultShadowOffset:=option{vector2{X:=2.0, Y:=2.0}}}
            Team2TextBlock.SetShadowOpacity(1.0)

            PlayerScoreWidget:canvas = CreateGemGrabUI()
            if(PlayerUI := GetPlayerUI[Player]):
                PlayerUI.AddWidget(PlayerScoreWidget)

    var MyUI : canvas = canvas{}
    UpdateWipeoutHUDScore():void=
        for(Key -> Value : CustomPlayers):
            if(PlayerObj := Key, PlayerUI := GetPlayerUI[PlayerObj]):
                PlayerUI.RemoveWidget(MyUI)
                Team1TextBlock.SetText(StringToMessage("Team 1: {WipeoutTeam1Score}"))
                Team2TextBlock.SetText(StringToMessage("Team 2: {WipeoutTeam2Score}"))
                set MyUI = CreateWipeoutUI()
                PlayerUI.AddWidget(MyUI)


    UpdateGemGrabHUDScore():void=
        for(Key -> Value : CustomPlayers):
            if(PlayerObj := Key, PlayerUI := GetPlayerUI[PlayerObj]):
                PlayerUI.RemoveWidget(MyUI)
                Team1TextBlock.SetText(StringToMessage("Team 1 Gems: {GemsTeam1}"))
                Team2TextBlock.SetText(StringToMessage("Team 2 Gems: {GemsTeam2}"))
                set MyUI = CreateGemGrabUI()
                PlayerUI.AddWidget(MyUI)


    CreateGemGrabUI<private>() : canvas =
        UICanvas : canvas = canvas:
            Slots := array:
                canvas_slot:
                    Anchors := anchors{Minimum := vector2{X := 0.01, Y := 0.54}, Maximum := vector2{X := 0.01, Y := 0.4}}
                    Offsets := margin{Top := -140.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                    ZOrder := 30
                    Widget := overlay:
                        Slots := array:
                            overlay_slot:
                                Widget := Team1TextBlock
    
                canvas_slot:
                    Anchors := anchors{Minimum := vector2{X := 0.01, Y := 0.54}, Maximum := vector2{X := 0.01, Y := 0.4}}
                    Offsets := margin{Top := -80.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                    ZOrder := 30
                    Widget := overlay:
                        Slots := array:
                            overlay_slot:
                                Widget := Team2TextBlock
    

    CreateWipeoutUI<private>() : canvas =
        Print("CreateUserUI Started")
        UICanvas : canvas = canvas:
            Slots := array:
                canvas_slot:
                    Anchors := anchors{Minimum := vector2{X := 0.01, Y := 0.54}, Maximum := vector2{X := 0.01, Y := 0.4}}
                    Offsets := margin{Top := -140.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                    ZOrder := 30
                    Widget := overlay:
                        Slots := array:
                            overlay_slot:
                                Widget := Team1TextBlock

                canvas_slot:
                    Anchors := anchors{Minimum := vector2{X := 0.01, Y := 0.54}, Maximum := vector2{X := 0.01, Y := 0.4}}
                    Offsets := margin{Top := -80.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                    ZOrder := 30
                    Widget := overlay:
                        Slots := array:
                            overlay_slot:
                                Widget := Team2TextBlock




    OnPlayerEliminated(Result : elimination_result):void=

        Print("Player Eliminated")
        EliminatingCharacter := Result.EliminatingCharacter
        EliminatedCharacter := Result.EliminatedCharacter
        if:
            KillerCharacter := EliminatingCharacter?
            KilledCharacter := EliminatedCharacter
            EliminatingAgent := KillerCharacter.GetAgent[]
            EliminatedAgent := KilledCharacter.GetAgent[]

            KillerPlayer := CustomPlayers[EliminatingAgent]
            KilledPlayer := CustomPlayers[EliminatedAgent]

            # KillerCustom := CustomPlayers[KillerPlayer]
            # KilledCustom := CustomPlayers[KilledPlayer]
        then:
            KillerPlayer.AwardElimination()
            KilledPlayer.PlayerDeath()
            DeathSFX.UnregisterAll()
            DeathSFX.Register(EliminatedAgent)
            DeathSFX.Play(EliminatedAgent)
                

    
    OnPlayerLeftServer(PlayerLeaving : player):void=
        if(CustomPlayer := CustomPlayers[PlayerLeaving]):
            #Clean up any assets / data from leaving player
            CustomPlayer.Dispose()

            #Remove the player from our map to free up memory
            var NewCustomPlayerMap : [player]custom_player = map{}
            
            for (Key -> Value : CustomPlayers, Key <> PlayerLeaving):
                set NewCustomPlayerMap = ConcatenateMaps(NewCustomPlayerMap, map{Key => Value})
            
            set CustomPlayers = NewCustomPlayerMap

            
        