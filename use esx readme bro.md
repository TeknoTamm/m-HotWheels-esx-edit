


I'm not a developer, I just adapted the qb version to be exactly the same, so I can't help you, sorry. 

Need;

-ox inventory

-esx




How setup esx;

-- ox_inventory/data/stashes.lua


    {
		coords = vec3(342.6288, 5607.3667, 21.0000),
		target = {
			loc = vec3(342.6288, 5607.3667, 21.0000),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Hot Wheels White Box'
		},
		name = 'HWWhitebox',
		label = 'Hot Wheels  White Box',
		owner = true,
		slots = 35,
		weight = 250000,
	},


	{
		coords = vec3(342.6288, 5607.3667, 21.0000),
		target = {
			loc = vec3(342.6288, 5607.3667, 21.0000),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Hot Wheels Gray Box'
		},
		name = 'HWGraybox',
		label = 'Hot Wheels Gray Box',
		owner = true,
		slots = 35,
		weight = 250000,
	},

	{
		coords = vec3(342.6288, 5607.3667, 21.0000),
		target = {
			loc = vec3(342.6288, 5607.3667, 21.0000),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Hot Wheels Bule Box'
		},
		name = 'HWBluebox',
		label = 'Hot Wheels Bule Box',
		owner = true,
		slots = 35,
		weight = 250000,
	},


-- ox_inventory/data/shops.lua add

    HotWheels = {
		name = 'HotWheels',
		 
		inventory = {
			{ name = 'hw_boxsurprise_2f2f', price = 115},
			{ name = 'hw_boxsurprise', price = 85 },
			{ name = 'hw_packsurprise', price = 57 },
			{ name = 'hw_box01', price = 631 },
			{ name = 'hw_box02', price = 451 },
			{ name = 'hw_box03', price = 951 },
		}, locations = {
			vec3(-146.0663, 230.2756, 99.0764)
		}, targets = {
			{ loc = vec3(-146.0663, 230.2756, 99.0764), length = 4.0, width = 4.0, heading = 160.3243, minZ = 155.0, maxZ = 166.8, distance = 4.0 }
		}
	},



-- ox_inventory/data/items.lua add


