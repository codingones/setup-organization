# setup-organization

Ce dépot met en place l'aspect organizationel d'un projet qui comprends actuellement:

- Une 'organization' terraform cloud
- Un 'workspace' terraform cloud nommé 'organization' qui pourra servir à héberger la définition des repository
- Un 'team token' terraform cloud qui permet de gérer l'organization terraform (et n'as pas de droits sur vos autres organizations !)
- Une 'organization' github
- Un repos '.github' qui comprends :
  - un README.md dédié à la présentation de votre organization
  - la capacité de déployer rapidement via terraform des dépots templates avec les configurations appropriées à vos projets


# Utilisation pas-à-pas:
- Faites un fork de ce repos (par exemple sur votre espace personnel)
- Créez votre organization projet / client (https://github.com/settings/organizations) => "New Organization"
- Mettez le secret TF_CLOUD_PERSONAL_API_TOKEN dans les variables de l'organization (https://github.com/organizations/YOUT_ORG_NAME/settings/secrets/actions)
  - Ce token est à générer sur votre compte utilisateur terraform cloud (https://app.terraform.io/app/settings/tokens => "Create API Token")
  - Il sera automatiquement supprimé des secrets de l'organization à la fin du setup.
- Mettre le secret SETUP_TOKEN dans les variables de l'organization.
  - Créer un personnal accès token avec les scopes 'admin:org, repo, workflow, user' sur https://github.com/settings/tokens
  - Attention si vous limitez sa durée de vie vous devrez le remplacer périodiquement
- Créer un nouveau repos dans votre organization en selectionant ce dépot comme template
  - vous devez avoir un fork de ce dépot dans une de vos organizations pour qu'il apparaisse 
  - attention à bien mettre votre nouvelle organization comme "owner" du dépot
- Run l'action 'Setup Organization' dans https://github.com/YOUR_ORG_NAME/YOUR_GENERATED_SETUP_REPOSITORY/actions