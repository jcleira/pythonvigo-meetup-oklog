from django.http import HttpResponse
from structlog import get_logger 

log = get_logger()

def index(request):
    log.warn('Hello', whom='PythonVigo', more_than_a_string=[1, 2, 3])

    return HttpResponse("Hello, PythonVigo")
