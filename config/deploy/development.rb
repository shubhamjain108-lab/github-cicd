#server ENV["DEPLOY_SERVER"], user: ENV["DEPLOY_USER"], roles: %w{app db web}
server "172.31.170.7", user: "shubhamjain", roles: %w{app db web}
