%�ٶȷ��뺯��
%ע��API��վ��http://api.fanyi.baidu.com/api/trans/product/index���������ԵĴ��������http://api.fanyi.baidu.com/api/trans/product/apidoc�е�ͨ�÷���API�����ĵ���
%����ʱ�����룺BaiduTranFunction(������ʵ����ԣ�������Ĵʵ����ԣ�������Ĵʣ��ٶ�API��id���ٶ�API���ܳ�)��
%�磺ϣ������ƻ���������ķ����Ӣ�ģ����id�ǣ�999999���ܳ��ǣ�11111�������룺BaiduTranFunction('zh','en','ƻ��','999999','11111');
function TranslateResult=BaiduTranFunction(Orilanguage,Newlanguage,wanttotranslate,appid,mishi)
%����һ����Ϊsalt�������
salt=floor(rand*100);
%�����ǰ��Ĵ��ַ
Bigweb='http://api.fanyi.baidu.com/api/trans/vip/translate?';
%Ҫ����Ĵʣ�����Է���Ĵʽ���url�ı��룬��ֹmatlab�����޷����룬�����޷�����
Q=sprintf('q=%s&',urlencode(wanttotranslate));
%����Ĵʵ�����
From=sprintf('from=%s&',Orilanguage);
%ϣ������ɵ�����
To=sprintf('to=%s&',Newlanguage);
%�ٶȷ���API���˺�
Appid=sprintf('appid=%s&',appid);
%֮ǰ�������
Salt=sprintf('salt=%d&',salt);
%ͨ��md5�ļ��ܷ�ʽ�õ�sign�����ݣ�����μ��ٶȷ���API�Ĺ���http://api.fanyi.baidu.com/api/trans/product/apidoc�е�ͨ��API���뷽ʽ
%�˴�������md5������
Sign=sprintf('sign=%s',lower(md5(unicode2native(sprintf('%s%s%d%s',appid,wanttotranslate,salt,mishi),'UTF-8'))));
%��ǰ��Ķ������ƴ�����յ�API��ַ��Ϊ�˷�ֹ��Ҫ����ľ������пո�����³��־��棬��˽���ַ�еĿո��滻��%20;
ALL=strrep(sprintf('%s%s%s%s%s%s%s',Bigweb,Q,From,To,Appid,Salt,Sign),' ','%20');
%��ȡAPI�ĵ�ַ
Urlread=urlread(ALL);
%����ȡ�����ݲ�ֳ�"***"�ļ������֣�������Ҫ�ķ���������Զ�ǵ�9����
unic=regexp(Urlread,'".*?"','match');
%��"ȥ��
beta=strrep(unic{9},'"','');
TranslateResult=sprintf(strrep(beta,'\u','\x'));
end

