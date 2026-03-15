<!DOCTYPE html>
<html <#if locale?? && locale.currentLanguageTag??>lang="${locale.currentLanguageTag}"</#if>>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${msg("loginTotpTitle")}</title>
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
            <h2 class="kc-card-title">${msg("loginTotpTitle")}</h2>
            <p class="kc-card-subtitle">${msg("loginTotpOneTime")}</p>

            <#if message?has_content>
                <div class="kc-feedback kc-feedback--${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form id="kc-otp-login-form" action="${url.loginAction}" method="post">
                <div class="kc-form-group">
                    <label for="otp" class="kc-label">${msg("loginTotpOneTime")}</label>
                    <input id="otp" name="otp" type="text" class="kc-input"
                           autofocus autocomplete="one-time-code"
                           <#if messagesPerField.existsError('totp')>aria-invalid="true"</#if>/>
                    <#if messagesPerField.existsError('totp')>
                        <span class="kc-input-error">${kcSanitize(messagesPerField.get('totp'))?no_esc}</span>
                    </#if>
                </div>
                <button type="submit" class="kc-btn-primary">${msg("doLogIn")}</button>
            </form>
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
