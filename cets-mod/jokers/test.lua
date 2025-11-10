-- mods/MyCoolJokerMod/jokers/lucky_penny.lua

local joker = SMODS.Joker({
    key = "lucky_penny",
    loc_txt = {
        name = "Lucky Penny",
        text = {
            "Gives +1 Mult",
            "for each hand played"
        }
    },
    rarity = 1,
    cost = 3,
    atlas = "joker",
    pos = {x = 0, y = 0},
})

function joker:calculate(card, context)
    if context.joker_main and context.before then
        card.ability.mult = (card.ability.mult or 0) + 1
        return {
            message = "+1 Mult!",
            colour = G.C.MULT,
            mult_mod = 1
        }
    end
end

SMODS.Jokers[joker.key] = joker
