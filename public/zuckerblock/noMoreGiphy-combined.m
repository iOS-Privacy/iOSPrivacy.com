! Title: noMoreGiphy
! Version: 2.20.6.2
! Expires: 14 days
! Maintainer: intr0
! Contact: support@intr0.com
! Source: https://gitlab.com/intr0/zuckerblock/-/raw/master/noMoreGiphy.m
!
! +++ uBlock Origin & AdGuard specific rules +++ !
!
! +++ Content-Security-Policy rules for Firefox +++ !
!
! Default, Script, Style, Img, Media, Connect, Font rules are necessary to override policy set by Giphy.
! Object possibly necessary if any <embed> (whether non-compliant or compliant relative to HTML5's living-standard) are in use; <object> (depreciated); or <applet> (depreciated) tags are in use.
! Worker-src: - inhibit, e.g. EventListeners;
! Frame-src: inhibit Frame (depreciated) & iFrame.
! Sandbox (with no permissions given): turns Giphy.com into a restricted environment unable to perform several actions including: controlling specific user-resources such as the Storage Access API - Web Storage, IndexedDB & DOM Cache.
!
*$csp=connect-src 'none',important,domain=giphy.com|giphy.world
*$csp=default-src 'none',important,domain=giphy.com|giphy.world
*$csp=font-src 'none',important,domain=giphy.com|giphy.world
*$csp=frame-src 'none',important,domain=giphy.com|giphy.world
*$csp=img-src 'none',important,domain=giphy.com|giphy.world
*$csp=media-src 'none',important,domain=giphy.com|giphy.world
*$csp=object-src 'none',important,domain=giphy.com|giphy.world
*$csp=sandbox,important,domain=giphy.com|giphy.world
*$csp=script-src 'none',important,domain=giphy.com|giphy.world
*$csp=style-src 'none',important,domain=giphy.com|giphy.world
*$csp=worker-src 'none',important,domain=giphy.com|giphy.world
!
! +++ AdGuard rules for Android, Mac & Windows +++ !
!
151.101.1.185$network
151.101.129.185$network
151.101.193.185$network
151.101.198.2$network
151.101.65.185$network
[2a03:2880:f031:19:face:b00c:0:3]$network
*$app=com.giphy.messenger
!
! +++ "Resource" disinfection rules for Firefox +++ !
!
*$image,redirect=2x2.png,important,domain=giphy.com
*$script,redirect=cookie-remover.js,important,domain=giphy.com
*$xmlhttprequest,redirect=noop.html,important,domain=giphy.com
||cloudfront.net/*$image,redirect=2x2.png,important,domain=giphy.com
||fbcdn.net^$script,important,domain=giphy.com
||giphy.com/{localStorage}*$redirect=cookie-remover.js,important,domain=giphy.com
||google-analytics.com/*$script,redirect=google-analytics_inpage_linkid.js,important,domain=giphy.com
||googletagmanager.com/*$script,redirect=googlesyndication_adsbygoogle.js,important,domain=giphy.com