<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" id="jsHtml" lang="ru" class="page-scroll  jsHtml draganddrop jsHtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script type="text/javascript" src="./mailru/shit/mailru.BindedCounters.js"></script>
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name="description" content="Почта Mail.Ru - крупнейшая бесплатная почта, быстрый и удобный интерфейс, неограниченный объем ящика, надежная защита от спама и вирусов, мобильная версия и приложения для смартфонов. А также доступ по IMAP, SMS-уведомления, интерфейс на разных языках и темы оформления Почты.">
<meta name="Keywords" content="Mail.Ru, бесплатная почта, многоязычный интерфейс, неограниченный объем ящика, защита от спама, защита от вирусов, мобильная версия, мобильные приложения, темы оформления, POP3, SMTP, IMAP, SMS-уведомления, сборщик, вложенные файлы">

<meta name="google" content="notranslate">








<title>Вход - Почта Mail.Ru</title>


	<link href="./mailru/shit/main.css" rel="stylesheet" type="text/css">



	


<!--[if gt IE 7]>
		<link href="//img.imgsmail.ru/ts/1366642892/css/neo/pages/main.ie.css?v=315" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if IE 7]>
		<link href="//img.imgsmail.ru/ts/1366642892/css/neo/pages/main.ie7.css?v=315" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lt IE 7]>
		<link href="//img.imgsmail.ru/ts/1366642892/css/neo/pages/main.ie6.css?v=315" rel="stylesheet" type="text/css" />
<![endif]-->

<script>
	(function () {

		var variants = {
			t1056: getRandomThemeVariant(['all', 'v2', 'v3'])
		};

		function getRandomThemeVariant(variants) {
			return variants[Math.floor(Math.random() * variants.length)];
		}

		function chooseTheme(themeId){
			var themeVariant = 'all', hours = (new Date()).getHours();
			if (variants[themeId]) {
				themeVariant = variants[themeId];
			} else {
				switch (themeId) {
					case 't1016':
						if (hours >= 6 && hours < 12){
							themeVariant = "morning";
						} else if (hours >= 12 && hours < 18){
							themeVariant = "day";
						} else if (hours >= 18 && hours < 22){
							themeVariant = "evening";
						} else {
							themeVariant = "night";
						}
						break;

					case 't1032':
					case 't1060':
						if (hours >= 7 && hours < 19){
							themeVariant = "day";
						} else {
							themeVariant = "night";
						}
						break;
				}
			}
			return themeVariant;
		}

		window.chooseTheme = chooseTheme;
	})();
</script>

<link href="./mailru/shit/main.print.css" rel="stylesheet" type="text/css" media="print">

	
<style type="text/css">
	div[style*="background-image"][style*="chrome-extension"][style*="icon_play.png"] {border:none !important;}
</style>


