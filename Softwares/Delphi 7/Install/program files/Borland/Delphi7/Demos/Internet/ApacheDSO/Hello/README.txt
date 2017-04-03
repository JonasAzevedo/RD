Demo: HelloModule

Requirements
============
  Apache is compiled for DSO Support (see ../ApacheDSO.txt)
  Write access to Apache conf file  .../conf/httpd.conf


Build Project (using the IDE)
=============
  Open HelloModule.dpr in Delphi
  From the menu items select:
    Project | Options -->Directories Tab
  Set the OutPut Directory to the location you use for your Apache Modules. Make
  sure you have write access to the location you are using.
  Apache Modules are usually stored in the following locations:
        /etc/httpd/modules
        /usr/local/apache/libexec


Build Project (From the commmand line)
=============
  Execute:
    PathToKylixRoot/bin/kylixpath
    Example:
      /usr/local/kylix/bin/kylixpath
  Execute:
    dcc HelloModule.dpr
    cp libHelloModule.so PathToApache/libexec/

Setup
=====
  Edit the Apache Conf file. Default locations include.......
   /usr/local/apache/conf/httpd.conf
   /etc/httpd/conf/httpd.conf

  Add the following lines to httpd.conf

        SetEnv LD_LIBRARY_PATH {PathToKylixRoot/bin}

        LoadModule Hello_Module {path to libHelloModule.so}
        <Location /HelloWorld>
                SetHandler Hello-Handler
        </Location>


Run the Demo
============
  Start Apache
  Open a WebBrowser
  goto http://localhost/HelloWorld/

