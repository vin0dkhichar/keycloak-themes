<!DOCTYPE html>
<html <#if locale?? && locale.currentLanguageTag??>lang="${locale.currentLanguageTag}"</#if>>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${msg("pageExpiredTitle")}</title>
    <link rel="icon" href="${url.resourcesPath}/img/logo-mark.png"/>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css"/>
</head>
<body>
<header class="kc-header-bar">
    <div class="kc-header-brand">
        <img src="${url.resourcesPath}/img/logo-mark.png" alt="Logo" class="kc-header-logo" onerror="this.style.display='none'"/>
        <span class="kc-header-title">${msg("appName")}</span>
    </div>
</header>

<div class="kc-page-container kc-page-container--centered">
    <div class="kc-login-card kc-login-card--narrow">
        <div class="kc-login-card-inner">
            <div class="kc-card-logo-wrap">
                <img src="${url.resourcesPath}/img/logo-mark.png" alt="Logo" class="kc-card-logo" onerror="this.style.display='none'"/>
            </div>
            <div class="kc-status-icon kc-status-icon--warn">
                <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                          d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"/>
                </svg>
            </div>
            <h2 class="kc-card-title">${msg("pageExpiredTitle")}</h2>
            <p class="kc-status-message">
                ${msg("pageExpiredMsg1")}
                <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a>.
                ${msg("pageExpiredMsg2")}
                <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a>.
            </p>
        </div>
    </div>
</div>

<footer class="kc-footer">
    <span class="kc-footer-copyright">${msg("footerCopyright")}</span>
    <div class="kc-footer-links">
        <a href="#">${msg("footerPrivacy")}</a>
        <span class="kc-footer-sep">|</span>
        <a href="#">${msg("footerContact")}</a>
    </div>
</footer>
</body>
</html>
