-- simROS lua type-checking wrapper
-- (this file is automatically generated: do not edit)
require 'checkargs'

local simROS=require('simROS')

__initFunctions=__initFunctions or {}
table.insert(__initFunctions, function()
    local function wrapFunc(funcName,wrapperGenerator)
        _G['simROS'][funcName]=wrapperGenerator(_G['simROS'][funcName])
    end

end)

return simROS
