
do

function run(msg, matches)
       if not is_momod(msg) then
        return ""
       end
  return [[
📂دستورات مدیریتی سوپر گروه📂
🔻مشاهده دستورات
🔹!helpadmin
🔸🔸🔸🔸🔸🔸🔸🔸🔸
🔻نشان دادن ایدی خود
🔹!id
🔻اطلاعات کامل خود   
🔹!info
🔻لیست ادمین های سوپر گروه
🔹!admins
🔻تنظیم ادمین سوپر گروه
🔹!setadmin
🔻مالک سوپر گروه
🔹!owner
🔻تنظیم مالک سوپر گروه
🔹!setowner
🔻لیست مدیران
🔹!modlist
🔻لیست ربات های سوپر گروه
🔹!bots
🔻لیست کل کاربران سوپر گروه
🔹!who
🔻{اخراج شخص از سوپر گروه {ریپلی
🔹!block
🔻ارتقا شخص به مدیر سوپر گروه
🔹!promote [username|id]
🔻تنزیل مقام مدیر سوپر گروه
🔹!demote [username|id]
🔻تنظیم نام گروه
🔹!setname [name]  
🔻تنظیم عکس سوپر گروه
🔹!setphoto 
🔻تنظیم قوانین گروه
🔹!setrules [rules]
🔻نمایش قوانین گروه
🔹!rules   
🔻تنظیم موضوع گروه
🔹!setabout [about]
🔻تنظیم لینک گروه
🔹!setlink [لینک گروه]
🔻لینک فعلی سوپر گروه   
🔹!link  
🔻تنظیم حساسیت اسپم
🔹!setflood [عدد]
🔻نمایش تنظیمات
🔹!settings
🔻سایلنت کردن شخص
🔹!silent [username|id]
🔻لیست کاربران سایلنت
🔹!silentlist
🔻رفع سایلنت شخص
🔹!unsilent [username|id]
🔻پاک کردن موارد زیر
🔹!clean [rules|about|modlist|mutelist]
🔻پاک کردن پیام سوپر گروه
🔹!clean all
🔻فیلتر کردن متن
🔹!filter [text]
🔻لیست متن های فیلتر شده
🔹!filterlist
🔻حذف متن از لیست فیلتر ها
🔹!rw [text]
🔻حذف تمامی فیلتر ها
🔹!cleanfilterlist
🚀حذف تمامی فیلتر ها🚀
—------------—
@DragonSec
]]
end

return {
  description = "Shows bot version", 
  usage = "ver: Shows bot version",
  patterns = {
    "^[Hh]elpadmin$",
	"^[/!#][Hh]elpadmin$"
  }, 
  run = run 
}

end

