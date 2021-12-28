local house = {}

local phrases = {
    'the house that Jack built.',
    'the malt\nthat lay in ',
    'the rat\nthat ate ',
    'the cat\nthat killed ',
    'the dog\nthat worried ',
    'the cow with the crumpled horn\nthat tossed ',
    'the maiden all forlorn\nthat milked ',
    'the man all tattered and torn\nthat kissed ',
    'the priest all shaven and shorn\nthat married ',
    'the rooster that crowed in the morn\nthat woke ',
    'the farmer sowing his corn\nthat kept ',
    'the horse and the hound and the horn\nthat belonged to '
}

function house.verse(num)
    local verse = ''
    for i = 1, num do
        verse = phrases[i] .. verse
        --print(phrases[i])
        --print(verse)
    end
    return 'This is' .. verse
end

function house.recite()
    local verses = {}
    for i = 1, #phrases do
        table.insert(verses, house.verse(i))
        print(dump(verses))
    end
    --print(verses)
    return table.concat(verses, '\n')
end

function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end

--house.verse(3)
house.recite()
