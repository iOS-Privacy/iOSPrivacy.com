! Title: antiZuckerTrump
! Version: 2.20.6.1
! Description: Anti-ZuckerTrump is
! specifically for blocking TrumpBook &
! TrumpBook-related domains in order to
! deny Trump's misinformation campaigns
! which are wholeheartedly supported by
! Mark Zuckerberg. This is not a
! personal endorsement of Biden, as I
! am an Anarchist; however, the 2020
! election is a matter of ridding the
! U.S. of Trump & Family, a treasonous
! bunch of parasites who'd have no
! issues sparking a second civil war.
! Maintainer: intr0
! Contact: support@intr0.com
!
! +++ Firefox Content-Security-Policy rules +++ !
!
!#if (adguard_ext_firefox)
!
$important,csp=block-all-mixed-content
$important,csp=object-src 'none'
$important,csp=frame-ancestors 'none'
$important,csp=upgrade-insecure-requests
!
! +++ Site-specific CSP rules +++ !
!+++ Facebook, Giphy, Instagram, WhatsApp, Messenger +++ !
!
$important,csp=connect-src 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
$important,csp=default-src 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
$important,csp=font-src 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
$important,csp=frame-ancestors 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
$important,csp=frame-src 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
$important,csp=img-src 'none',domain=facebook.com|giphy.com|instagram.com|twitter.com|whatsapp.com|messenger.com
$important,csp=media-src 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
$important,csp=sandbox,domain=facebook.com|giphy.com|instagram.com|twitter.com|whatsapp.com|messenger.com
$important,csp=script-src 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
$important,csp=style-src 'none',domain=facebook.com|giphy.com|instagram.com|twitter.com|whatsapp.com|messenger.com
$important,csp=worker-src 'none',domain=facebook.com|giphy.com|instagram.com|whatsapp.com|messenger.com
!
!#endif
!
! +++ Block resources for the following Facebook owned Android apps: Facebook, Facebook Lite, Facebook Games, Messenger, Messenger Lite, Workplace Chat, Lasso, Spark AR Player, WhatsApp, WhatsApp for Business, Freebasics, Origami & Giphy. Goal is to make them unusable. +++ !
!
!#if adguard_app_android
!
||facebook.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||fbcdn.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||giphy.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||internet.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||lassovideos.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||messenger.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||messengerkids.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||origami.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||sparkar.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||whatsapp.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||workplace.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.katana|com.giphy.messenger|com.facebook.games|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
!
! +++ Block Amazon images & scripts from loading in Facebook owned apps. +++ !
!
||amazonaws.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.games|com.facebook.katana|com.giphy.messenger|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
||cloudfront.$app=com.whatsapp.w4b|com.whatsapp|com.facebook.mlite|com.facebook.orca|com.facebook.games|com.facebook.katana|com.giphy.messenger|com.facebook.lasso|com.facebook.arstudio.player|com.freebasics|com.facebook.Origami|com.facebook.talk|com.facebook.workchat
!
!#endif
