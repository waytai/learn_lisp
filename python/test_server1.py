#encoding:utf-8
class IPBlacklistMiddleware(object):
    def __init__(self, app):
        self.app = app
 
    def __call__(self, environ, start_response):
        ip_addr = environ.get('HTTP_HOST').split(':')[0]
        if ip_addr not in ('127.0.0.1'):
            return forbidden(start_response)
 
        return self.app(environ, start_response)
 
def forbidden(start_response):
    start_response('403 Forbidden', [('Content-Type', 'text/plain')])
    return ['Forbidden']
 
def application(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return ['This is a python application!\n']
 
if __name__ == '__main__':
    from wsgiref.simple_server import make_server
    application = IPBlacklistMiddleware(application)
    server = make_server('0.0.0.0', 8080, application)
    server.serve_forever()


# 从本机测试
#$ curl 127.0.0.1:8080/test
#This is a python application!
# 
## 从其它主机测测试                                                                                                                                                                                                 
#$ curl 10.10.10.2:8080/test                                                                                                                                                                                                                                    
#Forbidden
