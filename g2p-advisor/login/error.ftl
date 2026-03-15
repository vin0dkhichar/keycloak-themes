<!DOCTYPE html>
<html <#if locale?? && locale.currentLanguageTag??>lang="${locale.currentLanguageTag}"</#if>>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${msg("errorTitle")}</title>
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
            <div class="kc-status-icon kc-status-icon--error">
                <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                          d="M12 9v2m0 4h.01M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0z"/>
                </svg>
            </div>
            <h2 class="kc-card-title">${msg("errorTitle")}</h2>
            <p class="kc-status-message">${kcSanitize(message.summary)?no_esc}</p>
            <#if skipLink??>
            <#else>
                <#if pageRedirectUri??>
                    <a href="${pageRedirectUri}" class="kc-btn-primary kc-btn-link">${msg("backToApplication")}</a>
                <#elseif actionUri??>
                    <a href="${actionUri}" class="kc-btn-primary kc-btn-link">${msg("proceedWithAction")}</a>
                <#elseif client?? && client.baseUrl??>
                    <a href="${client.baseUrl}" class="kc-btn-primary kc-btn-link">${msg("backToApplication")}</a>
                </#if>
            </#if>
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
