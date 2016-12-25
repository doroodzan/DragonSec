local function solid(msg, matches)
if matches[1]:lower() == 'del' then 
      if not is_sudo(msg) then
        return "شما سلید نیستید!"
      end
if matches[2] == 'gbanlist' then
local hash = 'gbanned'
send_large_msg(get_receiver(msg), "لیست سوپر بن پاک شد.")
redis:del(hash)
     end
end
if matches[1]:lower() == 'del' then
if not is_owner(msg) then
return 'فقط مخصوص صاحب گروه!'
end
if matches[2] == 'banlist' then
local chat_id = msg.to.id
local hash = 'banned:'..chat_id
send_large_msg(get_receiver(msg), "لیست بن پاک شد.")
redis:del(hash)
end
end
 end

return {
  patterns = {
  "[!/#]([Dd]el) (.*)$",
  "([Dd]el) (.*)$",
  },
  run = solid
}

-- Maked By @SoLiD021
-- @BeyondTeam
-- Now Work On SuperGroup Or Normal Group :)
-- Plz Dont Remove My Name And Team :/
