local HttpService = game:GetService("HttpService")
local asset_loading_function = getsynasset or getcustomasset
local ui = Instance.new("ScreenGui", game:GetService("CoreGui"))

local frame1 = Instance.new("Frame", ui)
frame1.Size = UDim2.new(1,0,1.1,0)
frame1.Position = UDim2.new(0,0,-0.1,0)
frame1.BackgroundTransparency = 0
frame1.BackgroundColor3 = Color3.new(0,0,0)
frame1.Draggable = false

if asset_loading_function then
    local file_name = HttpService:GenerateGUID(false)
    writefile(file_name..".gif", game:HttpGet("https://media.tenor.com/_tHxkI_ur48AAAAC/nuh-uh-nuh.gif"))

    local img = Instance.new("ImageLabel", frame1)
    img.Size = UDim2.new(1, 0, 1, 0)
    img.Active = true
    img.Image = asset_loading_function(file_name..".gif")

    task.wait(0.5)

    delfile(file_name..".gif") 
end
