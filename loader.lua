-- Raven Hub loader v1.0.0
local urls={[10539411000]="https://raw.githubusercontent.com/Aekkalak667/RavenHub-Release/main/payloads/leaf-collection.lua"}
local url=urls[game.GameId]
assert(url,"Raven Hub: this game is not supported by this release")
local ok,body=pcall(function()return game:HttpGet(url)end)
assert(ok and type(body)=="string" and #body>0,"Raven Hub: download failed; please retry")
local run,failure=loadstring(body,"RavenHub/loader")
assert(run,"Raven Hub: invalid download: "..tostring(failure))
return run()
