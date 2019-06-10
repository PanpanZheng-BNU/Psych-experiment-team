%百度翻译函数
%注册API网站：http://api.fanyi.baidu.com/api/trans/product/index；关于语言的代号请见：http://api.fanyi.baidu.com/api/trans/product/apidoc中的通用翻译API技术文档；
%调用时：输入：BaiduTranFunction(被翻译词的语言，翻译出的词的语言，被翻译的词，百度API的id，百度API的密匙)；
%如：希望将‘苹果’从中文翻译成英文；你的id是：999999；密匙是：11111，则输入：BaiduTranFunction('zh','en','苹果','999999','11111');
function TranslateResult=BaiduTranFunction(Orilanguage,Newlanguage,wanttotranslate,appid,mishi)
%创建一个名为salt的随机数
salt=floor(rand*100);
%不变的前面的大地址
Bigweb='http://api.fanyi.baidu.com/api/trans/vip/translate?';
%要翻译的词，如果对翻译的词进行url的编码，防止matlab自身无法编码，导致无法运行
Q=sprintf('q=%s&',urlencode(wanttotranslate));
%翻译的词的语言
From=sprintf('from=%s&',Orilanguage);
%希望翻译成的语言
To=sprintf('to=%s&',Newlanguage);
%百度翻译API的账号
Appid=sprintf('appid=%s&',appid);
%之前的随机数
Salt=sprintf('salt=%d&',salt);
%通过md5的加密方式得到sign的内容：具体参见百度翻译API的规则：http://api.fanyi.baidu.com/api/trans/product/apidoc中的通用API接入方式
%此处调用了md5函数；
Sign=sprintf('sign=%s',lower(md5(unicode2native(sprintf('%s%s%d%s',appid,wanttotranslate,salt,mishi),'UTF-8'))));
%将前面的多个变量拼成最终的API地址，为了防止需要翻译的句子中有空格而导致出现警告，因此将地址中的空格替换成%20;
ALL=strrep(sprintf('%s%s%s%s%s%s%s',Bigweb,Q,From,To,Appid,Salt,Sign),' ','%20');
%读取API的地址
Urlread=urlread(ALL);
%将读取的内容拆分成"***"的几个部分，而所需要的翻译结果，永远是第9个；
unic=regexp(Urlread,'".*?"','match');
%把"去掉
beta=strrep(unic{9},'"','');
TranslateResult=sprintf(strrep(beta,'\u','\x'));
end