---[[ --------------------------------------------------------------------------------
                                        -- <!Hot Wheels!>
    -------------------------------------------------------------------------------- ]]--
	
	-- [[ 2 Fast 2 Furious Collection ]]


	['1.5_skyline_col01_hw'] = {
		label = '[1/5] Skyline',
		weight = 52,
		stack = false,
		description ='Araç'
		
		
	},

	['2.5_silvia_col01_hw'] = {
		label = '[2/5] Silvia',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 70%'
		
	},

	['"3.5_ford_col01_hw'] = {
		label = '[3/5] Ford',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 50%'
		
	},

	['4.5_lamborghini_col01_hw'] = {
		label = '[4/5] Lamborghini',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 77%'
		
	},

	['5.5_mazdarx7_col01_hw'] = {
		label = '[5/5] Mazda RX-7',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 68%'
		
	},


	-- [[ 2 Fast 2 Furious Collection 2 ]]

	['1.5_mazdarx7_col02_hw'] = {
		label = '[1/5] Mazda RX-7',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 68%'
		
	},

	['2.5_chevcamaro_col02_hw'] = {
		label = '[2/5] Chev Camaro',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 58%'
		
	},

	['3.5_jeep_col02_hw'] = {
		label = '[3/5] Jeep',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 42%'
		
	},

	['4.5_porschegt4_col02_hw'] = {
		label = '[4/5] Porsche GT4',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 72%'
		
	},

	['5.5_skyline_col02_hw'] = {
		label = '[5/5] Skyline',
		weight = 52,
		stack = false,
		description ='"Collection: 2 Fast 2 Furious Rarity: 90%'
		
	},
	

    -- [[ 2 Fast 2 Furious Collection 3 ]]

	['1.5_nissan240_col03_hw'] = {
		label = '[1/5] Nissan 240sx',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 68%'
		
	},
	['2.5_eclipse_col03_hw'] = {
		label = '[2/5] Mitsubishi Eclipse',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 58%'
		
	},

	['3.5_mazdarx7_col03_hw'] = {
		label = '[3/5] Mazda RX-7',
		weight = 52,
		stack = false,
		description ='"Collection: 2 Fast 2 Furious Rarity: 42%'
		
	},

	['4.5_skyliner33_col03_hw'] = {
		label = '[4/5] Skyline R33',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 72%'
		
	},

	['5.5_jetta_col03_hw'] = {
		label = '[5/5] Jetta',
		weight = 52,
		stack = false,
		description ='Collection: 2 Fast 2 Furious Rarity: 90%'
		
	},

	-- [[ Honda cars Collectionu]]

	['1.5_hw_hondacivic_ef'] = {
		label = '[1/5] Honda Civic EF',
		weight = 52,
		stack = false,
		description ='Collection: Honda Cars Rarity: 75%'
		
	},
	['2.5_hw_hondaciviceg'] = {
		label = '[2/5] Honda Civic EG',
		weight = 52,
		stack = false,
		description ='Collection: Honda Cars Rarity: 65%'
		
	},
	
	['3.5_hw_hondacivicsi'] = {
		label = '[3/5] Honda Civic SI',
		weight = 52,
		stack = false,
		description ='Collection: Honda Cars Rarity: 77%'
		
	},
	['4.5_hw_hondacivictyper'] = {
		label = '[4/5] Honda Civic TypeR',
		weight = 52,
		stack = false,
		description ='Collection: Honda Cars Rarity: 77%'
		
	},
	
	['5.5_hw_hondacivictyper'] = {
		label = '[5/5] Honda Civic TypeR',
		weight = 52,
		stack = false,
		description ='Collection: Honda Cars Rarity: 77%'
		
	},


	-- [[Morpar Collection]]
	['1.5_hw_dodgedart'] = {
		label = '[1/5] Dodge Dart',
		weight = 52,
		stack = false,
		description ='Collection: Morpar  Rarity: 56%'
		
	},
	['2.5_hw_dodgechallenger'] = {
		label = '[2/5] Dodge Challenger',
		stack = false,
		description ='"Collection: Morpar  Rarity: 64%'
		
	},
	['3.5_hw_dodgechallengerdrift'] = {
		label = '[3/5] Dodge Challenger Drift',
		weight = 52,
		stack = false,
		description ='Collection: Morpar  Rarity: 74%'
		
	},
	['4.5_hw_dodgechallengersrt'] = {
		label = '[4/5] Dodge Challenger SRT',
		weight = 52,
		stack = false,
		description ='Collection: Morpar  Rarity: 84%'
		
	},
	
	['5.5_hw_dodgevipersrt'] = {
		label = '[4/5] Dodge Viper SRT',
		weight = 52,
		stack = false,
		description ='Collection: Morpar  Rarity: 76%'
		
	},

	-- [[General Car's]]
	
	['teslamodel3_hw'] = {
		label = 'Tesla Model 3',
		weight = 52,
		stack = false,
		description ='Collection: Hayır Rarity: 10%'
		
	},
	['porschepanameraturbo_hw'] = {
		label = 'Porsche Panamera',
		weight = 52,
		stack = false,
		description ='Collection: Hayır Rarity: 10%'
		
	},
	['lamborghiniestoque_hw'] = {
		label = 'Lamborghini Estoque',
		weight = 52,
		stack = false,
		description ='Collection: Hayır Rarity: 10%'
		
	},
	['jaguarxeproject8_hw'] = {
		label = 'Jaguar X',
		weight = 52,
		stack = false,
		description ='Collection: Hayır Rarity: 10%'
		
	},
	['caddilacct5_hw'] = {
		label = '"Cadillac CT5',
		weight = 52,
		stack = false,
		description ='Collection: Hayır Rarity: 10%'
		
	},

	-- [[Packs&box]]
	

	['hw_boxsurprise_2f2f'] = {
		label = 'HW Surprise 2F2F Paket',
		weight = 72,
		stack = true,
		description ='Receive: 1x Random Car Collection Rarity: N/A'
		
	},
	['hw_boxsurprise'] = {
		label = 'HW Surprise Box',
		weight = 72,
		stack = true,
		description ='Receive: 1x/3x Random Car Rarity: N/A'
		
	},
	['hw_packsurprise'] = {
		label = 'HW Surprise Pack',
		weight = 72,
		stack = true,
		description ='Receive: 1x Random Car Rarity: N/A'
		
	},


	['hw_box01'] = {
		label = 'White Box HW',
		weight = 152,
		stack = false,
		description ='Some place to save hot wheel's cars...'
		
	},
	
	['hw_box02'] = {
		label = 'Grey Box HW',
		weight = 152,
		stack = false,
		description ='Some place to save hot wheel's cars...'
		
	},

	['hw_box03'] = {
		label = 'Blue Box HW',
		weight = 152,
		stack = false,
		description ='Some place to save hot wheel's cars...'
		
	},




