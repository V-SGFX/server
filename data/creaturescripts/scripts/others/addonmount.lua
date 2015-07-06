	

    function onLogin(cid)
     
                                                                   
    local player = Player(cid)
    local addons ={
              --[storage] = {outfit_male, outfit_female},
	        [28416] = {143, 147}, -- barbarian		  
		[28417] = {156, 152}, -- Assassin
	        [28418] = {269, 268}, -- Nightmare
	        [28419] = {279, 278}, -- Brotherhood
	        [28420] = {433, 432}, -- Elementalist
	        [28421] = {464, 463}, -- Deepling
	        [28422] = {466, 465}, -- Insectoid
	        [28423] = {471, 472}, -- Entrepreneur
	        [28424] = {513, 512}, -- Crystal Warlord
	        [28425] = {514, 516}, -- Soil Guardian
	        [28426] = {542, 541}, -- Demon
	        [28427] = {575, 574}, -- Cave Explorer
	        [28428] = {578, 577}, -- Dream Warden
	        [28429] = {618, 610}, -- Glooth Engineer
	        [28430] = {620, 619}, -- Jersey
	        [28431] = {632, 633}, -- Champion
	        [28432] = {635, 634}, -- Conjurer
	        [28433] = {636, 637}, -- Beastmaster
	        [28434] = {664, 665}, -- Chaos Acolyte
	        [28435] = {666, 667}, -- Death Herald
	        [28436] = {683, 684}, -- Ranger
	        [28437] = {694, 695}, -- Ceremonial Garb
	        [28438] = {696, 697}, -- Puppeteer
	        [28439] = {698, 699}, -- Spirit Caller
	        [28440] = {724, 725}, -- Evoker
	        [28441] = {732, 733}, -- Seaweaver
           
            }
           
                    for storage, addon in pairs(addons) do
                            if player:getStorageValue(storage) > 0 then
                                    player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
                                    player:addOutfitAddon(addon[1], 3)
                                    player:addOutfitAddon(addon[2], 3)
                                    player:sendTextMessage(MESSAGE_INFO_DESCR, "Addon Given!")
                                    player:setStorageValue(storage, 0)
                            end
                    end
                   
                                                                                                   
    local mounts ={
                    --[storage] = mounts,
                    [80000] = 1, -- Widow Queen
                    [80001] = 2, -- Racing Bird
                    [80002] = 3, -- War Bear
                    [80003] = 4, -- Black Sheep
                    [80004] = 5, -- Midnight Panther
                    [80005] = 6, -- Draptor
                    [80006] = 7, -- Titanica
                    [80007] = 8, -- Tin Lizzard
                    [80008] = 9, -- Blazebringer
                    [80009] = 10, -- Rapid Boar
                    [80010] = 11, -- Stampor
                    [80011] = 12, -- Undead Cavebear
                    [80012] = 13, -- Donkey
                    [80013] = 14, -- Tiger Slug
                    [80014] = 15, -- Uniwheel
                    [80015] = 16, -- Crystal Wolf
                    [80016] = 17, -- War Horse
                    [80017] = 18, -- Kingly Deer
                    [80018] = 19, -- Tamed Panda
                    [80019] = 20, -- Dromedary
                    [80020] = 21, -- King Scorpion
                    [80022] = 23, -- Armoured War Horse
                    [80023] = 24, -- Shadow Draptor
                    [80026] = 27, -- Ladybug
                    [80027] = 28, -- Manta Ray
                    [80028] = 29, -- Ironblight
                    [80029] = 30, -- Magma Crawler
                    [80030] = 31, -- Dragonling
                    [80031] = 32, -- Gnarlhound
                    [80032] = 33, -- Crimson Ray
                    [80033] = 34, -- Steelbeak
                    [80034] = 35, -- Water Buffalo
                    [80035] = 36, -- Tombstinger
                    [80036] = 37, -- Platesaurian
                    [80037] = 38, -- Ursagrodon
                    [80038] = 39, -- The Hellgrip
                    [80039] = 40, -- Noble Lion
                    [80040] = 41, -- Desert King
                    [80041] = 42, -- Shock Head
                    [80042] = 43, -- Walker
                    [80043] = 44, -- Azudocus
                    [80044] = 45, -- Carpacosaurus
                    [80045] = 46, -- Death Crawler
                    [80046] = 47, -- Flamesteed
                    [80047] = 48, -- Jade Lion
                    [80048] = 49, -- Jade Pincer
                    [80049] = 50, -- Nethersteed
                    [80050] = 51, -- Tempest
                    [80051] = 52, -- Winter King
                    [80052] = 53, -- Doombringer
                    [80053] = 54, -- Woodland Prince
                    [80054] = 55, -- Hailtorm Fury
                    [80055] = 56, -- Siegebreaker
                    [80056] = 57, -- Poisonbane
                    [80057] = 58, -- Blackpelt
                    [80058] = 59, -- Golden Dragonfly
                    [80059] = 60, -- Steel Bee
                    [80060] = 61, -- Copper Fly
                    [80061] = 62, -- Tundra Rambler
                    [80062] = 63, -- Highland Yak
                    [80063] = 64, -- Glacier Vagabond
                    [80064] = 65, -- Glooth Glider
                    [80065] = 66, -- Shadow Hart
                    [80066] = 67, -- Black Stag
                    [80067] = 68, -- Emperor Deer
                    [80068] = 69, -- Flying Divan
                    [80069] = 70, -- Magic Carpet
                    [80070] = 71, -- Floating Kashmir
                    [80071] = 72, -- Ringtail Waccoon
                    [80072] = 73, -- Night Waccoon
                    [80073] = 74, -- Emerald Waccoon
                    [80074] = 75, -- Flitterkatzen
                    [80075] = 76, -- Venompaw
                    [80076] = 77, -- Batcat
                    [80077] = 78, -- Sea Devil
                    [80078] = 79, -- Coralripper
                    [80079] = 80, -- Plumfish
           
            }
                   
                    for storage, mount in pairs(mounts) do
                            if player:getStorageValue(storage) > 0 then
                                    player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
                                    player:addMount(mount)
                                    player:sendTextMessage(MESSAGE_INFO_DESCR, "Mount given!")
                                    player:setStorageValue(storage, 0)
                            end
                    end    
            return true
    end

