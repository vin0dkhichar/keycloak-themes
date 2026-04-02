FROM openg2p/keycloak:24.0.5-debian-12-r1

COPY g2p-advisor /opt/bitnami/keycloak/themes/g2p-advisor
COPY staff-portal-admin-theme /opt/bitnami/keycloak/themes/staff-portal-admin-theme
COPY staff-portal-login-theme /opt/bitnami/keycloak/themes/staff-portal-login-theme
