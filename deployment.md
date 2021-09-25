# Deployment Info

Location of proxy config on droplet `/etc/nginx/sites-available/default`

Location of base for proxy `/var/www/html`

## Manual Deployment Script

```bash
sh ./manual-upload.sh USER SERVER_IP
```

```bash
# copy built project to droplet
scp -r ./_site/* root@{server-ip}:/var/www/html
```

```bash
# restart nginx for config updates
sudo systemctl restart nginx
```

If you change the nginx config:

```bash
# will verify that the config is ok and no syntax issues
nginx -t
```
