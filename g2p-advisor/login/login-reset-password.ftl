<!DOCTYPE html>
<html <#if locale?? && locale.currentLanguageTag??>lang="${locale.currentLanguageTag}"</#if>>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${msg("emailForgotTitle")}</title>
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
            <h2 class="kc-card-title">${msg("emailForgotTitle")}</h2>
            <p class="kc-card-subtitle">${msg("emailInstruction")}</p>

            <#if message?has_content>
                <div class="kc-feedback kc-feedback--${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form id="kc-reset-password-form" action="${url.loginAction}" method="post">
                <div class="kc-form-group">
                    <label for="username" class="kc-label">
                        <#if !realm.loginWithEmailAllowed>${msg("username")}
                        <#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}
                        <#else>${msg("email")}
                        </#if>
                    </label>
                    <input id="username" name="username" type="text" class="kc-input"
                           autofocus autocomplete="username"
                           value="${(auth.attemptedUsername!'')}"/>
                </div>
                <button type="submit" class="kc-btn-primary">${msg("doSubmit")}</button>
            </form>

            <div class="kc-back-to-login">
                <a href="${url.loginUrl}">${msg("backToLogin")}</a>
            </div>
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
