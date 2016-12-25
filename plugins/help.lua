do

function run(msg, matches)
       if not is_momod(msg) then
        return ""
       end
  return [[
📍SuperGroup Helps List For DragonSec📍
〰〰〰〰〰〰〰〰
▪️ #helpadmin [مدیریت]
▪️ #helplock [قفل]
▪️ #helpmute [میوت]
▪️ #helpfun [فان]
〰〰〰〰〰〰〰〰
@DragonSec 📌
  ]]
end

return {
  description = "Shows bot version", 
  usage = "ver: Shows bot version",
  patterns = {
    "^[Hh]elp$",
	"^[/!#][Hh]elp$"
  }, 
  run = run 
}

end