! Title: antiZuckerTrump.f
! Version: 2.20.6.7
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
! +++ AdGuard Firefox rules +++ !
!
!#if adguard_ext_firefox
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
! +++ Standard rules +++ !
!
157.240.138.17
199.232.30.2
31.13.66.35
31.13.66.4
!
||app-measurement.com^$important
||cdninstagram.$important
||crashlytics.com^$important
||crashlytics.l.google.com^$important
||facebook.$important
||fb.co^$important
||fb.com^$important
||fb.gg^$important
||fb.me^$important
||fb.us^$important
||fbcdn.$important
||fbwat.ch^$important
||firebaselogging-pa.googleapis.com^$important
||giphy.$important
||giphy.map.fastly.net^$important
||i.org^$important
||igsonar.$important
||instagr.am^$important
||instagram.$important
||internet.org^$important
||las.so^$important
||lassovideos.com^$important
||m.me^$important
||messenger.$important
||messengerkids.$important
||msngr.$important
||origami.design^$important
||sparkar.com^$important
||wa.me^$important
||whatsapp.$important
||wk.pl^$important
||workplace.com$important
!
!#endif
!
! +++ uBlock Origin Firefox rules +++ !
!
!#if env_firefox
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
! +++ General Firefox rules +++ !
!
157.240.138.17
199.232.30.2
31.13.66.35
31.13.66.4
!
||app-measurement.com^$all
||cdninstagram.$all
||crashlytics.com^$all
||crashlytics.l.google.com^$all
||facebook.$all
||fb.co^$all
||fb.com^$all
||fb.gg^$all
||fb.me^$all
||fb.us^$all
||fbcdn.$all
||fbwat.ch^$all
||firebaselogging-pa.googleapis.com^$all
||giphy.$all
||giphy.map.fastly.net^$all
||i.org^$all
||igsonar.$all
||instagr.am^$all
||instagram.$all
||internet.org^$all
||las.so^$all
||lassovideos.com^$all
||m.me^$all
||messenger.$all
||messengerkids.$all
||msngr.$all
||origami.design^$all
||sparkar.com^$all
||wa.me^$all
||whatsapp.$all
||wk.pl^$all
||workplace.com^$all
!
!#endif
!
! +++ Androif AdGuard +++ !
!
!#if adguard_app_android
!
! +++ Block resources for the following Facebook owned Android apps: Facebook, Facebook Lite, Facebook Games, Messenger, Messenger Lite, Workplace Chat, Lasso, Spark AR Player, WhatsApp, WhatsApp for Business, Freebasics, Origami & Giphy. Goal is to make them unusable. +++ !
!
*$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
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
! +++ End antiZuckerTrump +++ !