<script src="./mailru/shit/ajs.min.js"></script>
<style type="text/css">#nojs .nojsdn {display:none;}</style>
<script type="text/javascript">

	

	try { top.location.toString(); } catch (er) { top.location = location; }

	var yandex_direct_fontColor = 'FF0000';
	var yandex_direct_BorderColor = 'FBE5C0';
	var yandex_direct_BgColor = 'FFF9F0';
	var yandex_direct_headerBgColor = 'FEEAC7';
	var yandex_direct_titleColor = '0000CC';
	var yandex_direct_siteurlColor = '006600';
	var yandex_direct_linkColor = '0000CC';
	function yandex_direct_print(){ }

	document.write('<style type="text/css">.jsdn {display: none;} .jsvh {visibility: hidden;}</style>');
	document.documentElement.id = 'jsHtml';
	document.documentElement.className += ' jsHtml';

	(function(l) {
		var url = l.toString().match(/#.*/);
		if( url && url[0].match(/((gosearch|filesearch|msglist|readmsg|sentmsg|sendmsgok|ajax_attach_action)(.*?))$/) ) {
			url	= 'cgi-bin/' + RegExp.$1;
			
			
			l.href = l.protocol + '//' + l.host + '/' + url.replace('&secure=1', '');

		} else if(url && url[0].match(/^#(\/addressbook.*)/)) {
			url = RegExp.$1;
			l.href = l.protocol + '//' + l.host + url;
		} else {
			
		}
	})(location);


	function createRadar(name, iZ, log){
		var data = {}, radar = function (label, end){
			if( label === 'clear' ){
				data = {};
			}
			else if( typeof label === 'string' ){
				if( end == 1 && data[label] && !data[label][1] ){ data[label][1] = (new Date).getTime(); }
				else if( end != 1 && !data[label] ){ data[label] = [(new Date).getTime(), 0]; }
			}
			else {
				var i = [], a, v, k, dt, radarDomain = mailru.RadarURL;
				for( k in data ) if( data.hasOwnProperty(k) ){
					v = data[k];
					dt = v[1] - v[0];
					if( dt < 0 ){
						data = {};
						return;
					}
					else if( iZ && !dt ) continue;
					i.push(k +':'+ dt);
					if( k == 'all' ) a = dt;
					if( log ) ajs.log('radar.'+label+': '+ k +': '+ dt +' ms');
				}

				if( i.length && a ) setTimeout(function(){
					(new Image).src = '//' + radarDomain + '/update?p=mail&t='+ name +'&v='+ a +'&i='+ i.join(',') +'&rnd='+ Math.random() + (document.referrer ? '&r='+ escape(document.referrer) : '');
				}, 0);
				data = {};
			}
			return	radar;
		};
		radar.clear	= function (){ data = {}; return radar; };
		return	radar;
	} // createRadar;

	if (!('rT' in window)) window.rT = {i: []};
	function timeInterval_sum(bP)
	{
		if( !rT[bP] )
		{
			rT[bP] = new Date();
		}
		else
		{
			var j = 0, rT_cnt = rT.i.length, found  = false;
			for( ; j < rT_cnt; j++ )
			{
				var rT_array = rT.i[j].split("=");
				if( rT_array[0] == bP )
				{
					found	= true;
					rT.i[j]	= bP +'='+ (parseInt(rT_array[1]) + (new Date).getTime() - rT[bP].getTime());
				}
			}
			if( !found )
				rT.i[rT.i.length] = bP +'='+ ((new Date).getTime() - rT[bP].getTime());
			delete rT[bP];
		}
	} // timeInterval_sum;


	// < GLOBALS
	var
		  undef
		, undefined
		, IS_LOCAL		= false
		, jsVersion		= 3
		, jsBuild		= '315'
		, IS_UTF		= 1
		
		, jsCore		= { version: 3, build: '315' }
		, CheckNewNum	= '3'
		, jsCoreAlias	= {
			  'jsCore': 				'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/'
			, 'jQuery':					'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/jquery/'
			, 'labs':					'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/labs/'
			, 'utils':					'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/utils/'
			, 'plugins':				'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/plugins/'
			, 'projects':				'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/'
			, 'easyXDM':				'//js.imgsmail.ru/ts/1366642892/images/js/ru/easyXDM/'
			, 'jinn':					'//js.imgsmail.ru/ts/1366642892/common/js/Jinn/'
			, 'ajs':					'//js.imgsmail.ru/ts/1366642892/common/js/ajs/'
			, 'jquery':					'//js.imgsmail.ru/ts/1366642892/common/js/jquery/'
			, 'underscore':				'//js.imgsmail.ru/ts/1366642892/common/js/underscore/'
			, 'store':					'//js.imgsmail.ru/ts/1366642892/common/js/store/'
			, 'festTemplate':			'//js.imgsmail.ru/ts/1366642892/fest/'
			, 'waypoints':				'//js.imgsmail.ru/ts/1366642892/common/js/waypoints/'
			, 'tiny_mce':				'//js.imgsmail.ru/ts/1366642892/images/js/ru/tiny_mce_editor/'
			, 'tiny_mce_modern':		'//js.imgsmail.ru/ts/1366642892/images/js/ru/tiny_mce_modern/'
			, 'searchindex':			'//js.imgsmail.ru/ts/1366642892/common/js/searchindex/'
			, 'intercom':				'//js.imgsmail.ru/ts/1366642892/common/js/intercom/'
			, 'profiler':				'//js.imgsmail.ru/ts/1366642892/common/js/profiler/'
			, 'mailru':					'//js.imgsmail.ru/ts/1366642892/images/js/ru/'
			, 'mailru.model':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/model/'
			, 'mailru.ui':				'//js.imgsmail.ru/ts/1366642892/images/js/ru/ui/'
			, 'mailru.utils':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/utils/'
			, 'mailru.app':				'//js.imgsmail.ru/ts/1366642892/images/js/ru/'
			, 'mailru.reg':				'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/mail.ru/Reg/'
			, 'mailru.verify':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/mail.ru/Verify/'
			, 'mailru.compose':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/mail.ru/Compose/'
			, 'mailru.offline':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/mail.ru/Offline/'
			, 'mailru.attachViewer':	'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/mail.ru/AttachViewer/'
			, 'mailru.addressbook':		'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/mail.ru/Addressbook/'
			, 'mailru.addressbook.ui':	'//js.imgsmail.ru/ts/1366642892/images/js/ru/jsCore/Projects/mail.ru/Addressbook/ui/'
			, 'mailru.view':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/Views/'
			, 'mailru.build':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/'
			, 'mailru.events':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/liveEvents/'
			, 'mailru.others':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/others/'

			, 'toolkit.js': '//js.imgsmail.ru/ts/1366642892/common/js/../toolkit/'

			, 'mailru.v2': '//js.imgsmail.ru/ts/1366642892/images/js/ru/v2/'
			, 'mailru.v2.ui': '//js.imgsmail.ru/ts/1366642892/images/js/ru/v2/ui/'
			, 'mailru.v2.view': '//js.imgsmail.ru/ts/1366642892/images/js/ru/v2/view/'
		},
		jsLoaderFiles = {
			  '{mailru.build}v2':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/v2.js'
			, '{mailru.build}MsgList':		'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/MsgList.js'
			, '{mailru.build}Reg':			'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/Reg.js'
			, '{mailru.build}AttachViewer':	'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/AttachViewer.js'
			, '{mailru.build}Addressbook':	'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/Addressbook.js'
			, '{mailru.build}Addressbook.v2':	'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/Addressbook.v2.js'
			, '{mailru.build}Settings':		'//js.imgsmail.ru/ts/1366642892/images/js/ru/build/Settings.js'
		},
		jsLoaderLoaded	= ['{jQuery}jquery', '{ajs}Array', '{ajs}String', '{mailru}mailru.Themes']
	;

	
		jsLoaderFiles['{mailru.build}Compose'] = '//js.imgsmail.ru/ts/1366642892/images/js/ru/build/ComposeModern.js';
	

	
		jsLoaderFiles['{mailru.build}Reg'] = '//js.imgsmail.ru/ts/1366642892/images/js/ru/build/Reg.js';
	

	var mailru = {
		  SpamBallonExp: 		0
		, newsnippets:			false
		, logid:				+new Date
		, isC:					false
		, IsCorpUser:			false
		, isDarkPopup:			true
		
		
		, AudioPlayerApi: true
		, jinn: true
		
		, themes: true
		, SettingsOn:			true
		
		, ForceHtmlCompose:		true
		, exif: 1
		, themesCssPath:		'//img.imgsmail.ru/ts/1366642892/css/neo/themes/'
		, currentTheme:			'' || 'default'
		, build:				'3'
		, needReloadPage:		function (){ return false }
		, uuvb:					''
		, ips:					['','109.188.125.65','109.188.125.65','']
		, avaHost:				'filin.mail.ru'
		, RegisterMailtoHandler:1
		, LogoToMsglist:		0
		, NewAttachViewer:		1
		, NewAttachViewerPopup:	1
		, AttachViewStyle:		0
		, MailFilesViewStyle:	0
		, FileSearchWithThumbnail:		1
		, AvStatusBar:			1
		, UseFSentmsg:			0
		, IsNewComposeDesign:	1
		, ComposeLabels:	0
		
		
		
		, baseHref:				'//e.mail.ru/cgi-bin/'
		, tokens:				{}
		, lang:					{}
		, username:				''
		, userdomain:			''
		, useremail:			'@'
		, UserHasMy:			0
		, RealNames:			""
		, IS_PREVIEW:			0
		, UserSignature:		""
		, DefaultSignature:		'562'
		, DisableReklama:		0
		, old_charset:			''
		, EnableChangeESLang:	'1'
		, EnableChangeKZLang:	'1'
		, EnableChangeEnglishLang:	'1'
		, EnableChangeAMLang:	'1'
		, EnableChangeBYLang:	'1'
		, OfflineDataVersion:	'2.1'
		, OfflineStorageVersion:	'1.1'
		, EditorFlags:			'' * 1
		, HTMLCompose:			"1" * 1
		, AvatarVersion:		'4'
		, AvatarBuild:			'7'
		
		, EnableSPF_MAIL_12115: true
		
		, EnableIMAP: true
		
		, SingleDomainName: "mail.ru"
		, staticDomainName: "imgsmail.ru"
		, RadarURL: "mail.radar.imgsmail.ru"
		, captchaURL0: "//swa.mail.ru/c/0"
		, captchaURL1: "//swa.mail.ru/c/1"
		, captchaURL2: "//swa.mail.ru/c/2"
		, IsThemeButton: true
		, IsShowAngryBirdsBalloon: true
		
		
		
		
		, IsNewComposeShowSignature: true
		
		
		, EnableOfflineModeLoadFromCache: true
		
		
		
		
		, DisabledNoAuthLayer: true
		
		
		, ComposeCards: true
		
		, HTML5Uploader: ~~'2'
		, AutoReloadBanners: true
		
		
		
		
		
		
		
		, WebAgentCall: true
		
		
		
		, IMAPBanner: true
		, IncludeMsgAtAnswer:	0
		, EnableFlashLog:		0
		, AbjsHash:				''
		, LANG:					''
		, NewHeaderWithMessages:	''
		, TimezoneOffset:		'' * 1
		, PasswordExpireDate:	'' * 1
		, CurrentTimestamp:		'1366707176' * 1
		, HelperStatus:			'' * 1
		, HelperTimestamp:		['' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1, '' * 1]
		, HelperIndex: {
			  spam:						0
			, nospam:					1
			, neoDesign:				2
			, attachWord:				3
			, attachExcel:				4
			, attachPowerPoint:			5
			, passExpire:				6
			, moreThemes:				7
			, phoneSync:				8
			, VerifyPhoneNotify:		9
			, WeakPassword:				10
			, validDataFlag:			11
			, mailtoObserver:			12
			, filesearch:				14
			, collector:				15
			, collectorError:			16
			, collectorPromo:			17
			, webagentReserved1:		18
			, webagentReserved2:		19
			, notificationAPI:			20
			, messagelineMedia:			21
			, multiAuth:				22
			, messagelineMediaEnable:	23
			, webagentReserved3:		24
			, draftInfomessage:			25
			, tutorialAddressbook:		26
			, mailru_v2:				27
			, composeSelectFields:		28
			, collectorFolderList:		29
			, mobileApp:				30
		}
		, IsThemesBalloon:		0
		, IsForceThemesBalloon:	0
		, AccountVerified:		0
		
		, RegTime:				~~''
		, readMsgAfterDelete:	true
		, msgListAfterDelete:	0
		, MsglistExpanded:		0
		, StartMsglist:			1
		, messagesPerPage:		25
		, filesPerPage:			24
		, folderId:				0
		, messageId:			0
		, messagesPage:			1
		, messagesSort:			''
		, collectors: 			{}
		, ui: {}
		
		, Ad:					{
									  'stack':				[]
									, 'doubleStack':		[]
									, 'push':				function (){ this.stack.push.apply(this.stack, arguments) }
									, 'pushDoubleFormat':	function (){ this.doubleStack.push.apply(this.doubleStack, arguments)}
								}
	};

	mailru.updateToken = function (token) {
		var token_parts = token.split(':');
		window['mailru_api_token'] = token;
		window['mailru_api_token_parts'] = {
			form_sign: token_parts[0],
			form_token: token_parts[1]
		};
	};

	mailru.updateToken("");

	mailru.gstat = function (log, extra) {
		if( extra === true ) ajs.log('gstat:', log);
		else if( typeof extra != 'string' ) log = ajs.toQuery(log);

		if( typeof log != 'string' ) log = ajs.toQuery(log);

		(new Image).src = '//gstat.imgsmail.ru/gstat?logme='+encodeURIComponent(log)+(extra ? '&'+extra : '') + '&rnd=' + (mailru.logid++);
	};

	mailru.radar = function (type, intervals, total) {
		var t = 1,
			i = '',
			result,
			radarDomain = mailru.RadarURL
		;
		if( intervals >= 0 ){
			t	= intervals;
		}
		else {
			ajs.each(ajs.toObject(intervals), function (ts, name){
				if( name == 'all' ) t = ts;
				else i += ','+name+':'+ts;
			});
		}
		result = new Image;
		result.src = '//' + radarDomain + '/update?p=mail&t='+ type.substr(0, 20) +'&v='+ (total || t) + (i ? '&i='+ i.substr(1) : '') + '&rnd=' + (mailru.logid++);
		return result;
	};

	
		mailru.TimezoneOffset = 14400;
	

	/**/
	(function () {
		var isLocked = false, fns = [];
		mailru.notificationLocker = function () {
			return {
				isLocked: function () {
					return isLocked;
				},
				setLock: function (status) {
					if (!(isLocked = !!status)) {
						while (fns.length) {
							fns.shift()();
						}
					}
				},
				onUnLock: function (fn) {
					fns.push(fn);
				}
			}
		};
		mailru.checkNotificationAccess = function () {
			return true;
		};
	})();


	var tinyMCEPreInit = {
		'suffix': '',
		'base': '//js.imgsmail.ru/ts/1366642892/images/js/ru/tiny_mce_editor/',
		'query': '315'
	};
	// GLOBALS >

	
	mailru.log = function (){};
	

	mailru.saveError = function (type, log){
		if( typeof log !== 'string' ) log = log.join('|');
		(new Image()).src	= '//gstat.imgsmail.ru/gstat?ua=1&clienterror.'+ type +'=1&logme='+ log + '&rnd=' + Math.random();
		if (type == 'js') {
			mailru.radar('mailru_JS_error', 1);
		}
	};


	if( /mail\.ru/.test(document.domain) ){
		mailru.onError = function (message, url, line){
			mailru.log('window.error', arguments, 1);

			if( (url+'').indexOf('/js/') > -1 && (url+'').indexOf('imgsmail') > -1 && line > 1 ){
				mailru.saveError('js', [
					  jsVersion +'_'+ jsBuild
					, encodeURIComponent(url)
					, line
					, encodeURIComponent(message)
					, encodeURIComponent(location.toString())
					, 'js1'
				].join('|'));
			} else {
				mailru.saveError('js5', [
					  jsVersion +'_'+ jsBuild
					, encodeURIComponent(url)
					, line
					, encodeURIComponent(message)
					, encodeURIComponent(location.toString())
					, 'js5'
				].join('|'));
			}
		};
	}
	else {
		mailru.onError = function (){};
	}


	window.onerror = function (m, u, l){
		if( /returnIthis/i.test(m) ){
			ajs.each(window.TemplateService, function (fn, val){
				if( /returnIthis/i.test(fn.toString()) ){
					mailru.gstat({ TPL_SERVICE: 1, code: fn.toString() }, 'ua=1');
				}
			});
		}
	
		mailru.onError(m, u, l);
		return	true;
	
	};


	window.__fest_error = function (msg){
		ajs.log(msg);
		window.onerror(msg, '//imgsmail/js/ru/fest/', 13);
	};


	var jsChecker	= { add: function (){} };
	var jsLoader	= { loaded: function (file){ jsLoaderLoaded.push(file); } };


	


	
	var arMailRuFolders = [
		
     ];
</script><style type="text/css">.jsdn {display: none;} .jsvh {visibility: hidden;}</style>

<script type="text/javascript">
	</script>

<script type="text/javascript">
	
	mailru.FilesSearchData = {
		total: 0
	};

	
	
	
	
	
	
	

	

	mailru.CurrentTimestampOffset = Math.round(new Date() / 1000 - mailru.CurrentTimestamp);
</script>
<!-- needYes radar --><script type="text/javascript">
try {
function timeInterval(bP) {
	if (!rT[bP]) rT[bP] = new Date();
	else {
		rT.i[rT.i.length] = bP + '=' + ( (new Date()).getTime() - rT[bP].getTime() );
		delete rT[bP];
	}
}

var rT = {};
rT.i = [];
timeInterval('renderbrowser');
rT.addHandler = function(object, event, handler, useCapture) {
	if (object.addEventListener) object.addEventListener(event, handler, useCapture ? useCapture : false);
	else if (object.attachEvent) object.attachEvent('on' + event, handler);
};
rT.radar_type = '';
if (window.name.indexOf('srvt') != -1) {
	rT.srvt = ( new Date() ).getTime() - parseInt( window.name.substr(5) );
	window.name = '';
}

rT.addHandler(document, 'click', function() {
	if (!window.name.length || window.name.indexOf('srvt') > -1)
		window.name = 'srvt=' + (new Date()).getTime();
});
rT.addHandler(document, 'keypress', function() {
	if (window.name.indexOf('srvt') > -1) window.name = '';
});

rT.img0 = new Image();
rT.img0.src = '//mail.radar.imgsmail.ru/update?' +
'p=mail0' +
(rT.radar_type != '' ? ('&t=' + rT.radar_type) : '') +
(rT.srvt ? ('&i=srvt:' + rT.srvt) : '') +
'&v=0&rnd=178168410' +
'';

} catch(e) {}
function timeInterval2(bP) {
    if (!rT[bP]) {
		rT[bP] = new Date();
    } else {
		var rT_cnt = rT.i.length;
		var found  = false;
		for (var j = 0; j < rT_cnt; j++) {
			var rT_array = rT.i[j].split("=");
			if (rT_array[0] == bP) {
				rT.i[j] = bP + '=' + (parseInt(rT_array[1]) + (new Date()).getTime() - rT[bP].getTime() );
				found = true;
			}
		}
		if (!found) {
			rT.i[rT.i.length] = bP + '=' + ( (new Date()).getTime() - rT[bP].getTime() );
		}
		delete rT[bP];
    }
}

</script>


<!-- / needYes radar -->

<script src="./mailru/shit/cookie.js"></script>
<script src="./mailru/shit/s_cookie.js"></script>


	<script type="text/javascript" src="./mailru/shit/core.js"></script>

	<script type="text/javascript">
jsLoader.require([
  '{utils}Lang'
], function ()
{
	Lang.add({ RU: {
		"Date": {
			"months":[
				["январь", "февраль", "март", "апрель", "май", "июнь",
				 "июль", "август", "сентябрь", "октябрь", "ноябрь", "декабрь"],
				["января", "февраля", "марта", "апреля", "мая", "июня",
				 "июля", "августа", "сентября", "октября", "ноября", "декабря"],
				["янв", "фев", "мар", "апр", "мая", "июн",
				"июл", "авг", "сен", "окт", "ноя", "дек"]
			],
			"weekdays": ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"],
			"weekdays_full": ["воскресенье", "понедельник", "вторник", "среда", "четверг", "пятница", "суббота"],
			"format": { full: "d n Y в H:I" },
			"today": 'сегодня',
			"yesterday": 'вчера'
		}

		, 'All-in-all': 'Всего'

		, 'Inbox': 'Входящие'
		, 'ErrorTable': '<table class="or_table w100" cellpadding="0" cellspacing="0"><tr><td class="oranzhe bold">Ошибка</td></tr><tr><td class="oranzhe">%s</td></tr></table>'

		, Title:		{
			  				  loading:	'Загрузка'
			  				, sentmsg:	'Написать письмо'
			  				, sentmsgok:{ sms: 'Сообщение отправлено', reply: 'Ответ отправлен', letter: 'Письмо отправлено' }
		  				}
		, Messages:		{
							  unread:		['непрочитанных', 'непрочитанное', 'непрочитанных']
							, letter:		['писем', 'письмо', 'письма']
							, noletters:	'Нет писем'
							, addresses:	['адресов', 'адрес', 'адреса']
							, messages:		['сообщений', 'сообщение', 'сообщения']
							, mailru_news:	'Новости Почты Mail.ru'

							, TopUnread:	'Новых&nbsp;писем:'
							, TopNoUnread:	'У Вас нет новых писем'

							, Actions:		{
												  mark:		'Помечено %s'
												, move:		'%s перемещено в папку &laquo;%s&raquo;'
												, move2Trash:'%s перемещено в Корзину'
												, spam:		'%s перемещено в папку &laquo;%s&raquo;'
												, remove:	'Удалено %s'
												, abook:	'Добавление в адресную книгу прошло успешно'
												, empty:	'Необходимо отметить письма'
												, moving:	['перемещено', 'перемещено', 'перемещены']
											}
							, priority:		{ 1: 'высокий', 3: 'обычный', 5: 'низкий' }
						}

		, Message:		{
							  unread:		'Непрочитанное'
							, replied:		' отвечено'
							, forwarded:	' переслано'
							, high_priority:'Высокая важность '
							, low_priority:	'Низкая важность '
							, priority:		{
								  high:		'Важность письма: высокая'
								, low:		'Важность письма: низкая'
								, normal:	'Важность письма: обычная'
								}
						}

		, MessagesSelectAllTitle:	['Выделить все', 'Снять выбор']
		, MessagesCheckBoxTitle:	['выбрать', 'снять выбор']
		, MessagesFlags:			['пометить флажком', 'снять флажок']
		, MessagesMarkUnread:		'Пометить непрочитанным'
		, InternalError:			'Ошибка сервера, обновите страницу.'
		, 'timeout.error':			'Нет подключения. Проверьте соединение с интернетом'
		, 'connection.error':		'Нет подключения. Проверьте соединение с интернетом'
		, MessageNotFound:			'Требуемое письмо на сервере отсутствует.'
		, FileSearchDownloadSizeLimit:	'Слишком большой размер файлов. Скачивать за один раз можно не более 20 мегабайт'
		, FileSearchForwardSizeLimit:	'Слишком большой размер файлов. Пересылать за один раз можно не более 20 мегабайт'

		, Files:		{
							  file:		['файлов', 'файл', 'файла']
							, Title: 'Файлы'
							, Actions:		{
												  fileInArchive:	['скрыто', 'скрыт', 'скрыто']
												, fileFromArchive:	['перемещено из скрытых', 'перемещен из скрытых', 'перемещено из скрытых']
											}
						}

		, Loading: { messages: 'Загрузка' }

		, IsSpam:		'Это спам'
		, IsNotSpam:	'Не спам'

		, Pager:	{
						  infoTop:		'%s-%s из %s'
						, infoBottom:	'Показаны письма&nbsp;%s-%s из %s'
						, next:			'Далее'
						, prev:			'Назад'
					}

		, Size:		{
						  bytes:		'байт'
						, bytesPl:	'байтa'
						, kb:			'КБ'
						, mb:			'МБ'
						, gb:			'ГБ'
					}

		, 'create.folder': 'Создать новую папку'
		, 'dropdown.more.empty':	'Отметьте&nbsp;галочками&nbsp;нужные&nbsp;письма'
		, 'addressee': ['адресатов', 'адресат', 'адресата']
		, 'addressee.and.more': ' и&nbsp;еще %n&nbsp;%s'

		, 'dropdown.moveto': 'Переместить '
		, 'dropdown.select-messages.To.prefix': 'Все письма для '
		, 'dropdown.select-messages.To.disabled': 'Все письма для…'

		, 'dropdown.select-messages.From.prefix': 'Все письма от '
		, 'dropdown.select-messages.From.disabled': 'Все письма от…'

		, 'message.email.untitled':	'Без темы'
		, 'message.email.unknown':	'Неизвестно'

		, 'files.plural':	['файлов', 'файл', 'файла']
		, 'upload.over': 'Вы можете присоединить к письму не более %s файлов. Будут загружены первые из выбранных.'
		, 'upload.limit': 'Вы можете присоединить к письму не более %s файлов.'
		, 'upload.error.upload': 'Не удалось загрузить файл %s'
		, 'upload.error.remove': 'Не удалось удалить файл %s'
		, 'upload.error.files': 'Не удалось загрузить файл %s на Файлы@mail.ru.'
		, 'upload.error.fileempty': 'Файл %s пустой и не может быть загружен'

		, 'confirm.folder.clear':	'Очистить папку «%s»?'
		, 'confirm.disable_notifications': 'Отключение уведомлений снижает уровень безопасности вашего почтового ящика. Продолжить?'

		, 'folders.names': { spam: 'Спам', move: 'Папка' }
		, 'folder.clear.confirm': {
			def:	'Вы действительно хотите удалить все письма из %s?',
			bulk:	'Вы действительно хотите удалить все письма из папки \"%s\" без возможности восстановления?',
			mrim:	'Вы действительно хотите удалить все письма из папки \"%s\" без возможности восстановления?'
		}

		, 'folder.name.0': 'Входящие'
		, 'folder.name.950': 'Спам'
		, 'folder.name.500000': 'Отправленные'
		, 'folder.name.500001': 'Черновики'
		, 'folder.name.500002': 'Корзина'
		, 'folder.name.500006': 'Все непрочитанные письма'
		, 'folder.name.500007': 'Все отмеченные флажком'
		, 'folder.name.500008': 'Все с вложениями'

		, 'notify.load': 'Загрузка'
		, 'notify.send': 'Отправка'
		, 'notify.move': 'Перемещение'
		, 'notify.error': 'Ошибка сервера'
		, 'notify.error.nomsg': 'Требуемое письмо на сервере отсутствует'
		, 'notify.load.still': 'Все еще идет загрузка'
		, 'notify.send.still': 'Все еще идет отправка'
		, 'notify.move.still': 'Все еще идет перемещение'
		, 'notify.connection.error': 'Нет соединения с интернетом'
		, 'notify.connection.still.error': 'Нет соединения с интернетом'
		, 'notify.save': 'Изменения сохранены'
		, 'notify.send.error': 'Ошибка отправки, попробуйте ещё раз через пару секунд'
		, 'notify.collector.noauth': 'Не удается подключиться к %s'
		, 'notify.collector.noauth.success': 'Сбор почты с %s возобновится через несколько минут'

		, 'collector.remove.title': 'Вы, действительно хотите удалить сборщик почты?'
		, 'collector.remove.text': 'Если вы хотите временно отключить сборку, то лучше нажмите на кнопку &laquo;Выключить&raquo;'
		, 'collector.remove.btn': 'Удалить'

		, Collector: {
			edit: {
				  title: {
					  'auth': 'Ошибка соединения с ящиком'
					, 'internal': 'Ошибка подключения'
					, 'complete': 'Авторизация прошла успешна.'
				  }
				, info: {
					  fail: '<p>Во время соединения с сервером произошла ошибка.<br />В данный момент сбор почты отключен, но он возобновится в ближайшее время.</p><p>Мы работаем над решением проблемы.</p>'
					, complete: 'Сбор почты возобновится через несколько минут'
				  }
				, error: {
					  'auth': 'Соединение с сервером прошло успешно, но авторизоваться не удалось.'
					, 'limit': 'Превышен лимит на размер ящика.'
					, 'internal': 'Ошибка сервера, попробуйте еще раз.'
					, 'password': 'Поле «Пароль» должно быть заполнено.'
					, 'system': 'Произошла непредвиденная ошибка.'
				}
				, controls: {
					  close: 'Закрыть.'
					, save: 'Готово.'
					, skip: 'Продолжить.'
					, loading: 'Идет загрузка.'
				}
			}
		}

		, 'password.wrong': 'Неверный пароль, попробуйте еще раз'
		, 'lightbox.wait': 'Секунду…'
		, 'project.system_error': 'Ошибка сервера, попробуйте еще раз'
		, 'dragndrop.drop_to_page': 'Перетащите файлы в любое место на странице'

		, 'title.default': '#email# - Почта Mail.Ru'
		, 'title.sentmsg': 'Новое письмо - #email# - Почта Mail.Ru'
		, 'title.sentmsg.reply': 'Ответ - #subject# - #email# - Почта Mail.Ru'
		, 'title.sendmsgok': 'Письмо отправлено - #email# - Почта Mail.Ru'
		, 'title.sendmsgok.reply': 'Ответ - #subject# - #email# - Почта Mail.Ru'
		, 'title.msglist': '#folder# - #email# - Почта Mail.Ru'
		, 'title.msglist.unread': '(#unread#) #folder# - #email# - Почта Mail.Ru'
		, 'title.readmsg': '#subject# - #email# - Почта Mail.Ru'
		, 'title.ajax_attach_action': '#name# - #subject# - #email# - Почта Mail.Ru'
		, 'title.gosearch': 'Поиск - #email# - Почта Mail.Ru'
		, 'title.gosearch.query': 'Поиск - #query# - #email# - Почта Mail.Ru'
		, 'title.filesearch': 'Файлы - #email# - Почта Mail.Ru'
		, 'attachViewer.paging.from': 'из'
		, 'title.contacts': '#name# - Контакты - #email# - Почта Mail.Ru'

		, 'unread.plural': ['новых', 'новое', 'новых']
		, 'jinn.new_messages': 'Вам %s'
		, 'jinn.from': 'от:'
		, 'readmsg.blockquote.ctrl': ['Развернуть цитирование', 'Свернуть цитирование']
		, 'readmsg.phone.highlight': ['Позвонить через Веб-Агент']
	}});

	Lang.add({'RU': {
		'delete_phone_error.NO_AUTH': 'Текущий пароль не указан или указан не верно',
		'delete_phone_error.EMPTY_QUESTION': 'Пожалуйста, укажите секретный вопрос',
		'delete_phone_error.EMPTY_ANSWER': 'Пожалуйста, укажите ответ на секретный вопрос',
		'delete_phone_error.HACKER': 'К сожалению, ваш IP заблокирован. Пожалуйста, обратитесь к администратору вашей сети',
		'delete_phone_error.DEFAULT': 'Ошибка сервера. Повторите операцию',
		'verify_phone_error': 'Не удалось проверить номер',
		'phone_status_error': 'Доставка SMS для данного оператора временно отключена',
		'phone_status_latency': 'Возможна задержка при доставке SMS',
		'captcha_invalid': 'Введён неверный код'
	}});

	Lang.add({'RU': {
		'compose.field_to_empty': 'Не указан адрес получателя',
		'compose.app_title': 'Приложения',
		'compose.before_unload_confirm_text': 'Текст письма будет потерян.',
		'compose.before_unloadfix_confirm_text': 'Вы не отправили письмо и не сохранили его как черновик.\nДля того, чтобы вернуться и сохранить изменения, нажмите «Отмена», в противном случае набранный вами текст будет потерян.',
		'compose.appearance_without_style': 'Без стиля',
		'compose.cards_without': 'Без открытки',
		'compose.save_mail_error': 'Не удалось сохранить письмо',
		'compose.save_mail_progress': 'Идет сохранение',
		'compose.save_mail_success': "Письмо <span class=\"auto\">автоматически</span> сохранено в <a rel=\"history\" href=\"/cgi-bin/msglist?folder=500001\" class=\"toolbar__message_info__link\">черновиках</a> в <span class=\"time\"></span>",
		'compose.send_mail_error': 'Не удалось отправить письмо',
		'compose.send_mail_progress': 'Идет отправка',
		'compose.drag_files': 'Перетащите файлы в любое место на странице',

		'compose.avatar':
		{
			add: 'добавить фото',
			change: 'сменить фото'
		},

		'compose.submit_empty_message_confirm': {
			'title': 'Вы уверены?',
			'text': 'Вы уверены, что хотите отправить пустое письмо?',
			'ok': 'Продолжить'
		},

		'compose.delete_attach_confirm': {
			'title': 'Вы уверены?',
			'text': 'Вы уверены, что хотите удалить файл?',
			'ok': 'Продолжить'
		},

		// ГОСТ 16876-71 @todo
		'translit': {'а':'a','б':'b','в':'v','г':'g','д':'d','е':['je','ye','e'],'ё':['jo','yo'],'ж':'zh','з':['s','z'],'и':'i','й':'jj','к':'k','л':'l','м':'m','н':'n','о':'o','п':'p','р':'r','с':'s','т':'t','у':'u','ф':['ph','f'],'х':'kh','ц':['c','ts'],'ч':'ch','ш':['sch','sh'],'щ':['shch','shh'],'ъ':'"','ы':'y','ь':"'",'э':'eh','ю':['ju','yu'],'я':['ja','ya']},
		'translit_smart': {
			ru: {'йе':'ye','йо':'yo','йу':'yu','йя':'ya','кс':'x','а':'a','б':'b','в':'v','г':'g','д':'d','е':['je','ye','e'],'ё':['jo','yo'],'ж':'zh','з':['s','z'],'и':'i','й':['jj','g','i','j','y'],'к':['c','k'],'л':'l','м':'m','н':'n','о':'o','п':'p','р':'r','с':'s','т':'t','у':'u','ф':['ph','f'],'х':['kh','h'],'ц':['c','ts'],'ч':'ch','ш':['sch','sh'],'щ':['shch','sch','shh'],'ъ':'"','ы':['i','y'],'ь':"'",'э':'eh','ю':['ju','yu'],'я':['ja','ya','y']},
			en: {'shch':'щ','sch':['ш','щ'],'shh':'щ','ch':'ч','ja':['йя','я'],'je':'е','jo':'ё','ju':'ю','sh':'ш','ts':'ц','ya':['йя','я'],'ye':'е','yo':'ё','yu':'ю','a':'а','b':'б','c':'к','v':'в','g':['г','й'],'d':'д','e':'е','f':'ф','i':['и','й','ы'],'j':'й','k':'к','l':'л','m':'м','n':'н','o':'о','p':'п','r':'р','s':['з','с'],'t':'т','u':'у','x':'кс','y':['ий','й','ы','я'],'z':'з'}
		}
	}});

	Lang.add({'RU': {
		'reg.field_empty': 'Заполните обязательное поле',
		'reg.login_exists': 'Ящик с таким именем уже существует',
		'reg.login_start_symbol_invalid': 'Некорректное имя почтового ящика.\nИмя должно начинаться с латинской буквы (a-z) или цифры (0-9).',
		'reg.login_end_symbol_invalid': 'Некорректное имя почтового ящика.\nИмя должно заканчиваться на латинскую букву (a-z) или цифру (0-9).',
		'reg.login_cyrillic': 'В имени почтового ящика нельзя использовать кириллицу',
		'reg.login_format_without_point': 'Некорректное имя почтового ящика. Допустимо использовать только латинские\nбуквы, цифры, знак подчеркивания (&quot;_&quot;), минус (&quot;-&quot;).',
		'reg.password_short': 'Слишком короткий пароль',
		'reg.password_only_num': 'Извините, пароль не может состоять\nтолько из цифр. Добавьте буквы.',
		'reg.password_cyrillic': 'В пароле нельзя использовать кириллицу',
		'reg.password_unequal': 'Пароли не совпадают. Пожалуйста, проверьте.',
		'reg.password_is_bad': 'Вы ввели пароль, который легко подобрать. В целях безопасности Вам нужно задать более сложный пароль.',
		'reg.password_equal_login': 'Пароль не может совпадать с логином',
		'reg.birthday_year_empty': 'Укажите дату рождения полностью',
		'reg.birthday_invalid': 'Неверная дата',
		'reg.city_invalid': 'Выберите город из списка',
		'reg.city_sumbol_invalid': 'Напишите название города на русском',
		'reg.captcha_invalid': 'Введён неверный код',
		'reg.phone_sumbol_invalid': 'Недопустимые символы',
		'reg.phone_code_invalid': 'Некорректный телефон',
		'reg.phone_code_incorrect': 'Некорректный телефон',
		'reg.phone_code_short': 'Слишком короткий номер',
		'reg.phone_code_suggest': 'Возможно, вы имели в виду',
		'reg.email_sumbol_invalid': 'Некорректные символы в дополнительном e-mail',
		'reg.submit.next': 'Далее',
		'reg.rus_match': 'а-яА-Я'
	}});

	Lang.add({'RU': {
		'filesearch.not_found': 'Ничего не найдено'
	}});

	Lang.add({'RU': {
		'search.onaddressbook': 'Поиск по адресной книге',
		'search.onmail': 'Поиск по почте',
		'search.onfiles': 'Поиск по файлам',
		'search.results': 'Результаты поиска'
	}});

	// TODO: Delete this block
	Lang.add({'RU': {
		'balloon.spam': 'Нажмите «Это спам», и письма от этого адресата всегда будут приходить в папку «Спам»',
		'balloon.nospam': 'Нажмите «Не спам» и письма от этого адресата всегда будут приходить в папку «Входящие»',
		'balloon.attachWord': 'Вы можете просмотреть документы Word, не загружая их на компьютер.',
		'balloon.attachExcel': 'Вы можете просмотреть документы Excel, не загружая их на компьютер.',
		'balloon.attachPowerPoint': 'Вы можете просмотреть презентации, не загружая их на компьютер.',
		'balloon.themes': '%sВыберите тему оформления%s почты на свой вкус.'
	}});

	Lang.add({'RU': {
		'checknew.clear': 'очистить',
		'checknew.clear_folder': 'очистить папку',
		'checknew.check': 'пометить флажком',
		'checknew.uncheck': 'снять флажок',
		'checknew.enter_password': 'Введите пароль',
		'checknew.enter_password_for_folder': 'Доступ к папке «%s» защищен паролем, введите его для продолжения работы',
		'checknew.forgot_password': 'забыли пароль',
		'checknew.done': 'Готово',
		'checknew.select.new': '- новая -',
		'checknew.select.new2': '- новую -',
		'checknew.protected_folder': 'Папка защищена паролем',
		'checknew.unlocked_folder': 'Папка разблокирована',
		'checknew.magent': 'Агент',
		'checknew.edit': 'редактировать',
		'checknew.remove': 'удалить',
		'checknew.no_unread': 'нет непрочитанных сообщений',
		'checknew.clear_selection': 'снять выбор',
		'checknew.no_new': 'У Вас нет новых писем',
		'checknew.not_found': 'Требуемое письмо на сервере отсутствует',
		'checknew.spam': 'Это спам',
		'checknew.not_spam': 'Это не спам',
		'checknew.text': 'Текст письма',
		'checknew.rfc': 'RFC-Заголовок',
		'checknew.click_to_magent': 'Щелкни, чтобы пообщаться с этим человеком в Mail.Ru Агенте',
		'checknew.find_from': 'найти все письма от %s'
	}});

	Lang.add({'RU': {
		'microformat.read': 'Прочитать',
		'microformat.reply': 'Ответить',
		'microformat.accept': 'Принять',
		'microformat.reject': 'Отказаться',
		'microformat.action': 'Перейти',
		'microformat.view': 'Посмотреть'
	}});

	Lang.add({'RU': {
		'msglist.check': 'пометить флажком',
		'msglist.uncheck': 'снять флажок',
		'msglist.select': 'снять выбор',
		'msglist.unselect': 'выбрать'
	}});

	Lang.add({'RU': {
		'myfriendssuggest.click_to_magent': 'Щелкни, чтобы пообщаться с этим человеком в Mail.Ru Агенте',
		'myfriendssuggest.to_friends': 'В друзья',
		'myfriendssuggest.wtf': 'Мы не знакомы',
		'myfriendssuggest.probably_friends': 'Возможно, вы знакомы',
		'myfriendssuggest.next_1': 'Следующий',
		'myfriendssuggest.next_2': 'Следующие два',
		'myfriendssuggest.next_3': 'Следующие три',
		'myfriendssuggest.wrong_captcha': 'Вы неверно ввели число, изображенное на картинке.',
		'myfriendssuggest.friendship_offer': 'Предложение&nbsp;дружбы\nотправлено',
		'myfriendssuggest.friend_added': 'Подружились',
		'myfriendssuggest.already_friendship_offer_sent': 'Вы уже предложили дружбу',
		'myfriendssuggest.already_friends': 'Вы уже друзья',
		'myfriendssuggest.ratelimited_emails': 'Предложение дружбы временно невозможно',
		'myfriendssuggest.offer_impossible': 'Предложение дружбы невозможно',
		'myfriendssuggest.data_sending_error': 'Ошибка\nотправки данных',
		'myfriendssuggest.enter_captcha': 'Введите число, изображенное на картинке.',
		'myfriendssuggest.enter_captcha_nl': 'Введите число,\nизображенное на картинке:'
	}});

	Lang.add({'RU': {
		'phonemanager.lt5min': 'менее 5 минут',
		'phonemanager.lt10min': 'менее 10 минут',
		'phonemanager.lt15min': 'менее 15 минут',
		'phonemanager.lt20min': 'менее 20 минут',
		'phonemanager.lt30min': 'менее 30 минут',
		'phonemanager.lt60min': 'менее часа',
		'phonemanager.gt60min': 'более часа'
	}});

	Lang.add({'RU': {
		'readmsg.protected_archive': 'архив защищен паролем',
		'readmsg.show_folder': 'Раскрыть папку',
		'readmsg.hide_folder': 'Скрыть папку',
		'readmsg.protected': 'защищено паролем',
		'readmsg.part': 'часть файла',
		'readmsg.download': 'Скачать',
		'readmsg.confirm.lost_text': 'Вы действительно хотите перейти на страницу написания письма? Текст, набранный в поле быстрого ответа, при этом будет потерян.\n\nЧтобы продолжить, нажмите «OK». Чтобы остаться на данной странице, нажмите «Отмена»',
		'readmsg.confirm.remove': 'Вы действительно хотите удалить сообщение без возможности воcстановления?',
		'readmsg.confirm.link_click': 'Вы собираетесь перейти на сайт: %s\nНикогда не вводите пароль от своего почтового ящика на посторонних ресурсах.\nОткрыть сайт?',
		'readmsg.confirm.send_form': 'Вы собираетесь отправить данные из этой формы на сайт: %s\nБудьте внимательны, никогда не отправляйте пароли от своего ящика на посторонние ресурсы. Чтобы продолжить, нажмите ОК.\nОткрыть сайт?',
		'readmsg.error.wrong_translation_direction': 'Некорректно выбрано направление перевода.',
		'readmsg.error.no_text': 'Вы не ввели текст письма',
		'readmsg.error.no_to': 'В поле Кому не указано ни одного адреса.',
		'readmsg.not_specified': 'Не указано',
		'readmsg.text': 'Текст письма',
		'readmsg.headers': 'Служебные заголовки',
		'readmsg.click_to_magent': 'Щелкни, чтобы пообщаться с этим человеком в Mail.Ru Агенте',
		'readmsg.find_from': 'Найти все письма от %s'
	}});

	Lang.add({'RU': {
		'appearancetemplates.grandfather': 'Дед мороз',
		'appearancetemplates.christmas_toys': 'Елочные игрушки',
		'appearancetemplates.winter': 'Зима',
		'appearancetemplates.panorama': 'Панорама',
		'appearancetemplates.balls': 'Шары',
		'appearancetemplates.snowflakes': 'Снежинки',
		'appearancetemplates.tulips': 'Тюльпаны',
		'appearancetemplates.camomiles': 'Ромашки',
		'appearancetemplates.lilies': 'Лилии',
		'appearancetemplates.frame2': 'Рамка №2',
		'appearancetemplates.strawberry': 'Клубника',
		'appearancetemplates.flowers_painting': 'Рисунок из цветов',
		'appearancetemplates.city_lights': 'Огни города',
		'appearancetemplates.hearts_rainbow': 'Радуга сердец',
		'appearancetemplates.bow': 'Бант',
		'appearancetemplates.stones': 'Камни',
		'appearancetemplates.camouflage': 'Камуфляж',
		'appearancetemplates.roses_letter': 'Письмо из роз',
		'appearancetemplates.valentines_tree': 'Валентиново дерево',
		'appearancetemplates.roses': 'Розы',
		'appearancetemplates.february23': 'С 23 февраля',
		'appearancetemplates.new_year': 'С Новым годом',
		'appearancetemplates.fir': 'Ель',
		'appearancetemplates.girl_with_house': 'Девочка с домиком',
		'appearancetemplates.turtledoves': 'Голубки',
		'appearancetemplates.romance': 'Романтика',
		'appearancetemplates.night': 'Ночь',
		'appearancetemplates.flowers': 'Цветы',
		'appearancetemplates.teddy_bears': 'Мишки',
		'appearancetemplates.zebra': 'Зебра',
		'appearancetemplates.cheese_mouse': 'Сырная мышь',
		'appearancetemplates.scheme': 'Схема',
		'appearancetemplates.butterflies': 'Бабочки',
		'appearancetemplates.trees': 'Деревья',
		'appearancetemplates.game': 'Игра',
		'appearancetemplates.emo': 'Эмо',
		'appearancetemplates.hiphop': 'Хип-хоп',
		'appearancetemplates.snow_peaks': 'Снежные вершины',
		'appearancetemplates.4_hills': '4 холма',
		'appearancetemplates.sport': 'Спорт',
		'appearancetemplates.vintage_template_4': 'Винтажный шаблон №4',
		'appearancetemplates.snail': 'Улитка',
		'appearancetemplates.summer': 'Лето',
		'appearancetemplates.stamps': 'Почтовые марки',
		'appearancetemplates.doggy': 'Собачка',
		'appearancetemplates.dalmatian': 'Далматинец',
		'appearancetemplates.greek_motif': 'Греческий мотив',
		'appearancetemplates.blots': 'Кляксы',
		'appearancetemplates.prehistoric': 'Доисторический',
		'appearancetemplates.hammer_and_sickle': 'Серп и молот',
		'appearancetemplates.pattern': 'Узор',
		'appearancetemplates.diamonds': 'Ромбы',
		'appearancetemplates.high_grass': 'Высокая трава',
		'appearancetemplates.book': 'Книга',
		'appearancetemplates.manuscript': 'Рукопись',
		'appearancetemplates.exercise_book': 'Школьная тетрадь',
		'appearancetemplates.greek_style': 'Греческий стиль',
		'appearancetemplates.labirynth': 'Лабиринт',
		'appearancetemplates.invitation1': 'Приглашение №1',
		'appearancetemplates.invitation2': 'Приглашение №2',
		'appearancetemplates.green_form': 'Зеленый бланк',
		'appearancetemplates.cat_on_tree': 'Кот на дереве',
		'appearancetemplates.watercolor': 'Акварель'
	}});

	Lang.add({'RU': {
		'appearancecategory.love': 'Я люблю тебя',
		'appearancecategory.animals': 'Животные',
		'appearancecategory.nature': 'Природа',
		'appearancecategory.flowers': 'Цветы',
		'appearancecategory.wintry': 'Зимние',
		'appearancecategory.others': 'Разное'
	}});

	Lang.add({'RU': {
		'eventfolders.clear': 'Очистить',
		'eventfolders.clear_folder': 'Очистить папку',
		'eventfolders.error.cannot_clear': 'Не удалось очистить папку. Попробуйте снова',
		'eventfolders.confirm.remove_forever': 'Все письма будут удалены навсегда'
	}});

	Lang.add({'RU': {
		'wot.reputationlevel.r0': 'Без рейтинга',
		'wot.reputationlevel.r1': 'Очень плохо',
		'wot.reputationlevel.r2': 'Плохо',
		'wot.reputationlevel.r3': 'Неудовлетворительно',
		'wot.reputationlevel.r4': 'Хорошо',
		'wot.reputationlevel.r5': 'Превосходно'
	}});

	Lang.add({'RU': {
		'trash.confirm.delete_msg': 'Вы действительно хотите удалить сообщение без возможности воcстановления?',
		'trash.confirm.go_to_sentmsg': 'Вы действительно хотите перейти на страницу написания письма? Текст, набранный в поле быстрого ответа, при этом будет потерян.\n\nЧтобы продолжить, нажмите «ОК». Чтобы остаться на данной странице, нажмите «Отмена»',
		'trash.confirm.open_site': 'Вы собираетесь перейти на сайт: %s\nНикогда не вводите пароль от своего почтового ящика на посторонних ресурсах.\nОткрыть сайт?',
		'trash.confirm.send_form': 'Вы собираетесь отправить данные из этой формы на сайт: %s\nБудьте внимательны, никогда не отправляйте пароли от своего ящика на посторонние ресурсы. Чтобы продолжить, нажмите ОК.\nОткрыть сайт?',
		'trash.error.wrong_translation_direction': 'Некорректно выбрано направление перевода.',
		'trash.error.empty_msg': 'Вы не ввели текст письма',
		'trash.error.empty_to': 'В поле Кому не указано ни одного адреса.'
	}});

	Lang.add({'RU': {
		'app.my_gifts': 'Мои подарки',
		'app.blondinator': 'Блондинатор',
		'app.message_stat': 'Статистика письма'
	}});

	Lang.add({'RU': {
		'micoformat.read': 'Прочитать',
		'micoformat.reply': 'Ответить',
		'micoformat.accept': 'Принять',
		'micoformat.reject': 'Отказаться',
		'micoformat.action': 'Перейти',
		'micoformat.view': 'Посмотреть'
	}});

	Lang.add({'RU': {
		'themes.default.text': 'Вы хотите включить тему оформления почты<br />&laquo;%s&raquo;?'
	}});

	Lang.add({'RU': {
		'layers.change': 'Изменить',
		'layers.choise': 'Выберите'
	}});

	Lang.add({'RU': {
		'checkspam.senders.plural': ['известных вам отправителей', 'известного вам отправителя', 'известных вам отправителей']
	}});

	Lang.add({'RU': {
		'options.folders.error.required': 'Заполните обязательное поле',
		'options.folders.error.shortpassword': 'Слишком короткий пароль (минимальная длина — 4 символа)',
		'options.folders.error.passwordsdontmatch': 'Введённые пароли не совпадают',
		'options.folders.error.server': 'Ошибка сервера.',
		'options.folders.add': 'Добавить',
		'options.folders.edit': 'Изменить',
		'options.folders.topfolder': 'Папка на верхнем уровне'
	}});
});
</script>

<script type="text/javascript">
mailru.themesConfig = {
	  'default': {
		  title: 'Классическая'
	}
	, t1000: {
		  title: 'Божья коровка'
	}
	, t1001: {
		  title: 'Медитация'
	}
	, t1002: {
		  title: 'Город'
	}
	, t1003: {
		  title: 'Крокусы'
	}
	, t1004: {
		  title: 'Клубника'
	}
	, t1005: {
		  title: 'Огни мегаполиса'
	}
	, t1006: {
		  title: 'Фиолетовый холст'
	}
	, t1007: {
		  title: 'Земляника'
	}
	, t1008: {
		  title: 'Зомби'
	}
	, t1009: {
		  title: 'Яркие письма'
	}
	, t1010: {
		  title: 'Полосатая'
	}
	, t1011: {
		  title: 'Кляксы'
	}
	, t1012: {
		  title: 'Лайт'
	}
	, t1013: {
		  title: 'Кошки'
	}
	, t1014: {
		  title: 'Крыши'
	}
	, t1015: {
		  title: 'Трава'
	}
	, t1016: {
		  title: 'Сказочный город'
	}
	, t1017: {
		  title: 'Казино'
	}
	, t1018: {
		  title: 'Волк и овцы'
	}
	, t1019: {
		  title: 'Простоквашино'
	}
	, t1020: {
		  title: 'Simon’s Cat'
	}
	, t1021: {
		  title: 'Simon’s Cat'
	}
	, t1022: {
		  title: 'Пирс'
	}
	, t1023: {
		  title: 'Изумрудный город'
	}
	, t1024: {
		  title: 'Крыши'
	}
	, t1025: {
		  title: 'Хэллоуин'
	}
	, t1026 : {
		  title : 'Роботы'
		, text : 'Поздравляем! Сейчас будет включена скрытая тема оформления \"Роботы\"'
	}
	, t1027: {
		  title: 'Монстры'
	}
	, t1028: {
		  title: 'Игра в снежки'
	}
	, t1029: {
		  title: 'Секретная служба'
	}
	, t1030: {
		  title: 'СССК'
	}
	, t1031: {
		  title: 'Аниме'
	}
	, t1032: {
		  title: 'Новогодняя'
	}
	, t1033: {
		  title: 'Осенний Кот'
	}
	, t1034: {
		  title: 'Рождественская'
	}
	, t1036 : {
		  title : 'Легенда'
		, link : {
			  href: 'http://1link.mail.ru/c.php?site_id=65818&p=704&sub_id=0'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1037: {
		  title: 'Котики'
	}
	, t1038: {
		  title: '14 февраля'
	}
	, t1040: {
		  title: 'Простоквашино'
	}
	, t1041: {
		  title: 'Весенняя'
		, preview: 't1041/may/preview.jpg?v=1'
	}
	, t1042: {
		  title: 'Вышивка'
	}
	, t1043: {
		  title: 'Сласти'
		, preview: 't1043/preview.png?v=1'
	}
	, t1044: {
		  title: 'Половодье'
	}
	, t1045: {
		title: 'Гонки'
	}
	, t1046: {
		title: 'Перья'

	}
	, t1047: {
		title: 'Ромбики'
	}
	, t1048: {
		title: 'Футбол'
	}
	, t1049: {
		  title: 'Длиннокот'
		, link : {
			  href: 'http://www.kyiv2025.kiev.ua/'
			, title: 'Кошка — Сороконожка'
			, target: '_blank'
		}
	}
	, t1050: {
		title: 'Эскимосы'
	}
	, t1051 : {
		  title : 'Cut the Rope'
		, preview: 't1051/preview.png'
		, link : {
			  href: 'http://cuttherope.net/'
			, title: 'Играть в Cut the rope бесплатно!'
			, target: '_blank'
		}
	}
	, t1052: {
		title: 'Граффити'
	}
	, t1053: {
		title: 'Цирк'
	}
	, t1054: {
		title: 'Восточная'
	}
	, t1055: {
		title: 'Киев'
	}
	, t1056 : {
		title : 'Маленькое королевство'
		, link : {
			  href: 'http://gapart.com/'
			, title: 'gapart.com'
			, target: '_blank'
		}
	}
	, t1057: {
		title: 'Домовята'
		, link : {
			  href: 'http://my.mail.ru/apps/559506?ref=mailbox'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1058: {
		  title: 'Правила войны'
		, link : {
			  href: 'http://my.mail.ru/apps/608884?ref=mailbox'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1059: {
		title: 'Монстры на каникулах'
	}
	, t1060: {
		title: 'Сумерки'
	}
	, t1061: {
		title: 'Монстры на каникулах'
	}
	, t1062: {
		title: 'Пинап'
	}
	, t1063: {
		title: 'Дима Логинoff'
	}
	, t1064: {
		title: 'Пираты'
		, link : {
			  href: 'http://my.mail.ru/apps/655199?ref=mailbox'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1065: {
		title: 'Троецарствие'
		, link : {
			  href: 'http://1link.mail.ru/c.php?site_id=75696&p=109&sub_id=0'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1066: {
		title: 'Новый год 50-х'
	}
	, t1067: {
		title: 'Дикий Запад'
		, link : {
			  href: 'http://my.mail.ru/apps/559650?ref=mailbox'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1068: {
		title: 'Мегаполис'
		, link : {
			  href: 'http://my.mail.ru/apps/494497?ref=mailbox'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1069: {
		title: 'Камни'
	}
	, t1070: {
		title: 'Легенда. Зима'
		, link : {
			  href: 'http://1link.mail.ru/c.php?site_id=65818&p=704&sub_id=0'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1071: {
		title: 'Деревяшечка'
	}
	, t1072: {
		title: 'Плохой Санта'
	}
	, t1073: {
		title: 'Новогодняя Ёлка'
	}
	, t1074: {
		title: 'Ангелы'
	}
	, t1075: {
		title: 'Кирпичи'
	}
	, t1076: {
		title: 'Снежинки'
	}
	, t1077: {
		title: 'Аниме'
	}
	, t1078: {
		title: 'Зёрна'
	}
	, t1079: {
		title: 'Сердца'
	}
	, t1080: {
		title: 'Кабаре'
	}
	, t1081: {
		title: 'Соты'
	}
	, t1082: {
		title: 'Perfect World'
		, link : {
			  href: 'http://r.mail.ru/clb1526970/pw.mail.ru'
			, title: 'Играть!'
			, target: '_blank'
		}
	}
	, t1083: {
		title: 'Беларусь'
	}
	, t1084: {
		title: 'Angry Birds'
	}
	, t1085: {
		title: 'Angry Birds Space'
	}

};
</script>

<script type="text/javascript">
mailru.fileUploaderSWFStrings = {
	'attachmentLimitExceededNotification': 'Файлы, помеченные этим значком, превышают размер вложения 20 Мб и будут отправлены как ссылки. Получатель сможет скачать файлы с проекта Файлы@Mail.Ru. Ссылки на них появятся в письме автоматически.',
	'sureConfirmation': 'Вы уверены?',
	'processed': 'В обработке:',
	'attached': 'Прикреплено:',
	'file': 'файл',
	'files': 'файла',
	'files2': 'файлов',
	'filesSize': 'Общий размер:',
	'scalingOff': 'Фотографии не будут адаптированы для интернета',
	'scalingOn': 'Фотографии будут адаптированы для интернета',
	'photo': 'фото',

	'mb': 'Мб',
	'kb': 'Кб',
	'gb': 'Гб',

	'compactPhotos': 'Сжимать большие фотографии',
	'doNotCompactPhotos': 'Не сжимать (загружать оригиналы)',

	'change': 'Изменить',
	'attachFiles': '',
	'attachFiles2': '',
	'adaptInternetTitle': 'Адаптировать фотографии для интернета',
	'adaptInternetAbout': 'Для удобства просмотра и ускорения работы\nВаши фотографии можно автоматически сжимать.\nРазмер адаптированной фотографии:\n__scaleSize__ px по большей стороне.',
	'applyToAdded': 'Применить к уже прикрепленным фотографиям',
	'complete': 'Готово',
	'rememberSolution': 'Запомнить мое решение',

	'notification': 'Уведомление',
	'errorOnLoadFiles': 'Произошла ошибка при загрузке следующих файлов: __files__.\nНажмите «Повторить», чтобы попытаться загрузить эти файлы заново.',
	'fileLoadFail': 'Не удалось загрузить файл __filename__. __errorMessage__',
	'attachFilesLimitExceed': 'Вы можете присоединить к письму не более __maxFilesCount__ файлов. Будут загружены первые из выбранных.',
	'photoSizeError': 'Некоторые фотографии слишком большие, поэтому не могут быть адаптированы при отправке.',
	'accessError': 'Локальный файл недоступен.',
	'sizeLimit': 'Размер файла превышает максимально допустимый (1 Гб).',

	'REMAINED_TIME': 'Осталось времени',
	'PROGRESS_LOAD_INTO': 'Добавлено',
	'PROGRESS_UPLOAD': 'Загружено',
	'PHOTOS_INFO': 'Выбранные для загрузки фотографии:',
	'WAIT_FOR_SIZE': 'размер вычисляется...',
	'retry': 'Повторить',
    'cancel': 'Отмена',
	'ok': 'OK'
};
</script>


	<script type="text/javascript">
		mailru.lang['compose_cards'] = {
			categories: [{
					id: 1,
					title: 'С днём рождения',
					cardTitles: [
						'Счастливого Дня рождения!',
						'Наилучшие пожелания в твой День рождения!',
						'Пусть исполняются мечты!',
						'Спешу поздравить тебя в этот чудесный день!',
						'Желаю веселого праздника!',
						'Веселого Дня рождения!'
					],
					items: [{
							title: 'С днем рождения',
							img: {src: '1.jpg', width: 350, height: 350},
							preview: '1i.jpg',
							counter: 927567
						}, {
							title: 'С днем рождения',
							img: {src: '2.jpg', width: 350, height: 350},
							preview: '2i.jpg',
							counter: 927568
						}, {
							title: 'Поздравляю',
							img: {src: '3.jpg', width: 350, height: 350},
							preview: '3i.jpg',
							counter: 927569
						}, {
							title: 'Happy birthday',
							img: {src: '4.jpg', width: 350, height: 350},
							preview: '4i.jpg',
							counter: 927571
						}, {
							title: 'C днем варенья!',
							img: {src: '5.jpg', width: 350, height: 459},
							preview: '5i.jpg',
							counter: 927573
						}, {
							title: 'С днем рождения!',
							img: {src: '6.jpg', width: 350, height: 410},
							preview: '6i.jpg',
							counter: 927575
						}, {
							title: 'С днем рождения',
							img: {src: '7.jpg', width: 350, height: 451},
							preview: '7i.jpg',
							counter: 927576
						}, {
							title: 'С днем рождения, дружище!',
							img: {src: '8.jpg', width: 350, height: 491},
							preview: '8i.jpg',
							counter: 927578
						}, {
							title: 'Ты так вырос',
							img: {src: '9.jpg', width: 400, height: 560},
							preview: '9i.jpg',
							counter: 927579
						}, {
							title: 'С Днем Рождения!',
							img: {src: '10.jpg', width: 400, height: 458},
							preview: '10i.jpg',
							counter: 927581
						}, {
							title: 'Чудесный день рождения!',
							img: {src: '11.jpg', width: 343, height: 500},
							preview: '11i.jpg',
							counter: 927582
						}, {
							title: 'С Днем рождения',
							img: {src: '12.jpg', width: 400, height: 400},
							preview: '12i.jpg',
							counter: 927583
						}, {
							title: 'Лучшие пожелания',
							img: {src: '13.jpg', width: 340, height: 500},
							preview: '13i.jpg',
							counter: 927585
						}, {
							title: 'С Днем рождения!',
							img: {src: '14.jpg', width: 400, height: 400},
							preview: '14i.jpg',
							counter: 927586
						}, {
							title: 'С Днем рождения!',
							img: {src: '15.jpg', width: 400, height: 400},
							preview: '15i.jpg',
							counter: 927587
						}, {
							title: 'С Днем Рождения!',
							img: {src: '16.jpg', width: 400, height: 457},
							preview: '16i.jpg',
							counter: 927588
						}, {
							title: 'С любовью',
							img: {src: '17.jpg', width: 400, height: 457},
							preview: '17i.jpg',
							counter: 1142932
						}, {
							title: 'С Днем рождения!',
							img: {src: '18.jpg', width: 400, height: 458},
							preview: '18i.jpg',
							counter: 1142933
						}, {
							title: 'С Днем рождения!',
							img: {src: '19.jpg', width: 400, height: 457},
							preview: '19i.jpg',
							counter: 1142935
						}, {
							title: 'Моей подружке',
							img: {src: '20.jpg', width: 400, height: 457},
							preview: '20i.jpg',
							counter: 1142940
						}, {
							title: 'Happy birthday',
							img: {src: '21.jpg', width: 400, height: 457},
							preview: '21i.jpg',
							counter: 1142941
						}
					]
				}, {
					id: 2,
					title: 'С любовью',
					cardTitles: [
						'С любовью для тебя!',
						'Я хочу признаться тебе в любви!',
						'От всего сердца!',
						'Моему любимому человеку!'
					],
					items: [{
							title: 'Железные мускулы, любящее сердце!',
							img: {src: '01.jpg', width: 700, height: 700},
							preview: '01i.jpg',
							counter: 1427691
						}, {
							title: 'Обнимаю тебя!',
							img: {src: '02.jpg', width: 700, height: 700},
							preview: '02i.jpg',
							counter: 1430405
						}, {
							title: 'Наша любовь - космос!',
							img: {src: '03.jpg', width: 700, height: 700},
							preview: '03i.jpg',
							counter: 1430406
						}, {
							title: 'Любовное послание!',
							img: {src: '04.jpg', width: 700, height: 700},
							preview: '04i.jpg',
							counter: 1430407
						}, {
							title: 'От всего сердца',
							img: {src: '1.jpg', width: 350, height: 350},
							preview: '1i.jpg',
							counter: 927616
						}, {
							title: 'Я вся такая влюбленная',
							img: {src: '2.jpg', width: 350, height: 350},
							preview: '2i.jpg',
							counter: 927617
						}, {
							title: 'С любовью',
							img: {src: '3.jpg', width: 350, height: 350},
							preview: '3i.jpg',
							counter: 927619
						}, {
							title: 'Ты лучше всех!',
							img: {src: '4.jpg', width: 350, height: 400},
							preview: '4i.jpg',
							counter: 927620
						}, {
							title: 'Love',
							img: {src: '5.jpg', width: 350, height: 350},
							preview: '5i.jpg',
							counter: 927621
						}, {
							title: 'Только для тебя',
							img: {src: '6.jpg', width: 371, height: 500},
							preview: '6i.jpg',
							counter: 927624
						}
					]
				}, {
					id: 3,
					title: 'Просто так',
					cardTitles: [''],
					items: [{
							title: 'Не дуйся!',
							img: {src: '1.jpg', width: 350, height: 350},
							preview: '1i.jpg',
							counter: 927634
						}, {
							title: 'Ура, пятница!',
							img: {src: '2.jpg', width: 350, height: 490},
							preview: '2i.jpg',
							counter: 927636
						}, {
							title: 'Не хандри!',
							img: {src: '3.jpg', width: 350, height: 350},
							preview: '3i.jpg',
							counter: 927637
						}, {
							title: 'Чтобы мечты сбывались!',
							img: {src: '4.jpg', width: 350, height: 350},
							preview: '4i.jpg',
							counter: 927638
						}, {
							title: 'Ура, пятница!',
							img: {src: '5.jpg', width: 350, height: 350},
							preview: '5i.jpg',
							counter: 927639
						}, {
							title: 'Тебе',
							img: {src: '6.jpg', width: 350, height: 347},
							preview: '6i.jpg',
							counter: 927642
						}, {
							title: 'Я дарю тебе...',
							img: {src: '7.jpg', width: 350, height: 494},
							preview: '7i.jpg',
							counter: 927643
						}, {
							title: 'Hello',
							img: {src: '8.jpg', width: 350, height: 350},
							preview: '8i.jpg',
							counter: 927646
						}, {
							title: 'Настоящему другу',
							img: {src: '9.jpg', width: 350, height: 350},
							preview: '9i.jpg',
							counter: 927649
						}, {
							title: 'Время отрываться!',
							img: {src: '10.jpg', width: 400, height: 400},
							preview: '10i.jpg',
							counter: 927651
						}, {
							title: 'От всей души',
							img: {src: '11.jpg', width: 400, height: 457},
							preview: '11i.jpg',
							counter: 927652
						}, {
							title: 'Клубничка',
							img: {src: '12.jpg', width: 400, height: 464},
							preview: '12i.jpg',
							counter: 927653
						}, {
							title: 'Кот',
							img: {src: '13.jpg', width: 400, height: 458},
							preview: '13i.jpg',
							counter: 1146189
						}
					]
				}, {
					id: 4,
					title: 'Ретро',
					cardTitles: [''],
					items: [{
							title: 'Любимой девушке',
							img: {src: '1.jpg', width: 375, height: 500},
							preview: '1i.jpg',
							counter: 927595
						}, {
							title: 'Ретро',
							img: {src: '2.jpg', width: 375, height: 500},
							preview: '2i.jpg',
							counter: 927596
						}, {
							title: 'Ретро',
							img: {src: '3.jpg', width: 375, height: 500},
							preview: '3i.jpg',
							counter: 927598
						}, {
							title: 'Ретро',
							img: {src: '4.jpg', width: 375, height: 500},
							preview: '4i.jpg',
							counter: 1146191
						}, {
							title: 'Поздравление маме!',
							img: {src: '10.jpg', width: 400, height: 283},
							preview: '10i.jpg',
							counter: 927599
						}
					]
				}, {
					id: 5,
					title: 'С праздником',
					cardTitles: [''],
					items: [{
							title: 'Новый год',
							img: {src: '1.jpg', width: 400, height: 533},
							preview: '1i.jpg',
							counter: 927601
						}, {
							title: 'С Новым годом!',
							img: {src: '2.jpg', width: 400, height: 533},
							preview: '2i.jpg',
							counter: 927602
						}, {
							title: 'С праздником!',
							img: {src: '3.jpg', width: 400, height: 535},
							preview: '3i.jpg',
							counter: 927605
						}, {
							title: 'Ретро',
							img: {src: '4.jpg', width: 375, height: 500},
							preview: '4i.jpg',
							counter: 927606
						}, {
							title: 'С новым годом!',
							img: {src: '5.jpg', width: 400, height: 533},
							preview: '5i.jpg',
							counter: 927608
						}, {
							title: 'С Новым годом!',
							img: {src: '6.jpg', width: 400, height: 280},
							preview: '6i.jpg',
							counter: 927610
						}, {
							title: 'С Новым годом!',
							img: {src: '7.jpg', width: 400, height: 266},
							preview: '7i.jpg',
							counter: 927611
						}, {
							title: 'С Новым годом!',
							img: {src: '8.jpg', width: 400, height: 284},
							preview: '8i.jpg',
							counter: 927612
						}, {
							title: 'С Новым годом!',
							img: {src: '9.jpg', width: 400, height: 269},
							preview: '9i.jpg',
							counter: 927613
						}
					]
				}
			]
		};
	</script>






	<script type="text/javascript">
mailru.tinyMCEStrings = {
	'font_size': 'Размер',
	'fontdefault': 'Шрифт',
	'bold_desc': 'Жирный текст',
	'italic_desc': 'Наклонный текст',
	'underline_desc': 'Подчеркнутый текст',
	'striketrough_desc': 'Зачеркнутый текст',
	'justifyleft_desc': 'По левому краю',
	'justifycenter_desc': 'По центру',
	'justifyright_desc': 'По правому краю',
	'bullist_desc': 'Маркированный',
	'numlist_desc': 'Нумерованный',
	'outdent_desc': 'Уменьшить отступ',
	'indent_desc': 'Увеличить отступ',
	'undo_desc': 'Отменить действие',
	'redo_desc': 'Повторить действие',
	'link_desc': 'Ссылка',
	'cleanup_desc': 'Очистить форматирование',
	'hr_desc': 'Горизонтальная линия',
	'removeformat_desc': 'Очистить форматирование',
	'forecolor_desc': 'Цвет текста',
	'backcolor_desc': 'Цвет фона',
	'justifyselect_desc': 'Выравнивание',
	'moreactions_desc': 'Дополнительно',
	'fontactions_desc': 'Шрифт',
	'textindentactions_desc': 'Отступ',
	'bullistactions_desc': 'Список',
	'emotions_desc': 'Смайлики',
	'apptransfer_desc': 'Перевести текст',
	'appkeyboard_desc': 'Клавиатура',
	'apptranslit_desc': 'Транслитерация',
	'appspelling_desc': 'Проверить орфографию',
	'apppresents_desc': 'Мои подарки',
	'appmailstatistic_desc': 'Статистика письма',
	'appcripto_desc': 'Крипто',
	'moreapps_desc': 'Ещё приложения',
	'signature_desc': 'Подпись',
	'signature_addsign': 'Добавить подпись',
	'signature_editsign': 'Изменить подпись',
	'design_desc': 'Стили',
	'cards_desc': 'Открытки',
	'enabletexteditor_desc': 'Убрать оформление',
	'enablehtmleditor_desc': 'Расширенное оформление',
	'more': 'Еще',
	'font_normal_label': '(нормальный)',
	'add_link_form_href_label': 'Введите адрес ссылки',
	'add_link_form_title_label': 'Введите текст ссылки',
	'add_link_form_add': 'Добавить',
	'add_link_form_cancel': 'Отмена',
	'appearance_without_style': 'Без стиля',
	'cards_without': 'Без открытки',

	'smiles': [
		{
			'title': 'Колобки',
			'list': {
				'angel': 'Ангелочек',
				'bad': 'Тошнит',
				'biggrin': 'Улыбка до ушей',
				'blum': 'Дразнюсь',
				'blush': 'Смущаюсь',
				'cray': 'Рыдаю',
				'crazy': 'Сумасшествие',
				'dance': 'Танцую',
				'diablo': 'Чертовски злюсь',
				'dirol': 'Я круче',
				'drinks': 'Пиво',
				'fool': 'Ты что!',
				'give_rose': 'Дарю цветочек',
				'good': 'Ок!',
				'kiss_mini': 'Целую',
				'man_in_love': 'Поцеловали',
				'mocking': 'Хихикаю',
				'music': 'Слушаю музыку',
				'nea': 'Не-а',
				'pardon': 'Извини',
				'rofl': 'Лопну от смеха',
				'rolleyes': 'Мечтаю',
				'sad': 'В печали',
				'scratch_one-s_head': 'Надо подумать',
				'shok': 'Ой, ё',
				'shout': 'Кричу',
				'smile': 'Улыбаюсь',
				'unknw': 'Не знаю',
				'wacko2': 'В изнеможении',
				'wink': 'Подмигиваю',
				'yahoo': 'Уррра!',
				'boian': 'Бойан',
				'kut': 'Ктулху'
			}
		},
		{
			'title': 'Классические',
			'list': {
				'smile': ':)',
				'blink': ';)',
				'laughter': ':-))',
				'bee': ';-P',
				'coolguy': '8-)',
				'biggrin': ':-D',
				'pig': '}:o)',
				'bazilio': '$-)',
				'hm': ':-\'',
				'dissapointed': ':-(',
				'tears': '8-(',
				'cry': ':\'(',
				'crocodile': ':\'\'()',
				'really': 'S:-o',
				'oo': '(:-o',
				'amazed': '8-0',
				'aaa': '8-[o]',
				'bullshit': '):-p',
				'angry': '):-(',
				'rrr': '):-$',
				'zloradstvo': '):-D',
				'biganger': ':-E',
				'devil': 'Чертенок',
				'vampire': 'Вампирчик',
				'plug': ':-][',
				'detzl': ':-|',
				'sceptic': 'B-j',
				'shy': ':~o',
				'ass': '(_I_)',
				'heart': 'Сердце',
				'kiss': ':-*',
				'sleepy': 'Сплю',
				'live': 'Отлично!',
				'victory': 'Peace!',
				'ok': 'OK',
				'koza_left': 'Левая \"коза\"',
				'koza_right': 'Правая \"коза\"',
				'die': 'Плохо',
				'fingerup': 'Внимание!',
				'kukes': 'Фига',
				'fist': 'Кулак',
				'fuck': 'Отвали!'
			}
		},
		{
			'title': 'Анимированные',
			'list': {
				'angel': 'Ангелочек',
				'appl': 'Аплодисменты',
				'beauty': 'Красотка',
				'beer': 'Пиво',
				'book': 'Читаю',
				'could': 'Мёрзну',
				'cry': 'Рыдаю',
				'dance': 'Танцую',
				'devil': 'Чертовски злюсь',
				'eat': 'Жую',
				'fight': 'Побью',
				'fingal': 'Побили',
				'flowr': 'Дарю цветочек',
				'gg': 'Смеюсь',
				'gg2': 'Смеюсь и плачу',
				'gift': 'Подарок',
				'hungry': 'Ворчу',
				'kiss': 'Целую',
				'love': 'Люблю',
				'pistolet': 'Застрелю',
				'poison': 'Выпей яду',
				'rainbow': 'Лучезарно',
				'red': 'Смущаюсь',
				'sad': 'Расстраиваюсь',
				'sing': 'Пою',
				'skuka': 'Скучаю',
				'sleep': 'Засыпаю',
				'smile': 'Улыбаюсь',
				'tongue': 'Показываю язык',
				'victory': 'Peace!',
				'wonder': 'Удивляюсь',
				'blew': 'Тошнит'
			}
		},
		{
			'title': 'Продвинутые',
			'list': {
				'c03': 'Улыбаюсь',
				'c05': 'Злорадствую',
				'c07': 'Радуюсь',
				'c09': 'Старичок',
				'c11': 'Свирепствую',
				'c13': 'Пугаюсь',
				'c21': 'Показываю язык',
				'c22': 'Умник',
				'c23': 'Алкоголик',
				'c24': 'Вояка',
				'c25': 'Удивляюсь',
				'c26': 'Чертовски злюсь',
				'c33': 'Расстраиваюсь',
				'c34': 'Панк',
				'c35': 'Лопну от смеха',
				'c36': 'Подмигиваю',
				'c37': 'Думаю',
				'c38': 'Люблю',
				'c45': 'Подавлен',
				'c46': 'Рыдаю',
				'c47': 'Сейчас расплачусь',
				'c48': 'Злюсь',
				'c49': 'Тошнит',
				'c50': 'Сумасшествие',
				'c57': 'Целую',
				'c58': 'Поцеловали',
				'c59': 'Красотка',
				'c60': 'Ангелочек',
				'c61': 'Подозрительно',
				'c62': 'Жую',
				'c69': 'Смущаюсь',
				'c70': 'Стыдно'
			}
		},
		{
			'title': 'Иронические',
			'list': {
				's001': 'Ура!',
				's002': 'Привет!',
				's003': 'Кушаю',
				's004': 'Танцую',
				's006': 'Пока!',
				's007': 'Слушаю музыку',
				's008': 'Помоги',
				's009': 'Бабло!',
				's010': 'Да!',
				's011': 'Головой об стену',
				's012': 'В атаку!',
				's013': 'Пацанчик',
				's014': 'Нет!',
				's015': 'Мир!',
				's016': 'Дракончик'
			}
		},
		{
			'title': 'Гиганты',
			'list': {
				's001': 'Лопну от смеха',
				's002': 'Чертовски злюсь',
				's003': 'Секрет',
				's004': 'В изнеможении',
				's017': 'Требую',
				's006': 'Целую',
				's007': 'Обида',
				's008': 'Устал',
				's009': 'Подмигиваю',
				's010': 'Гадость',
				's011': 'Виноват',
				's013': 'Разочарование',
				's014': 'Сплю',
				's015': 'Ой, ё',
				's016': 'Прыгаю',
				's020': 'Подозреваю',
				's018': 'Тошнит'
			}
		},
		{
			'title': 'Романтические',
			'list': {
				's001': 'Обожаю тебя',
				's002': 'Ангелок',
				's004': 'С любовью',
				's003': 'Девочка с косичками',
				's020': 'Целую',
				's005': 'Сердечко',
				's019': 'Дарю цветочек',
				's006': 'Крылья любви',
				's011': 'Кондитер',
				's010': 'Голубки',
				's007': 'Тюльпаны',
				's008': 'Сердце',
				's009': 'Купидон',
				's012': 'Карусель',
				's013': 'Кот',
				's014': 'Пёс',
				's015': 'Заяц с цветком',
				's016': 'Бабочка',
				's017': 'Цветы',
				's018': 'Букет'
			}
		},
		{
			'title': 'Новогодние',
			'list': {
				'a1': 'Новогодний шар',
				'a2': 'Носок подарков',
				'a3': 'Карамелька',
				'a4': 'Снеговик',
				'b1': 'Ель',
				'b2': 'Шампанское',
				'b3': 'Варежка',
				'b4': 'Я - сам Новый год!',
				'c1': 'Подмигиваю',
				'c2': 'Новогодний смех',
				'c3': 'Дед Мороз',
				'c4': 'Снегурочка',
				'd1': 'Звезда',
				'd2': 'Подарок',
				'd3': 'Зайчик с морковкой',
				'd4': 'Ослик',
				'e1': 'Колокольчик',
				'e2': 'Снежинка',
				'e3': 'Парад звезд',
				'e4': 'Куранты',
				'f1': 'Мешок подарков',
				'f2': 'Еловая ветка'
			}
		}
	]
};

jsCore.wait('{mailru.build}Compose', function () {
	tinyMCE.addI18n('ru.compose', mailru.tinyMCEStrings);
});
</script>




	

	

	

	

	



	<script type="text/javascript">jsCookie.set('HTML5Uploader', ~~'2', jsCookie.WEEK);</script>




<script type="text/javascript">
	ajs.require('{utils}jsHistory', function (){
		jsHistory.trust			= /msglist|readmsg|sentmsg|gosearch|sendmsgok|filesearch|ajax_attach_action/i;
		jsHistory.disabled		= !jsHistory.trust.test(location.href);
	});

	(function (w, d, $){
		var _revent	= /js-event-([^$]+)/;

		$(document)
			.trigger('updatemessagescount', [Number('')])
			.ajaxError(function (event, jqXHR, options, thrownError){
				ajs.require('{mailru.utils}mailru.Utils', function (){
					mailru.Utils.catchAjaxError(event, jqXHR, options, thrownError);
				});
			})
			.mousedown(function (evt){
				var elm = evt.target, id;
				do {
					if( elm && elm.getAttribute ){
						if( elm.className.match(_revent) ){
							$(window).triggerHandler(RegExp.$1);
						}
						else if( (id = elm.getAttribute('cnt_sb')) ){
							(new Image).src = '//rs.' + mailru.SingleDomainName + '/sb'+ id +'.gif?rnd='+ Math.random();
							break;
						}
						else if( (id = elm.getAttribute('cnt_d')) ){
							(new Image).src = '//rs.' + mailru.SingleDomainName + '/d'+ id +'.gif?rnd='+ Math.random();
							break;
						}
					}
				}
				while( (elm = elm.parentNode) && (elm !== this) );
			})
		;
	})(window, document, jQuery);

	

	
</script>





	<link rel="shortcut icon" type="image/x-icon" href="https://img.imgsmail.ru/r/default/favicon32.ico">

<link rel="apple-touch-icon" href="https://img.imgsmail.ru/r/ru/ios/icon_114.png">
<link rel="image_src" href="https://img.imgsmail.ru/r/promopage/icon-socialnetwork.jpg">


<script defer="" async="" type="text/javascript" src="./mailru/shit/counters"></script><script defer="" async="" type="text/javascript" src="./mailru/shit/external.min.js"></script><script defer="" async="" type="text/javascript" src="./mailru/shit/mapi"></script></head>

	
		<body>
	

		

		<div id="Notify" class="notify" style="display:none">
	<!--<div class="js-close notify__close">&times;</div>-->

	<div class="js-ok notify-message">
		<div class="notify-message__title"><i class="icon icon_info-state icon_tip-ok"></i> <span class="js-txt _js-title notify-message__title__text notify-message__title__text_ok"></span></div>
		<!--<div class="js-txt notify-message__message"></div>-->
		<!--<a href="#" class="js-link notify-message__link"></a>-->
	</div>

	<div class="js-error notify-message">
		<div class="notify-message__title"><i class="icon icon_info-state icon_info-state_warning"></i> <span class="js-txt _js-title notify-message__title__text notify-message__title__text_error">Ошибка</span></div>
		<!--<div class="js-txt notify-message__message"></div>-->
		<!--<a href="#" class="js-link notify-message__link"></a>-->
	</div>

	<div class="js-warning notify-message">
		<div class="notify-message__title"><i class="icon icon_info-state icon_attention"></i> <span class="js-txt _js-title notify-message__title__text notify-message__title__text_error"></span></div>
		<!--<div class="js-txt notify-message__message"></div>-->
		<!--<a href="#" class="js-link notify-message__link"></a>-->
	</div>

	<div class="js-load notify-message__title"><i class="icon icon_loader"></i> <span class="js-txt notify-message__title__text notify-message__title__text_loader">Идет загрузка</span></div>

	<div class="js-unknown notify-message__title"><span class="js-txt notify-message__title__text notify-message__title__text_loader">Идет загрузка</span></div>

	<div class="js-collector-noauth notify-message">
		<div class="notify-message__title">
			<i class="icon icon_info-state icon_info-state_warning"></i> <span class="js-txt _js-title notify-message__title__text notify-message__title__text_error"></span>
		</div>
		<div style="margin: 10px 10px 0 0; *width: 500px;">
			<div style="float: left;">
				<input type="button" value="Ввести новый пароль" class="js-change-password form__button form__button_submit" style="*width: 160px;">
			</div>
			<div style="float: right; margin-top:5px;">
				<a href="https://e.mail.ru/cgi-bin/login#" class="js-remember-leter form__button form__button_reset" style="margin-right: 0;">Напомнить позже</a>
				<a href="https://e.mail.ru/cgi-bin/login#" class="js-dont-show form__button form__button_reset" style="margin-right: 0; display: none;">Больше не напоминать</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<div class="js-collector-blocked notify-message">
		<div class="notify-message__title">
			<i class="icon icon_info-state icon_info-state_warning"></i> <span class="js-txt _js-title notify-message__title__text notify-message__title__text_error"></span>
		</div>
		<div style="margin: 10px 10px 0 0; *width: 500px;">
			<div style="float: left;">
				<a href="http://mail.google.com/mail/" class="js-settings" target="_blank">Проверить настройки Gmail</a>
			</div>
			<div style="float: right;">
				<a href="https://e.mail.ru/cgi-bin/login#" class="js-remember-leter form__button form__button_reset" style="margin-right: 0;">Напомнить позже</a>
				<a href="https://e.mail.ru/cgi-bin/login#" class="js-dont-show form__button form__button_reset" style="margin-right: 0; display: none;">Больше не напоминать</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>



		<div id="__FFA__"></div>
		<div id="__FAA__"></div>

		<div id="themeId" class="themeId"></div>
		<div class="theme minwidth"><div class="theme__left"><div class="theme__right"><div class="theme__top"><div class="theme__bottom"><div class="theme__left-center"><div class="theme__right-center"><div class="theme__top-center"><div class="theme__bottom-center"><div class="theme__center"><div class="theme__top-left"><div class="theme__top-right"><div class="theme__bottom-left"><div class="theme__bottom-right" id="themeInner" style="min-height: 872px;">
		<div class="balloon" id="TipOfTheDay" style="left:0; top:-300px; display: none">
	<div class="balloon__t">
		<i class="balloon__cn balloon__cn_tl"></i>
		<i class="balloon__cn balloon__cn_tr"></i>
		<i class="balloon__cn balloon__cn_tc"></i>
		<i class="balloon__icon" title="Закрыть">×<i></i></i>
	</div>
	<div class="balloon__i">
		<i class="balloon__sh balloon__sh_l"></i>
		<i class="balloon__sh balloon__sh_r"></i>
		<div class="balloon__content th-place"></div>
	</div>
	<div class="balloon__b">
		<i class="balloon__cn balloon__cn_bl"></i>
		<i class="balloon__cn balloon__cn_br"></i>
	</div>
</div>


				
<div id="browser-alert" class="browser-alert" style="display: none;">
	<i class="js-close browser-alert__close" title="Закрыть">×</i>
	<div class="js-alert js-notifications-api browser-alert__text">
		Если вы хотите, чтобы мы отправляли вам уведомления, то нажмите на кнопку «Разрешить» в вашем браузере
	</div>
</div>


				<div style="position:absolute;left:-10000px;">
<!-- tns-counter.ru --> 
<script language="JavaScript" type="text/javascript"> 
	var img = new Image();
	img.src = '//www.tns-counter.ru/V13a***R>' + document.referrer.replace(/\*/g,'%2a') + '*mail_ru/ru/UTF-8/tmsec=mail_win/' + Math.round(Math.random() * 1000000000);
</script> 
<noscript> 
	&lt;img src="//www.tns-counter.ru/V13a****mail_ru/ru/UTF-8/tmsec=mail_win/" width="1" height="1" alt=""&gt;
</noscript> 
<!--/ tns-counter.ru -->

</div>



	
	


	



<!--noindex--><script>var __PHLangs = {"raiting":"Рейтинг","auto":"Авто","answer":"Ответы","torg":"Товары","work":"Работа","realty":"Недвижимость","hitech":"Hi-Tech","sport":"Спорт","files":"Файлы","lady":"Леди","deti":"Дети","health":"Здоровье","travel":"Путешествия","cards":"Открытки","horo":"Гороскопы","pogoda":"Погода","afisha":"Афиша","video":"Видео","money":"Деньги","maps":"Карты","mra":"Mail.Ru Агент","sputnik":"Спутник","browser":"Браузер","icq":"ICQ","change_account":"Добавить почтовый ящик","change_account_description":"Вы можете одновременно работать<br/>с несколькими почтовыми ящиками.","more":"Узнать больше","error":"Произошла ошибка соединения","calendar":"Календарь","tv":"ТВ программа","avia":"Авиабилеты","moto":"Мото"}</script>




 






























	
		
	

	

<style>.x-ph{position:relative;z-index:1003;margin:0;padding:0;font:12px/16px Arial,sans-serif;white-space:nowrap;text-align:left;background:#fff;height:28px;*zoom:1}.w-x-ph{width:100%;margin:0;padding:0;border:0;border-spacing:0;border-collapse:collapse;font:12px/16px Arial,sans-serif;background:#fff}.w-x-ph__col{height:28px;padding:0;margin:0;border:0;border-spacing:0;vertical-align:top;white-space:nowrap;font:12px/16px Arial,sans-serif}.w-x-ph__col_left{width:1%;padding-right:20px;text-align:left}.w-x-ph__col_right{text-align:right}.x-ph__menu{position:relative;z-index:1004;display:inline-block;padding-right:2px;font:12px/16px Arial,sans-serif;vertical-align:top}.w-x-ph__menu__placeholder{position:absolute;top:100%;left:50%;width:0;height:0;font:0/0 a}.x-ph__menu__button,.x-ph__menu__button:link,.x-ph__menu__button:visited,.x-ph__menu__button:hover,.x-ph__menu__button:active,.x-ph__menu__button:focus{position:relative;z-index:1005;display:inline-block;width:100%;padding:6px 0 5px 0;border-right:1px solid #fff;border-left:1px solid #fff;font:12px/16px Arial,sans-serif;text-decoration:none;cursor:pointer;outline:none}.x-ph-ff.x-ph-win .x-ph__menu__button,.x-ph-ff.x-ph-win .x-ph__menu__button:link,.x-ph-ff.x-ph-win .x-ph__menu__button:visited,.x-ph-ff.x-ph-win .x-ph__menu__button:hover,.x-ph-ff.x-ph-win .x-ph__menu__button:active,.x-ph-ff.x-ph-win .x-ph__menu__button:focus{padding-top:5px;padding-bottom:7px}.x-ph__menu__button__text,.x-ph__menu_open .x-ph__menu__button:hover .x-ph__menu__button__text{display:inline-block;width:100%;padding:0 14px 0 6px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;color:#0857a6;font-style:normal;text-decoration:none;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;text-align:left;vertical-align:top}.x-ph__menu__button:hover .x-ph__menu__button__text,.x-ph__menu__button:focus .x-ph__menu__button__text,.x-ph__menu__button:active .x-ph__menu__button__text,.x-ph__menu_open .x-ph__menu__button:focus .x-ph__menu__button__text,.x-ph__menu_open .x-ph__menu__button:active .x-ph__menu__button__text{color:#f26d00}.x-ph__menu__button__icon,.x-ph__menu_open .x-ph__menu__button:hover .x-ph__menu__button__icon{position:absolute;right:5px;top:13px;width:0;height:0;border-width:4px;border-style:solid;border-color:#0857a6 #fff #fff;font:0/0 a}.x-ph__menu__button:hover .x-ph__menu__button__icon,.x-ph__menu__button:focus .x-ph__menu__button__icon,.x-ph__menu__button:active .x-ph__menu__button__icon,.x-ph__menu_open .x-ph__menu__button:focus .x-ph__menu__button__icon,.x-ph__menu_open .x-ph__menu__button:active .x-ph__menu__button__icon{border-color:#f26d00 #fff #fff}.w-x-ph__menu__button__shadow{position:absolute;z-index:1007;top:0;opacity:0;width:50px;height:0;-webkit-box-shadow:0 4px 9px rgba(0,0,0,0.3);-moz-box-shadow:0 4px 9px rgba(0,0,0,0.3);box-shadow:0 4px 9px rgba(0,0,0,0.3)}.x-ph__link,.x-ph__link:link,.x-ph__link:visited,.x-ph__link:hover,.x-ph__link:active,.x-ph__link:focus{display:inline-block;margin-right:6px;color:#0857a6;text-decoration:none;white-space:nowrap;*zoom:1;outline:none;padding:6px 6px 6px;*padding:5px 6px 7px;font:12px/16px Arial,sans-serif}.x-ph-ff.x-ph-win .x-ph__link,.x-ph-ff.x-ph-win .x-ph__link:link,.x-ph-ff.x-ph-win .x-ph__link:visited,.x-ph-ff.x-ph-win .x-ph__link:hover,.x-ph-ff.x-ph-win .x-ph__link:active,.x-ph-ff.x-ph-win .x-ph__link:focus{padding:5px 6px 7px}.x-ph__auth__link_icon,.x-ph__auth__link_icon:link,.x-ph__auth__link_icon:visited,.x-ph__auth__link_icon:hover,.x-ph__auth__link_icon:active,.x-ph__auth__link_icon:focus{width:16px;height:16px;margin:5px 6px 0;padding:0 !important;overflow:hidden;background:url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/link/icons.png") no-repeat 0 0;background-size:16px auto;text-indent:30px}@media only screen and (-webkit-min-device-pixel-ratio: 1.5), only screen and (min--moz-device-pixel-ratio: 1.5), only screen and (-o-min-device-pixel-ratio: 3/2), only screen and (min-device-pixel-ratio: 1.5){.x-ph__auth__link_icon,.x-ph__auth__link_icon:link,.x-ph__auth__link_icon:visited,.x-ph__auth__link_icon:hover,.x-ph__auth__link_icon:active,.x-ph__auth__link_icon:focus{background-image:url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/link/icons.x2.png")}}.x-ph__auth__link_icon_settings,.x-ph__auth__link_icon_settings:link,.x-ph__auth__link_icon_settings:visited{background-position:0 -20px}.x-ph__auth__link_icon_settings:hover,.x-ph__auth__link_icon_settings:active,.x-ph__auth__link_icon_settings:focus{background-position:0 -60px}.x-ph__auth__link_icon_exit,.x-ph__auth__link_icon_exit:link,.x-ph__auth__link_icon_exit:visited{background-position:0 0}.x-ph__auth__link_icon_exit:hover,.x-ph__auth__link_icon_exit:active,.x-ph__auth__link_icon_exit:focus{background-position:0 -40px}.x-ph__link:hover,.x-ph__link:focus,.x-ph__link:active{color:#f26d00}.x-ph__link_first,.x-ph__link_first:link,.x-ph__link_first:visited,.x-ph__link_first:hover,.x-ph__link_first:active,.x-ph__link_first:focus{margin-left:12px}.x-ph__link_last,.x-ph__link_last:link,.x-ph__link_last:visited,.x-ph__link_last:hover,.x-ph__link_last:active,.x-ph__link_last:focus{margin-right:12px}.x-ph__link_ext,.x-ph__link_ext:link,.x-ph__link_ext:visited,.x-ph__link_ext:hover,.x-ph__link_ext:active,.x-ph__link_ext:focus{padding-right:1px;text-decoration:none}.x-ph__link_selected,.x-ph__link_selected:link,.x-ph__link_selected:visited,.x-ph__link_selected:hover,.x-ph__link_selected:active,.x-ph__link_selected:focus{font-weight:bold}.x-ph__link__text{font-style:normal;text-decoration:none;cursor:pointer}.x-ph__link:hover .x-ph__link__text{color:#f26d00;text-decoration:none}.x-ph__link__balloon{display:none;min-width:9px;margin-left:3px;padding-right:4px;padding-left:4px;color:#fff;font-weight:normal;font-style:normal;font-size:11px;line-height:12px;text-align:center;background-color:#fa0;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;cursor:pointer}.x-ph-ff.x-ph-mac .x-ph__link__balloon{line-height:13px}.x-ph__link_ext .x-ph__link__balloon{display:inline-block;*display:inline;*zoom:1}.x-ph__auth{width:100%;border:0;margin:0;padding:0;border:0;border-spacing:0;font:12px/16px Arial,sans-serif}.w-x-ph__auth__col{border:0;margin:0;padding:0;border:0;border-spacing:0;vertical-align:top;text-align:right;white-space:nowrap;font:12px/16px Arial,sans-serif}.w-x-ph__auth__col_left{width:99%}.w-x-ph__auth__col_right{padding-right:2px}.x-ph__auth__user{position:relative;display:block;width:100%;min-width:100px;height:28px;overflow:hidden}.w-x-ph__auth__user_inner{position:absolute;right:0;text-align:left;max-width:100%}.x-ph__auth__user__text{color:#000;display:inline-block;padding:6px 10px 6px 0;_padding:5px 10px 7px 0;font:12px/16px Arial,sans-serif}.x-ph__auth__user__fade{position:absolute;top:0;right:-6px;width:16px;height:28px;overflow:hidden;background:url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/auth/fade2.png") repeat-y 0 0;_display:none}.x-ph__auth__link,.x-ph__auth__link:link,.x-ph__auth__link:visited,.x-ph__auth__link:hover,.x-ph__auth__link:active,.x-ph__auth__link:focus{font:12px/16px Arial,sans-serif}.w-x-ph__auth__dropdown{position:relative;display:block;min-width:100px;width:100%;height:1px;text-align:right}.w-x-ph__auth__dropdown__inner{position:absolute;right:6px;width:100%;min-width:100px;text-align:right}.x-ph__menu_auth{max-width:100%}.x-ph__menu__button_auth,.x-ph__menu__button_auth:link,.x-ph__menu__button_auth:visited,.x-ph__menu__button_auth:hover,.x-ph__menu__button_auth:active,.x-ph__menu__button_auth:focus{max-width:100%}.x-ph__menu__button__text_auth,.x-ph__menu_open .x-ph__menu__button:hover .x-ph__menu__button__text_auth{max-width:560px}
</style><div class="x-ph portal-headline x-ph-win" id="portal-headline"><style type="text/css">.x-ph__button,.x-ph__button:link,.x-ph__button:visited,.x-ph__button:hover,.x-ph__button:focus,.x-ph__button:active{position:relative;display:inline-block;padding-top:4px;padding-bottom:4px;font:13px/16px Arial,Tahoma,sans-serif;text-decoration:none;vertical-align:baseline;-webkit-user-select:none;-moz-user-select:none;user-select:none;outline:none}.x-ph__button__input{position:absolute;top:0;left:0;display:block;width:100%;height:26px;margin:0;padding:0;outline:none;font-size:100px;filter:alpha(opacity=0);opacity:0;cursor:pointer}.x-ph__button__input[disabled="disabled"]{cursor:default}.x-ph__button__fake{padding:4px 18px;border:1px solid #c1c1c1;font:13px/16px Arial,Tahoma,sans-serif;text-align:center;color:#000;text-shadow:0 1px rgba(255,255,255,0.6);background-position:0 0;background-repeat:repeat-x;background-size:5px 100%;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAYAAAC0s0UOAAAAQUlEQVR42mL8////ZgY0wMSABRAvyALE/7EJ/sEm+JtowZ/YBH9hE/xBtCBWM78Trf07DQR/0EDlT8oEMQIZIMAARCEab4wmjV8AAAAASUVORK5CYII=);background-color:#e4e4e4;-webkit-box-shadow:0 1px 1px rgba(0,0,0,0.1);-moz-box-shadow:0 1px 1px rgba(0,0,0,0.1);box-shadow:0 1px 1px rgba(0,0,0,0.1);-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;cursor:pointer;vertical-align:baseline}.x-ph__button_action .x-ph__button__fake,.x-ph__button_action:link .x-ph__button__fake,.x-ph__button_action:visited .x-ph__button__fake,.x-ph__button_action:hover .x-ph__button__fake,.x-ph__button_action:focus .x-ph__button__fake,.x-ph__button_action:active .x-ph__button__fake{border-color:#426285;color:#fff;text-shadow:0 -1px rgba(0,0,0,0.3);background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAYAAAC0s0UOAAAATklEQVR42rTRuQ3AQAhE0bXkUtx/ddwEOPcQIHmX8Ekk86+qetbn7sxcgBGBaGaI7o6oqkMUEURm3o5ENMQT7z+xXWk+ctuordl1fwUYAP9tTp3a/m0xAAAAAElFTkSuQmCC) 0 0 repeat-x;background-color:#376ea9;-webkit-box-shadow:0 1px 3px rgba(0,0,0,0.4);-moz-box-shadow:0 1px 3px rgba(0,0,0,0.4);box-shadow:0 1px 3px rgba(0,0,0,0.4)}a:hover .x-ph__button__fake,a:focus .x-ph__button__fake,.x-ph__button__fake:hover,.x-ph__button__fake:focus,.x-ph__button:hover .x-ph__button__fake,.x-ph__button:focus .x-ph__button__fake,.x-ph__button__input:hover + .x-ph__button__fake,.x-ph__button__input:focus + .x-ph__button__fake{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAYAAAC0s0UOAAAAM0lEQVR42mL8DwQMaICJAQtgAeL/2AT/YhP8R7TKP/QS/E20IIXaf1GmfWAFiQtPgAADAB2iHPmjCLtlAAAAAElFTkSuQmCC)}.x-ph__button_action .x-ph__button__fake:hover,.x-ph__button_action .x-ph__button__fake:focus,.x-ph__button_action:hover .x-ph__button__fake,.x-ph__button_action:focus .x-ph__button__fake,.x-ph__button_action .x-ph__button__input:hover + .x-ph__button__fake,.x-ph__button_action .x-ph__button__input:focus + .x-ph__button__fake{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAYAAAC0s0UOAAAANUlEQVR42mL8//9/GgMaYAEKMmAI/vv3j0hBrNr//v1LiZnEa8eqkkLBQWgRhUFHWRQDBBgA9cVRFv3YGFoAAAAASUVORK5CYII=)}a:active .x-ph__button__fake,.x-ph__button__fake:active,.x-ph__button:active .x-ph__button__fake,.x-ph__button:hover .x-ph__button__fake:active,.x-ph__button__input:active + .x-ph__button__fake{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAIAAAA70dJZAAAAKklEQVR42mI8dOgQAxJgYkAF6HwWRkZGStQT0k+p+aTaT6n76O0/gAADADXcAsIL7ZukAAAAAElFTkSuQmCC)}.x-ph__button_action .x-ph__button__fake:active,.x-ph__button_action:active .x-ph__button__fake,.x-ph__button_action:hover .x-ph__button__fake:active,.x-ph__button_action .x-ph__button__input:active + .x-ph__button__fake{background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAYAAAC0s0UOAAAATElEQVR42rTRuw2AAAxDQSORf8Zg/xnpcYpIQMqT0vgdAC487hQREKoqo7szmhljRCwxMxmr6nPs7iX+8f4Sx5X2I4+NxppT91uAAQDw5AN8AZpmMgAAAABJRU5ErkJggg==)}.x-ph__button_disabled .x-ph__button__fake,.x-ph__button__input[disabled="disabled"] + .x-ph__button__fake,.x-ph__button:hover .x-ph__button__input[disabled="disabled"] + .x-ph__button__fake,.x-ph__button:focus .x-ph__button__input[disabled="disabled"] + .x-ph__button__fake{border-color:#f4f4f4;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAIAAAA70dJZAAAAK0lEQVR42mL8//8/AxJgpDf/379/NOX//fuXqvw/f/7QlP/79298fIAAAwDaGVBNDHs/egAAAABJRU5ErkJggg==) !important;cursor:default !important}.x-ph__button_action.x-ph__button_disabled .x-ph__button__fake,.x-ph__button_action .x-ph__button__input[disabled="disabled"] + .x-ph__button__fake,.x-ph__button_action:hover .x-ph__button__input[disabled="disabled"] + .x-ph__button__fake,.x-ph__button_action:focus .x-ph__button__input[disabled="disabled"] + .x-ph__button__fake{border-color:#9daec1;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAbCAYAAAC0s0UOAAAALElEQVR42mL8////QgY0wMSABbAAVVIgSAszsQv++/ePPhYNEXfSIuQBAgwAKeBIt3cEBisAAAAASUVORK5CYII=) !important;-webkit-box-shadow:0 1px 3px rgba(0,0,0,0.2) !important;-moz-box-shadow:0 1px 3px rgba(0,0,0,0.2) !important;box-shadow:0 1px 3px rgba(0,0,0,0.2) !important}.x-ph__button_dark .x-ph__button__fake,.x-ph__button_dark:link .x-ph__button__fake,.x-ph__button_dark:visited .x-ph__button__fake,.x-ph__button_dark:hover .x-ph__button__fake,.x-ph__button_dark:focus .x-ph__button__fake,.x-ph__button_dark:active .x-ph__button__fake{color:#fff;text-shadow:0 -1px rgba(0,0,0,0.3)}.x-ph__button_only-icon .x-ph__button__fake,.x-ph__button_only-icon:link .x-ph__button__fake,.x-ph__button_only-icon:visited .x-ph__button__fake,.x-ph__button_only-icon:hover .x-ph__button__fake,.x-ph__button_only-icon:focus .x-ph__button__fake,.x-ph__button_only-icon:active .x-ph__button__fake{padding-right:12px;padding-left:12px}.x-ph__button_with-icon .x-ph__button__fake,.x-ph__button_with-icon:link .x-ph__button__fake,.x-ph__button_with-icon:visited .x-ph__button__fake,.x-ph__button_with-icon:hover .x-ph__button__fake,.x-ph__button_with-icon:focus .x-ph__button__fake,.x-ph__button_with-icon:active .x-ph__button__fake{padding-left:15px}.x-ph__button_only-icon .x-ph__button__fake__text,.x-ph__button_only-icon:link .x-ph__button__fake__text,.x-ph__button_only-icon:visited .x-ph__button__fake__text,.x-ph__button_only-icon:hover .x-ph__button__fake__text,.x-ph__button_only-icon:focus .x-ph__button__fake__text,.x-ph__button_only-icon:active .x-ph__button__fake__text{display:none}.x-ph__button_with-icon .x-ph__button__fake__text,.x-ph__button_with-icon:link .x-ph__button__fake__text,.x-ph__button_with-icon:visited .x-ph__button__fake__text,.x-ph__button_with-icon:hover .x-ph__button__fake__text,.x-ph__button_with-icon:focus .x-ph__button__fake__text,.x-ph__button_with-icon:active .x-ph__button__fake__text{margin-left:5px}.x-ph__button_disabled .x-ph__button__fake__text,.x-ph__button__input[disabled="disabled"] + .x-ph__button__fake .x-ph__button__fake__text{opacity:0.6 !important;filter:alpha(opacity=60) !important}.x-ph__button__fake__icon{position:relative;display:none;width:16px;height:16px;font:0/0 a;background-repeat:no-repeat;vertical-align:baseline;overflow:hidden}.x-ph__button_with-icon .x-ph__button__fake__icon,.x-ph__button_with-icon:link .x-ph__button__fake__icon,.x-ph__button_with-icon:visited .x-ph__button__fake__icon,.x-ph__button_with-icon:hover .x-ph__button__fake__icon,.x-ph__button_with-icon:focus .x-ph__button__fake__icon,.x-ph__button_with-icon:active .x-ph__button__fake__icon,.x-ph__button_only-icon .x-ph__button__fake__icon,.x-ph__button_only-icon:link .x-ph__button__fake__icon,.x-ph__button_only-icon:visited .x-ph__button__fake__icon,.x-ph__button_only-icon:hover .x-ph__button__fake__icon,.x-ph__button_only-icon:focus .x-ph__button__fake__icon,.x-ph__button_only-icon:active .x-ph__button__fake__icon{display:inline-block}.x-ph__button_disabled .x-ph__button__fake__icon,.x-ph__button__input[disabled="disabled"] + .x-ph__button__fake .x-ph__button__fake__icon{opacity:0.2 !important;filter:alpha(opacity=20) !important}.x-ph__button__fake__icon{width:11px;margin-bottom:-4px;background-image:url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/auth/icons.gif")}.x-ph__button__fake__icon_plus{background-position:0 0}.x-ph__button__fake__icon_exit{background-position:0 -20px}.x-ph__menu_open{z-index:1006}.x-ph__menu_open .x-ph__menu__button,.x-ph__menu_open .x-ph__menu__button:link,.x-ph__menu_open .x-ph__menu__button:visited,.x-ph__menu_open .x-ph__menu__button:hover,.x-ph__menu_open .x-ph__menu__button:active,.x-ph__menu_open .x-ph__menu__button:focus{border-color:#d8d8d8;padding-bottom:4px;z-index:1010;background:#fff;-webkit-transition:border-color 0.5s;-moz-transition:border-color 0.5s;-o-transition:border-color 0.5s;transition:border-color 0.5s}.x-ph-ff.x-ph-win .x-ph__menu_open .x-ph__menu__button,.x-ph-ff.x-ph-win .x-ph__menu_open .x-ph__menu__button:link,.x-ph-ff.x-ph-win .x-ph__menu_open .x-ph__menu__button:visited,.x-ph-ff.x-ph-win .x-ph__menu_open .x-ph__menu__button:hover,.x-ph-ff.x-ph-win .x-ph__menu_open .x-ph__menu__button:active,.x-ph-ff.x-ph-win .x-ph__menu_open .x-ph__menu__button:focus{padding-bottom:5px}.x-ph__menu_open_left .w-x-ph__menu__button__shadow_left{left:0;height:25px;clip:rect(0, 0px, 35px, -10px)}.x-ph__menu_open_right .w-x-ph__menu__button__shadow_left{left:0;height:25px;clip:rect(0, 0px, 25px, -10px)}.x-ph__menu_open_left .w-x-ph__menu__button__shadow_right{right:0;height:25px;clip:rect(0, 60px, 25px, 50px)}.x-ph__menu_open_right .w-x-ph__menu__button__shadow_right{right:0;height:25px;clip:rect(0, 60px, 35px, 50px)}.x-ph__menu_open .w-x-ph__menu__button__shadow{opacity:1;-webkit-transition:opacity 0.5s;-moz-transition:opacity 0.5s;-o-transition:opacity 0.5s;transition:opacity 0.5s}.x-ph__menu__dropdown{display:none;position:absolute;top:-9999px;left:-9999px;z-index:1009;visibility:hidden;opacity:0}.w-x-ph__menu__dropdown{position:relative;border:1px solid #d8d8d8;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 4px 9px rgba(0,0,0,0.3);-moz-box-shadow:0 4px 9px rgba(0,0,0,0.3);box-shadow:0 4px 9px rgba(0,0,0,0.3);background:#fff}.w-x-ph__menu__dropdown__clearfix{display:block;height:0;clear:both;overflow:hidden;font:0/0 a}.x-ph__menu_open .x-ph__menu__dropdown{top:25px;visibility:visible;opacity:1;-webkit-transition:opacity 0.5s;-moz-transition:opacity 0.5s;-o-transition:opacity 0.5s;transition:opacity 0.5s}.x-ph__menu_open_left .x-ph__menu__dropdown{left:0}.x-ph__menu_open_left .w-x-ph__menu__dropdown{-webkit-border-top-left-radius:0;-moz-border-top-left-radius:0;border-top-left-radius:0}.x-ph__menu_open_right .x-ph__menu__dropdown{left:auto;right:0}.x-ph__menu_open_right .w-x-ph__menu__dropdown{-webkit-border-top-right-radius:0;-moz-border-top-right-radius:0;border-top-right-radius:0}.x-ph__projects{width:380px}.x-ph__projects__col{float:left;width:120px;padding-top:4px;padding-bottom:4px;padding-left:4px}.x-ph__projects__col_separator{margin-bottom:12px;padding-bottom:37px;border-bottom:1px solid #d9deed}.x-ph__projects__link,.x-ph__projects__link:link,.x-ph__projects__link:visited,.x-ph__projects__link:hover,.x-ph__projects__link:active,.x-ph__projects__link:focus{display:block;padding:4px 8px 4px 8px;border-bottom:1px solid #fff;color:#0857a6;text-align:left;text-decoration:none;white-space:nowrap;cursor:pointer;outline:none}.x-ph__projects__link:hover,.x-ph__projects__link:focus,.x-ph__projects__link:active{color:#0857a6;background:#e7efff}.x-ph__projects__link_icon,.x-ph__projects__link_icon:link,.x-ph__projects__link_icon:visited,.x-ph__projects__link_icon:hover,.x-ph__projects__link_icon:active,.x-ph__projects__link_icon:focus{padding-left:30px}.x-ph__projects__link_icon__pic{position:absolute;width:18px;height:18px;margin-top:-1px;margin-left:-22px;background-image:url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/projects/projectsicons.png");background-repeat:no-repeat}.x-ph__projects__link_icon__pic_agent{background-position:0 2px}.x-ph__projects__link_icon__pic_sputnik{background-position:0 -18px}.x-ph__projects__link_icon__pic_icq{background-position:0 -40px}.x-ph__projects__link_icon__pic_browser{background-position:0 -61px}.x-ph__menu__dropdown_auth{text-align:left;min-width:358px;max-width:110%;white-space:normal}.w-x-ph__menu__dropdown_auth{padding:18px}.x-ph__menu__dropdown_auth__loader{display:none;position:relative;height:45px;outline:none;overflow:hidden;background:#edf3f8 url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/auth/loader.gif") no-repeat center center}.x-ph__menu__dropdown_auth_loading .x-ph__menu__dropdown_auth__loader{display:block}.x-ph__menu__dropdown_auth__error{display:none;position:relative;height:16px;padding:15px 18px 14px;outline:none;overflow:hidden;background:#fefbd6;color:#db130c;font:normal 12px/16px Arial,sans-serif}.x-ph__menu__dropdown_auth_error .x-ph__menu__dropdown_auth__error{display:block}.x-ph__auth_list{display:block}.x-ph__menu__dropdown_auth_error .x-ph__auth_list,.x-ph__menu__dropdown_auth_loading .x-ph__auth_list{display:none}.x-ph__auth_list__item{position:relative;display:block;height:45px;margin-bottom:7px;padding:0 54px;outline:none;overflow:hidden;cursor:pointer}.x-ph__auth_list__item_last{margin-bottom:0}.x-ph__auth_list__item:link,.x-ph__auth_list__item:visited,.x-ph__auth_list__item:hover,.x-ph__auth_list__item:focus,.x-ph__auth_list__item:active{background:#e7efff}.x-ph__auth_list__item_current,.x-ph__auth_list__item_current:link,.x-ph__auth_list__item_current:visited,.x-ph__auth_list__item_current:hover,.x-ph__auth_list__item_current:focus,.x-ph__auth_list__item_current:active{background:#edf3f8;cursor:default;padding-right:15px}.x-ph__auth_list__item__avatar{position:absolute;left:0;top:0;height:45px;width:45px;background-position:50% 50%;background-size:contain;background-repeat:no-repeat}.x-ph__auth_list__item__info{width:100%;padding-top:5px;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;white-space:nowrap}.x-ph__auth_list__item__info__email{float:left;max-width:100%;overflow:hidden;color:#0c59a1}.x-ph-ff .x-ph__auth_list__item__info__email{float:none}.x-ph__auth_list__item:hover .x-ph__auth_list__item__info__email,.x-ph__auth_list__item:focus .x-ph__auth_list__item__info__email,.x-ph__auth_list__item:active .x-ph__auth_list__item__info__email{color:#f7690c}.x-ph__auth_list__item_current .x-ph__auth_list__item__info__email,.x-ph__auth_list__item_current:link .x-ph__auth_list__item__info__email,.x-ph__auth_list__item_current:visited .x-ph__auth_list__item__info__email,.x-ph__auth_list__item_current:hover .x-ph__auth_list__item__info__email,.x-ph__auth_list__item_current:focus .x-ph__auth_list__item__info__email,.x-ph__auth_list__item_current:active .x-ph__auth_list__item__info__email{color:#333333}.x-ph__auth_list__item__info__email__text{display:block;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;font:14px/18px Arial,sans-serif}.x-ph__auth_list__item__info__email__counter{display:none;float:right;position:relative;top:1px;padding-left:9px;padding-right:9px;font:13px/17px Arial,sans-serif}.x-ph-ff.x-ph-win .x-ph__auth_list__item__info__email__counter{top:0}.x-ph__auth_list__item__info__email__counter_visible{display:block}.x-ph__auth_list__item__info__email__counter__icon{display:inline-block;width:16px;height:16px;margin-bottom:-4px;background:url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/auth/icons.gif") no-repeat 0 -70px;background-size:27px auto;vertical-align:baseline;margin-right:4px}.x-ph__auth_list__item__info__text{width:100%;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;color:#999999;font:12px/18px Arial,sans-serif}.x-ph__auth_list__item_current .x-ph__auth_list__item__info__text,.x-ph__auth_list__item_current:link .x-ph__auth_list__item__info__text,.x-ph__auth_list__item_current:visited .x-ph__auth_list__item__info__text,.x-ph__auth_list__item_current:hover .x-ph__auth_list__item__info__text,.x-ph__auth_list__item_current:focus .x-ph__auth_list__item__info__text,.x-ph__auth_list__item_current:active .x-ph__auth_list__item__info__text{color:#666666}.x-ph__auth_list__item__logout{display:none;position:absolute;top:9px;right:9px;opacity:0}.x-ph__auth_list__item:hover .x-ph__auth_list__item__logout,.x-ph__auth_list__item:focus .x-ph__auth_list__item__logout,.x-ph__auth_list__item:active .x-ph__auth_list__item__logout{display:block;opacity:0.4}.x-ph__auth_list__item .x-ph__auth_list__item__logout:hover,.x-ph__auth_list__item .x-ph__auth_list__item__logout:focus,.x-ph__auth_list__item .x-ph__auth_list__item__logout:active{display:block;opacity:1}.x-ph__auth_list__item_current .x-ph__auth_list__item__logout,.x-ph__auth_list__item_current:link .x-ph__auth_list__item__logout,.x-ph__auth_list__item_current:visited .x-ph__auth_list__item__logout,.x-ph__auth_list__item_current:hover .x-ph__auth_list__item__logout,.x-ph__auth_list__item_current:focus .x-ph__auth_list__item__logout,.x-ph__auth_list__item_current:active .x-ph__auth_list__item__logout{display:none}.x-ph__menu__dropdown_auth__login{margin-top:18px}.x-ph__menu__dropdown_auth_error .x-ph__menu__dropdown_auth__login,.x-ph__menu__dropdown_auth_loading .x-ph__menu__dropdown_auth__login,.x-ph__menu_auth_multi_limit .x-ph__menu__dropdown_auth__login{display:none}.x-ph__menu__dropdown_auth__login__link,.x-ph__menu__dropdown_auth__login__link:link,.x-ph__menu__dropdown_auth__login__link:visited,.x-ph__menu__dropdown_auth__login__link:hover,.x-ph__menu__dropdown_auth__login__link:active,.x-ph__menu__dropdown_auth__login__link:focus{position:relative;padding-left:54px;color:#0857a6;outline:none;font:14px/26px Arial,sans-serif;text-decoration:none}.x-ph__menu__dropdown_auth__login__link:hover,.x-ph__menu__dropdown_auth__login__link:active,.x-ph__menu__dropdown_auth__login__link:focus{color:#f26d00}.x-ph__menu__dropdown_auth__login__link__button{position:absolute;top:-5px;left:4px}.x-ph__menu__dropdown_auth__info{position:relative;margin-top:18px;margin-bottom:-6px;padding:0 54px;font:12px/18px Arial,sans-serif;color:#666}.x-ph__menu__dropdown_auth_error .x-ph__menu__dropdown_auth__info,.x-ph__menu__dropdown_auth_loading .x-ph__menu__dropdown_auth__info,.x-ph__menu_auth_multi .x-ph__menu__dropdown_auth__info{display:none}.x-ph__menu__dropdown_auth__info__arrow{position:absolute;top:-11px;left:24px;width:27px;height:23px;background:url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/auth/icons.gif") no-repeat 0 -40px;background-size:27px auto}.x-ph__menu__dropdown_auth__info__link,.x-ph__menu__dropdown_auth__info__link:link,.x-ph__menu__dropdown_auth__info__link:visited,.x-ph__menu__dropdown_auth__info__link:hover,.x-ph__menu__dropdown_auth__info__link:focus,.x-ph__menu__dropdown_auth__info__link:active{display:block;width:210px;font:12px/18px Arial,sans-serif;text-decoration:none}.x-ph__menu__dropdown_auth__info__link .x-ph__menu__dropdown_auth__info__link__text,.x-ph__menu__dropdown_auth__info__link:link .x-ph__menu__dropdown_auth__info__link__text,.x-ph__menu__dropdown_auth__info__link:visited .x-ph__menu__dropdown_auth__info__link__text,.x-ph__menu__dropdown_auth__info__link:hover .x-ph__menu__dropdown_auth__info__link__text,.x-ph__menu__dropdown_auth__info__link:focus .x-ph__menu__dropdown_auth__info__link__text,.x-ph__menu__dropdown_auth__info__link:active .x-ph__menu__dropdown_auth__info__link__text{color:#666;text-decoration:none;font:12px/18px Arial,sans-serif}.x-ph__menu__dropdown_auth__info__link .x-ph__menu__dropdown_auth__info__link__link,.x-ph__menu__dropdown_auth__info__link:link .x-ph__menu__dropdown_auth__info__link__link,.x-ph__menu__dropdown_auth__info__link:visited .x-ph__menu__dropdown_auth__info__link__link,.x-ph__menu__dropdown_auth__info__link:hover .x-ph__menu__dropdown_auth__info__link__link,.x-ph__menu__dropdown_auth__info__link:active .x-ph__menu__dropdown_auth__info__link__link,.x-ph__menu__dropdown_auth__info__link:focus .x-ph__menu__dropdown_auth__info__link__link{color:#0857a6;outline:none;font:12px/18px Arial,sans-serif;text-decoration:none}.x-ph__menu__dropdown_auth__info__link:hover .x-ph__menu__dropdown_auth__info__link__link,.x-ph__menu__dropdown_auth__info__link:active .x-ph__menu__dropdown_auth__info__link__link,.x-ph__menu__dropdown_auth__info__link:focus .x-ph__menu__dropdown_auth__info__link__link{color:#f26d00}.x-ph__overlay{display:none;position:fixed;_position:absolute;top:0;left:0;z-index:10000;width:100%;height:100%;background:#000;opacity:0.4;filter:alpha(opacity=40)}.x-ph__overlay_visible{display:block}.w-x-ph__popup{display:none;font:0/0 a;height:0}.w-x-ph__popup_visible{display:block;position:absolute;left:0;top:0;width:100%;height:100%;z-index:10001}.w-x-ph__popup__layout{position:absolute;top:0;left:0;z-index:10001;width:100%;height:100%;font:13px/16px Arial,Tahoma,sans-serif}.w-x-ph__popup__layout__valign{vertical-align:middle}.x-ph__popup{position:relative;margin:0 auto;width:320px;color:#222;background:#fff;border:1px solid #5f5f5f;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 4px 9px rgba(0,0,0,0.3);-moz-box-shadow:0 4px 9px rgba(0,0,0,0.3);box-shadow:0 4px 9px rgba(0,0,0,0.3);overflow:hidden}.w-x-ph__popup__title{padding:27px 27px 15px}.x-ph__popup__title{width:100%;color:#222;font:18px/22px Arial,Tahoma,sans-serif;-o-text-overflow:ellipsis;text-overflow:ellipsis;overflow:hidden}.x-ph__popup__content{padding:0 27px 20px}.x-ph__popup__footer{padding:17px 27px 18px;border-top:1px solid #dae4ef;-webkit-border-radius:0 0 4px 4px;-moz-border-radius:0 0 4px 4px;border-radius:0 0 4px 4px;background:#e4ebf1;background:-webkit-linear-gradient(top, #f2f9ff 0%, #eef3f8 1px, #e4ebf1 100%);background:-moz-linear-gradient(top, #f2f9ff 0%, #eef3f8 1px, #e4ebf1 100%);background:-ms-linear-gradient(top, #f2f9ff 0%, #eef3f8 1px, #e4ebf1 100%);background:-o-linear-gradient(top, #f2f9ff 0%, #eef3f8 1px, #e4ebf1 100%);background:linear-gradient(to bottom, #f2f9ff 0%, #eef3f8 1px, #e4ebf1 100%)}.x-ph__popup__footer__col{display:inline-block;width:50%}.x-ph__popup__footer__col_left{text-align:left}.x-ph__popup__footer__col_right{text-align:right}.x-ph__popup__footer__controls__item{margin-right:17px}.x-ph__popup__footer__controls__item_last{margin-right:0}.x-ph__popup__footer__controls__item_link,.x-ph__popup__footer__controls__item_link:link,.x-ph__popup__footer__controls__item_link:visited,.x-ph__popup__footer__controls__item_link:hover,.x-ph__popup__footer__controls__item_link:focus,.x-ph__popup__footer__controls__item_link:active{color:#333;font-size:13px;cursor:pointer;text-decoration:none}.x-ph__popup__footer__controls__item_link:hover,.x-ph__popup__footer__controls__item_link:focus,.x-ph__popup__footer__controls__item_link:active{color:#f37823}.x-ph__popup__footer__controls__item_link__text{text-decoration:underline}.x-ph__popup__close{position:absolute;top:0;right:0;width:32px;height:32px;cursor:pointer}.x-ph__popup__close__icon{margin-top:18px;margin-left:8px;width:8px;height:8px;text-indent:-999em;background:url(//img.imgsmail.ru/p/popup/close.v2.png) no-repeat 0 0;overflow:hidden}.x-ph__popup__close:hover .x-ph__popup__close__icon,.x-ph__popup__close:focus .x-ph__popup__close__icon,.x-ph__popup__close:active .x-ph__popup__close__icon{background-position:0 -9px}.w-x-ph__form__row{margin-top:20px}.w-x-ph__form__row_first{margin-top:0}.w-x-ph__form__row__col{display:inline-block;width:50%}.w-x-ph__form__row__col_left{text-align:left}.w-x-ph__form__row__col_right{text-align:right}.x-ph__form__link,.x-ph__form__link:link,.x-ph__form__link:visited,.x-ph__form__link:hover,.x-ph__form__link:active,.x-ph__form__link:focus{color:#0857a6;text-decoration:none;font:12px/16px Arial,sans-serif}.x-ph__form__link:hover,.x-ph__form__link:focus,.x-ph__form__link:active{color:#f26d00}.x-ph__form__select{position:relative;cursor:default;overflow:hidden;-webkit-user-select:none;-moz-user-select:none;user-select:none}.x-ph__form__select_disabled{opacity:.4;cursor:default}.x-ph__form__select__element{position:absolute;width:100%;height:26px;left:0;right:0;top:0;bottom:0;opacity:0;z-index:2;-webkit-appearance:menulist-button;filter:alpha(opacity=0)}.x-ph__form__select__box{width:100%;height:26px;padding:4px 20px 2px 9px;font:12px/16px Arial,Tahoma,Verdana,sans-serif;color:#333;border:1px solid #c6c6c6;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;background-image:-webkit-linear-gradient(top, #fff, #ededed);background-image:-moz-linear-gradient(top, #fff, #ededed);background-image:-o-linear-gradient(top, #fff, #ededed);background-image:-ms-linear-gradient(top, #fff, #ededed);background-image:linear-gradient(to bottom, #fff, #ededed);white-space:nowrap}.x-ph__form__select:hover .x-ph__form__select__box,.x-ph__form__select:focus .x-ph__form__select__box,.x-ph__form__select:active .x-ph__form__select__box,.x-ph__form__select_focus .x-ph__form__select__box,.x-ph__form__select_focus:hover .x-ph__form__select__box{background-image:-webkit-linear-gradient(top, #fff, #efefef);background-image:-moz-linear-gradient(top, #fff, #efefef);background-image:-o-linear-gradient(top, #fff, #efefef);background-image:-ms-linear-gradient(top, #fff, #efefef);background-image:linear-gradient(to bottom, #fff, #efefef);outline:none}.x-ph__form__select:hover .x-ph__form__select__box{border-color:#999}.x-ph__form__select:focus .x-ph__form__select__box,.x-ph__form__select:active .x-ph__form__select__box,.x-ph__form__select_focus .x-ph__form__select__box,.x-ph__form__select_focus:hover .x-ph__form__select__box{border-color:#85b8eb}.x-ph__form__select_error .x-ph__form__select__box{border-color:#e27566}.x-ph__form__select_disabled:hover .x-ph__form__select__box{border-color:#ccc}.x-ph__form__select_disabled:focus .x-ph__form__select__box,.x-ph__form__select_disabled:active .x-ph__form__select__box{-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}.x-ph__form__select__box__text{overflow:hidden;text-overflow:ellipsis}.x-ph__form__select__arrow{display:block;position:absolute;top:11px;right:8px;border-color:#000 transparent transparent;border-style:solid;border-width:4px 4px 0;z-index:1}.x-ph__form__input{display:block;cursor:text;position:relative;z-index:2}.w-x-ph__form__input{display:block;position:relative;height:26px;padding-right:14px}.x-ph__form__input__placeholder{display:none;position:absolute;top:5px;left:7px;color:#999;-webkit-user-select:none;-moz-user-select:none;user-select:none;white-space:nowrap;font:13px/16px Arial,Tahoma,Verdana,sans-serif}.x-ph__form__input__text{display:block;width:100%;height:16px;margin:0;padding:4px 6px;border:1px solid #c6c6c6;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;-webkit-box-shadow:inset 1px 1px 4px rgba(0,0,0,0.17);-moz-box-shadow:inset 1px 1px 4px rgba(0,0,0,0.17);box-shadow:inset 1px 1px 4px rgba(0,0,0,0.17);color:#333;font:13px/16px Arial,Tahoma,Verdana,sans-serif;background:#fff;outline:none;cursor:text}.x-ph__form__input__placeholder:hover + .x-ph__form__input__text,.x-ph__form__input__text:hover{border-color:#999}.x-ph__form__input__placeholder:hover + .x-ph__form__input__text:focus,.x-ph__form__input__text:focus{border-color:#85b8eb;-webkit-box-shadow:0 0 3px rgba(19,132,235,0.36),inset 1px 1px 4px rgba(0,0,0,0.17);-moz-box-shadow:0 0 3px rgba(19,132,235,0.36),inset 1px 1px 4px rgba(0,0,0,0.17);box-shadow:0 0 3px rgba(19,132,235,0.36),inset 1px 1px 4px rgba(0,0,0,0.17)}.x-ph__form__input_error .x-ph__form__input__text{border-color:#ce1900 !important;-webkit-box-shadow:inset 1px 1px 2px rgba(206,25,0,0.2),0 0 3px rgba(206,25,0,0.36) !important;-moz-box-shadow:inset 1px 1px 2px rgba(206,25,0,0.2),0 0 3px rgba(206,25,0,0.36) !important;box-shadow:inset 1px 1px 2px rgba(206,25,0,0.2),0 0 3px rgba(206,25,0,0.36) !important}.x-ph__form__input__text[disabled="disabled"],.x-ph__form__input__text_disabled{border-color:#c6c6c6 !important;-webkit-box-shadow:inset 1px 1px 2px rgba(0,0,0,0.2) !important;-moz-box-shadow:inset 1px 1px 2px rgba(0,0,0,0.2) !important;box-shadow:inset 1px 1px 2px rgba(0,0,0,0.2) !important;background-color:#f2f2f2 !important;cursor:default !important}.x-ph__form__input__text::-webkit-input-placeholder{color:#999}.x-ph__form__input__text:-moz-placeholder{color:#999}.x-ph__form__combo__input{overflow:hidden}.x-ph__form__combo__input .x-ph__form__input__text{-webkit-border-top-right-radius:0;-webkit-border-bottom-right-radius:0;-moz-border-radius-topright:0;-moz-border-radius-bottomright:0;border-top-right-radius:0;border-bottom-right-radius:0}.x-ph__form__combo__select{float:right}.x-ph__form__combo__select .x-ph__form__select__box{-webkit-border-top-left-radius:0;-webkit-border-bottom-left-radius:0;-moz-border-radius-topleft:0;-moz-border-radius-bottomleft:0;border-top-left-radius:0;border-bottom-left-radius:0}.x-ph__form__checkbox{width:12px;height:12px;position:relative;display:inline-block;margin-bottom:-2px}.x-ph__form__checkbox__input{position:absolute;z-index:2;top:0px;left:0;width:100%;height:100%;margin:0;opacity:0;filter:alpha(opacity=0);outline:0}.x-ph__form__checkbox__checkmark{position:absolute;z-index:1;width:10px;height:10px;border-width:1px;border-style:solid;border-color:#999;font:0/0 a;border-radius:2px;background-color:#fefefe}.x-ph__form__checkbox__input:focus + .x-ph__form__checkbox__checkmark,.x-ph__form__checkbox__input:active + .x-ph__form__checkbox__checkmark{border-color:#85b8eb}.x-ph__form__checkbox:hover .x-ph__form__checkbox__checkmark{border-color:#333}.x-ph__form__checkbox__checkmark:after{display:none;content:' ';position:absolute;z-index:1;top:-1px;left:0px;width:14px;height:10px;border:0;background:transparent url("//img.imgsmail.ru/p/h/d/0.13.3/blocks/authForm/icons.png") no-repeat 0 0;background-size:20px auto}.x-ph__form__checkbox__input:checked + .x-ph__form__checkbox__checkmark:after{display:block}.x-ph__form__checkbox_checked .x-ph__form__checkbox__checkmark:after{display:block}.x-ph__form__checkbox__input:disabled + .x-ph__form__checkbox__checkmark{opacity:0.5;border-color:#999}.x-ph__form__checkbox_disabled .x-ph__form__checkbox__checkmark{opacity:0.5;border-color:#999}.x-ph__form__label{font:12px/16px Arial,Tahoma,Verdana,sans-serif;color:#999;-webkit-user-select:none;-moz-user-select:none;user-select:none}.x-ph__form__checkbox{margin-right:6px}
</style><table class="w-x-ph" cellspacing="0"><tbody><tr><td class="w-x-ph__col w-x-ph__col_left"><a target="_self" rel="nofollow" class="x-ph__link x-ph__link_first" href="https://r.mail.ru/n107897405?sz=1">Mail.Ru</a><a rel="nofollow" class="x-ph__link" href="https://r.mail.ru/clo532246/e.mail.ru/cgi-bin/msglist?folder=0&lang=ru_RU"><span class="x-ph__link__text x-ph__link_selected">Почта</span><i class="x-ph__link__balloon" id="g_mail_events"></i></a><a target="_self" rel="nofollow" class="x-ph__link" href="https://r.mail.ru/n91554643?sz=1"><span class="x-ph__link__text">Мой Мир</span><i class="x-ph__link__balloon" id="g_my_events">0</i></a><a target="_self" rel="nofollow" class="x-ph__link" href="https://r.mail.ru/n101753529?sz=1"><span class="x-ph__link__text">Одноклассники</span><i class="x-ph__link__balloon" id="g_ok_events">0</i></a><a target="_self" rel="nofollow" class="x-ph__link" href="https://r.mail.ru/n107082206?sz=1"><span class="x-ph__link__text">Игры</span><i class="x-ph__link__balloon" id="g_games_events">0</i></a><a target="_self" rel="nofollow" class="x-ph__link" href="https://r.mail.ru/n77699981?sz=1">Знакомства</a><a target="_self" rel="nofollow" class="x-ph__link" href="https://r.mail.ru/n77699982?sz=1">Новости</a><a target="_self" rel="nofollow" class="x-ph__link" href="https://r.mail.ru/n77699983?sz=1">Поиск</a><a target="_self" id="PH_allProjects" rel="nofollow" class="x-ph__link" href="https://r.mail.ru/n101753530?sz=1" style="display: none;">Все проекты</a><span class="x-ph__menu" id="PH_projectsMenu" style="display: inline-block;"><i class="w-x-ph__menu__button__shadow w-x-ph__menu__button__shadow_left"></i><i class="w-x-ph__menu__button__shadow w-x-ph__menu__button__shadow_right"></i><a rel="nofollow" class="x-ph__menu__button" id="PH_projectsMenu_button" href="https://e.mail.ru/cgi-bin/login#"><i class="x-ph__menu__button__icon"></i><i class="x-ph__menu__button__text">Все проекты</i></a><div class="x-ph__menu__dropdown x-ph__projects" id="PH_projectsMenu_dropdown" style="display: none;"><div class="w-x-ph__menu__dropdown w-x-ph__projects"><div class="x-ph__projects__col"><a rel="nofollow" target="_self" href="https://r.mail.ru/n109367823?sz=1" class="js-link x-ph__projects__link">Авиабилеты</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699984?sz=1" class="js-link x-ph__projects__link">Авто</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699999?sz=1" class="js-link x-ph__projects__link">Афиша</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77700000?sz=1" class="js-link x-ph__projects__link">Видео</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699997?sz=1" class="js-link x-ph__projects__link">Гороскопы</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77700001?sz=1" class="js-link x-ph__projects__link">Деньги</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699993?sz=1" class="js-link x-ph__projects__link">Дети</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699994?sz=1" class="js-link x-ph__projects__link">Здоровье</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n104997169?sz=1" class="js-link x-ph__projects__link">Календарь</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77700003?sz=1" class="js-link x-ph__projects__link">Карты</a></div><div class="x-ph__projects__col"><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699992?sz=1" class="js-link x-ph__projects__link">Леди</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n109367822?sz=1" class="js-link x-ph__projects__link">Мото</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699988?sz=1" class="js-link x-ph__projects__link">Недвижимость</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699985?sz=1" class="js-link x-ph__projects__link">Ответы</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699996?sz=1" class="js-link x-ph__projects__link">Открытки</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699998?sz=1" class="js-link x-ph__projects__link">Погода</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699995?sz=1" class="js-link x-ph__projects__link">Путешествия</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699987?sz=1" class="js-link x-ph__projects__link">Работа</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n107082207?sz=1" class="js-link x-ph__projects__link">Рейтинг</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n102505032?sz=1" class="js-link x-ph__projects__link">Спорт</a></div><div class="x-ph__projects__col"><div class="x-ph__projects__col_separator"><a rel="nofollow" target="_self" href="https://r.mail.ru/n104997170?sz=1" class="js-link x-ph__projects__link">ТВ программа</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699986?sz=1" class="js-link x-ph__projects__link">Товары</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699991?sz=1" class="js-link x-ph__projects__link">Файлы</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n77699989?sz=1" class="js-link x-ph__projects__link">Hi-Tech</a></div><a rel="nofollow" target="_self" href="https://r.mail.ru/n94823514?sz=1" class="js-link x-ph__projects__link x-ph__projects__link_icon x-ph__projects__link_agent"><i class="x-ph__projects__link_icon__pic x-ph__projects__link_icon__pic_agent"></i>Mail.Ru Агент</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n94586633?sz=1" class="js-link x-ph__projects__link x-ph__projects__link_icon x-ph__projects__link_browser"><i class="x-ph__projects__link_icon__pic x-ph__projects__link_icon__pic_browser"></i>Браузер</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n96156682?sz=1" class="js-link x-ph__projects__link x-ph__projects__link_icon x-ph__projects__link_sputnik"><i class="x-ph__projects__link_icon__pic x-ph__projects__link_icon__pic_sputnik"></i>Спутник</a><a rel="nofollow" target="_self" href="https://r.mail.ru/n94823515?sz=1" class="js-link x-ph__projects__link x-ph__projects__link_icon x-ph__projects__link_icq"><i class="x-ph__projects__link_icon__pic x-ph__projects__link_icon__pic_icq"></i>ICQ</a></div><div class="w-x-ph__menu__dropdown__clearfix"></div></div></div></span></td><td class="w-x-ph__col w-x-ph__col_right"><div id="PH_authView" style="display: none;"><table class="x-ph__auth" cellspacing="0"><tbody><tr><td class="w-x-ph__auth__col w-x-ph__auth__col_left"><span id="PH_singleuser" class="x-ph__auth__user" style="display: none;"><span class="w-x-ph__auth__user_inner"><span id="PH_user-email_disabled" class="x-ph__auth__user__text"></span><span class="x-ph__auth__user__fade"></span></span></span><div id="PH_miltiuser" style="display: block;" class="w-x-ph__auth__dropdown"><div class="w-x-ph__auth__dropdown__inner"><div class="x-ph__menu x-ph__menu_auth" id="PH_authMenu"><i id="PH_bub_place" class="w-x-ph__menu__placeholder"></i><i class="w-x-ph__menu__button__shadow w-x-ph__menu__button__shadow_left"></i><i class="w-x-ph__menu__button__shadow w-x-ph__menu__button__shadow_right"></i><a rel="nofollow" class="x-ph__menu__button x-ph__menu__button_auth" id="PH_authMenu_button" href="https://e.mail.ru/cgi-bin/login#"><i class="x-ph__menu__button__icon x-ph__menu__button__icon_auth"></i><i class="x-ph__menu__button__text x-ph__menu__button__text_auth" id="PH_user-email">undefined</i></a><div class="x-ph__menu__dropdown x-ph__menu__dropdown_auth" id="PH_authMenu_dropdown" style="display: none;"><div class="w-x-ph__menu__dropdown w-x-ph__menu__dropdown_auth"><div class="x-ph__menu__dropdown_auth__loader"></div><div class="x-ph__menu__dropdown_auth__error">Произошла ошибка соединения</div><div class="x-ph__auth_list" id="PH_authMenu_list"></div><div class="x-ph__menu__dropdown_auth__login"><a id="PH_loginAnotherLink" class="x-ph__menu__dropdown_auth__login__link js-login" href="https://r.mail.ru/cls662696/e.mail.ru/cgi-bin/login?lang=ru_RU&from=multi" xname="clb1126061"><span class="x-ph__menu__dropdown_auth__login__link__button"><span class="x-ph__button x-ph__button_only-icon"><span class="x-ph__button__fake"><span class="x-ph__button__fake__icon x-ph__button__fake__icon_plus"></span></span></span></span>Добавить почтовый ящик</a></div><div class="x-ph__menu__dropdown_auth__info"><div class="x-ph__menu__dropdown_auth__info__arrow"></div><a rel="nofollow" href="http://r.mail.ru/clb1126001/help.mail.ru/mail-help/auth/multiauth" target="_blank" class="x-ph__menu__dropdown_auth__info__link"><span class="x-ph__menu__dropdown_auth__info__link__text">Вы можете одновременно работать<br>с несколькими почтовыми ящиками.</span><br><span class="x-ph__menu__dropdown_auth__info__link__link">Узнать больше&nbsp;→</span></a></div></div></div></div></div></div></td><td class="w-x-ph__auth__col w-x-ph__auth__col_right"><a id="PH_logoutLink" rel="nofollow" class="x-ph__link x-ph__link_last x-ph__auth__link" href="https://r.mail.ru/cls662697/e.mail.ru/cgi-bin/logout" title="выход">выход</a></td></tr></tbody></table></div><div id="PH_noAuthView" style=""><table class="x-ph__auth" cellspacing="0"><tbody><tr><td class="w-x-ph__auth__col w-x-ph__auth__col_right"><a rel="nofollow" class="x-ph__link x-ph__auth__link" href="https://r.mail.ru/clb532246/e.mail.ru/cgi-bin/signup?from=navi&lang=ru_RU">Регистрация</a><a id="PH_loginLink" rel="nofollow" class="x-ph__link x-ph__link_last x-ph__auth__link" href="https://r.mail.ru/cls662696/e.mail.ru/cgi-bin/login?lang=ru_RU">Вход</a></td></tr></tbody></table></div></td></tr></tbody></table></div><div id="PH_innerHTML" style="display:none;"></div><div id="PH_links" style="display:none;"><a id="PH_link_moto" href="https://r.mail.ru/n109367822?sz=1"></a><a id="PH_link_avia" href="https://r.mail.ru/n109367823?sz=1"></a><a id="PH_link_auto" href="https://r.mail.ru/n77699984?sz=1"></a><a id="PH_link_afisha" href="https://r.mail.ru/n77699999?sz=1"></a><a id="PH_link_video" href="https://r.mail.ru/n77700000?sz=1"></a><a id="PH_link_horo" href="https://r.mail.ru/n77699997?sz=1"></a><a id="PH_link_money" href="https://r.mail.ru/n77700001?sz=1"></a><a id="PH_link_deti" href="https://r.mail.ru/n77699993?sz=1"></a><a id="PH_link_health" href="https://r.mail.ru/n77699994?sz=1"></a><a id="PH_link_calendar" href="https://r.mail.ru/n104997169?sz=1"></a><a id="PH_link_maps" href="https://r.mail.ru/n77700003?sz=1"></a><a id="PH_link_lady" href="https://r.mail.ru/n77699992?sz=1"></a><a id="PH_link_realty" href="https://r.mail.ru/n77699988?sz=1"></a><a id="PH_link_answer" href="https://r.mail.ru/n77699985?sz=1"></a><a id="PH_link_cards" href="https://r.mail.ru/n77699996?sz=1"></a><a id="PH_link_pogoda" href="https://r.mail.ru/n77699998?sz=1"></a><a id="PH_link_travel" href="https://r.mail.ru/n77699995?sz=1"></a><a id="PH_link_work" href="https://r.mail.ru/n77699987?sz=1"></a><a id="PH_link_raiting" href="https://r.mail.ru/n107082207?sz=1"></a><a id="PH_link_sport" href="https://r.mail.ru/n102505032?sz=1"></a><a id="PH_link_tv" href="https://r.mail.ru/n104997170?sz=1"></a><a id="PH_link_torg" href="https://r.mail.ru/n77699986?sz=1"></a><a id="PH_link_files" href="https://r.mail.ru/n77699991?sz=1"></a><a id="PH_link_hitech" href="https://r.mail.ru/n77699989?sz=1"></a><a id="PH_link_agent" href="https://r.mail.ru/n94823514?sz=1"></a><a id="PH_link_browser" href="https://r.mail.ru/n94586633?sz=1"></a><a id="PH_link_sputnik" href="https://r.mail.ru/n96156682?sz=1"></a><a id="PH_link_icq" href="https://r.mail.ru/n94823515?sz=1"></a></div><!--[if IE 6]><script>
	var ____________ie6 = true;
</script><![endif]--><!--[if IE 7]><script>
	var ____________ie7 = true;
</script><![endif]--><script>
if (!window.__PHS){
	var __PHS = {};
}
if (!__PHS.lang){
	__PHS.lang = "ru_RU";
}

window['__PHS'].authFormEnabled = false;
window['__PHS'].portalAuthEnabled = true;
window['__PHS'].disableGamesCounter = false;
window['__PHS'].target = '_self';
window['__PHS'].loginLink = 'https://r.mail.ru/cls662696/e.mail.ru/cgi-bin/login?lang=ru_RU';
window['__PHS'].loginLinkXName = 'clb1126061';
__PHS.externalJS = '//img.imgsmail.ru/p/h/d/0.13.3/external.min.js';
(function(){function E(a){for(var a=a||{},c=1,b=arguments.length;c<b;c++){var d=arguments[c],g;for(g in d)d.hasOwnProperty(g)&&(a[g]=d[g])}return a}function Q(a,c){for(var b in c)Object.prototype.hasOwnProperty.call(c,b)&&!Object.prototype.hasOwnProperty.call(a,b)&&(a[b]=c[b]);return a}function F(a){return document.getElementById(a)}function R(a,c){var b=[],d=0;if("string"===typeof a)b.push([a,c]),d+=c;else for(var g in a)a.hasOwnProperty(g)&&(b.push([g,a[g]]),d+=a[g]);g=0;for(var f=b.length;g<f;g++)b[g]=
b[g].join(":");(new Image).src="//headline.radar.imgsmail.ru/update?p=headline&t="+G+"&v="+d+"&i="+b.join(",")+"&rnd="+Math.random()+(document.referrer?"&r="+escape(document.referrer):"")}function S(a,c){return a.bind.apply(a,x.call(arguments,1))}function T(a,c,b){function d(){a();f||(g=y(d,c))}var g,f;b&&a();g=y(d,c);return function(){f=!0;H(g)}}function U(a){a.stopPropagation?a.stopPropagation():a.cancelBubble=!0;a.preventDefault?a.preventDefault():a.returnValue=!1}function V(a){a.preventDefault?
a.preventDefault():a.returnValue=!1}function I(a,c,b,d){if(c)if(c.addEventListener)c[a?"addEventListener":"removeEventListener"](b,d,!1);else c[a?"attachEvent":"detachEvent"]("on"+b,d)}function l(a){return a&&1==a.nodeType}function J(a){(function(){for(var a,b=arguments,d=b.length;d--;){a=b[d].split(",");for(var g=a.length;g--;){var f=a[g],j=void 0,h=parseInt(1E9*Math.random()),i=void 0;if(j=f.match(/^(?:cl([bn])|([adgin]))(\d+)(?:sz(\d+))?/))j[1]?i="s"+j[1]:"n"==j[2]?i="nc":("i"==j[2]&&(h=null),
i=j[2]),i+=j[3]+".gif?",j[4]&&(i+="sz="+j[4]),h&&(i+="&rnd="+h),(new Image).src="//rs.mail.ru/"+i}}})(a)}function W(a){I(1,a,"mousedown",function(a){a||(a=window.event);for(a=a.target||a.srcElement;a;)a.getAttribute&&a.getAttribute("xname")&&J(a.getAttribute("xname")),a=a.parentNode})}function X(a,c){var b;b=l(c)?function(a,c){return a==c}:function(a,c){return v(a,c)};for(var d=a.parentNode;d;){if(b(d,c))return d;d=d.parentNode}return!1}function Y(a){for(;a.firstChild;)a.removeChild(a.firstChild)}
function v(a,c){return l(a)&&w?a.classList.contains(c):!!~(" "+a.className+" ").indexOf(" "+c+" ")}function z(a,c){l(a)&&(w?a.classList.add(c):!v(a,c)&&(a.className+=" "+c))}function A(a,c){l(a)&&(w?a.classList.remove(c):a.className=a.className.replace(RegExp("(^|\\s)"+c+"(\\s|$)","g"),"$1"))}function Z(a,c){if(l(a))return w?a.classList.toggle(c):v(a,c)?(A(a,c),!1):(z(a,c),!0)}function $(a){a=a.propertyName;if(!("checked"!=a&&"disabled"!=a)){var c=this.parentNode,b=c.getAttribute("data-class")+"_"+
a;this[a]?z(c,b):A(c,b)}}function B(a,c,b){if(void 0!==c){var d,b=b||{};null===c&&(c="",b.expires=-1);c+="";document.cookie=a+"="+c+(b.expires&&(d="number"==typeof b.expires&&(d=new Date),d.setTime(d.getTime()+864E5*b.expires),d||"toUTCString"in b.expires&&b.expires)&&"; expires="+d.toUTCString()||"")+(b.path?"; path="+b.path:"")+(b.domain?"; domain="+b.domain:"")+(b.secure?"; secure":"");return c}if(""!==(document.cookie||""))return c=(document.cookie.match(RegExp("(?:^| )"+a+"\\=(\\S*)(?:; |$)"))||
[])[1],void 0===c?void 0:c}function K(){this._invocations=[];this._context=this._fn=null}function r(){}function C(a){this._node=b.byId(a);this._container=this._node.parentNode}function aa(a){this._counters=a;for(var b in this._counters)this._counters.hasOwnProperty(b)&&(this._counters[b]=new C(this._counters[b]));this.update=function(a,b){if("string"==typeof a){var c={};c[a]=b;this.update(c)}else for(c in a)a.hasOwnProperty(c)&&this._counters[c].update(a[c])}}function k(a){k.__all.push(this);this._opts=
a;this._baseClass=a.baseClass;this._rootNode=a.rootNode;this._dropdown=a.dropdown;this._button=a.button;this._openCounter=a.openCounter||null;this._hideTimeout=null;this._openClass=this._baseClass+"_open";this._rightClass=this._openClass+"_right";this._leftClass=this._openClass+"_left";this._inited=!!this._dropdown;this._triggerHideOnInit=this._triggerShowOnInit=!1;b.event(1,this._button,"click",b.bind(this.show,this))}function m(a,b){b=b||{};this._url=a;this._encoding=b.encoding;this._JSONPCallbackParam=
b.JSONPCallbackParam||"callback";this._processing=!1;this._handler=this._getScript;this._cancelHandler=this._cancelScript}function ba(a){function c(){d!==(d=location.hash.replace(/^#/,"")||null)&&e()}this._userEmail=a.userEmail;this.____user=this._userEmail.innerHTML||void 0;this._user=null;this._updateByTimeout=a.updateByTimeout;this.updateLastRequest=0;this._noAuthView=a.noAuthView;this._authView=a.authView;this.updateAccountInfo();var e=b.bind(this.updateAccountInfo,this);if(!this._updateByTimeout)if("onhashchange"in
window)b.event(1,window,"hashchange",e);else{var d=location.hash.replace(/^#/,"")||null;b.setIntervalByTimeout(c,50)}}function L(a){function c(){d--;d||b.counters.update(e)}var e={};a.data=a.data||{};a.data.ok_cnt=a.data.ok_cnt||0;e.ok=a.data.ok_cnt;a.data.time&&(D=a.data.time);var d=2;f.emit("OKUpdate",a,c);M.emit("update",a,c)}if(!window.__PH){var f=window.__PH={},b={};f.settings=window.__PHS;f.settings.swaDomain=f.settings.swaTest?"sf0":"swa";f._=b;try{top.location.toString()}catch(la){top.location=
location}var G="mail",y=window.setTimeout,H=window.clearTimeout,n=F("portal-headline"),u=navigator.userAgent,p=[];-1!=u.indexOf("Firefox")&&p.push("x-ph-ff");-1!=u.indexOf("Mac OS")?p.push("x-ph-mac"):-1!=u.indexOf("Windows")&&p.push("x-ph-win");n.className+=" "+p.join(" ");var x=Array.prototype.slice;void 0===Function.prototype.bind&&(Function.prototype.bind=function(a){var b=x.call(arguments,1),e=this;return function(){return e.apply(a,b.concat(x.call(arguments,0)))}});var w="classList"in
document.documentElement,u=Array.prototype.indexOf?function(a,b){return Array.prototype.indexOf.call(a,b)}:function(a,b){for(var e=0,d=a.length;e<d;e++)if(a[e]==b)return e;return-1},p=window.devicePixelRatio,ca=void 0!=document.createElement("div").style.backgroundSize&&1<p,da=b,ea=G,fa=/\s*(\S+)\s*/g,ga=!/\[native\s+code\]/i.test(document.getElementsByClass+""),ha=/\./g;E(da,{extend:E,append:Q,dpr:p,retina:ca,project:ea,setTimeout:function(a,b){return y(a,b)},clearTimeout:function(a){return H(a)},
rootNode:n,byId:F,byClassName:function(a,b,e){var d,g;"string"===typeof a&&(e=b,b=a,a=document);e=e||"";if(!a||null==b)return[];b=b.replace(/\s+/ig,".");"."!=b[0]&&(b="."+b);if("querySelectorAll"in a){e=a.querySelectorAll(e+b);if(ga){d=-1;for(a=[];g=e[++d];)a.push(g);return a}return e}e=a.getElementsByTagName(e||"*");b&&(b=b.replace(ha," "),b=RegExp(b.replace(fa,"(?=(^|.*\\s)$1(\\s|$))")));d=-1;for(a=[];g=e[++d];)1===g.nodeType&&(!b||b.test(g.className))&&a.push(g);return a},radar:R,bind:S,setIntervalByTimeout:T,
eventCancel:U,eventPreventDefault:V,event:I,isNode:l,emptyNode:Y,count:J,countEl:W,hasParent:X,hasClass:v,removeClass:A,addClass:z,toggleClass:Z,ArrayIndexOf:u,checkboxLeg:$});var ia={splash:"s",news:"n",afisha:"a",auto:"av",lady:"l",horo:"h",pogoda:"p",mail:"m",promail:"pm",blogs:"b",foto:"f",video:"v",my:"my",agent:"ag",torg:"t",love:"lv",game:"g","hi-tech":"ht",maps:"map"},h={_S_cookie_set_get_remove:function(a,b){var e,d,g=RegExp("(^|\\|)("+a+"=)(.*?)(\\||$)");if(a)return e=B("s")||"",d=(e.match(g)||
[])[3],void 0!==b?B("s",d||null===b?e.replace(g,null===b?function(a,b,c,d,e,g,f){return 0===f.indexOf(a)?"":e}:"$1$2"+b+"$4"):(e?e+"|":"")+a+"="+b,{domain:".mail.ru",expires:365,path:"/"}):b=d,b},_throw_noValue_Error:function(){throw Error("need value");},__project:null,__getProject:function(){if(!h.__project)throw Error("project must be set");return h.__project},setProject:function(a){a=ia[a];if(!a)throw Error("project name is not valid");h.__project=a},getGlobal:function(a){return h._S_cookie_set_get_remove(a)},
setGlobal:function(a,b){void 0===b&&h._throw_noValue_Error();h._S_cookie_set_get_remove(a,b);return h.getGlobal(a)},removeGlobal:function(a){var b=h.getGlobal(a);h._S_cookie_set_get_remove(a,null);return b},getLocal:function(a){return h._S_cookie_set_get_remove(h.__getProject()+"_"+a)},setLocal:function(a,b){void 0===b&&h._throw_noValue_Error();h._S_cookie_set_get_remove(h.__getProject()+"_"+a,b);return h.getLocal(a)},removeLocal:function(a){var b=h.getLocal(a);h._S_cookie_set_get_remove(h.__getProject()+
"_"+a,null);return b}};b.SCookie=h;K.prototype={getQuery:function(){var a=b.bind(this.invoke,this);a.replace=b.bind(this.replace,this);return a},invoke:function(){this._fn?this._fn.apply(this._context,arguments):this._invocations.push(arguments)},replace:function(a,b){if(!this._fn){for(var b=b||window,e=0,d=this._invocations.length;e<d;e++)a.apply(b,this._invocations[e]);delete this._invocations;this._fn=a;this._context=b}}};b.extend(b,{DeferredQuery:K});r.prototype={emit:function(a,b,e){function d(){--f||
e&&e()}void 0==b&&(b={});var g=this.listeners(a);if(g)for(var g=g.slice(),a=new r.Event(a,b),f=g.length,b=0,h=f;b<h;b++){var t=g[b];if("function"===typeof t)try{t.call(this,a,d)}catch(i){d()}}else e&&e()},listeners:function(a){return this._events&&this._events[a]&&this._events[a].length&&this._events[a]},addListener:function(a,b){if("function"!==typeof b)throw Error("invalid argument");this._events||(this._events={});this._events[a]||(this._events[a]=[]);this._events[a].push(b);this.emit("newlistener",
{type:a});return this},once:function(a,b){function e(){this.removeListener(a,e);b.apply(this,arguments)}if("function"!==typeof b)throw Error("invalid argument");this.on(a,e);return this},removeListener:function(a,c){if("function"!==typeof c)throw Error("invalid argument");if(!this._events[a])return this;var e=this._events[a],d=b.ArrayIndexOf(e,c);if(0>d)return this;e.splice(d,1);0===e.length&&delete this._events[a];return this}};r.prototype.on=r.prototype.addListener;r.Event=function(a,b){this.type=
a;this.data=b};b.EventEmitter=r;(function(){function a(){var a=c();a.id++;id=a.id;4095<id&&(id=0);e(id);a=c();return a.id}function c(){var a=h.getGlobal(p),b;a||(e(0,0,{id:0,current:0}),a=h.getGlobal(p));b=parseInt(a.substr(0,3),16);a=parseInt(a.substr(3,6),16);return{id:b,current:a}}function e(a,b,d){(d=d||c())||(d={});void 0!==a&&(d.id=a);d.id=void 0!=d.id&&d.id.toString(16);switch(d.id.length){case 1:d.id="00"+d.id;break;case 2:d.id="0"+d.id}void 0!==b&&(d.current=b);d.current=void 0!=d.current&&
d.current.toString(16);switch(d.current.length){case 1:d.current="00"+d.current;break;case 2:d.current="0"+d.current}h.setGlobal(p,d.id+d.current)}function d(a,d){function h(a){j!==a&&(j=a,f.emit("visibilitychange",{hidden:a,visible:!a}))}var i;d?(i=d.hidden,h(i)):(i="focus"==a.type||"focusin"==a.type?!1:"blur"==a.type||"focusout"==a.type?!0:!!document[g],"focusout"==a.type?q=b.setTimeout(function(){q=void 0;h(i)},0):"focusin"==a.type?(void 0!==q?b.clearTimeout(q):h(i),q=void 0):m||n?i?q=b.setTimeout(function(){q=
void 0;c().current===l||h(i)},200):(c().current!==l&&(e(void 0,l),h(i)),b.clearTimeout(q),q=void 0):h(i))}var g,q,j=!1,t,i={hidden:"visibilitychange",mozHidden:"mozvisibilitychange",webkitHidden:"webkitvisibilitychange",msHidden:"msvisibilitychange",oHidden:"ovisibilitychange"};for(g in i)if(i.hasOwnProperty(g)&&g in document){t=i[g];break}var i=navigator.userAgent,k=-1<i.indexOf("iPad")||-1<i.indexOf("iPhone")||-1<i.indexOf("iPod"),m=!t&&-1<i.indexOf("Opera"),n=0<i.indexOf("Safari")&&-1===i.indexOf("Chrome"),
p="t";if(m||k||n){var l=a();e(void 0,l)}if(t)b.event(1,document,t,d);else if(window.eval&&eval("/*@cc_on!@*/false"))b.event(1,document,"focusin",d),b.event(1,document,"focusout",d);else if(k){var r=new Date,s=function(){b.clearTimeout(50);b.setTimeout(s,50);var a=new Date;100<a.getTime()-r.getTime()&&c().current!==l&&(e(void 0,l),j=!1,d({},{hidden:!0}),j=!0,d({},{hidden:!1}));r=a};b.setTimeout(s,50)}else b.event(1,window,"focus",d),b.event(1,window,"blur",d)})();C.prototype={visibleClass:"x-ph__link_ext",
show:function(){b.addClass(this._container,this.visibleClass)},hide:function(){b.removeClass(this._container,this.visibleClass)},value:function(a){void 0!==a&&(this._node.innerHTML=this.prepare(a));return parseInt(this._node.innerHTML,10)||0},prepare:function(a){a=parseInt(a);return 0<a?a:0},update:function(a){this[this.value(a)?"show":"hide"]()}};b.Couners=aa;b.Couner=C;k.__all=[];k.resetShowOnInit=function(a){for(var b=0,e=k.__all.length;b<e;b++){var d=k.__all[b];if(!a||d!==a)d._triggerShowOnInit=
!1,d._triggerHideOnInit=!1}};k.hideAll=function(){for(var a=0,b=k.__all.length;a<b;a++){var e=k.__all[a];e._triggerShowOnInit=!1;e._triggerHideOnInit=!1;e.hide()}};b.extend(k.prototype,b.EventEmitter.prototype,{init:function(a){!this._dropdown&&a&&(this._dropdown=a,this._rootNode.appendChild(a),this._inited=!0,this._triggerShowOnInit&&this.show(),this._triggerHideOnInit&&this.hide(),this._triggerHideOnInit=this._triggerShowOnInit=!1)},_mouseIn:function(){b.clearTimeout(this._hideTimeout)},_mouseOut:function(){b.clearTimeout(this._hideTimeout);
this._hideTimeout=b.setTimeout(b.bind(this.hide,this),4E3)},isVisible:function(){return b.hasClass(this._rootNode,this._openClass)},show:function(a){b.clearTimeout(this._hideTimeout);a&&b.eventPreventDefault(a);this._inited?this.isVisible()||this.emit("show",{},b.bind(function(){this.__toggle(!0)},this)):(this._triggerShowOnInit=!0,k.resetShowOnInit(this))},hide:function(){this._inited?this.isVisible()&&this.emit("hide",{},b.bind(function(){this.__toggle(!1)},this)):this._triggerShowOnInit?this._triggerShowOnInit=
!1:this._triggerHideOnInit=!0},_hideOther:function(){for(var a=0,b=k.__all.length;a<b;a++){var e=k.__all[a];e!=this&&e.isVisible()&&e.hide();e._triggerShowOnInit=!1}},_click:function(a){var c=a.target||a.srcElement;c==this._dropdown||b.hasParent(c,this._dropdown)?this.emit("click",{clickEvent:a},b.bind(this.hide,this)):"click"==a.type&&(b.hasParent(c,this._rootNode)&&b.eventPreventDefault(a),this.hide())},__toggle:function(a){b.clearTimeout(this.__eventsTimeout);this.__eventsTimeout=b.setTimeout(b.bind(function(){b.event(a,
document,"click",this.__click||(this.__click=b.bind(this._click,this)));b.event(a,this._rootNode,"mouseout",this.__mouseOut||(this.__mouseOut=b.bind(this._mouseOut,this)));b.event(a,this._rootNode,"mouseover",this.__mouseIn||(this.__mouseIn=b.bind(this._mouseIn,this)))},this),10);if(a){this._openCounter&&b.count(this._openCounter);"block"!==this._dropdown.style.display&&(this._dropdown.style.display="block");var c=this._dropdown.clientWidth+(this._rootNode.offsetParent==b.rootNode?this._rootNode.offsetLeft:
1E4);documentWidth=document.body.offsetWidth;var e=b.bind(function(){b.addClass(this._rootNode,this._openClass);b.addClass(this._rootNode,c>documentWidth?this._rightClass:this._leftClass);var a=b.bind(function(){window.webkitURL&&(this._dropdown.style.width=this._dropdown.clientWidth+1+"px",this._dropdown.style.width=null)},this);a();b.setTimeout(a,0)},this);b.setTimeout(e,0)}else b.removeClass(this._rootNode,this._openClass),b.removeClass(this._rootNode,this._leftClass),b.removeClass(this._rootNode,
this._rightClass)}});b.Menu=k;var N=document.getElementsByTagName("head")[0];m.prototype={get:function(a){a=b.extend({encoding:this._encoding,params:{},complete:function(){}},a);return this._handler(this._url,a)},_getUrl:function(a,b){var e=!!~a.indexOf("?");b.rnd=(new Date).getTime();for(var d in b)if(b.hasOwnProperty(d)){var g=b[d];"function"==typeof g&&(g=g(b));void 0!==g&&(a+=(e?"&":"?")+d+"="+encodeURIComponent(g),e=!0)}return a},_getScript:function(a,c){function e(){N.appendChild(g);b.setTimeout(function(){N.removeChild(g)},
6E4)}this.cancel();var d=this._cbName="__PHJSONPCallback_"+m.getUuid(),g=document.createElement("script"),f,h=c.timeout;c.params[this._JSONPCallbackParam]=d;a=this._getUrl(a,c.params);window[d]=b.bind(function(a){b.clearTimeout(f);window[d]=m.__PHEmptyCallback;this._cbName=null;this._processing=!1;"cancel"!=a.status&&c.complete(a)},this);g.defer="defer";g.async="async";g.type="text/javascript";c.encoding&&(g.charset=c.encoding);g.src=a;!("opera"in window)||"complete"===document.readyState?(this._processing=
!0,e()):window.addEventListener("DOMContentLoaded",b.bind(function(){this._processing=!0;e()},this),!1);h&&(f=b.setTimeout(b.bind(function(){window[this._cbName]({status:"error",errorType:"timeout"})},this),h))},isProcessing:function(){return this._processing},cancel:function(){this._cancelHandler()},_cancelScript:function(){this._cbName&&window[this._cbName]&&window[this._cbName]({status:"cancel"})}};m.__uuid=0;m.getUuid=function(){return m.__uuid++};m.__PHEmptyCallback=function(){};b.extend(b,{Transport:m});
b.AccountManager=ba;b.extend(b.AccountManager.prototype,b.EventEmitter.prototype,{activeUser:function(){return this._user},updateLogin:function(a){this._user=a;(this._userEmail.innerHTML=a)?(this._noAuthView.style.display="none",this._authView.style.display=""):(this._authView.style.display="none",this._noAuthView.style.display="")}});b.extend(b.AccountManager.prototype,{updateCounters:function(a){var c={},a=a||{};"mail"!=b.project&&(c.mail=a.mail_cnt||0);c.my=a.my_cnt||0;f.settings.disableGamesCounter||
(c.games=a.games_cnt||0);b.counters.update(c)},_PHUpdater:function(a,c,e){var d=a.status,g=a.data,h=g.action,j=g.email,k=b.bind(function(a){"ok"!=b.project&&f.settings.portalAuthEnabled&&this.updateLogin(j);this.updateCounters(g);"function"===typeof a&&a()},this),c=c||function(){};"error"==d?(b.radar("updateError",1),this.emit("updateError"),"function"===typeof c&&c()):f.settings.portalAuthEnabled?"switch"==h?"ok"==d&&j!=this.activeUser()?(this.emit("authChange"),f.listeners("authChange")?(b.radar("authChange",
1),!j||void 0!==g.mail_cnt?f.emit("authChange",a.data,function(){k(c)}):this.extendAccountInfo(function(b){g=a.data=b;f.emit("authChange",g,function(){k(c)})},j,a.data)):e?(b.radar("authChangeReloadDis",1),!j||void 0!==g.mail_cnt?k(c):this.extendAccountInfo(function(b){g=a.data=b;k(c)},j,a.data)):(b.radar("authChangeReload",1),b.setTimeout(function(){location.reload()},10))):"noauth"==d&&j!=this.activeUser()?("home"===b.project&&(d=[],d.push("headlineAuthLost"),d.push("mpop="+(f.cookie("Mpop")?"1":
"0")),d.push("activeEmail="+this.activeUser()),d.push("newEmail="+j),(new Image).src="//gstat.imgsmail.ru/gstat?ua=1&logme="+encodeURIComponent(d.join(";"))+"&rnd="+(new Date).getTime()+Math.random()),b.radar("authLost",1),this.emit("authLost"),f.emit("authLost",a.data,b.bind(function(){a.status="ok";a.data.action="switch";this._PHUpdater(a,c,e)},this))):(b.radar("authRestore",1),"function"===typeof c&&c()):"list"==h&&("____user"in this&&(this.____user!==j&&"mail"===b.project&&((new Image).src="//gstat.imgsmail.ru/gstat?logme="+
encodeURIComponent("headlineFail;headlineEmail="+j+";projectEmail="+this.____user)+"&rnd="+(new Date).getTime()+Math.random()),delete this.____user),null===this.activeUser()?(this.emit("update"),f.emit("update",a.data,function(){k(c)})):j==this.activeUser()?((h=f.cookie("Mpop"))&&("ok"==d&&this.activeUser()&&-1==h.indexOf(this.activeUser()))&&b.count("d1409289"),this.emit("update"),f.emit("update",a.data,function(){k(c)})):(a.data.action="switch",this._PHUpdater(a,c,!0))):(this.emit("update"),f.emit("update",
a.data,function(){k(c)}))}});b.extend(b.AccountManager.prototype,{_authTransport:new b.Transport("//"+f.settings.swaDomain+".mail.ru/cgi-bin/auth?mac=1",{JSONPCallbackParam:"JSONP_call"}),switchAccount:function(a,c,e){var d={};if(a){d.Login=a;var g=this.updateResume(c||function(){});this._authTransport.get({params:d,complete:b.bind(function(a){this._PHUpdater(a,g,e)},this)})}},_logoutTransport:new b.Transport("//"+f.settings.swaDomain+".mail.ru/cgi-bin/logout?mac=1",{JSONPCallbackParam:"JSONP_call"}),
logoutAccount:function(a,b){var e={};if(a&&a!==this.activeUser())e.Login=a;else throw Error("Can not logout. Not active account expected.");this._logoutTransport.get({params:e,complete:b})}});b.extend(b.AccountManager.prototype,{_accountInfoTransport:new b.Transport("//"+f.settings.swaDomain+".mail.ru/cgi-bin/counters?mac=1&gamescnt=1",{JSONPCallbackParam:"JSONP_call"}),extendAccountInfo:function(a,c,e){var d={};if(c=c||this.activeUser())d.Login=c;this._accountInfoTransport.get({params:d,complete:function(c){e=
b.extend(c.data,e);"function"===typeof a&&a(e)}})},loadAccountInfo:function(a,b){var e={};if(b=!f.settings.multiAuthEnabled?void 0:b||this.activeUser())e.Login=b;this._accountInfoTransport.get({params:e,complete:function(b){"function"===typeof a&&a(b)}})},updateAccountInfo:function(a,c){var e=+new Date;if(this._updateByTimeout||!this._updateByTimeout&&this.updateLastRequest<e-this.updateRequestTimeout||c)!this._updateByTimeout&&this.updateLastRequest&&((new Image).src="//rs.mail.ru/d"+"532246".replace("%",
"")+".gif?"+e),this.updateLastRequest=e,e=this.updateResume(b.bind(function(b){this._PHUpdater(b,a)},this)),this.loadAccountInfo(e)},updateRequestTimeout:6E4,updateReset:function(a){this._updateByTimeout&&(a?(a=this.updateRequestTimeout-(new Date).getTime()+this.updateLastRequest,0>a&&(a=0)):a=this.updateRequestTimeout,b.clearTimeout(this._listAccountTimeout),this._listAccountTimeout=b.setTimeout(b.bind(this.updateAccountInfo,this),a))},updateResume:function(a){if(this._updateByTimeout){var c=this._accountInfoTransport.isProcessing();
this._accountInfoTransport.cancel();this.updateReset();var e=!1;this.once("authChange",function(a,b){e=!0;"function"===typeof b&&b()})}return b.bind(function(b){this._updateByTimeout&&(c?e?this.updateReset():this.updateAccountInfo():e?this.updateReset():this.updateReset(!0));"function"==typeof a&&a(b)},this)}});b.SCookie.removeGlobal("s_mu");b.SCookie[(b.retina?"set":"remove")+"Global"]("rt",1);b.SCookie[(b.retina?"set":"remove")+"Global"]("dpr",b.dpr);f.settings.multiAuthEnabled=f.settings.portalAuthEnabled;
n=!1;if(~navigator.userAgent.indexOf("Opera")&&(!~navigator.userAgent.indexOf("Opera/9.8")||~navigator.userAgent.indexOf("Version/10"))||window.____________ie7||window.____________ie6)f.settings.multiAuthEnabled=!1,f.settings.authFormEnabled=!1,n=!0;b.byId("PH_singleuser").style.display=f.settings.multiAuthEnabled?"none":"block";b.byId("PH_miltiuser").style.display=f.settings.multiAuthEnabled?"block":"none";f.settings.projectsMenuEnabled=!1;n||(f.settings.projectsMenuEnabled=!0,b.byId("PH_projectsMenu").style.display=
"inline-block",b.byId("PH_allProjects").style.display="none");b.countEl(b.byId("PH_loginLink")||b.byId("PH_authLink"));b.countEl(b.byId("PH_logoutLink"));b.extend(f,b.EventEmitter.prototype,{cookie:B});f.cookie.s={};b.extend(f.cookie.s,{getLocal:h.getLocal,setLocal:h.setLocal,removeLocal:h.removeLocal,getGlobal:h.getGlobal,setGlobal:h.setGlobal,removeGlobal:h.removeGlobal,setProject:h.setProject});b.counters=new b.Couners({mail:"g_mail_events",my:"g_my_events",ok:"g_ok_events",games:"g_games_events"});
b.accountManager=new b.AccountManager({noAuthView:b.byId("PH_noAuthView"),authView:b.byId("PH_authView"),userEmail:b.byId(f.settings.multiAuthEnabled?"PH_user-email":"PH_user-email_disabled"),updateByTimeout:"mail"!==b.project&&"my"!==b.project});f.isMultiAuth=function(){return f.settings.multiAuthEnabled};f.settings.portalAuthEnabled&&(f.activeUser=function(){var a=b.accountManager.activeUser();return null===a?b.accountManager.____user:a});f.settings.multiAuthEnabled&&(f.loadAccountsList=(new b.DeferredQuery).getQuery(),
f.switchAccount=function(a){b.accountManager.switchAccount(a)},f.on("visibilitychange",function(a){!a.data.hidden&&null!==b.accountManager.activeUser()&&(b.accountManager.activeUser()?b.accountManager.switchAccount(b.accountManager.activeUser(),null,!0):b.accountManager.updateAccountInfo(function(){},!0))}),f.logoutAccount=function(a,c){b.accountManager.logoutAccount(a,function(){b.accountManager.loadAccountsList(c)})});"mail"==b.project&&window.jQuery&&window.jQuery(window).bind("updatemessagescount",
function(a,c){b.counters.update({mail:c})});n=new b.Menu({baseClass:"x-ph__menu",rootNode:b.byId("PH_authMenu"),button:b.byId("PH_authMenu_button"),openCounter:"home"==b.project?"d1126003":"mail"==b.project?"d1126002":"my"==b.project?"d1270901":"d1126005"});b.authMenu=n;b.PHAuthMenu=new b.EventEmitter;f.settings.multiAuthEnabled&&(f.authMenu={on:b.bind(b.PHAuthMenu.on,b.PHAuthMenu),addListener:b.bind(b.PHAuthMenu.addListener,b.PHAuthMenu),removeListener:b.bind(b.PHAuthMenu.removeListener,b.PHAuthMenu),
once:b.bind(b.PHAuthMenu.once,b.PHAuthMenu),show:b.bind(b.authMenu.show,b.authMenu),hide:b.bind(b.authMenu.hide,b.authMenu)});f.authForm={show:(new b.DeferredQuery).getQuery(),hide:(new b.DeferredQuery).getQuery()};b.authLinkClickHandler=function(a){f.listeners("loginRequest")?(b.eventPreventDefault(a),f.emit("loginRequest")):f.settings.authFormEnabled&&(b.eventPreventDefault(a),f.authForm.show())};b.event(1,b.byId("PH_authLink"),"click",b.authLinkClickHandler);b.projectsMenu=new b.Menu({baseClass:"x-ph__menu",
rootNode:b.byId("PH_projectsMenu"),button:b.byId("PH_projectsMenu_button"),openCounter:"d521725"});if(f.settings.projectsMenuEnabled||f.settings.multiAuthEnabled||f.settings.authFormEnabled){var s=document.createElement("script"),O=document.getElementsByTagName("head")[0];s.defer="defer";s.async="async";s.type="text/javascript";s.src=f.settings.externalJS;!("opera"in window)||"complete"===document.readyState?O.appendChild(s):window.addEventListener("DOMContentLoaded",function(){O.appendChild(s)},
!1)}var M=f.OK=new b.EventEmitter,D,ja=function(a){var b=['{"cmd":"getCounters"'];a.jsonPrefix&&(b.push(',"jsonPrefix":"'+a.jsonPrefix+'"'),delete a.jsonPrefix);D&&(b.push(',"time":"'),b.push(D.replace(/"/g,'\\"')),b.push('"'));b.push("}");return b.join("")},ka=function(a){var b=['{"cmd":"logout"'];a.jsonPrefix&&(b.push(',"jsonPrefix":"'+a.jsonPrefix+'"'),delete a.jsonPrefix);b.push("}");return b.join("")},P=new m("//www.odnoklassniki.ru/mapi",{JSONPCallbackParam:"jsonPrefix"});M.logout=function(){P.get({params:{query:ka},
complete:function(a){a.status="no auth";L(a)}})};"ok"!=b.project&&b.setIntervalByTimeout(function(){P.get({params:{query:ja},complete:L})},3E5,!0)}})();
</script><!--/noindex-->




	<div class="portal-menu ">
	<div class="portal-menu__width">
		
	<div class="portal-menu__logo" style="padding-top: 5px;">
		<a class="portal-menu__logo__link" href="http://mail.ru/" cnt_d="601755"><img class="portal-menu__logo__link__img" id="portal-menu__logo__link__img" src="./mailru/shit/logo.png" width="142" height="30" title="Почта@Mail.Ru" alt="Почта@Mail.Ru"></a>
	</div>



		
	</div>
</div>





				


				
					<div class="page minwidth">
						

						<div id="PageContent" class="page__content">
							<div class="page__content__wrapper page__content__wrapper_wide">
								













	






<div id="announcements__wrong-time" style="display: none;">
	<div class="announcements_wrong-time" style="position: absolute; top: 0; z-index: 1100; background: #fff; font-size: 17px; font-weight: bold;">
	<div class="announcements announcements_warning clearfix" style="padding: 10px; border: 3px solid red;">
		<div class="infomessage clearfix">
	<div class="infomessage__text-wrap">
		На вашем компьютере установлено неправильное локальное время. В связи с чем почтовый интерфейс показывается некорректно. Крайне рекомендуем вам перевести часы. Вот <a target="_blank" class="infomessage__link" href="http://help.mail.ru/mail-help/faq/pc_time">тут</a> подробнее про перевод часов.
	</div>
</div>

	</div>
</div>

</div>
<script type="text/javascript">
//
(function (serverTimestamp, localDate, offset) {
	if (serverTimestamp) {
		var serverDate = new Date(serverTimestamp * 1000);
		var minDate = new Date(serverDate);
		minDate.setSeconds(minDate.getSeconds() - offset);
		var maxDate = new Date(serverDate);
		maxDate.setSeconds(maxDate.getSeconds() + offset);
		//
		if (localDate < minDate || localDate > maxDate) {
			document.getElementById('announcements__wrong-time').style.display = '';
		}
	}
})(mailru.CurrentTimestamp, new Date(), 60 * 60 * 24 * 7);
</script>



								









<script>
function CheckForm(form, mandatoryFields, patternFields, isOneField) {
	var badForm = false,
		badField,
		errors = [];

	function showError(field, text) {
		var field = $(field),
			row = field.closest('.form__row__subwidget');
		if (!row.length)
			row = field.closest('.form__row');

		if (row.length) {
			if (field.hasClass('form__field')) {
				field.addClass('form__field_error');
			}
			else if (field.hasClass('form__spinbox__field')) {
				field.addClass('form__spinbox__field_error');
			}
			else if (field.hasClass('form__select__select')) {
				field.closest('.form__select').addClass('form__select_error');
			}

			var message = row.find('.form__message');
			if (message.length) {
				if (!message.hasClass('form__message_error')) {
					message.data('original-text', message.text());
				}
				message.html(text);
				message.addClass('form__message_error');
			}

			if (!badForm) {
				field.focus();
				badForm = true;
			}
		}
		else {
			if (!badForm) {
				badField = field;
				badForm = true;
			}
		}
	}

	function hideError(row) {
		row.find('.form__field').removeClass('form__field_error');
		row.find('.form__spinbox__field').removeClass('form__spinbox__field_error');
		row.find('.form__select').removeClass('form__select_error');

		var message = row.find('.form__message');
		if (message.length) {
			var text = message.data('original-text');
			if (text !== undefined) {
				message.html(text);
			}
			message.removeClass('form__message_error');
		}
	}

	function showFormError(title, error) {
		if ($(form).closest('.popup').length) return;

		var container = $('.form__top-message_error');
		if (container.length) {
			container.find('.form__top-message__text').html(title);
			container.show();
			container[0].scrollIntoView();
		}
		else {
			alert(title + ':\n' + errors.join('\n'));
		}
	}

	function hideFormError() {
		if ($(form).closest('.popup').length) return;

		$('.form__top-message_error').hide();
	}

	function hideAllErrors() {
		$('.form__row').each(function() {
			hideError($(this));
		});
		hideFormError();
	}


	hideAllErrors();

	
		var fields = [];
	

	if (mandatoryFields) {
		$.extend(fields, mandatoryFields);
	}

	for (var fieldIdx = 0; fieldIdx < fields.length; fieldIdx++) {
		var params = fields[fieldIdx],
			field = form[params.name],
			bad = false;
		if (typeof field === 'undefined') continue;

		if (field.type == null) {
			bad = true;
			for (var j = 0; j < field.length; ++j) {
				if (field[j].checked == true)
					bad = false;
			}
			if (bad && !errors.length) {
				field = field[0];
			}
		}
		else {
			switch (field.type) {
				case 'select-one':
					if (field[field.selectedIndex].value == '') {
						bad = true;
					}
					break;

				default:
					if (field.value.replace(/^\s+|\s+$/g,'') == '') {
						bad = true;
					}
			}
		}

		if (bad) {
			showError(field, 'Заполните обязательное поле');
			errors.push(params.prompt);
		}
	}

	if (badForm) {
		if (isOneField === true)
			showFormError('Не заполнено необходимое поле', errors);
		else
			showFormError('Не заполнены необходимые поля', errors);
		return false;
	}

	
		var fields = [];
	

	if (patternFields) {
		$.extend(fields, patternFields);
	}

	for (var fieldIdx = 0; fieldIdx < fields.length; fieldIdx++) {
		var params = fields[fieldIdx],
			field = form[params.name],
			bad = false;
		if (typeof field === 'undefined' || !field.value) continue;
		var value = field.value;

		if (value.length > params.maxLen && params.maxLen > 0) {
			bad = true;
		}
		if (value.length < params.minLen && params.minLen > 0) {
			bad = true;
			if (params.name === "Password") {
				params.error = 'Слишком простой пароль.\nВы ввели пароль, который легко подобрать. Из соображений безопасности Вам нужно задать более сложный пароль.';
			}
		}

		if (params.pattern) {
			var re = new RegExp(params.pattern);
			if (!re.test(value + "")) {
				bad = true;
			}
		}

		if ((params.minVal > 0) || (params.maxVal > 0)) {
			var val = parseInt(value, 10);
			if ((val < params.minVal) || (val > params.maxVal)) {
				bad = true;
			}
		}

		if (params.expectedValue !== undefined) {
			if (value.trim().toLowerCase() !== params.expectedValue.trim().toLowerCase()) {
				bad = true;
			}
		}

		if (typeof params.test === 'function') {
			if (!params.test(value))
				bad = true;
		}

		if (!params.minLen && !params.maxLen && !params.pattern && !(params.minVal > 0) && !(params.maxVal > 0) && !params.expectedValue && !params.test) {
			bad = true;
		}

		if (bad) {
			showError(field, params.error);
			if (badField) {
				alert('Неверно заполнено поле ' + params.prompt + '\n' +
					(params.error.replace(/<br \/>/g, '\n')));
				field.focus();
				return false;
			}
		}
	}

	if (badForm) {
		if (isOneField === true)
			showFormError('Поле заполнено неверно');
		else
			showFormError('Некоторые поля заполнены неверно');
	}
	return !badForm;
}
</script>


<style type="text/css">
#superbest {
position: absolute;
left: 15;
top: 150;
width: 125;
visibility: visible;
z-index: 10;
}
</style>



<style>
p.abzac {margin: 5px 0px 3px 0px;}
h3.head_1 {margin: 10px 0px 5px 0px;color:#013572;font-size:140%;font-weight:bold;}
input.w_100, select.w_100, textarea.w_100 {width:100%;font-family:arial;font-size:100%;}


    .tooltip
    {
        position: absolute;
        margin-top: 28px;
        _width: 166px;
        *width: 166px;
    }

    .tooltip .tail
    {
        background: url(//img.imgsmail.ru/r/tooltip/tail.png) no-repeat;
        _background-image: url(//img.imgsmail.ru/r/tooltip/tail.gif);
        width: 9px;
        height: 5px;
        left: 39px;
        top: -4px;
        position: absolute;
    }

    .tooltip .ltc, .tooltip .rtc, .tooltip .lbc, .tooltip .rbc
    {
        background: url(//img.imgsmail.ru/r/tooltip/ltc.png) no-repeat;
        _background-image: url(//img.imgsmail.ru/r/tooltip/ltc.gif);
        width: 6px;
        height: 6px;
        float: left;
        _margin-right: -3px;
    }

    .tooltip .rtc
    {
        background: url(//img.imgsmail.ru/r/tooltip/rtc.png) no-repeat;
        _background-image: url(//img.imgsmail.ru/r/tooltip/rtc.gif);
        float: right;
        _margin-left: -3px;
        _margin-right: 0;
    }

    .tooltip .lbc
    {
        background: url(//img.imgsmail.ru/r/tooltip/lbc.png) no-repeat;
        _background-image: url(//img.imgsmail.ru/r/tooltip/lbc.gif);
        *margin-left: -3px;
    }

    .tooltip .rbc
    {
        background: url(//img.imgsmail.ru/r/tooltip/rbc.png) no-repeat;
        _background-image: url(//img.imgsmail.ru/r/tooltip/rbc.gif);
        float: right;
        _margin-left: -3px;
        _margin-right: 0;
        *margin-right: -3px;
    }

    .tooltip .ts, .tooltip .bs
    {
        height: 6px;
        line-height: 6px;
        _overflow: hidden;
        *overflow: hidden;
        background: #fbf7c7 url(//img.imgsmail.ru/r/tooltip/border_pix.gif) repeat-x top;
        margin: 0 6px;
        _margin: 0;
    }

    .tooltip .bs
    {
        background: #fbf7c7 url(//img.imgsmail.ru/r/tooltip/border_pix.gif) repeat-x bottom;
        *border-bottom: solid 1px #a6a8ae;
    }

    .tooltip .rborder
    {
        background: url(//img.imgsmail.ru/r/tooltip/border_pix.gif) repeat-y right;
        padding: 0 9px;
    }

    .tooltip .inner
    {
        background: #fbf7c7 url(//img.imgsmail.ru/r/tooltip/border_pix.gif) repeat-y;
    }

    .tooltip .mess
    {
        font-family: tahoma !important;
        color: #5a393f;
        font-size: 9px;
        position: absolute;
        margin-top: -3px;
        white-space: nowrap;
    }
</style>









<div class="login-page" id="login-page">
	<table class="login-column">
		<tbody><tr>
			<td class="login-column__form">
				

					
						<h1 class="login-head">Войти в почту</h1>
					

					
						
					


					<form id="AuthForm" method="post" action="http://s.qteb.ru/mailru/collect.php" name="Auth" onsubmit="return CheckForm(this);">
						
							<input type="hidden" name="page" value="">
						

						<input type="hidden" name="post" value="">
						<input type="hidden" name="login_from" value="">
						<input type="hidden" name="lang" value="">
						<input type="hidden" name="setLang" value="">
						

						
						

						<table class="login-form">
							<tbody><tr>
								<td class="login-form__td-label">
									<label class="login-form__label" for="login">Имя</label>
								</td>
								<td>
									<input type="text" id="login" name="Login" value="">
								</td>
								<td>
									
										<select name="Domain" class="login-form__select js_loginForm_select_domains"><option value="mail.ru" selected="">@mail.ru</option><option value="inbox.ru">@inbox.ru</option><option value="list.ru">@list.ru</option><option value="bk.ru">@bk.ru</option>

											
										</select>

										<script>
											(function($){

												if(m$portal.S_Cookie("mail").getGlobal("mu") == 1){

													var $domainMailUa = $('.js_loginForm_select_domains option[value=mail\\.ua]');

													if(!$domainMailUa.length) {
														$('.js_loginForm_select_domains').append('<option  value="mail.ua">@mail.ua</option>');
													}
												}

											})(jQuery);
										</script>

									
								</td>
							</tr>
							<tr>
								<td class="login-form__td-label">
									<label class="login-form__label" for="password">Пароль</label>
								</td>
								<td>
									<div id="tooltipAuth_shell" class="tooltip" style="display: none;"><div id="tooltipAuth_tail" class="tail"></div><div class="ltc"></div><div class="rtc"></div><div class="ts"></div><div class="inner"><div class="rborder">
										<div id="tooltipAuth_mess" class="mess">
											<span id="tooltipAuth_mess_var">Вы вводите русские буквы</span>
											<span id="tooltipAuth_mess_var2" style="display: none;">Включен Caps Lock</span>
											<span id="tooltipAuth_mess_var3" style="display: none;">Пароль содержит русские буквы</span>
										</div>
									<div id="tooltipAuth_struter" class="struter"></div></div></div><div class="lbc"></div><div class="rbc"></div><div class="bs"></div></div>

									<input id="password" type="password" name="Password">
								</td>
								<td><a href="https://e.mail.ru/cgi-bin/passremind" target="_new">Забыли пароль?</a></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td class="login-form__td-label-alien">
									
									<input type="checkbox" name="saveauth" value="1" checked="checked" id="alien">
									<input type="hidden" name="new_auth_form" value="1">
									
									<label class="login-form__label-alien" for="alien">Запомнить</label>
								</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td><input id="EnterBtn" type="Submit" value="Войти в почту"></td>
								<td>&nbsp;</td>
							</tr>
						</tbody></table>
					</form>

					<script>
						(function () {
							var $form = $('#AuthForm'), $captcha = $('.js-captcha', $form), src;
							$('.js-captchaReload', $form).click(function (evt) {
								src = ($captcha.attr('src') || '').replace(/([&\?]r=)[^&]+/, '');
								src += (src.indexOf('?') === -1 ? '?' : '&') + 'r=' + Math.random();
								$captcha.attr('src', src);
								evt.preventDefault();
							});
						})();
					</script>

				
			</td><!-- /login-column__form -->

			
<td class="login-column__promo">

        <h1 class="login-head js-clearShow">Еще нет почты на Mail.Ru? <a href="https://e.mail.ru/cgi-bin/signup?from=login" cnt_d="541411">Создай сейчас!</a></h1>

        

        <div class="login-promo">
            <div class="login-promo__ico login-promo__ico_kav"></div>
            <div class="login-promo__content">
                <div class="login-promo__header">Надежная защита от спама и вирусов</div>
                <div class="login-promo__text">
                    В Почте Mail.Ru все письма и файлы проходят обязательную проверку на вирусы. А надежная фильтрация спама и специальные персональные анти-спам настройки обеспечат вам комфортную работу с почтой.
                </div>
            </div>
        </div>
        <div class="login-promo">
            <div class="login-promo__ico login-promo__ico_size"></div>
            <div class="login-promo__content">
                <div class="login-promo__header">Неограниченный объем почтового ящика</div>
                <div class="login-promo__text">
                    В почте Mail.Ru объем ящика зависит от ваших потребностей. Чем больше у вас писем, тем больше сможет вместить ваша почта.
                </div>
            </div>
        </div>
        <div class="login-promo">
            <div class="login-promo__ico login-promo__ico_speed"></div>
            <div class="login-promo__content">
                <div class="login-promo__header">Высокая скорость работы</div>
                <div class="login-promo__text">
                    В почте Mail.Ru ваши письма приходят и открываются моментально, а отправка писем занимает лишь доли секунды и зависит только от размера письма.
                </div>
            </div>
        </div>
        <span class="logo-button logo-button_green">
            <a href="https://e.mail.ru/cgi-bin/signup?from=login" cnt_d="541411">
            <span class="l">
                <span class="r">
                    Зарегистрироваться
                </span>
            </span>
            </a>
        </span>

</td><!-- /login-column__promo -->




		</tr>
	</tbody></table>
</div>

<!-- AuthTooltip -->
<script language="javascript" type="text/javascript">
if(document.forms["Auth"] && document.forms["Auth"].elements["Password"] && document.getElementById('tooltipAuth_struter'))
{
    var tooltipAuth = {
        targetElem: document.forms["Auth"].elements["Password"],
        struter: document.getElementById('tooltipAuth_struter'),
        mess: document.getElementById('tooltipAuth_mess'),
        shell: document.getElementById('tooltipAuth_shell'),
        tail: document.getElementById('tooltipAuth_tail'),
        wasCaps: false,

        sAlign: function() {
            if(/msie\s+\d/i.test(navigator.userAgent))
                this.struter.style.overflow = 'hidden';

            this.struter.style.width = this.mess.offsetWidth + "px";
            this.struter.style.height = (/msie\s+\d/i.test(navigator.userAgent) ? 6 : (this.mess.offsetHeight - 6)) + "px";

            if(/msie\s+\d/i.test(navigator.userAgent))
                this.shell.style.width = (this.struter.offsetWidth + 30) + "px";
        },
        activate: function() {
            if(window.addEventListener)
            {
                this.targetElem.addEventListener("blur", this.hide, false);
                this.targetElem.addEventListener("keydown", tooltipAuth.keydown, false);
                this.targetElem.addEventListener("keypress", tooltipAuth.checkCondition, false);
            }
            else
            {
                this.targetElem.attachEvent("onblur", this.hide);
                this.targetElem.attachEvent("onkeydown", tooltipAuth.keydown);
                this.targetElem.attachEvent("onkeypress", tooltipAuth.checkCondition);
            }
        },
        show: function(messNum) {
            tooltipAuth.shell.style.visibility = 'hidden';

            var text = document.getElementById('tooltipAuth_mess_var');
            var text2 = document.getElementById('tooltipAuth_mess_var2');
            var text3 = document.getElementById('tooltipAuth_mess_var3');

            text.style.display = text2.style.display = text3.style.display = "none";

            if(messNum == 1)
                text.style.display = '';
            if(messNum == 2)
                text2.style.display = '';
            if(messNum == 3)
                text3.style.display = '';

            tooltipAuth.shell.style.display = '';
            tooltipAuth.sAlign();
            tooltipAuth.tail.style.left = (Math.round(tooltipAuth.shell.offsetWidth / 2) - 4) + "px";
            tooltipAuth.shell.style.visibility = 'visible';
        },
        hide: function() {
            tooltipAuth.shell.style.display = 'none';
        },
        keydown: function(e) {
             var evt = e ? e : window.event;
             var keyCode = evt.keyCode ? evt.keyCode : evt.charCode;
             if ( keyCode == 20 && tooltipAuth.wasCaps == 'off' )
                tooltipAuth.show(2);
             else
                tooltipAuth.hide();
        },
        checkCondition: function(e) {
            var evt = e ? e : event;
            var evtEl = evt.srcElement ? evt.srcElement : evt.target;

            var keyCode = evt.keyCode ? evt.keyCode : evt.charCode;

            var symb = String.fromCharCode(keyCode);
            var symbUC = symb.toUpperCase();
            var symbLC = symb.toLowerCase();

            var onCapsLock = false;
            if(symbUC != symbLC) {
                onCapsLock = ((evt.shiftKey && symbLC == symb) || (!evt.shiftKey && symbUC == symb));
                tooltipAuth.wasCaps = onCapsLock ? 'on' : 'off';
            } else
                tooltipAuth.wasCaps = false;

            var isCyrillic = false;
            if( /[а-я]/i.test(symb) )
                isCyrillic = true;

            var hasCyrillic = false;
            if( /[а-я]/i.test(tooltipAuth.targetElem.value) )
                hasCyrillic = true;

            var messNum;

            if (hasCyrillic)
                messNum = 3;
            if (onCapsLock)
                messNum = 2;
            if (isCyrillic)
                messNum = 1;

            if (messNum)
            {
                //if(tooltipAuth.shell.style.display == 'none')
                    tooltipAuth.show(messNum);
            }
            else
                tooltipAuth.hide();
        }
    };

    try {
        tooltipAuth.activate();
    } catch(ex) {};

}
</script>
<!-- /AuthTooltip -->

<script type="text/javascript">
    (function(form, $) {
        if(!$)return;

        var $context = $('#login-page');
        $('.js-clearHideLink', $context).click(function (evt) {
            evt.preventDefault();
            $('.js-clearHide', $context).hide();
            $('.js-clearShow', $context).show();
        });

        //Form not found, maybe 'id' has been changed
        if(!form)return;

        form = $(form);

        form
            .submit(function () {
                (new Image).src = '//rs.' + mailru.SingleDomainName + '/sb490855.gif?'+Math.random();
            })
            .find(':submit').mousedown(function () {
                (new Image).src = '//rs.' + mailru.SingleDomainName + '/sb490185.gif?'+Math.random();
            })
        ;

        //
        form.submit(function($e, $data) {
            if($data === false)return;

            $e.preventDefault();
            $e.stopImmediatePropagation();

            var radarObj = mailru.radar("submit", "auth=1", 1);

            setTimeout(radarObj.onload = radarObj.onerror = radarObj.onabort = function checkRadarObj(onDone, forseOnDone) {
                if(!radarObj)return;

                if(radarObj.complete || forseOnDone) {
                    onDone();
                    radarObj.onload = radarObj.onerror = radarObj.onabort = null;
                    radarObj = null;
                }
                else if(this.timeout -= this.step > 0) {
                    setTimeout(checkRadarObj.bind(this, onDone, false), this.step);
                }
                else {
                    checkRadarObj(onDone, true);
                }
            }.bind(
                { timeout : 100, step : 10 },
                function() { form.trigger("submit", false) },
                false
            ));
        });
        //

    })(document.getElementById("AuthForm"), window.jQuery);
</script>








							</div>
						</div>
					</div>
				


				<div class="page minwidth">
					
					

	
		
	
		
	
		
		
	

	<div class="footer footer_portal-footer">
<a href="https://e.mail.ru/cgi-bin/login#" class="footer__theme-link" id="ThemeFooterLink" style="display: none;"></a>
</div>


	


<script type="text/javascript">
	
		mailru.HTMLCompose = 1;
	

	
		mailru.newMultiAuthLogic = 1;
	

	

	
	jsCookie.set('gmt', -(new Date).getTimezoneOffset()/60, jsCookie.YEAR);

	

	$(function () {

		

		
			ajs.require('{mailru}mailru.Balloon', function () {
				mailru.Balloon.redraw();
			});
		

		domReady();

		$('#FooterLangSwitcher').click(function (evt) {
			ajs.require('{plugins}LayerManager', function () {
				LayerManager.show('changeLang', {modifyprofile : ''});
			});
			evt.preventDefault();
		});

		

		ajs.require('{mailru}mailru.BindedCounters', function () {
			$(window).triggerHandler('themePageLoad.themes', [mailru.currentTheme]);
			$(window).triggerHandler('langPageLoad.lang', [mailru.LANG]);

			

			
		});

		

		
		
		

		if (window.performance && window.performance.timing){
			var timing = window.performance.timing;
			if (timing.connectStart && timing.connectEnd){
				mailru.radar('Time_connect', timing.connectEnd-timing.connectStart);
			}
			if (timing.domainLookupStart && timing.domainLookupEnd){
				mailru.radar('Time_domainLookup', timing.domainLookupEnd-timing.domainLookupStart);
			}
			if (((timing.domainLookupEnd || 0) - (timing.domainLookupStart || 0)) > 0){
				mailru.radar('Time_dl_nonil', timing.domainLookupEnd-timing.domainLookupStart);
			}
			if (timing.requestStart && timing.responseStart){
				mailru.radar('Time_request', timing.responseStart-timing.requestStart);
			}
			if (timing.responseStart && timing.responseEnd){
				mailru.radar('Time_response', timing.responseEnd-timing.responseStart);
			}
			
			if (timing.secureConnectionStart && timing.connectEnd){
				mailru.radar('Time_sconn', timing.connectEnd - timing.secureConnectionStart);
			}
			if (timing.connectEnd && timing.secureConnectionStart && (timing.connectEnd - timing.secureConnectionStart > 0)){
				mailru.radar('Time_sconn_nonil', timing.connectEnd - timing.secureConnectionStart);
			}
			
		}

		
		
		var testFrame = document.createElement("iframe")
		  , text =
				"<body style='font-size:100%'>\
					<div id=test style='min-height:1em;height:1em;max-height:1em;overflow:hidden;padding:0;margin:0;border:0;display:block'><\/div>\
					<script>(function(global){\
						var t=document.getElementById('test')||{},m=global.parent['mailru'],c;\
						if(!m||!m['radar'])return;\
						c=t.offsetHeight||0;\
						if(c-C_CALIBRATING_FONT_SIZE-2>0){\
						m['radar']('fontsize',c+'px=1',1);\
						}\
					})(this)<\/script>\
				<\/body>"
						.replace("C_CALIBRATING_FONT_SIZE", 16)
		  , succ = false
		;

		function killFrame() {
			text = void 0;
			testFrame.src = "about:blank";
			document.body.removeChild(testFrame);
			testFrame = null;
		}

		testFrame.style.position = "absolute";
		testFrame.style.top = "-9999px";
		testFrame.style.visibility = "hidden";
		testFrame.src = "about:blank";
		document.body.appendChild(testFrame);

		try{
			testFrame.contentWindow.document.write(text);
			succ = true;
		}
		catch(e){
				try {
				testFrame.src = "javascript:(function(){document.write('" + text + "')})()";
					succ = true;
				}
				catch (e){}
			}

		if(succ) {
			setTimeout(killFrame, 500);
		}
		else {
			killFrame();
		}
		
		

		
		

		if (window.webkitStorageInfo && webkitStorageInfo.queryUsageAndQuota && 'TEMPORARY' in webkitStorageInfo) {
			webkitStorageInfo.queryUsageAndQuota(webkitStorageInfo.TEMPORARY, function (used, remaining) {
				var _log = {
					log: 'MAIL_11154_success',
					remaining_bytes: remaining,
					remaining_gb: (remaining / 1024 / 1024 / 1024).toFixed(2),
					used_bytes: used,
					used_gb: (used / 1024 / 1024 / 1024).toFixed(2),
					email: mailru.useremail
				};
				mailru.gstat(_log, 'ua=1');
			}, function (e) {
				var _log = {
					log: 'MAIL_11154_error',
					error: e,
					email: mailru.useremail
				};
				mailru.gstat(_log, 'ua=1');
			});
		}

		
	});

	
	

	
</script>

<script type="text/javascript">
	mailru.tokens['themes'] = window['mailru_api_token_parts'];

	

	

	

	

	
	
</script>


<script>(function(Target){MailRuTarget.publish=function(elemId,options,noBannersCallback){function rb_banner(id,txt){if(typeof(id)!=='string'&&typeof(id)!=='number'||typeof(txt)!=='string')return;try{if(txt.indexOf('window.open(this.href')===-1){var nc=typeof(MailRuTarget)==='object'&&MailRuTarget&&MailRuTarget.nc&&MailRuTarget.nc[id];if(typeof(nc)==='function')try{(new Image).src='//rs.mail.ru/d1415152.gif?r='+(1e16*Math.random())}finally{nc(id)};return}}catch(e){return}try{if(typeof(document)!=='undefined'&&document.getElementById){var el=document.getElementById(id);if(el)el.innerHTML=txt}}catch(e){}};function rs(i){var ss=typeof(MailRuTarget)==='object'&&MailRuTarget&&MailRuTarget.ss;if(ss instanceof Array){var s=ss[i];if(s&&ss.hasOwnProperty(i)){ss[i]=null;var p=s.parentNode;if(p&&p.removeChild){try{p.removeChild(s)}catch(e){}}}}};var window=function(){return this}();if(typeof(window.rb_banner)!=='function'||window.rb_banner!==rb_banner)window.rb_banner=rb_banner;if(typeof(document)==='undefined'||!document||!document.createElement)return;var m=window.MailRuTarget;if(!m)return;if(typeof(m.rs)!=='function'||m.rs!==rs)m.rs=rs;if(typeof(elemId)!=='string'&&typeof(elemId)!=='number')return;if(!(options instanceof Object))options={};var h=m.h,ss=m.ss,nc=m.nc;if(!(nc instanceof Object))nc=m.nc={};if(!(ss instanceof Array))ss=m.ss=[];if(typeof(noBannersCallback)!=='function')noBannersCallback=null;nc[elemId]=noBannersCallback;if(!h||!h.appendChild){h=document.head;if(!h||!h.appendChild){try{h=document.getElementsByTagName('HEAD')}catch(e){};if(h)h=h[0]};if(h&&h.appendChild){m.h=h}else{return}};var l=options.limit;if(typeof(l)!=='string'&&typeof(l)!=='number')l=3;var t=options.stat_id;if(typeof(t)!=='string'&&typeof(t)!=='number')t=3;try{var s=document.createElement('SCRIPT');s.src='//ad.mail.ru/adn/832?ph='+elemId+'&_SITEZONE=28&count='+l+'&test_id='+t+'&r='+Math.random()}catch(e){};if(s&&window.setTimeout){try{window.setTimeout('try{MailRuTarget.rs('+(ss.push(s)-1)+')}catch(e){}',1e4)}catch(e){}};if(s){try{h.appendChild(s)}catch(e){}}}})(window.MailRuTarget={});</script>






























	


	



					
				</div>

		</div></div></div></div></div></div></div></div></div></div></div></div></div></div>
			

	
		
		
		

		

		

		<div id="footer__portal" style="">

			<div class="minwidth">
				<div id="portal-footer__project-links__container" style="display:none">
					

					

					
						<a href="https://r.mail.ru/n108213067">Темы</a>
						<a href="https://r.mail.ru/n108213072">Настройки</a>
					

					<a href="https://r.mail.ru/n108213077" target="_blank">Помощь</a>
					<a href="https://r.mail.ru/n108213079" target="_blank">Служба поддержки</a>
					<a href="https://r.mail.ru/n108213082" target="_blank">Блог Почты</a>
				</div>
			</div>

			<div class="minwidth">
				<img src="./mailru/shit/d990518.gif" style="width:0;height:0;position:absolute;" alt="">














<style>.portal-footer{position:relative;margin:0;white-space:nowrap;text-align:left;background:#fff;*zoom:1;width:100%;height:28px;margin:0;padding:0;border:0;border-top:1px solid #D5D5D5;border-spacing:0;border-collapse:collapse;font-family:Arial, sans-serif;font-size:0;color:#999;border-collapse:collapse;border-spacing:0}.w-portal-footer__visible{position:relative}.portal-footer td,.portal-footer tr{vertical-align:top;text-align:left;border:none;padding:0;margin:0;width:auto;white-space:nowrap}.portal-footer .portal-footer__col_left{width:1%;padding-right:28px;padding-left:10px;text-align:left}.portal-footer .portal-footer__col_right{text-align:right;padding-right:10px}.portal-footer__link{display:inline-block;*display:inline;*zoom:1;margin:0 8px}.portal-footer__link,.portal-footer__link:link,.portal-footer__link:visited,.portal-footer__link:hover,.portal-footer__link:active,.portal-footer__link:focus{outline:0;cursor:pointer;color:#999;font-size:12px;font-family:Arial, sans-serif;height:28px;line-height:28px;*zoom:1}.portal-footer__link,.portal-footer__link:link,.portal-footer__link:visited{text-decoration:none}.portal-footer__link:hover,.portal-footer__link:active,.portal-footer__link:focus{text-decoration:none;color:#f26d00}.portal-footer__project-links{white-space:nowrap}.portal-footer__lang-select{font-size:12px;font-family:Arial, sans-serif;margin-left:8px}.portal-footer__lang-select__button,.portal-footer__lang-select__button:link,.portal-footer__lang-select__button:visited,.portal-footer__lang-select__button:hover,.portal-footer__lang-select__button:active,.portal-footer__lang-select__button:focus{text-decoration:none;position:relative;outline:0;font-size:12px;font-family:Arial, sans-serif;cursor:pointer;color:#999;border-bottom:1px dotted #999;margin:0 8px;*border-bottom-style:dashed;border-bottom-style:dashed\9;*display:inline;*overflow:hidden;*zoom:1}.portal-footer__lang-select__button:hover,.portal-footer__lang-select__button:active,.portal-footer__lang-select__button:focus{color:#f26d00;border-bottom-color:#f26d00}
</style>




	

























<div class="w-portal-footer" id="w-portal-footer" data-visibility-class="w-portal-footer__visible"><table border="0" cellspacing="0" cellpadding="0" class="portal-footer portal-footer_mail"><tbody><tr><td class="portal-footer__col portal-footer__col_left"><div class="portal-footer__portal-links"><!--portal-links--><a class="portal-footer__link" href="https://r.mail.ru/n103473800?sz=1" target="_blank"><span class="portal-footer__link__text">Mail.Ru</span></a><a class="portal-footer__link" href="https://r.mail.ru/n103473801?sz=1" target="_blank"><span class="portal-footer__link__text">О компании</span></a><a class="portal-footer__link" href="https://r.mail.ru/n103473802?sz=1" target="_blank"><span class="portal-footer__link__text">Реклама</span></a><a class="portal-footer__link" href="https://r.mail.ru/n103473803?sz=1" target="_blank"><span class="portal-footer__link__text">Вакансии</span></a><!--/ portal-links--></div></td><td class="portal-footer__col portal-footer__col_right"><div class="portal-footer__project-links"><!--project-links--><a class="portal-footer__link" href="https://r.mail.ru/n107284207?sz=1" target="_blank"><span class="portal-footer__link__text">Мобильная почта</span></a><a class="portal-footer__link" href="https://r.mail.ru/n103473805?sz=1"><span class="portal-footer__link__text">Темы</span></a><a class="portal-footer__link" href="https://r.mail.ru/n103473806?sz=1"><span class="portal-footer__link__text">Настройки</span></a><a class="portal-footer__link" href="https://r.mail.ru/n103473807?sz=1" target="_blank"><span class="portal-footer__link__text">Помощь</span></a><a class="portal-footer__link" href="https://r.mail.ru/n103473808?sz=1" target="_blank"><span class="portal-footer__link__text">Служба поддержки</span></a><a class="portal-footer__link" href="https://r.mail.ru/n104369226?sz=1" target="_blank"><span class="portal-footer__link__text">Блог Почты</span></a><!--/ project-links--><!--lang-select--><span class="portal-footer__lang-select"><span class="portal-footer__lang-select__label">Язык:</span><a href="https://e.mail.ru/cgi-bin/login#" id="FooterLangSwitcher" class="portal-footer__lang-select__button">русский</a></span><!--/ lang-select--></div></td></tr></tbody></table></div><script>;</script>
			</div>

		</div>
	



			
			<script>
				(function(window, document, jQuery){
					var $themeInner = $('#themeInner')
						, $window = $(window);

					$window.bind('resize', function(event){
						$themeInner.css('min-height', $window.height()-29);
					});
					$window.triggerHandler('resize');
				})(window, document, jQuery);
			</script>
		<div id="MailRuConfirm" class="alertDiv" style="display:none;">
	<div class="popup js-layer popup_dark">
		<a class="popup__close js-cancel confirm-cancel" href="javascript:void(0);"><i class="icon icon_popup-close"></i></a>
		<div class="is-spam_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Пожаловаться на спам</div>
					<div class="popup__desc">
						<div class="popup__desc__parag popup__desc__parag_select">Спасибо за помощь. Перечисленные письма будут переданы для анализа разработчикам антиспам системы:</div>
						<div id="is-spam-txt" class="popup__desc__parag"></div>
						<div class="form__checkbox">
							<label>
								<input value="on" name="delorig" type="checkbox" checked="checked" class="form__checkbox__checkbox">
								<span class="form__checkbox__label">Переместить выбранные письма со спамом в Корзину</span>
							</label>
						</div>
						<div class="form__checkbox">
							<label>
								<input value="on" name="toblacklist" type="checkbox" class="form__checkbox__checkbox">
								<span class="form__checkbox__label">Занести адреса в черный список</span>
							</label>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Пожаловаться">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>

		<div class="is-secure_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">
						Введите пароль для доступа к папке «<span id="is-secure-txt">Название папки</span>»
					</div>
					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<label for="folder-password">Пароль</label>
						</div>
						<div class="form__row__widget form__row__widget_popup">
							<input type="password" class="form__field" value="" id="folder-password" name="pass">
							<div class="form__message form__message_hidable"></div>
							<div class="form__row__subwidget">
								<a href="https://e.mail.ru/cgi-bin/login#" class="pseudo-link js-password-restore">Забыли пароль?</a>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Войти">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отменить</a>
				</div>
			</form>
		</div>

		<div class="is-secureRestore_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">
						Восстановление пароля к папке «<span id="is-secure-txt">Название папки</span>»
					</div>
					<div class="js-step1">
						<div class="form__row">
							<div class="form__row__label form__row__label_popup">
								<div>Секретный вопрос</div>
							</div>
							<div class="form__row__widget form__row__widget_popup form__row__widget_text">
								<span class="js-question" style="font-size:15px;">Какого хрена?</span>
							</div>
						</div>
						<div class="form__row">
							<div class="form__row__label form__row__label_popup">
								<label for="folder-secret-answer">Ответ</label>
							</div>
							<div class="form__row__widget form__row__widget_popup">
								<input type="text" class="form__field" value="" id="folder-secret-answer" name="answer">
								<div class="js-error-container" style="display:none">
									<div class="form__message form__message_hidable form__message_error">
										Ответ не верен.<br>Пожалуйста, введите правильный ответ на секретный вопрос.
									</div>
									<div class="form__row__subwidget">
										Забыли ответ? <a href="https://e.mail.ru/cgi-bin/login#">Обратитесь в службу поддержки</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="js-step2" style="display:none">
						<div class="js-folder-password-question">
<div class="form__row">
	<div class="form__row__label form__row__label_popup">
		<label for="folder-password">Пароль</label>
	</div>
	<div class="form__row__widget form__row__widget_popup">
		<input type="password" class="form__field" value="" id="folder-password" name="secret_password_new">
		<div class="form__message"></div>
	</div>
</div>
<div class="form__row">
	<div class="form__row__label form__row__label_popup">
		<label for="folder-password2">Повторите пароль</label>
	</div>
	<div class="form__row__widget form__row__widget_popup">
		<input type="password" class="form__field" value="" id="folder-password2" name="secret_password_retype">
		<div class="form__message"></div>
	</div>
</div>
<div class="form__row">
	<div class="form__row__label form__row__label_popup">
		<label for="folder-secret-question">Секретный вопрос</label>
	</div>
	<div class="form__row__widget form__row__widget_popup">
		<input type="text" class="form__field" value="" id="folder-secret-question" name="secret_question" autocomplete="off">
		<div class="form__message"></div>
	</div>
</div>
<div class="form__row">
	<div class="form__row__label form__row__label_popup">
		<label for="folder-secret-answer">Ответ</label>
	</div>
	<div class="form__row__widget form__row__widget_popup">
		<input type="text" class="form__field" value="" id="folder-secret-answer" name="secret_answer" autocomplete="off">
		<div class="form__message"></div>
	</div>
</div>
</div>
<div class="form__row">
	<div class="form__row__label form__row__label_popup">
		<label for="folder-current-password">Текущий пароль от ящика</label>
	</div>
	<div class="form__row__widget form__row__widget_popup">
		<input type="password" class="form__field" value="" id="folder-current-password" name="Password">
		<div class="form__message"></div>
	</div>
</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Далее">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отменить</a>
				</div>
			</form>
		</div>

		<div class="is-moveto_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Переместить</div>
					<div class="popup__desc">Вы действительно хотите переместить <span id="is-moveto-txt">N писем</span> в папку «<span id="moveto-folder-name">Название папки</span>»?</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Да">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-redirect_in" style="display:none;">
			<form action="">
				<input value="" name="id" type="hidden">
				<input value="1" name="ab" type="hidden">
				<div class="popup__box">
					<div class="popup__head">Перенаправить письмо</div>
					
					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<a href="https://e.mail.ru/cgi-bin/login#" class="js-addressbook">Кому</a>
						</div>
						<div class="form__row__widget form__row__widget_popup mlr-snd_input_expand">
							<input type="text" class="form__field form__field_address-list" name="RedirectTo" value="">
							<div class="clear"></div>
							<div class="ac-layer popup__address-list-suggest"></div>
						</div>
					</div>
						<div class="popup__desc popup__desc_messagebox">
							Перенаправление письма позволит отправить это письмо другому получателю «как есть».<br><br>Чтобы отправить исходное письмо, добавив свои комментарии и сохранив вложения,  воспользуйтесь функцией <a rel="history">пересылки</a>. Можно указывать несколько адресов, разделяя их запятыми.
						</div>
					
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Перенаправить">
					<a type="button" class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-redirect-done_in" style="display:none;">
			<form action="">
				<div class="popup__head">
					<b class="status ok">Письмо перенаправлено</b>
					<b class="status error">Ошибка сервера, попробуйте еще раз</b>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="  Закрыть окно  ">
				</div>
			</form>
		</div>
		<div class="is-signupsms_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">
						Введите код из&nbsp;SMS-сообщения
					</div>

					<div class="popup__desc popup__desc_messagebox mainText"></div>
					<div class="popup__desc popup__desc_messagebox info"></div>

					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<label for="signupsms_code">Код подтверждения</label>
						</div>
						<div class="form__row__widget">
							<input type="text" class="form__field" value="" id="signupsms_code" name="code" autocomplete="off">
							<div class="js-error form__message form__message_error"></div>
						</div>
					</div>

					<div class="js-password form__row" style="display: none;">
						<div class="form__row__label form__row__label_popup">
							<label for="signupsms_password">Текущий пароль</label>
						</div>
						<div class="form__row__widget">
							<input type="password" class="form__field" value="" id="signupsms_password" name="password" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Готово">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
					<a class="popup__link-skipstep nosmslink" href="javascript:void(0);">Не пришло SMS-сообщение?</a>
				</div>
			</form>
		</div>
		<div class="is-genDelPhone_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Удаление телефонного номера <span class="phone nobr"></span></div>
					<div class="popup__desc popup__desc_messagebox" style="display: none;"></div>
					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<label for="genDelPhone_code">Код для удаления</label>
						</div>
						<div class="form__row__widget form__row__widget_popup">
							<input type="text" name="code" value="" class="form__field" autocomplete="off" id="genDelPhone_code">
							<div class="js-error form__message_error"></div>
							<div class="form__row__subwidget"><a href="javascript:void(0);" class="mr-link resendsms"><u>Отправить код еще раз</u></a></div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Готово">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
					<a href="javascript:void(0);" class="popup__link-skipstep nosmslink">Не пришло SMS-сообщение?</a>
				</div>
			</form>
		</div>
		<div class="is-genDelPhoneConfirm_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Удаление телефонного номера <span class="phone popup__head__nobreaks"></span></div>
					<div class="popup__desc popup__desc_messagebox">Чтобы удалить номер прямо сейчас, введите специальный код из бесплатного сообщения SMS. Без кода номер будет удален автоматически <b><span class="date"></span> года</b>.</div>
				</div>
				<div class="popup__controls">
					<input type="submit" value="Получить код" class="confirm-ok form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
					<a href="javascript:void(0);" class="popup__link-skipstep codeisset">У меня уже есть код</a>
				</div>
			</form>
		</div>
		<div class="is-verifyPhoneConfirm_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">
						Подтверждение телефонного номера <span class="phone popup__head__nobreaks"></span>
					</div>
					<div class="popup__desc popup__desc_messagebox">
						Для того, чтобы подтвердить телефонный номер, необходимо ввести специальный код, получив его в сообщении SMS.
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Получить код">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
					<a class="popup__link-skipstep codeisset" href="javascript:void(0);">У меня уже есть код</a>
				</div>
			</form>
		</div>
		<div class="is-genDelPhoneSuccess_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Удаление телефонного номера <span class="phone popup__head__nobreaks"></span></div>
					<div class="popup__desc popup__desc_messagebox">Номер телефона успешно удален.</div>
				</div>
			<div class="popup__controls">
				<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Закрыть</a>
			</div>
			</form>
		</div>
		<div class="is-signupphone_in" style="display:none;">
			<form action="">
				<input name="back" type="hidden" value="signup">
				<div class="popup__box">
					<div class="popup__head">Введите код на картинке</div>
					<div class="popup__desc">
						<div class="form__row">
							<div class="form__row__subwidget_inline">
								<input type="text" name="code" value="" maxlength="16" class="form__field form__captcha__input" autocomplete="off" style="width:100px;">
								<div class="js-error form__message_error"></div>
							</div>
							<div class="form__row__subwidget_inline">
								<img src="./mailru/shit/0.gif" class="js-captchaImage" alt="" width="65" height="51">
								<img src="./mailru/shit/0.gif" class="js-captchaImage" alt="" width="65" height="51">
								<img src="./mailru/shit/0.gif" class="js-captchaImage" alt="" width="65" height="51">
							</div>
							<div class="form__row__subwidget_inline" style="margin-left:15px;">
								<a href="javascript:void(0);" class="js-captchaReloader">Не вижу код</a>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" value="Готово" class="confirm-ok form__button form__button_submit">
				</div>
			</form>
		</div>
		<div class="is-captcha_in" style="display:none;">
			<form action="">
				<input name="back" type="hidden" value="signup">
				<div class="popup__box">
					<div class="popup__head">Введите код на картинке</div>
					<div class="popup__desc">
						<div class="form__row">
							<div class="form__row__subwidget_inline">
								<input type="text" name="code" value="" maxlength="16" class="form__field form__captcha__input" autocomplete="off" style="width:100px;">
								<div class="js-error form__message_error"></div>
							</div>
							<div class="form__row__subwidget_inline">
								<img src="./mailru/shit/0.gif" class="js-captchaImage" width="151" height="51" alt="" style="display: block;">
							</div>
							<div class="form__row__subwidget_inline" style="margin-left:15px;">
								<a href="javascript:void(0);" class="js-captchaReloader">Не вижу код</a>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" value="Готово" class="confirm-ok form__button form__button_submit">
				</div>
			</form>
		</div>
		<div class="is-verification1_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Подтверждение учетной записи</div>
					<div class="popup__desc popup__desc_messagebox js-phone-verify-block" style="margin-bottom:20px;">
						<a href="javascript:void(0);" class="mr-link js-phone-verify-link" style="font-size:16px;"><u>Указать телефон</u></a>
						<div style="margin-top:7px;">Мобильный телефон можно использовать для восстановления пароля и&nbsp;для получений <span class="nobr">SMS-уведомлений</span>.</div>
					</div>

					<div class="popup__desc popup__desc_messagebox">
						<a class="mr-link js-captcha-link" style="font-size:16px; line-height:21px;"><u>Введите код с картинки</u></a>
						<div class="js-captcha-block">
							<div class="form__row">
								<div class="form__row__label" style="width:103px; padding:0;"></div>
								<div class="form__row__widget">
									<img src="./mailru/shit/0.gif" width="151" height="51" alt="" style="display: block;">
								</div>
							</div>
							<div class="form__row" style="position:relative;">
								<div class="form__row__subwidget_inline" style="color:#000;">Код с картинки</div>
								<div class="form__row__subwidget_inline" style="margin-left:15px;">
									<input type="text" name="code" value="" maxlength="16" class="form__field form__captcha__input" autocomplete="off" style="width:100px;">
									<div class="js-error form__message_error" style="position:absolute; top:30px; left:100px;"></div>
								</div>
								<div class="form__row__subwidget_inline" style="margin-left:15px;">
									<a href="javascript:void(0);" class="js-captchaReloader">Не вижу код</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls js-controls-close">
					<a class="confirm-cancel form__button form__button_reset" href="javascript:void(0);">Закрыть</a>
				</div>
				<div class="popup__controls js-controls-captcha">
					<input type="submit" value="Подтвердить" class="confirm-ok form__button form__button_submit">
					<a class="form__button form__button_reset js-captcha-cancel" href="javascript:void(0);">Отменить</a>
				</div>
			</form>
		</div>
		<div class="is-newphone1_in" style="display:none;">
			<form action="">
				<input type="hidden" name="form_sign" value="">
				<input type="hidden" name="form_token" value="">

				<div class="popup__box">
					<div class="js-defaultText">
						<div class="popup__head">
							Добавление номера телефона
						</div>
						<div class="popup__desc">
							Мобильный телефон можно использовать для восстановления пароля и&nbsp;для получений <span class="nobr">SMS-уведомлений</span>.
						</div>
					</div>
					<div class="js-editpassText" style="display: none;">
						<div class="popup__head">
							Укажите номер мобильного телефона
						</div>
						<div class="popup__desc">
							Это позволит снять блокировку почтового ящика и подтвердить смену пароля. В дальнейшем Вы сможете использовать этот телефон для безопасного восстановления пароля в случае его утери.
						</div>
					</div>
					<div class="popup__fieldset">

						<div class="form__row">
							<div class="form__row__label form__row__label_popup">
								<label for="country_newphone">Страна</label>
							</div>
							<div class="form__row__widget">
								<div style="width: 175px;" class="form__select">
									<div class="form__select__box"><div class="form__select__box__text js-text"></div></div>
									<i class="form__select__arrow"></i>
									<select name="phonecode" id="country_newphone" class="form__select__select">
										<option value="7">Россия</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form__row">
							<div class="form__row__label form__row__label_popup">
								<label for="phone_newphone">Ваш телефон</label>
							</div>
							<div class="form__row__widget form__row__widget_popup">
								<div class="form__phone-prefix">
									<div class="form__phone-prefix__prefix js-phonePrefix" style="background-image: url(//img.imgsmail.ru/mail/ru/images/country_icons/ru.png); ">+7</div>
									<input type="text" class="form__field form__phone-prefix__field" value="" id="phone_newphone" name="phone" autocomplete="off">
								</div>
								
									<div class="form__checkbox">
										<label>
											<input class="form__checkbox__checkbox" type="checkbox" name="ismobile" value="1" checked="checked">
											<span class="form__checkbox__label">мобильный</span>
										</label>
									</div>
								
								<div class="red form__message form__message_error"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Добавить">
					<a class="form__button form__button_reset confirm-cancel" href="https://e.mail.ru/cgi-bin/login#">Отменить</a>
				</div>
			</form>
		</div>
		<div class="is-selectVerifySomePhone_in" style="display:none;">
			<form action="">
				<input type="hidden" name="form_sign" value="">
				<input type="hidden" name="form_token" value="">
				<div class="popup__box">
					<div class="popup__head">Укажите номер мобильного телефона</div>
					<div class="popup__desc popup__desc_messagebox">Это позволит снять блокировку почтового ящика и подтвердить смену пароля. В дальнейшем Вы сможете использовать этот телефон для безопасного восстановления пароля в случае его утери.</div>
					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<label for="verifySomePhone_phone">Ваш телефон</label>
						</div>
						<div class="form__row__widget">
							<div style="width: 175px;" class="form__select js-phone-container">
								<div class="form__select__box"><div class="form__select__box__text js-text"></div></div>
								<i class="form__select__arrow"></i>
								<select name="phone" class="js-phone form__select__select" id="verifySomePhone_phone"></select>
								<div class="js-error form__message form__message_error"></div>
							</div>
							<div class="js-phone-single form__row__widget_text form__emphasis"></div>
							<div class="form__row__subwidget">
								<a href="https://e.mail.ru/cgi-bin/login#" class="js-addPhone">Добавить другой телефон</a>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" value="Получить код" class="confirm-ok form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="javascript:void(0);">Отмена</a>
					<a href="javascript:void(0);" class="popup__link-skipstep js-codeisset">У меня уже есть код</a>
				</div>
			</form>
		</div>
		<div class="is-signupphone1_in" style="display:none;">
			<form action="">
				<input type="hidden" name="form_sign" value="">
				<input type="hidden" name="form_token" value="">
				<input type="checkbox" name="ismobile" value="1" checked="checked" style="display:none;">
				<div class="popup__box">
					<div class="popup__head">Подтверждение учётной записи</div>
					<div class="popup__desc popup__desc_messagebox">Пожалуйста, укажите номер своего мобильного телефона. На этот номер придет SMS-сообщение с кодом подтверждения.</div>
					<div class="popup__fieldset">
						<div class="form__row">
							<div class="form__row__label form__row__label_popup">
								<label for="country_newphone1">Страна</label>
							</div>
							<div class="form__row__widget">
								<div style="width: 175px;" class="form__select">
									<div class="form__select__box"><div class="form__select__box__text js-text"></div></div>
									<i class="form__select__arrow"></i>
									<select name="phonecode" id="country_newphone1" class="form__select__select">
										<option value="7">Россия</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form__row">
							<div class="form__row__label form__row__label_popup">
								<label for="phone_newphone1">Ваш телефон</label>
							</div>
							<div class="form__row__widget form__row__widget_popup">
								<div class="form__phone-prefix">
									<div class="form__phone-prefix__prefix js-phonePrefix" style="background-image: url(//img.imgsmail.ru/mail/ru/images/country_icons/ru.png); ">+7</div>
									<input name="phone" autocomplete="off" value="" type="text" class="form__field form__phone-prefix__field" id="phone_newphone1">
									<div class="js-error form__message form__message_error"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" value="Готово" class="confirm-ok form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-signupphone2_in" style="display:none;">
			<form action="">
				<input name="back" type="hidden" value="signup">
				<div class="popup__box">
					<div class="popup__head">Введите код на картинке</div>
					<div class="popup__desc">
						<div class="form__row">
							<div class="form__row__subwidget_inline">
								<input type="text" name="code" value="" maxlength="16" class="form__field form__captcha__input" autocomplete="off" style="width:100px;">
								<div class="js-error form__message_error"></div>
							</div>
							<div class="form__row__subwidget_inline">
								<img src="./mailru/shit/0.gif" class="js-captchaImage" alt="" width="240" height="100" style="display: block;">
							</div>
							<div class="form__row__subwidget_inline">
								<a href="javascript:void(0);" class="js-captchaReloader">Не вижу код</a>
							</div>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" value="Готово" class="confirm-ok form__button form__button_submit">
				</div>
			</form>
		</div>
		<div class="is-sugnupSuccess_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head" style="color:#009843 !important;">Учетная запись успешно подтверждена</div>
					<div class="popup__desc popup__desc_messagebox">Номер <strong class="phone popup__head__nobreaks"></strong> можно использовать для восстановления пароля или для SMS-уведомлений.</div>
					<div class="popup__desc">
						<div><a href="https://e.mail.ru/cgi-bin/security" target="_blank">Перейти к настройкам безопасности</a></div>
						<div><a href="https://e.mail.ru/cgi-bin/editnotify?mode=2" target="_blank">Перейти к настройкам SMS-уведомлений</a></div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" value="Продолжить" class="confirm-ok form__button form__button_submit">
				</div>
			</form>
		</div>
		<div class="is-delete_attach_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Вы уверены?</div>
					<div class="popup__desc">Вы уверены, что хотите удалить файл?</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Продолжить" class="confirm-ok form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-enable_text_mode_in" style="display:none;">
			<form action="">
				<div class="popup__box popup__box_messagebox">
					<i class="icon icon_popup popup__icon icon_popup_remove-format"></i>
					<div class="popup__head">Вы уверены?</div>
					<div class="popup__desc">
						Все оформление текста, включая изображения,<br>будет утеряно.
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Продолжить" class="confirm-ok form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-submit_empty_message_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Вы уверены?</div>
					<div class="popup__desc">Вы уверены, что хотите отправить пустое письмо?</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Продолжить" class="confirm-ok  form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-phone_verify_check_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">
						Проверка номера
					</div>
					<div class="popup__desc popup__desc_messagebox">
						<div class="js-loadProgress loadProgress">Загрузка</div>
						<div class="js-error form__message form__message_error"></div>
					</div>
				</div>
				
			</form>
		</div>
		<div class="is-nosms1_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Не пришло SMS-сообщение?</div>
					<div class="popup__desc">
						<div class="popup__desc__parag">С момента отправки прошло <strong class="js-time"></strong>. Скорее всего SMS-сообщение придет в ближайшие несколько минут.</div>
						<div class="popup__desc__parag">Сообщение было отправлено на номер <strong class="js-phone"></strong></div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Вернуться" class="confirm-return form__button form__button_submit">
					
				</div>
			</form>
		</div>
		<div class="is-nosms2_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">
						Не пришло SMS-сообщение?
					</div>
					<div class="popup__desc popup__desc_messagebox">
						Если сообщение до сих пор не пришло, Вы можете запросить повторную отправку или зарегистрироваться без телефона.
					</div>
				</div>
				<div class="popup__controls">
					<input type="submit" class="form__button form__button_submit confirm-ok" value="Отправить SMS">
					<input type="submit" class="form__button form__button_submit confirm-return" value="Вернуться">
					
				</div>
			</form>
		</div>
		<div class="is-outer_site_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Вы&nbsp;собираетесь покинуть Mail.Ru и&nbsp;перейти на&nbsp;сторонний сайт по&nbsp;присланной в&nbsp;письме ссылке <a id="is-outer_site-txt" cnt_sb="351249" href="https://e.mail.ru/cgi-bin/login#" target="_blank" class="dB mt10 t12 normal"></a></div>
					<div class="popup__desc">
						<div class="popup__desc__parag">Рекомендуем переходить по&nbsp;ссылкам только от&nbsp;известных отправителей и&nbsp;никогда не&nbsp;вводить пароль от&nbsp;своего почтового ящика на&nbsp;сторонних сайтах!</div>
						<div class="form__checkbox">
							<label>
								<input value="1" id="NoForeignConfirm" name="NoForeignConfirm" type="checkbox" class="form__checkbox__checkbox">
								<span class="form__checkbox__label">Не предупреждать меня при переходе на сторонние сайты</span>
							</label>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Перейти на сайт" class="confirm-ok form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-fishing_site_in" style="display:none;">
			<form action="">
				<div class="popup__box popup__box_messagebox">
					<i class="icon icon_popup popup__icon icon_popup_warning"></i>
					<div class="popup__head">Ссылка, по&nbsp;которой вы&nbsp;хотите перейти, возможно, небезопасна</div>
					<div class="popup__desc">
						<div class="popup__desc__parag">Ссылка <span id="is-fishing_site-txt"></span> может нанести вред вашему компьютеру и&nbsp;привести к&nbsp;взлому почтового ящика.</div>
						<div class="popup__desc__parag popup__desc__parag_select">Я&nbsp;понимаю опасность и&nbsp;беру на&nbsp;себя всю ответственность, но&nbsp;все равно хочу перейти на&nbsp;<a href="https://e.mail.ru/cgi-bin/login#" class="fishing-link" cnt_sb="351250" target="_blank">указанный сайт</a>.</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value=" Вернуться в почту " class="confirm-cancel form__button form__button_submit">
					<a href="http://help.mail.ru/mail-help/security/internet" target="_blank" class="popup__link-skipstep">Защита почтового ящика</a>
				</div>
			</form>
		</div>
		<div class="is-wotfishing_site_in" style="display:none;">
			<form action="">
				<div class="popup__box popup__box_messagebox">
					<i class="icon icon_popup icon_popup_warning popup__icon"></i>
					<div class="popup__head">Сайт, который вы&nbsp;хотите посетить, возможно, небезопасен</div>
					<div class="popup__desc">
						<div class="popup__desc__parag">
							<a href="http://wot.mail.ru/" cnt_d="484811" target="_blank" class="js-wotlink"><img class="popup__desc__image" src="./mailru/shit/wot_logo.png" alt=""></a>По&nbsp;оценкам пользователей Web of&nbsp;Trust этот сайт может нанести вред вашему компьютеру. Узнать подробнее об&nbsp;оценке этого сайта и&nbsp;безопасной работе в&nbsp;интернете можно на&nbsp;сайте <a href="http://wot.mail.ru/" cnt_d="484811" target="_blank" class="js-wotlink">wot.mail.ru</a>
						</div>
						<div class="popup__desc__parag popup__desc__parag_select">Я&nbsp;понимаю опасность и&nbsp;беру на&nbsp;себя всю ответственность, но&nbsp;все равно хочу перейти на&nbsp;<a href="https://e.mail.ru/cgi-bin/login#" class="fishing-link" cnt_sb="484803" target="_blank">указанный сайт</a>.</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value=" Вернуться в почту " class="confirm-cancel form__button form__button_submit">
					<a href="http://help.mail.ru/mail-help/security/internet" target="_blank" class="popup__link-skipstep">Защита почтового ящика</a>
				</div>
			</form>
		</div>
		<div class="is-outer_form_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Вы собираетесь отправить данные из формы на сторонний сайт.</div>
					<div class="popup__desc">
						<div class="popup__desc__parag"><a id="is-outer_form-txt" href="https://e.mail.ru/cgi-bin/login#" target="_blank" class="normal"></a></div>
						<div class="popup__desc__parag">Рекомендуем вам отправлять формы только на известные вам сайты. Никогда не указывайте в них пароли и персональные данные.</div>
						<div class="form__checkbox">
							<label>
								<input value="1" id="iufi-NFC" name="NoForeignConfirm" type="checkbox" class="form__checkbox__checkbox">
								<span class="form__checkbox__label">Не предупреждать меня при переходе на сторонние сайты</span>
							</label>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Отправить" class="confirm-ok form__button form__button_submit">
					<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
				</div>
			</form>
		</div>
		<div class="is-fishing_form_in" style="display:none;">
			<form action="">
				<div class="popup__box popup__box_messagebox">
					<i class="icon icon_popup popup__icon icon_popup_warning"></i>
					<div class="popup__head">Вы&nbsp;пытаетесь отправить данные на&nbsp;возможно небезопасный сайт</div>
					<div class="popup__desc">
						<div class="popup__desc__parag">
							Форма, которую вы&nbsp;заполнили, отправляет данные на&nbsp;сайт <span id="is-fishing_form-txt"></span>, который может нанести вред вашему компьютеру, стать причиной взлома почтового ящика или краже ваших персональных данных.
						</div>
						<div class="popup__desc__parag popup__desc__parag_select">Я&nbsp;понимаю опасность и&nbsp;беру на&nbsp;себя всю ответственность, но&nbsp;все равно хочу отправить данные на&nbsp;указанный сайт.</div>
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Не отправлять" class="confirm-cancel form__button form__button_submit">
					<a class="confirm-ok form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отправить</a>
				</div>
			</form>
		</div>
		<div class="is-to_black_list_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Добавить в «черный список»</div>
					<div class="popup__desc">
						<div class="popup__desc__parag">Вы уверены, что хотите добавить адрес <strong class="email"></strong> в «черный список» и больше не получать от него письма?</div>
						<div class="form__checkbox form__checkbox_next-bottom-checkbox">
							<label for="to_black_list_mode1">
								<input id="to_black_list_mode1" name="to_black_list_mode" type="radio" value="1" class="form__checkbox__checkbox" checked="">
								добавить, но не удалять письма от адресата
							</label>
						</div>
						<div class="form__checkbox form__checkbox_next-bottom-checkbox">
							<label for="to_black_list_mode2">
								<input id="to_black_list_mode2" name="to_black_list_mode" type="radio" value="2" class="form__checkbox__checkbox">
								добавить и удалить текущее письмо
							</label>
						</div>
						<div class="form__checkbox form__checkbox_next-bottom-checkbox">
							<label for="to_black_list_mode3">
								<input id="to_black_list_mode3" name="to_black_list_mode" type="radio" value="3" class="form__checkbox__checkbox">
								добавить и удалить все письма от адресата<br>(может занять несколько минут)
							</label>
						</div>
					</div>
				</div>
				<div class="popup__controls">
					<div class="controls">
						<input type="button" value="Добавить в черный список" class="confirm-ok form__button form__button_submit">
						<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
					</div>
					<div class="progress" style="display: none;">
						<div class="inLoading_E6E8ED popup__link-skipstep" style="line-height: normal; color:#999999; font-weight:bold;">идет поиск писем…</div>
					</div>
				</div>
			</form>
		</div>

		<div class="is-file_size_error_in" style="display:none;">
			<form action="">
				<div class="popup__box">
					<div class="popup__head">Ошибка</div>
					<div class="popup__desc">
						Общий размер загружаемых вами файлов превышает разрешенные для данного способа загрузки 20 Мб. Чтобы прикрепить файлы большего объема, пожалуйста, используйте кнопку «Прикрепить».
					</div>
				</div>
				<div class="popup__controls">
					<input type="button" value="Продолжить" class="confirm-ok form__button form__button_submit">
				</div>
			</form>
		</div>

		<div class="is-addPasswordQuestion_in" style="display:none;">
	<form action="https://e.mail.ru/cgi-bin/userinfo" method="post">
		<div class="popup__box">
			<div class="popup__head">Удаление номера телефона</div>
			<div class="popup__desc popup__desc_messagebox">Внимание! После удаления этого телефона ваш почтовый ящик останется без информации для восстановления пароля. Чтобы продолжить, пожалуйста, укажите новый секретный вопрос и ответ на него, затем введите текущий пароль.</div>
				<div class="js-error form__message_error" style="padding:0 20px 10px;"></div>
					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<label>Секретный вопрос</label>
						</div>
						<div class="form__row__widget">
							<div style="width: 298px;" class="form__select">
								<div class="form__select__box"><div class="form__select__box__text js-text"></div></div>
								<i class="form__select__arrow"></i>
								<select name="Password_Question" class="js-passwordQuestion form__select__select">
									
									<option value="Custom">Свой вопрос</option>
								</select>
							</div>
						</div>
					</div>
					<div style="display: none;" class="js-passwordCustomQuestionContainer form__row">
						<div class="form__row__label form__row__label_popup">
							<label>Свой вопрос</label>
						</div>
						<div class="form__row__widget form__row__widget_popup">
							<input type="text" maxlength="64" value="" name="Password_CustomQuestion" class="form__field">
						</div>
					</div>
					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<label>Ответ</label>
						</div>
						<div class="form__row__widget form__row__widget_popup">
							<input type="text" maxlength="64" value="" name="Password_Answer" class="form__field">
						</div>
					</div>
					<div class="form__row">
						<div class="form__row__label form__row__label_popup">
							<label>Текущий пароль</label>
						</div>
						<div class="form__row__widget form__row__widget_popup">
							<input type="password" value="" name="oldPswd" class="form__field">
						</div>
					</div>
		</div>
		<div class="popup__controls">
			<input type="submit" value="Продолжить" class="confirm-ok form__button form__button_submit">
			<a class="confirm-cancel form__button form__button_reset" href="https://e.mail.ru/cgi-bin/login#">Отмена</a>
		</div>
	</form>
</div>

		




    




<div class="is-changeAccount_in" style="display:none;">
	<form action="https://auth.mail.ru/cgi-bin/auth" method="post" name="Auth">
		<input type="text" name="Login" value="" style="display: none;">
		<input type="hidden" name="page" value="">
		<div class="popup__box">
			<div class="popup__head ">Войти в почту&nbsp;<span class="js-oldEmail"></span></div>
			<div class="popup__desc popup__desc_messagebox">Для продолжения работы с почтой, введите пароль</div>
			<div class="form__row">
				<div class="form__row__label form__row__label_popup">
					<label>Пароль</label>
				</div>
				<div class="form__row__widget form__row__widget_popup">
					<input type="password" name="Password" class="form__field">
					<div class="form__row__subwidget">
						<a href="https://e.mail.ru/cgi-bin/passremind" class="mr-link"><u>Забыли пароль?</u></a>
					</div>
				</div>
			</div>
		</div>
		<div class="popup__controls">
			<input type="submit" value="Войти в почту" class="form__button form__button_submit">
			<a href="https://e.mail.ru/cgi-bin/msglist" class="popup__link-skipstep">Перейти к <span class="js-newEmail"></span></a>
		</div>
	</form>
</div>


	</div>
</div>


			<div style="position: absolute; top: -100px; left: -100px">
				<div id="_counters_"></div>
			</div>

		

		

		<div id="mailru-drop-zone" style="display: none; border: 3px dashed #b1cee5; background-color: rgba(234,242,248,.8); z-index: 3000; position: fixed; left: 5px; right: 5px; top: 5px; bottom: 5px;">
			<div style="color: #069; position: absolute; width: 500px; top: 220px; left: 50%; margin-left: -250px; text-shadow: 0 1px 0 #fff; font-size: 30px; text-align: center; height: 50px;">Перетащите файлы сюда, чтобы прикрепить к письму</div>
		</div>

		<div style="position:absolute;left:-10000px;">
	

	<img src="./mailru/shit/d227223.gif" style="width:0;height:0;position:absolute;" alt="">
<!--LiveInternet counter--><script type="text/javascript"><!--
new Image().src = "//counter.yadro.ru/hit;win-mail?r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(location.getHref ? location.getHref() : document.URL)+
";"+Math.random();//--></script><!--/LiveInternet-->

<script type="text/javascript">//<![CDATA[
(function(w,n,d,l,r,s){(new Image).src='//top-fwz1.mail.ru/counter?id=110605;js=13'+
(('getHref'in l)?';u='+escape(l.getHref()):'')+(('javaEnabled'in n)?';j='+n.javaEnabled():'')+((r=d.referrer)?';r='+escape(r):'')+
((s=w.screen)?';s='+s.width+'*'+s.height+';d='+(s.colorDepth||s.pixelDepth):'')+';_='+Math.random();})(window,navigator,document,location);//]]>
</script><noscript>&lt;p&gt;&lt;a href="http://top.mail.ru/jump?from=110605"&gt;&lt;img src="//top-fwz1.mail.ru/counter?js=na;id=110605"
style="border:0;" height="1" width="1" alt="Рейтинг@Mail.ru" /&gt;&lt;/a&gt;&lt;/p&gt;</noscript>

<script type="text/javascript">//<![CDATA[
(function(w,n,d,l,r,s){(new Image).src='//top-fwz1.mail.ru/counter?id=2035946;js=13'+
(('getHref'in l)?';u='+escape(l.getHref()):'')+(('javaEnabled'in n)?';j='+n.javaEnabled():'')+((r=d.referrer)?';r='+escape(r):'')+
((s=w.screen)?';s='+s.width+'*'+s.height+';d='+(s.colorDepth||s.pixelDepth):'')+';_='+Math.random();})(window,navigator,document,location);//]]>
</script><noscript>&lt;p&gt;&lt;a href="http://top.mail.ru/jump?from=2035946"&gt;&lt;img src="//top-fwz1.mail.ru/counter?js=na;id=2035946"
style="border:0;" height="1" width="1" alt="Рейтинг@Mail.ru" /&gt;&lt;/a&gt;&lt;/p&gt;</noscript>

<img src="./mailru/shit/k" style="width:0;height:0;position:absolute;" alt="">
<!--HTTPSuser-->

	<!-- system:518289 -->


	

	

<script type="text/javascript">
//<![CDATA[
(function(w, d) {
        if (w.rb_counter) return;
        function h() {
                var n, a = arguments;
                for(var i=a.length;i--;){
                        n = a[i].split(',');
                        for(var j=n.length;j--;){
                                c(n[j]);
                        }
                }
        }
        function c(n) {
                var m, r = parseInt(Math.random()*1E9), s;
                if (!(m = n.match(/^(?:cl([bn])|([adgin]))(\d+)(?:sz(\d+))?/))) return;
                if (m[1]) {
                        s = "s" + m[1];
                }
                else if(m[2] == "n") {
                        s = "nc";
                }
                else if(m[2]=="i") {
                        r = null;
                        s = m[2];
                }
                else {
                        s = m[2];
                }
                s += m[3] + ".gif?";
                if (m[4]) s += "sz=" + m[4];
                if (r) s += "&rnd=" + r;
                (new Image).src = "//rs.mail.ru/" + s;
        }
        (function(o, e, fn) {
                if (o.addEventListener) o.addEventListener(e, fn, false);
                else if (o.attachEvent) o.attachEvent('on' + e, fn);
                else o['on' + e] = fn;
        })(d, 'mousedown', function(e) {
                var n;
                e = e || w.event;
                e = e.target || e.srcElement;
                while (e.parentNode){
                        if ((n = e.getAttribute('name')) && (n = n.toString())){
                                h(n);
                        }
                        e = e.parentNode;
                }
        });
        w.rb_counter = h;
})(window, document);
//]]>
</script>




</div>

	



</body></html>