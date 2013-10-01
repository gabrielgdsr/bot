// Internationalization strings
dateFormat.i18n = {
    dayNames: [
        "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat",
        "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
    ],
    monthNames: [
        "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
        "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ]
};

// For convenience...
Date.prototype.format = function (mask, utc) {
    return dateFormat(this, mask, utc);
};

var langToCountry = {"prs": "AF","ps": "AF","sq": "AL","ar": "DZ","tzm": "DZ","es": "AR","hy": "AM","en": "AU","de": "AT","az": "AZ","az": "AZ","ar": "BH","bn": "BD","be": "BY","nl": "BE","fr": "BE","en": "BZ","es": "VE","quz": "BO","es": "BO","bs": "BA","bs": "BA","hr": "BA","sr": "BA","sr": "BA","pt": "BR","ms": "BN","bg": "BG","km": "KH","en": "CA","fr": "CA","iu": "CA","iu": "CA","moh": "CA","en": "029","arn": "CL","es": "CL","es": "CO","es": "CR","hr": "HR","cs": "CZ","da": "DK","es": "DO","quz": "EC","es": "EC","ar": "EG","es": "SV","et": "EE","am": "ET","fo": "FO","fi": "FI","smn": "FI","se": "FI","sms": "FI","sv": "FI","gsw": "FR","br": "FR","co": "FR","fr": "FR","oc": "FR","ka": "GE","de": "DE","dsb": "DE","hsb": "DE","el": "GR","kl": "GL","qut": "GT","es": "GT","es": "HN","zh": "HK","hu": "HU","is": "IS","as": "IN","bn": "IN","en": "IN","gu": "IN","hi": "IN","kn": "IN","kok": "IN","ml": "IN","mr": "IN","or": "IN","pa": "IN","sa": "IN","ta": "IN","te": "IN","id": "ID","fa": "IR","ar": "IQ","en": "IE","ga": "IE","ur": "PK","he": "IL","it": "IT","en": "JM","ja": "JP","ar": "JO","kk": "KZ","sw": "KE","ko": "KR","ar": "KW","ky": "KG","lo": "LA","lv": "LV","ar": "LB","ar": "LY","de": "LI","lt": "LT","fr": "LU","de": "LU","lb": "LU","zh": "MO","mk": "MK","en": "MY","ms": "MY","dv": "MV","mt": "MT","es": "MX","mn": "MN","sr": "ME","sr": "ME","ar": "MA","ne": "NP","nl": "NL","fy": "NL","en": "NZ","mi": "NZ","es": "NI","ha": "NG","ig": "NG","yo": "NG","nb": "NO","nn": "NO","smj": "NO","se": "NO","sma": "NO","ar": "OM","es": "PA","es": "PY","zh": "CN","mn": "CN","bo": "CN","ug": "CN","ii": "CN","quz": "PE","es": "PE","fil": "PH","pl": "PL","pt": "PT","fr": "MC","es": "PR","ar": "QA","en": "PH","ro": "RO","ba": "RU","ru": "RU","tt": "RU","sah": "RU","rw": "RW","ar": "SA","wo": "SN","sr": "RS","sr": "RS","sr": "CS","sr": "CS","zh": "SG","en": "SG","sk": "SK","sl": "SI","af": "ZA","en": "ZA","xh": "ZA","zu": "ZA","nso": "ZA","tn": "ZA","eu": "ES","ca": "ES","gl": "ES","es": "ES","si": "LK","smj": "SE","se": "SE","sma": "SE","sv": "SE","fr": "CH","de": "CH","it": "CH","rm": "CH","ar": "SY","syr": "SY","zh": "TW","tg": "TJ","th": "TH","en": "TT","ar": "TN","tr": "TR","tk": "TM","ar": "AE","uk": "UA","en": "GB","gd": "GB","cy": "GB","es": "US","es": "UY","uz": "UZ","uz": "UZ","vi": "VN","ar": "YE","en": "ZW","en": "US"};
var possibleFlags = Array("ad", "ae", "af", "ag", "ai", "al", "am", "an", "ao", "ar", "as", "at", "au", "aw", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bm", "bn", "bo", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "catalonia", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "england", "er", "es", "et", "eu", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "ic", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kurdistan", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "scotland", "sd", "se", "sg", "sh", "si", "sk", "sl", "sm", "sn", "so", "somaliland", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wales", "wf", "ws", "ye", "yt", "za", "zanzibar", "zm", "zw");
var plugEssential = plugEssential || false;

define('plugEssential/Config', { 
    plug: {
        roomView: $("#room-view"),
        wootBtn: $("#button-vote-positive"),
        djPlayBtn: $("#button-dj-play"),
        waitlistJoinBtn: $("#button-dj-waitlist-join"),
        chatInput: $("#chat-input-field")
    }
});

define('plugEssential/Model', ['app/base/Class', 'plugEssential/Config', 'app/utils/AvatarManifest', 'app/models/RoomModel', 'app/net/Socket', 'app/views/room/AudienceView', 'app/facades/ChatFacade'], function (Class, Config, Avatar, RoomModel, Socket, AudienceView, ChatFacade) {
    return Class.extend({
        version: {
            major: 0,
            minor: 6,
            change: 2,
            getString: function () {
                return (this.major + "." + this.minor + "." + this.change);
            }
        },
        init: function () {
            console.log("Activating Plug Essential!");
            this.proxy = {
                togglePanel: $.proxy(this.togglePanel, this),
                onDjAdvance: $.proxy(this.onDjAdvance, this),
                onUpdateVote: $.proxy(this.onUpdateVote, this),
                ctrlAutowoot: $.proxy(this.ctrlAutowoot, this),
                ctrlAutojoin: $.proxy(this.ctrlAutojoin, this),
                refreshUserlist: $.proxy(this.refreshUserlist, this),
                onUserJoin: $.proxy(this.onUserJoin, this),
                onUserLeave: $.proxy(this.onUserLeave, this),
                refreshInfo: $.proxy(this.refreshInfo, this),
                onRoomPropsUpdate: $.proxy(this.onRoomPropsUpdate, this),
                strobeToggle: $.proxy(this.strobeToggle, this)
            };
            this.userlist = {}
            this.autowootActive = false;
            this.autojoinActive = false;
            this.strobeState = false;
            this.initGui();
            this.initEvents();
            this.refreshUserlist();
            this.refreshUserDetail();
            this.refreshTop();
            this.refreshInfo();
        },
        close: function () {
            console.log("Closing Plug Essential!");
            this.controlPanel.remove();
            this.controlPanelBtn.remove();
        },
        initEvents: function () {
            API.on(API.VOTE_UPDATE, this.proxy.onUpdateVote);
            API.on(API.DJ_ADVANCE, this.proxy.onDjAdvance);
            API.on(API.USER_JOIN, this.proxy.onUserJoin);
            API.on(API.USER_LEAVE, this.proxy.onUserLeave);
            API.on(API.WAIT_LIST_UPDATE, this.proxy.refreshInfo);
            API.on(API.DJ_UPDATE, this.proxy.refreshInfo);
            var roomPropsUpdate = Socket.listener.roomPropsUpdate;
            Socket.listener.roomPropsUpdate = $.proxy(function(e) {
                roomPropsUpdate(e);
                this.proxy.onRoomPropsUpdate();
            }, this);
        },
        initGui: function () {
            this.controlPanelBtn = $("<div id=\"pe_control-panel-btn\"></div>").appendTo(Config.plug.roomView);
            this.controlPanelBtn.addClass("pe_control-panel-btn-close");
            this.controlPanel = $("<div id=\"pe_control-panel\"><div class=\"frame-background\"></div></div>").appendTo(Config.plug.roomView);
            this.controlPanelBtn.click(this.proxy.togglePanel);
            this.userlistBox = $("<div id=\"pe_userlist-box\"></div>").appendTo(this.controlPanel);
            this.userlistHeader = $("<div id=\"pe_userlist-header\" class=\"meta-header\"><span id=\"room-score-perc\" class=\"hnb\" style=\"left:0;\">USERLIST</span><span id=\"pe_userlist-count\">? users</span></div>").appendTo(this.userlistBox);
            this.userlistBody = $("<div id=\"pe_userlist-body\"></div>").appendTo(this.userlistBox);
            this.userlistTable = $("<table id=\"pe_userlist-table\"><tbody></tbody></table>").appendTo(this.userlistBody);
            this.userdetailBox = $("<div id=\"pe_user-detail-box\"></div>").appendTo(this.controlPanel);
            this.userdetailHeader = $("<div class=\"meta-header\" id=\"pe_user-detail-header\"><span id=\"room-score-perc\" class=\"hnb\" style=\"left:0;\">USER DETAIL</span></div>").appendTo(this.userdetailBox);
            this.userdetailBody = $("<div id=\"pe_user-detail-body\"></div>").appendTo(this.userdetailBox);
            this.userdetailBody.append("<div style=\"position: absolute; top: 60px; left: 8px;\"><span style=\"font-size: 10px;color: #858585;font-weight: bold;\">STATUS</span></div>");
            this.userdetailBody.append("<div style=\"position: absolute; top: 95px; left: 8px;\"><span style=\"font-size: 10px;color: #858585;font-weight: bold;\">JOIN DATE</span></div>");
            this.userdetailBody.append("<div style=\"position: absolute; top: 130px; left: 8px;\"><span style=\"font-size: 10px;color: #858585;font-weight: bold;\">LANGUAGE</span></div>");
            this.userdetailBody.append("<div style=\"position: absolute; top: 63px; left: 150px; width: 100px;\"><span style=\"font-size: 9px;color: #858585;font-weight: bold;float: right;\">DJ POINTS</span></div>");
            this.userdetailBody.append("<div style=\"position: absolute; top: 98px; left: 150px; width: 100px;\"><span style=\"font-size: 9px;color: #858585;font-weight: bold;float: right;\">LISTENER POINTS</span></div>");
            this.userdetailBody.append("<div style=\"position: absolute; top: 133px; left: 150px; width: 100px;\"><span style=\"font-size: 9px;color: #858585;font-weight: bold;float: right;\">CURATOR POINTS</span></div>");
            this.userdetailBody.append("<div style=\"position: absolute; top: 168px; left: 150px; width: 100px;\"><span style=\"font-size: 9px;color: #858585;font-weight: bold;float: right;\">FANS</span></div>");
            this.userdetailBody.append("<div style=\"position: absolute; top: 203px; left: 150px; width: 100px;\"><span style=\"font-size: 9px;color: #858585;font-weight: bold;float: right;\">SCORE</span></div>");
            this.detailAvatar = $("<div class=\"meta-value hnb\" style=\"height: 50px;width: 244px;top: 8px; left: 8px;border-bottom: 1px solid #333;\"><img /></div>").appendTo(this.userdetailBody);
            this.detailUsername = $("<div class=\"meta-value hnb\" style=\"top: 15px; left: 60px;\"><span style=\"font-size: 16px;\"></span></div>").appendTo(this.userdetailBody);
            this.detailRank = $("<div class=\"meta-value hnb\" style=\"top: 35px; left: 60px;\"><span style=\"font-size: 14px;\"></span></div>").appendTo(this.userdetailBody);
            this.detailStatus = $("<div class=\"meta-value hnb\" style=\"width: 250px;top: 76px; left: 8px;\"><span style=\"font-size: 12px;\"></span></div>").appendTo(this.userdetailBody);
            this.detailJoined = $("<div class=\"meta-value hnb\" style=\"width: 250px;top: 111px; left: 8px;\"><span style=\"font-size: 12px;\"></span></div>").appendTo(this.userdetailBody);
            this.detailLanguage = $("<div class=\"meta-value hnb\" style=\"width: 250px;top: 146px; left: 8px;\"><span style=\"font-size: 12px;\"></span></div>").appendTo(this.userdetailBody);
            this.detailDjPoints = $("<div class=\"meta-value hnb\" style=\" top: 76px; left: 170px; width: 80px;\"><span style=\"font-size: 14px;float: right;\"></span></div>").appendTo(this.userdetailBody);
            this.detailListenerPoints = $("<div class=\"meta-value hnb\" style=\" top: 111px; left: 170px; width: 80px;\"><span style=\"font-size: 14px;float: right;\"></span></div>").appendTo(this.userdetailBody);
            this.detailCuratorPoints = $("<div class=\"meta-value hnb\" style=\" top: 146px; left: 170px; width: 80px;\"><span style=\"font-size: 14px;float: right;\"></span></div>").appendTo(this.userdetailBody);
            this.detailFans = $("<div class=\"meta-value hnb\" style=\" top: 181px; left: 170px; width: 80px;\"><span style=\"font-size: 14px;float: right;\"></span></div>").appendTo(this.userdetailBody);
            this.detailScore = $("<div class=\"meta-value hnb\" style=\" top: 216px; left: 170px; width: 80px;\"><span style=\"font-size: 14px;float: right;\"></span></div>").appendTo(this.userdetailBody);
            this.topHistoryBox = $("<div id=\"pe_top-history-box\"></div>").appendTo(this.controlPanel);
            this.topHistoryHeader = $("<div class=\"meta-header\" id=\"pe_top-history-header\"><span id=\"room-score-perc\" class=\"hnb\" style=\"left:0;\">TOP FROM HISTORY</span></div>").appendTo(this.topHistoryBox);
            this.topImage = $("<img id=\"pe_top-history-image\">").appendTo(this.topHistoryBox);
            this.topHistoryBody = $("<div id=\"pe_top-history-body\"></div>").appendTo(this.topHistoryBox);
            this.topInfo = $("<div style=\"left: 85px;width: 100%;position:absolute;\"></div>").appendTo(this.topHistoryBody);
            this.topAuthor = $("<div class=\"meta-value hnb\" style=\"width: 300%;top: 3px;\"><span style=\"font-size: 14px;\"></span></div>").appendTo(this.topInfo);
            this.topTitle = $("<div class=\"meta-value hnb\" style=\"width: 300%;top: 20px;color: #CCC;\"><span style=\"font-size: 11px;\"></span></div>").appendTo(this.topInfo);
            this.topScore = $("<div class=\"meta-value hnb\" style=\"width: 300%;top: 40px;color: #CCC;\"></div>").appendTo(this.topInfo);
            this.topScore.append("<span class=\"pe_top-score-img pe_mini-woot\" style=\"display: none;\"></span>");
            this.topWoot = $("<span class=\"pe_top-score\"></span>").appendTo(this.topScore);
            this.topScore.append("<span class=\"pe_top-score-img pe_mini-meh\" style=\"display: none;\"></span>");
            this.topMeh = $("<span class=\"pe_top-score\"></span>").appendTo(this.topScore);
            this.topScore.append("<span class=\"pe_top-score-img pe_mini-curate\" style=\"display: none;\"></span>");
            this.topCurate = $("<span class=\"pe_top-score\"></span>").appendTo(this.topScore);
            this.topPlayedBy = $("<span style=\"font-size: 10px;float: left;margin-left: 5px;margin-top: 1px;\"></span>").appendTo(this.topScore);
            this.controlsBox = $("<div id=\"pe_controls-box\"></div>").appendTo(this.controlPanel);
            this.controlsHeader = $("<div class=\"meta-header\" id=\"pe_controls-header\"><span id=\"room-score-perc\" class=\"hnb\" style=\"left:0;\">PLUG ESSENTIAL v"+this.version.getString()+"</span></div>").appendTo(this.controlsBox);
            this.controlsBody = $("<div id=\"pe_controls-body\"></div>").appendTo(this.controlsBox);
            this.controlsBody.append("<div style=\"position: absolute; top: 4px;width:100%;text-align: center;\"><span style=\"font-size: 10px;color: #858585;font-weight: bold;\">AUTOWOOT</span></div>");
            this.controlsBody.append("<div style=\"position: absolute; top: 51px;width:100%;;text-align: center;\"><span style=\"font-size: 10px;color: #858585;font-weight: bold;\">AUTOJOIN</span></div>");
            this.controlsBody.append("<div style=\"position: absolute; top: 98px;width:100%;;text-align: center;\"><span style=\"font-size: 10px;color: #858585;font-weight: bold;\">STROBE</span></div>");
            this.autowootBtn = $("<div style=\"top: 24px;\" class=\"pe_control-btn\">\
                <div class=\"frame-background\" style=\"background-color: #73A024;\"></div>\
                <div style=\"top: 1px;display: block;height: 100%;position: absolute;text-align: center;width: 100%;\">\
                <span style=\"color: #FFF;text-shadow: 1px 1px #303030;\">Enable</span></div></div>").appendTo(this.controlsBody);
            this.autowootBtn.click(this.proxy.ctrlAutowoot);
            this.autojoinBtn = $("<div style=\"top: 71px;\" class=\"pe_control-btn\">\
                <div class=\"frame-background\" style=\"background-color: #73A024;\"></div>\
                <div style=\"top: 1px;display: block;height: 100%;position: absolute;text-align: center;width: 100%;\">\
                <span style=\"color: #FFF;text-shadow: 1px 1px #303030;\">Enable</span></div></div>").appendTo(this.controlsBody);
            this.autojoinBtn.click(this.proxy.ctrlAutojoin);
            this.strobeBtn = $("<div style=\"top: 118px;\" class=\"pe_control-btn\">\
                <div class=\"frame-background\" style=\"background-color: #73A024;\"></div>\
                <div style=\"top: 1px;display: block;height: 100%;position: absolute;text-align: center;width: 100%;\">\
                <span style=\"color: #FFF;text-shadow: 1px 1px #303030;\">Enable</span></div></div>").appendTo(this.controlsBody);
            this.strobeBtn.click(this.proxy.strobeToggle);
            this.infoBox = $("<div style=\"position: absolute;left: 105px;top: 10px;width: 195px;\"></div>").appendTo(this.controlPanel);
            this.infoBody = $("<div id=\"pe_info-body\"></div>").appendTo(this.infoBox);
            this.infoPlace = $("<div style=\"position: absolute; top: 45px;width:100%;text-align: center;\"><span style=\"color: #B9B9B9;\"></span></div>").appendTo(this.infoBody);
            this.infoPosition = $("<div style=\"position: absolute; top:65px;width:100%;text-align: center;\"><span style=\"font-size: 20px;font-weight:bold;\"></span></div>").appendTo(this.infoBody);
            this.skipButton = $("<div style=\"position: absolute; width: 60px; height: 25px; padding: 0;display: block;left: 455px;top: 648px;text-align: center;border: 1px solid #000000;z-index: 1000000;cursor: pointer;\"><div class=\"frame-background\" style=\"background-color: #B92F40;opacity: 1;\"></div><div style=\"top: 4px;display: block;height: 100%;position: absolute;text-align: center;width: 100%;\"><span style=\"color: #461616;text-shadow: 1px 1px #DD9090;font-size: 15px;font-weight: bold;\">Skip</span></div></div>").appendTo(Config.plug.roomView);
            if(API.getUser().permission>=API.ROLE.BOUNCER){
                this.skipButton.click(function() {
                    API.moderateForceSkip();
                });


});
