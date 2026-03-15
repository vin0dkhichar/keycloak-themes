<!DOCTYPE html>
<html <#if locale?? && locale.currentLanguageTag??>lang="${locale.currentLanguageTag}"</#if>>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${msg("updatePasswordTitle")}</title>
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
            <h2 class="kc-card-title">${msg("updatePasswordTitle")}</h2>

            <#if message?has_content>
                <div class="kc-feedback kc-feedback--${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form id="kc-passwd-update-form" action="${url.loginAction}" method="post">
                <input type="text" id="username" name="username" value="${username!''}"
                       autocomplete="username" readonly style="display:none;"/>

                <div class="kc-form-group">
                    <label for="password-new" class="kc-label">${msg("passwordNew")}</label>
                    <div class="kc-input-group">
                        <input id="password-new" name="password-new" type="password"
                               class="kc-input" autofocus autocomplete="new-password"
                               <#if messagesPerField.existsError('password','password-confirm')>aria-invalid="true"</#if>/>
                        <button type="button" class="kc-password-toggle"
                                onclick="togglePw('password-new')">${msg("showPassword")}</button>
                    </div>
                    <#if messagesPerField.existsError('password')>
                        <span class="kc-input-error">${kcSanitize(messagesPerField.get('password'))?no_esc}</span>
                    </#if>
                </div>

                <div class="kc-form-group">
                    <label for="password-confirm" class="kc-label">${msg("passwordConfirm")}</label>
                    <div class="kc-input-group">
                        <input id="password-confirm" name="password-confirm" type="password"
                               class="kc-input" autocomplete="new-password"
                               <#if messagesPerField.existsError('password-confirm')>aria-invalid="true"</#if>/>
                        <button type="button" class="kc-password-toggle"
                                onclick="togglePw('password-confirm')">${msg("showPassword")}</button>
                    </div>
                    <#if messagesPerField.existsError('password-confirm')>
                        <span class="kc-input-error">${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}</span>
                    </#if>
                </div>

                <button type="submit" class="kc-btn-primary">${msg("doSubmit")}</button>
                <#if isAppInitiatedAction??>
                    <button type="submit" name="cancel-aia" value="true" class="kc-btn-default">
                        ${msg("doCancel")}
                    </button>
                </#if>
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
<script>
    function togglePw(id) {
        var f = document.getElementById(id);
        f.type = f.type === 'password' ? 'text' : 'password';
    }
</script>
</body>
</html>
