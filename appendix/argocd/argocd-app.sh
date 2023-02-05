kubectl patch app sample  -n argocd -p '{"metadata": {"annotations": {"recipients.argocd-notifications.argoproj.io":"slack:my_channel"}}}' --type merge
