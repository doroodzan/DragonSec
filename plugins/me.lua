do
local function get_msgs_user_chat(user_id, chat_id)
  local user_info = {}
  local uhash = 'user:'..user_id
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..user_id..':'..chat_id
  user_info.msgs = tonumber(redis:get(um_hash) or 0)
  user_info.name = user_print_name(user)..' ['..user_id..']'
  return user_info
end
local function chat_stat(chat_id, typee)
  -- Users on chat
local hash = ''
if typee == 'channel' then
hash = 'channel:'..chat_id..':users'
else
  hash = 'chat:'..chat_id..':users'
end
  local users = redis:smembers(hash)
  local users_info = {}

  -- Get user info
  for i = 1, #users do
    local user_id = users[i]
    local user_info = get_msgs_user_chat(user_id, chat_id)
    table.insert(users_info, user_info)
  end

  -- Sort users by msgs number
  table.sort(users_info, function(a, b) 
      if a.msgs and b.msgs then
        return a.msgs > b.msgs
      end
    end)
 
  local arian = '0'
  local text = 'users in this chat \n'
  for k,user in pairs(users_info) do
    --text = text..user.name..' = '..user.msgs..'\n'
      arian = arian + user.msgs
  end
  return arian
end
   local function rsusername_cb(extra, success, result)    
     if success == 1 then
      local user = result.peer_id
      local name =  string.gsub(result.print_name, "_", " ")
      local chatid = get_receiver(extra.msg)
      local username = result.username
      function round2(num, idp)
      return tonumber(string.format("%." .. (idp or 0) .. "f", num))
      end

      local r = tonumber(chat_stat(extra.msg.to.id, extra.msg.to.type) or 0)

      local hashs = 'msgs:'..result.peer_id..':'..extra.msg.to.id
      local msgss = redis:get(hashs)
      local percent = msgss / r * 100
local text = "نام شما : "..name.."\nتعداد پیام ها ارسالی توسط شما : "..msgss.." ("..round2(percent).."%)\n  تمام پیام های ارسال شده در گروه: "..r..""
text = string.gsub(text, '0', '۰')
	text = string.gsub(text, '1', '۱') 
	 text = string.gsub(text, '2', '۲') 
	text = string.gsub(text, '3', '۳') 
	 text = string.gsub(text, '4', '۴') 
	 text = string.gsub(text, '5', '۵') 
	 text = string.gsub(text, '6', '۶') 
	 text = string.gsub(text, '7', '۷') 
	 text = string.gsub(text, '8', '۸') 
	 text = string.gsub(text, '9', '۹') 

    return send_large_msg(chatid,text )

    end
end
local function run(msg, matches)
local chat_id = msg.to.id
--return chat_stat(chat_id)
  resolve_username(msg.from.username, rsusername_cb, {msg=msg})
end
  return {
    patterns = {
      "^[!/](me)$",
    },
    run = run
  }
end
