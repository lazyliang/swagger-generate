#/bin/sh

if [ -e $1 ]; then
	echo 请指定端口号哟
else
	java -jar swagger2markup-cli-1.3.3.jar convert -i http://${1}/v2/api-docs -d asciidoc/generated/ -c config.properties && mvn test
fi