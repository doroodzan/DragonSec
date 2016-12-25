do

function run(msg, matches)
       if not is_momod(msg) then
        return ""
       end
  return [[
📂دستورات قفل های تنضیمات📂   
🔻مشاهده دستورات
🔹!helplock
🔸🔸🔸🔸🔸🔸🔸🔸🔸
🔻قفل لینک و لغو قفل
🔹!lock links
🔹!unlock links
🔻قفل یوزرنیم و لغو قفل
🔹!lock username
🔹!unlock username
🔻قفل فوروارد و لغو قفل
🔹!lock fwd
🔹!unlock fwd
🔻قفل ارسال شماره تماس و لغو قفل   
🔹!lock contacts
🔹!unlock contacts
🔻قفل حساسیت اسپم و لغو قفل
🔹!lock flood
🔹!unlock flood
🔻قفل اسپم و لغو قفل
🔹!lock spam
🔹!unlock spam
🔻قفل تایپ عربی و لغو قفل
🔹!lock arabic
🔹!unlock arabic
🔻قفل اضافه کردن اعضا و لغو قفل
🔹!lock Member
🔹!unlock Member
🔻قفل اعلانات و لغو قفل 
🔹!lock Tgservice
🔹!unlock Tgservice
🔻قفل استیکر و لغو قفل
🔹!lock sticker
🔹!unlock sticker
🔻قفل برچسب و لغو قفل
🔹!lock tag
🔹!unlock tag
🔻قفل ایموجی و لغو قفل
🔹!lock emoji
🔹!unlock emoji
🔻قفل تایپ انگلیسی و لغو قفل
🔹!lock english
🔹!unlock english
🔻قفل ریپلی و لغو قفل
🔹!lock reply
🔹!unlock reply
🔻قفل رسانه و لغو قفل
🔹!lock media
🔹unlock media
🔻قفل فحاشی و لغو قفل
🔹!lock fosh
🔹!unlock fosh
🔻قفل ورود ربات و لغو قفل 
🔹!lock bots
🔹!unlock bots
🔻قفل ورود و لغو قفل
🔹!lock join
🔹!unlock join
🔻قفل ترک گروه و لغو قفل
🔹!lock leave
🔹!unlock leave
🔻قفل اپراتورها و لغو قفل
🔹!lock operator
🔹!unlock operator
🔻قفل همه و لغو قفل
🔹!lock all
🔹!unlock all
〰〰〰〰〰
@DragonSec 📌
  ]]
end

return {
  description = "Shows bot version", 
  usage = "ver: Shows bot version",
  patterns = {
    "^[Hh]elplock$",
	"^[/!#][Hh]elplock$"
  }, 
  run = run 
}

end
