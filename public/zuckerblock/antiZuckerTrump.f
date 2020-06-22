! Title: antiZuckerTrump.f
! Version: 2.20.6.6
! Description: antiZuckerTrump.f is
! designed to block Facebook,
! Facebook related sites & apps in
! order to deny Mark Zuckerberg a
! small bit of Trump's political
! advertising profits.
!
! Moreover, by blocking these
! specific sites & apps, it's
! designed to deny Trump,
! who would have no issues
! sparking a second civil war,
! the 2020 election.
! Maintainer: intr0
! Contact: support@intr0.com
!
! +++ Firefox Content-Security-Policy rules +++ !
! +++ for AdGuard & uBlock Origin +++ !
!
$important,csp=block-all-mixed-content
$important,csp=object-src 'none'
$important,csp=frame-ancestors 'none'
$important,csp=upgrade-insecure-requests
!
! +++ Site-specific CSP rules +++ !
!
! +++ Facebook, Giphy, Instagram, WhatsApp, Messenger, Origami, Messengerkids, Lasso, Workplace +++ !
!
$important,csp=connect-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=default-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=font-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com||whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=frame-ancestors 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=frame-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=img-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=media-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=sandbox,domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com||m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=script-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com||m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=style-src 'none',domain=facebook.com||facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=worker-src 'none',domain=facebook.com||facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
!
! +++ AdGuard Android rules +++ !
!
!#if adguard_app_android
!
! +++ Block resources for the following Facebook owned Android apps: Facebook, Facebook Lite, Facebook Games, Messenger, Messenger Lite, Workplace Chat, Lasso, Spark AR Player, WhatsApp, WhatsApp for Business, Freebasics, Origami & Giphy. Goal is to make them unusable. +++ !
!
||facebook.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||fb.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||fbcdn.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||fbwat.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||giphy.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||internet.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||las.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||lassovideos.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||messenger.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||messengerkids.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||msngr.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||origami.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||sparkar.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||whatsapp.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||wk.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||workplace.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
!
! +++ Block Amazon if using Facebook owned apps. +++ !
!
||amazonaws.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.games|com.facebook.katana|com.giphy.messenger|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||cloudfront.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.games|com.facebook.katana|com.giphy.messenger|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
!
! +++ Block Google if using Facebook owned apps +++ !
!
||googleapis.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||google.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
!
! +++ Block Apple, Akamai, Fastly & Edgekey if using Facebook owned apps +++ !
!
||aaplimg.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||akadns.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||akamaiedge.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||apple-dns.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||apple.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||edgekey.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||fastly.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||icloud.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
!
! +++ Block OneLink if using Facebook owned apps +++ !
!
||onelink.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
!
! +++ Network Rules +++ !
!
157.240.138.17$network
199.232.30.2$network
31.13.66.35$network
31.13.66.4$network
[2001:559:80ae:0:face:b00c:0:a7]$network
[2a03:2880:f003:c07:face:b00c:0:2]$network
!
!#endif
!
! +++ Begin standard rules +++ !
!
157.240.138.17
199.232.30.2
31.13.66.35
31.13.66.4
!
||app-measurement.com^$important
||cdninstagram.$important,all
||crashlytics.com^$important
||crashlytics.l.google.com^$important
||facebook.$important,all
||fb.$important
||fbcdn.$important,all
||fbwat.$important
||firebaselogging-pa.googleapis.com^$important
||giphy.$important,all
||giphy.map.fastly.net^$important
||igsonar.$important
||instagram.$important,all
||internet.org^$important,all
||las.so^$important
||lassovideos.$important,all
||m.me^$important
||messenger.$important,all
||messengerkids.$important,all
||msngr.$important
||origami.design^$important,all
||sparkar.$important,all
||wa.me^$important
||whatsapp.$important,all
||wk.pl^$important
||workplace.$important,all
!
! +++ End antiZuckerTrump +++ !