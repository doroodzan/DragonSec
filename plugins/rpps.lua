function run(msg, matches)
 if redis:get("id:"..msg.to.id..":"..msg.from.id) then
  return "یه دقیقه بصبر باو"
 end
 redis:setex("id:"..msg.to.id..":"..msg.from.id, 60, true)
 if matches[1] == "rps" then
 local system = {'rock','paper','sci'}
 local random = system[math.random(#system)]
  if matches[2] == 'سنگ' then
   you = 'سنگ 👊'
   if random == 'rock' then
    return "You: "..you.."\nBot: سنگ 👊\n-------------------\n\nمساوی شدید 😕"
   elseif random == 'paper' then
    return "You: "..you.."\nBot: کاغذ 📜\n-------------------\n\nتو باختی 😞"
   elseif random == 'sci' then
    return "You: "..you.."\nBot: قیچی ✂️\n-------------------\n\nتو بردی ✌"
   end
  elseif matches[2] == 'کاغذ' then
   you = 'کاغذ 📜'
   if random == 'rock' then
    return "You: "..you.."\nBot: سنگ 👊\n-------------------\n\nتو بردی ✌"
   elseif random == 'paper' then
    return "You: "..you.."\nBot: کاغذ 📜\n-------------------\n\nمساوی شدید 😕"
   elseif random == 'sci' then
    return "You: "..you.."\nBot: قیچی ✂️\n-------------------\n\nتو باختی 😞"
   end
  elseif matches[2] == 'قیچی' then
   you = 'قیچی ✂️'
   if random == 'rock' then
    return "You: "..you.."\nBot: سنگ 👊\n-------------------\n\nتو باختی 😞"
   elseif random == 'paper' then
    return "You: "..you.."\nBot: کاغذ 📜\n-------------------\n\nتو بردی ✌"
   elseif random == 'sci' then
    return "You: "..you.."\nBot: قیچی ✂️\n-------------------\n\nمساوی شدید 😕"
   end
  end
 end
end
return {
advan = {
"Created by @DragonSec",
"Powered by @Varozh",
"CopyRight all right reserved",
},
patterns = {
    "^[!/#](rps) (.*)$"
  },
run = run
}
