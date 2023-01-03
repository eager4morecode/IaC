user=admin
password = Capstone!
rds =$"{rds}"

#ce=reate RDS instance for MySQL
mysql - u admin -pCapstone! -h $rds -e 'CREATE Database drupal;'
mysql - u admin -pCapstone! -h $rds -e 'GRANT ALL PRIVILIGES ON drupal.* TO 'drupal'@ 'localhost' nINDENTIFY BY 'Capstone!':'
mysql - u admin -pCapstone! -h $rds -e 'FLUSH PRIVALEGES;'
