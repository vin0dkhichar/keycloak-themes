<!DOCTYPE html>
<html <#if locale?? && locale.currentLanguageTag??>lang="${locale.currentLanguageTag}"</#if>>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="robots" content="noindex, nofollow"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/logo-mark.png"/>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css"/>
</head>
<body>

<!-- ===== HEADER ===== -->
<header class="kc-header-bar">
    <div class="kc-header-brand">
        <img src="${url.resourcesPath}/img/logo-mark.png" alt="Logo" class="kc-header-logo"
             onerror="this.style.display='none'"/>
        <span class="kc-header-title">${msg("appName")}</span>
    </div>
    <div class="kc-header-user">
        <svg class="kc-bell-icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
             fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"/>
        </svg>
        <span class="kc-header-username">${msg("headerGreeting")}</span>
        <div class="kc-avatar">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" viewBox="0 0 24 24">
                <path d="M12 12c2.7 0 4.8-2.1 4.8-4.8S14.7 2.4 12 2.4 7.2 4.5 7.2 7.2 9.3 12 12 12zm0 2.4c-3.2 0-9.6 1.6-9.6 4.8v2.4h19.2v-2.4c0-3.2-6.4-4.8-9.6-4.8z"/>
            </svg>
        </div>
    </div>
</header>

