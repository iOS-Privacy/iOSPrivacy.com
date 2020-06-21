! Title: antiWhatsApp-Combine.d
! Version: 2.20.6.1
! Description: Anti WhatsApp ruleset
! for AdGuard & uBlock Origin.
!
! +++ Network Rules for AdGuard +++ !
!
[2a03:2880:f211:c5:face:b00c:0:167]$network
157.240.0.60$network
31.13.65.49$network
31.13.66.56$network
!
! +++ Rule for WhatsApp on Android +++ !
!
!#if adguard_app_android
!
||whatsapp.$app=whatsapp.messenger|whatsapp.messenger.w4b
!
!#endif
!
! +++ CSP Rules for Firefox +++ !
!
$important,csp=connect-src 'none',domain=whatsapp.com|whatsapp.net
$important,csp=font-src 'none',domain=whatsapp.com|whatsapp.net
$important,csp=script-src 'none',domain=whatsapp.com|whatsapp.net
$important,csp=style-src 'none',domain=whatsapp.com|whatsapp.net
$important,csp=sandbox,domain=whatsapp.com|whatsapp.net
!
! +++ TODO: add standard rules & add link on README & website +++
! EOF