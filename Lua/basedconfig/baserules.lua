-- These are some extra configurations
local mod_config = {
    -- Displays a lua error message on level start, showing which sentences in baserules.lua were invalid.
    -- You can disable this if you want to avoid all the excess error messages. But invalid sentences will still be ignored.
    report_invalid_sentences = true,
}

--[[
    You can have as many entries in global baserules as you want.
    The format for each entry in baserulesets is:
        <text block name> = {
            <sentence 1>,
            <sentence 2>,
            <sentence 3>,
            ...
        }
    Where <text block name> does not have "text_" prepended ("push", "shift", "ice" etc).

    Note: Only full rules are allowed. So no "baba is keke is push", where it would've been parsed as two sentences in game.

    The below example will apply "baba is sleep and pet" and "level is pink" when "level is lovebaba" is formed. A similar thing happens when you form "level is poem"

        local global_baserules = {
            lovebaba = {
                "baba is sleep and pet",
                "all near baba is love",
                "level is pink",
            },
            poem = {
                "rose is red",
                "violet is blue",
                "flag is win",
                "baba is you",
            },
        }
 ]]
local global_baserules = {
}

--[[ 
    persist_baserules are always applied in every level in the levelpack. Just put in your list of sentences below.
 ]]
local persist_baserules = {
}

--[[ 
    level baserules are baserules that only apply to specific levels in your levelpack.
    The format for each entry is:
        [<level name>] = {
            <text block name> = {
                <sentence 1>,
                <sentence 2>,
                <sentence 3>,
                ...
            }
        }
    Where <level name> is CASE-SENSITIVE and can be EITHER: 
        - the name of the level ingame (Ex: "the return of scenic pond", "skull house", "prison")
        - the name of the .ld file (excluding ".ld")
    The rest of the format is exactly the same as global baserules.
    
    Note: level baserules will be used instead of global baserules when playing a level that you specified in the variable below.

    The below example applies "baba is green" when "level is baserule1" is formed when playing a level named "woah". 
    It also applies "keke is purple" when "level is baserule1" is formed when playing a level whose .ld file is "23level.ld". 

        local level_baserules = {
            ["woah"] = {
                baserule1 = {
                    "baba is green"
                }
            },
            ["23level"] = {
                baserule1 = {
                    "keke is purple"
                }
            }
        }
 ]]
local level_baserules = {
}

-- Ignore this last part. It's needed to load all the baserules into the mod
return mod_config, global_baserules, level_baserules, persist_baserules