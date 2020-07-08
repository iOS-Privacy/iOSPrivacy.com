! Title: antiZuckerTrump.f
! Version: 2.20.7.2
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
! +++ AdGuard & uBlock Origin Firefox rules +++ !
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
$important,csp=font-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=frame-ancestors 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=frame-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=img-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=media-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=sandbox,domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=script-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=style-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
$important,csp=worker-src 'none',domain=facebook.com|facebook.net|giphy.com|instagram.com|instagram.net|whatsapp.com|whatsapp.net|messenger.com|m.me|origami.design|fb.gg|giphy.world|workplace.com|messengerkids.com|fbwat.ch|msngr.com|las.so|wk.pl|fbcdn.net
!
! ------ Standard rules ------ !
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
||workplace.com^$important
!
! +++ End antiZuckerTrump +++ !