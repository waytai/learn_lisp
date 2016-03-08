def application(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return ['this is a python application']

if __name__ == '__main__':
    from wsgiref.simple_server import make_server
    server = make_server('0.0.0.0',8080, application)
    server.serve_forever()
