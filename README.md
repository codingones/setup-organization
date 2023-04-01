# setup-organisation

Ce dépot met en place l'aspect organisationel d'un projet qui comprends:

- Une organisation github
- Une organisation terraform cloud

# Secrets nécessaire:
TF_CLOUD_PERSONAL_API_TOKEN

# Utilisation:
- Forker ce repos dans votre organization nouvellement crée ou créer un nouveau repos en le sélectionant comme template
- Mettre le secret TF_CLOUD_PERSONAL_API_TOKEN dans les variables de l'organisation (https://github.com/organizations/YOUT_ORG_NAME/settings/secrets/actions)
- Mettre le secret SETUP_TOKEN dans les variables de l'organisation : créer un personnal accès token avec les scopes 'admin:org, repo, workflow, user' sur https://github.com/settings/tokens
- Run l'action 'Setup Organization'