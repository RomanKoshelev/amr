-----------------------------------------------------------------------------------------
-- Game worlds
-----------------------------------------------------------------------------------------
require('com.utils')

local Worlds = {
    ----------------------------------------------------
    -- Test
    ----------------------------------------------------
    ['Test'] = {
        evidenceRate = .4,
        names = Set {'A1', 'A2', 'A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'A9', 'AA', 'AB', 'AC'},
        loves = {
            ['A1'] = Set {'A2', 'A3', 'A4'},
            ['A2'] = Set {'A3', 'A4', 'A5'},
            ['A3'] = Set {'A4', 'A5', 'A6'},
            ['A4'] = Set {'A5', 'A6', 'A7'},
            ['A5'] = Set {'A6', 'A7', 'A8'},
            ['A6'] = Set {'A7', 'A8', 'A9'},
            ['A7'] = Set {'A8', 'A9', 'AA'},
            ['A8'] = Set {'A9', 'AA', 'AB'},
            ['A9'] = Set {'AA', 'AB', 'AC'},
            ['AA'] = Set {'AB', 'AC', 'A1'},
            ['AB'] = Set {'AC', 'A1', 'A2'},
            ['AC'] = Set {'A1', 'A2', 'A3'},
        },
        hates = {
            ['A1'] = Set {'A4', 'A5', 'A6'},
            ['A2'] = Set {'A5', 'A6', 'A7'},
            ['A3'] = Set {'A6', 'A7', 'A8'},
            ['A4'] = Set {'A7', 'A8', 'A9'},
            ['A5'] = Set {'A8', 'A9', 'AA'},
            ['A6'] = Set {'A9', 'AA', 'AB'},
            ['A7'] = Set {'AA', 'AB', 'AC'},
            ['A8'] = Set {'AB', 'AC', 'A1'},
            ['A9'] = Set {'AC', 'A1', 'A2'},
            ['AA'] = Set {'A1', 'A2', 'A3'},
            ['AB'] = Set {'A2', 'A3', 'A4'},
            ['AC'] = Set {'A3', 'A4', 'A5'},
        },
    },
    ----------------------------------------------------
    -- Simpsons
    ----------------------------------------------------
    ['Simpsons'] = {
        evidenceRate = .2, -- .4
        names = Set {
            -- Family
            'Bart', 'Liza', 'Homer', 'Marge', 'Maggie',
            -- Relatives
            'Abraham', 'Selma', 'Patty',
            -- School
            'Milhouse', 'Skinner', 'Edna', 'Martin', 'Ralph', 'Nelson',
            -- Homer's friends
            'Barney', 'Moe', 'Lenny', 'Carl',
            -- Neighbours
            'Flanders', 'Todd', 'Rod',
            -- Citizens
            'Burns', 'Smithers', 'Wiggum', 'Snake', 'Apu', 'Fat Tony',
            -- Celebrities
            'Krusty', 'Bob', 'Itchy', 'Scratchy',
            -- Extraterrestrials
            'Kang', 'Kodos',
        },
        loves = {
            -- Family
            ['Homer']  = Set{'Bart', 'Liza', 'Marge', 'Maggie', 'Abraham', 'Moe', 'Apu', 'Barney', 'Carl', 'Lenny'},
            ['Marge']  = Set{'Bart', 'Liza', 'Homer', 'Maggie', 'Selma', 'Patty', 'Nelson', 'Snake', 'Apu'},
            ['Bart']   = Set{'Marge', 'Homer', 'Liza', 'Maggie', 'Krusty', 'Milhouse', 'Itchy', 'Scratchy', 'Fat Tony'},
            ['Liza']   = Set{'Marge', 'Homer', 'Bart', 'Maggie', 'Abraham', 'Krusty', 'Itchy', 'Scratchy', 'Nelson', 'Edna', 'Skinner'},
            ['Maggie'] = Set{'Marge', 'Homer', 'Bart', 'Liza', 'Krusty', 'Itchy', 'Scratchy'},
            -- Relatives
            ['Abraham'] = Set{'Liza', 'Homer', 'Maggie'},
            ['Selma']   = Set{'Patty', 'Marge', 'Maggie', 'Bob'},
            ['Patty']   = Set{'Selma', 'Marge', 'Maggie', 'Skinner'},
            -- School
            ['Skinner']  = Set{'Edna', 'Patty', 'Liza', 'Martin'},
            ['Edna']     = Set{'Skinner', 'Liza', 'Flanders', 'Martin'},
            ['Milhouse'] = Set{'Bart', 'Krusty', 'Itchy', 'Scratchy', 'Liza'},
            ['Martin']   = Set{'Skinner', 'Liza', 'Edna', 'Krusty', 'Itchy', 'Scratchy'},
            ['Ralph']    = Set{'Wiggum', 'Skinner', 'Liza', 'Edna', 'Krusty', 'Itchy', 'Scratchy'},
            ['Nelson']   = Set{'Itchy', 'Scratchy', 'Marge', 'Krusty', 'Liza', 'Snake', 'Fat Tony'},
            ['Barney']   = Set{'Homer', 'Moe', 'Carl', 'Lenny', 'Marge'},
            -- Homer's friends
            ['Moe']   = Set{'Homer', 'Barney', 'Carl', 'Lenny', 'Marge'},
            ['Lenny'] = Set{'Homer', 'Barney', 'Moe', 'Carl'},
            ['Carl']  = Set{'Homer', 'Barney', 'Moe', 'Lenny'},
            -- Neighbours
            ['Flanders'] = Set{'Todd', 'Rod', 'Homer', 'Bart', 'Liza', 'Marge', 'Maggie', 'Edna', 'Burns'},
            ['Todd']     = Set{'Flanders', 'Rod', 'Krusty', 'Itchy', 'Scratchy'},
            ['Rod']     = Set{'Flanders', 'Todd', 'Krusty', 'Itchy', 'Scratchy'},
            -- Citizens
            ['Burns']    = Set{'Bart', 'Flanders', 'Smithers'},
            ['Smithers'] = Set{'Burns'},
            ['Wiggum']   = Set{'Ralph'},
            ['Apu']      = Set{'Homer', 'Marge', 'Liza'},
            ['Snake']    = Set{'Marge', 'Bart', 'Fat Tony'},
            ['Fat Tony'] = Set{'Bart', 'Krusty', 'Snake'},
            -- Celebrities
            ['Krusty']   = Set{'Liza', 'Bart', 'Itchy', 'Scratchy', 'Fat Tony'},
            ['Itchy']    = Set{'Krusty'},
            ['Bob']      = Set{'Selma'},
            ['Scratchy'] = Set{'Krusty'},
            -- Extraterrestrials
            ['Kang']  = Set{'Kodos'},
            ['Kodos'] = Set{'Kang'},            
        },
        hates = {
            -- Family
            ['Homer']  = Set{'Selma', 'Patty', 'Burns', 'Flanders', 'Todd', 'Rod'},
            ['Marge']  = Set{'Moe', 'Burns', 'Barney', 'Lenny', 'Carl', 'Fat Tony', 'Krusty', 'Itchy', 'Scratchy'},
            ['Bart']   = Set{'Skinner', 'Edna', 'Selma', 'Patty', 'Bob', 'Nelson', 'Martin', 'Ralph', 'Todd', 'Rod'},
            ['Liza']   = Set{'Selma', 'Patty', 'Burns', 'Milhouse', 'Bob'},
            ['Maggie'] = Set{'Burns'},
            -- Relatives
            ['Abraham'] = Set{'Burns'},
            ['Selma']   = Set{'Homer'},
            ['Patty']   = Set{'Homer'},
            -- School
            ['Skinner']  = Set{'Bart', 'Nelson', 'Burns'},
            ['Edna']     = Set{'Bart', 'Nelson'},
            ['Milhouse'] = Set{'Skinner', 'Edna', 'Nelson', 'Martin'},
            ['Martin']   = Set{'Bart', 'Nelson'},
            ['Ralph']    = Set{'Nelson'},
            ['Nelson']   = Set{'Skinner', 'Edna', 'Bart', 'Wiggum', 'Milhouse', 'Martin', 'Ralph', 'Todd', 'Rod'},
            -- Homer's friends
            ['Barney'] = Set{},
            ['Moe']    = Set{'Bart', 'Burns', 'Fat Tony', 'Snake'},
            ['Lenny']  = Set{'Burns'},
            ['Carl']   = Set{'Burns'},
            -- Neighbours
            ['Flanders'] = Set{'Itchy', 'Scratchy', 'Krusty'},
            ['Todd']     = Set{},
            ['Rod']      = Set{},
            -- Citizens
            ['Burns']    = Set{'hates_others'},
            ['Smithers'] = Set{},
            ['Wiggum']   = Set{'Snake', 'Fat Tony', 'Bob'},
            ['Apu']      = Set{'Snake', 'Fat Tony'},
            ['Snake']    = Set{'Wiggum', 'Apu', 'Moe', 'Burns'},
            ['Fat Tony'] = Set{'Wiggum', 'Apu', 'Moe', 'Burns'},
            -- Celebrities
            ['Bob']      = Set{'Bart', 'Liza', 'Homer', 'Krusty', 'Itchy', 'Scratchy', 'Wiggum'},
            ['Krusty']   = Set{'Bob'},
            ['Itchy']    = Set{'Scratchy'},
            ['Scratchy'] = Set{'Itchy'},
            -- Extraterrestrials
            ['Kang']  = Set{'hates_others', 'is_hated_by_others'},
            ['Kodos'] = Set{'hates_others', 'is_hated_by_others'},            
        },       
    },    
}

----------------------------------------------------
-- Prepare worlds
----------------------------------------------------

for name, world in pairs(Worlds) do
    world.name = name
    -- apply hates_other and is_hated_by_others
    for a, hates in pairs(world.hates) do
        if hates['hates_others'] then
            for h,_ in pairs(world.names) do
                if h~=a and not world.loves[a][h] then 
                    world.hates[a][h] = true
                end
            end
            hates['hates_others'] = nil
        end
        if hates['is_hated_by_others'] then
            for h,_ in pairs(world.names) do
                if h~=a and not world.loves[h][a] then 
                    world.hates[h][a] = true
                end
            end
            hates['is_hated_by_others'] = nil            
        end
    end
end

return Worlds

----------------------------------------------------
-- EOF
----------------------------------------------------
