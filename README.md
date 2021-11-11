# kibana
默认的kibana没有账号密码，开放外网容易被入侵，增加了Nginx转发，增加基础Basic认证；  
通过Docker环境变量**AUTH_HTPASSWD**配置认证信息，具体百度google关键字：nginx htpasswd。
