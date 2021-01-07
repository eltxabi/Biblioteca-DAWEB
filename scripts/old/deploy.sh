
cd /home/profesor/tmp
git clone https://github.com/eltxabi/biblioteca.git
cd biblioteca
cd build
mv classes ../WebContent/WEB-INF
cd ..
cd src
mv META-INF/* ../WebContent/WEB-INF/classes/
cd ..
sed -i 's/.*javax.persistence.jdbc.url.*/<property name="javax.persistence.jdbc.url" value="jdbc:mysql:\/\/192.168.17.153:3306\/biblioteca"\/>/' WebContent/WEB-INF/classes/META-INF/persistence.xml
cd WebContent
echo "profesor" | sudo -S jar -cvf /opt/tomcat/webapps/Biblioteca.war *
echo "profesor" | sudo -S rm -rf biblioteca