<!-- ===== MAIN TWO-COLUMN LAYOUT ===== -->
<div class="kc-page-container">

    <!-- LEFT: Hero -->
    <div class="kc-hero-section">
        <h1 class="kc-hero-title">${msg("heroTitle")}</h1>
        <p class="kc-hero-subtitle">${msg("heroSubtitle")}</p>
        <a href="#" class="kc-cta-button">
            ${msg("ctaButton")}
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 17L17 7M17 7H7m10 0v10"/>
            </svg>
        </a>

        <div class="kc-hero-illustration">
            <!-- Icon grid -->
            <div class="kc-illustration-grid">
                <div class="kc-grid-icon kc-grid-icon--dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg>
                </div>
                <div class="kc-grid-icon kc-grid-icon--yellow">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.64-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.63 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2z"/></svg>
                </div>
                <div class="kc-grid-icon kc-grid-icon--dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M9.4 16.6L4.8 12l4.6-4.6L8 6l-6 6 6 6 1.4-1.4zm5.2 0l4.6-4.6-4.6-4.6L16 6l6 6-6 6-1.4-1.4z"/></svg>
                </div>
                <div class="kc-grid-icon kc-grid-icon--dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm-8 2.75c1.24 0 2.25 1.01 2.25 2.25S13.24 11.25 12 11.25 9.75 10.24 9.75 9 10.76 6.75 12 6.75zM17 17H7v-.75c0-1.66 3.33-2.5 5-2.5s5 .84 5 2.5V17z"/></svg>
                </div>
                <div class="kc-grid-icon kc-grid-icon--dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 14H4V8l8 5 8-5v10zm-8-7L4 6h16l-8 5z"/></svg>
                </div>
                <div class="kc-grid-icon kc-grid-icon--dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M19.14 12.94c.04-.3.06-.61.06-.94 0-.32-.02-.64-.07-.94l2.03-1.58c.18-.14.23-.41.12-.61l-1.92-3.32c-.12-.22-.37-.29-.59-.22l-2.39.96c-.5-.38-1.03-.7-1.62-.94l-.36-2.54c-.04-.24-.24-.41-.48-.41h-3.84c-.24 0-.43.17-.47.41l-.36 2.54c-.59.24-1.13.57-1.62.94l-2.39-.96c-.22-.08-.47 0-.59.22L2.74 8.87c-.12.21-.08.47.12.61l2.03 1.58c-.05.3-.09.63-.09.94s.02.64.07.94l-2.03 1.58c-.18.14-.23.41-.12.61l1.92 3.32c.12.22.37.29.59.22l2.39-.96c.5.38 1.03.7 1.62.94l.36 2.54c.05.24.24.41.48.41h3.84c.24 0 .44-.17.47-.41l.36-2.54c.59-.24 1.13-.56 1.62-.94l2.39.96c.22.08.47 0 .59-.22l1.92-3.32c.12-.22.07-.47-.12-.61l-2.01-1.58zM12 15.6c-1.98 0-3.6-1.62-3.6-3.6s1.62-3.6 3.6-3.6 3.6 1.62 3.6 3.6-1.62 3.6-3.6 3.6z"/></svg>
                </div>
                <div class="kc-grid-icon kc-grid-icon--dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M20 3H4v10c0 2.21 1.79 4 4 4h6c2.21 0 4-1.79 4-4v-3h2c1.11 0 2-.89 2-2V5c0-1.11-.89-2-2-2zm0 5h-2V5h2v3zM4 19h16v2H4z"/></svg>
                </div>
                <div class="kc-grid-icon kc-grid-icon--yellow">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 24 24"><path d="M9.4 16.6L4.8 12l4.6-4.6L8 6l-6 6 6 6 1.4-1.4zm5.2 0l4.6-4.6-4.6-4.6L16 6l6 6-6 6-1.4-1.4z"/></svg>
                </div>
            </div>
            <!-- Crane SVG -->
            <svg class="kc-crane-svg" viewBox="0 0 200 180" xmlns="http://www.w3.org/2000/svg" fill="none">
                <rect x="95" y="60" width="10" height="110" fill="#F5A623" rx="2"/>
                <rect x="40" y="58" width="140" height="8" fill="#F5A623" rx="2"/>
                <rect x="130" y="52" width="18" height="12" fill="#2a2a2a" stroke="#F5A623" stroke-width="1.5" rx="2"/>
                <line x1="139" y1="64" x2="139" y2="95" stroke="#F5A623" stroke-width="1.5"/>
                <path d="M133 95 Q139 104 145 95" stroke="#F5A623" stroke-width="2" fill="none"/>
                <line x1="100" y1="58" x2="60" y2="30" stroke="#F5A623" stroke-width="1.5"/>
                <line x1="100" y1="58" x2="170" y2="30" stroke="#F5A623" stroke-width="1.5"/>
                <circle cx="100" cy="28" r="5" fill="#F5A623"/>
            </svg>
        </div>
    </div>

    <!-- RIGHT: Login Card -->
    <div class="kc-login-card">
        <div class="kc-login-card-inner">

            <!-- Logo -->
            <div class="kc-card-logo-wrap">
                <img src="${url.resourcesPath}/img/logo-mark.png" alt="Logo" class="kc-card-logo"
                     onerror="this.style.display='none'"/>
            </div>

            <!-- Titles -->
            <h2 class="kc-card-title">${msg("appName")}</h2>
            <p class="kc-card-subtitle">${msg("loginCardSubtitle")}</p>

            <!-- Flash message -->
            <#if message?has_content>
                <div class="kc-feedback kc-feedback--${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <!-- ===== LOGIN FORM ===== -->
            <#if realm.password>
            <form id="kc-form-login" action="${url.loginAction}" method="post">

                <#-- Username field (skip if hidden e.g. kerberos/broker) -->
                <#if !usernameHidden??>
                <div class="kc-form-group">
                    <label for="username" class="kc-label">
                        <#if !realm.loginWithEmailAllowed>${msg("username")}
                        <#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}
                        <#else>${msg("email")}
                        </#if>
                    </label>
                    <input id="username" name="username" type="text"
                           class="kc-input"
                           value="${(login.username!'')}"
                           autofocus autocomplete="username"
                           <#if messagesPerField.existsError('username','password')>aria-invalid="true"</#if>/>
                    <#if messagesPerField.existsError('username','password')>
                        <span class="kc-input-error" aria-live="polite">
                            ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                        </span>
                    </#if>
                </div>
                </#if>

                <#-- Password field -->
                <div class="kc-form-group">
                    <label for="password" class="kc-label">${msg("password")}</label>
                    <div class="kc-input-group">
                        <input id="password" name="password" type="password"
                               class="kc-input"
                               autocomplete="current-password"
                               <#if messagesPerField.existsError('username','password')>aria-invalid="true"</#if>/>
                        <button type="button" class="kc-password-toggle"
                                onclick="togglePassword()" aria-label="${msg('showPassword')}">
                            <svg id="eye-icon" xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                 fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/>
                            </svg>
                        </button>
                    </div>
                    <#if usernameHidden?? && messagesPerField.existsError('username','password')>
                        <span class="kc-input-error" aria-live="polite">
                            ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                        </span>
                    </#if>
                </div>

                <#-- Remember me + Forgot password -->
                <div class="kc-form-options">
                    <div>
                        <#if realm.rememberMe && !usernameHidden??>
                        <label class="kc-checkbox-label">
                            <input type="checkbox" name="rememberMe" id="rememberMe"
                                   <#if login.rememberMe??>checked</#if>>
                            ${msg("rememberMe")}
                        </label>
                        </#if>
                    </div>
                    <div>
                        <#if realm.resetPasswordAllowed>
                        <a href="${url.loginResetCredentialsUrl}" class="kc-forgot-link">
                            ${msg("doForgotPassword")}
                        </a>
                        </#if>
                    </div>
                </div>

                <#-- Hidden credential id -->
                <input type="hidden" name="credentialId"
                       <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>

                <#-- Submit -->
                <button type="submit" id="kc-login" class="kc-btn-primary">
                    ${msg("doLogIn")}
                </button>

            </form>
            </#if>

            <#-- Social / Identity Providers -->
            <#if social?? && social.providers?? && social.providers?has_content>
            <div class="kc-social-divider"><span>${msg("identity-provider-login-label")}</span></div>
            <ul class="kc-social-list">
                <#list social.providers as p>
                <li>
                    <a href="${p.loginUrl}" class="kc-social-btn">
                        <#if p.iconClasses?has_content>
                            <i class="${p.iconClasses}" aria-hidden="true"></i>
                        </#if>
                        <span>${p.displayName!}</span>
                    </a>
                </li>
                </#list>
            </ul>
            </#if>

        </div>
    </div>
</div>

<!-- ===== FOOTER ===== -->
<footer class="kc-footer">
    <span class="kc-footer-copyright">${msg("footerCopyright")}</span>
    <div class="kc-footer-links">
        <#if realm.internationalizationEnabled && locale?? && locale.supported?has_content && (locale.supported?size > 1)>
            <#list locale.supported as l>
                <a href="${l.url}">${l.label}</a>
                <span class="kc-footer-sep">|</span>
            </#list>
        </#if>
        <a href="#">${msg("footerPrivacy")}</a>
        <span class="kc-footer-sep">|</span>
        <a href="#">${msg("footerContact")}</a>
    </div>
</footer>

<script>
    function togglePassword() {
        var p = document.getElementById('password');
        p.type = p.type === 'password' ? 'text' : 'password';
    }
</script>
</body>
</html>
