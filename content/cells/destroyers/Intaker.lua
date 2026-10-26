local BaseCell = require("content/cells/abstract/BaseCell")

local Intaker = setmetatable({
    name = "intaker",
    k3 = 43,
    title = "Intaker",
    description = "Pulls cells that are in front of it towards it. The front acts like a trash cell.",
    categories = { "intakers" }
    subtick = { 43 }
}, { __index = BaseCell })
Intaker.__index = Intaker

function Intaker:eats(dx, dy)
    return self:_alignment(dx, dy) == 1
end

function Intaker:update(_, dir)

end

return Intaker
