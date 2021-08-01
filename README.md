# jsp-template-mvc
MVC のテンプレート

## server.xml の 71 行目からを置き換え( URIEncoding="UTF-8" )
```xml
    <Connector port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443"
               URIEncoding="UTF-8" />

```

## web.xml の 103 行目からを置き換え( listings : true )

```xml
    <servlet>
        <servlet-name>default</servlet-name>
        <servlet-class>org.apache.catalina.servlets.DefaultServlet</servlet-class>
        <init-param>
            <param-name>debug</param-name>
            <param-value>0</param-value>
        </init-param>
        <init-param>
            <param-name>listings</param-name>
            <param-value>true</param-value>
        </init-param>
        <load-on-startup>1</load-on-startup>
    </servlet>
```

## web.xml の 246 行目からを置き換え

```xml
    <servlet>
        <servlet-name>jsp</servlet-name>
        <servlet-class>org.apache.jasper.servlet.JspServlet</servlet-class>
        <init-param>
            <param-name>fork</param-name>
            <param-value>false</param-value>
        </init-param>
        <init-param>
            <param-name>xpoweredBy</param-name>
            <param-value>false</param-value>
        </init-param>
        <init-param>
            <param-name>trimSpaces</param-name>
            <param-value>true</param-value>
        </init-param>
        <init-param>
            <param-name>compilerSourceVM</param-name>
            <param-value>1.8</param-value>
        </init-param>
        <init-param>
            <param-name>compilerTargetVM</param-name>
            <param-value>1.8</param-value>
        </init-param>
        <load-on-startup>3</load-on-startup>
    </servlet>
```

## lightbox.xml : "C:\xampp\tomcat\conf\Catalina\localhost\lightbox.xml"
```xml
<Context
	displayName="Web Application Home"
	docBase="c:\app\tomcat21"
	path="/lightbox"
	reloadable="true"
	useNaming="false">
</Context>
```
