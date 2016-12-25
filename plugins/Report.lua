local function parsed_url(link)
  local parsed_link = URL.parse(link)
  local parsed_path = URL.parse_path(parsed_link.path)
  return parsed_path[2]
end

local function run(msg,matches)
      local sudo = "user#id"..279737045
    if matches[1] == "+" and is_admin(msg) then
      local texi_add = 'Now '..string.gsub(msg.from.print_name, '_', ' ')..' ['..msg.from.id..'] #Added Me to '..string.gsub(msg.to.print_name, '_', ' ')..' ['..msg.to.id..']\nCheck Now!'
  send_msg(sudo, texi_add, ok_cb, false)
  end
    if matches[1] == "-" and is_admin(msg) then
      local texi_del = 'Now '..string.gsub(msg.from.print_name, '_', ' ')..' ['..msg.from.id..'] Removed Me From '..string.gsub(msg.to.print_name, '_', ' ')..' ['..msg.to.id..']\nCheck Now!'
    send_msg(sudo, texi_del, ok_cb, false)
  end
    if matches[1] == "import" and is_admin(msg) then
      local hash = parsed_url(matches[2])
      local texi = string.gsub(msg.from.print_name, '_', ' ')..' Invited Me By This Link :\n'..matches[2]
    send_msg(sudo, texi, ok_cb, false)
      import_chat_link(hash,ok_cb,false)
    end
  end
  return {
    description = "The Bot Say you when Add/Remove to Group/supergroup or Invite Bot By Link", 
    usage = {
    "+ : Add Bot to a group/supergroup",
    "- : Remove Bot of a group/supergroup",
  "/import [link]: Join bot to Link group/supergroup"
  },
    patterns = { 
  "^+$",
  "^-$",
  "^[#!/](import) (.*)$",
  },
  run = run
  }