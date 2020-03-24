import io
import json
from binascii import a2b_base64
import base64

from fdk import response
from infer import infer

def handler(ctx, data: io.BytesIO=None):
    inputImage = None
    outputImage = None
    try:
        body = json.loads(data.getvalue())
        imageAsBase64String = body.get("imageAsBase64String")
        # Turn the base64 input into a file object
        inputImage = io.BytesIO(base64.b64decode(imageAsBase64String))
        # Run inference on the image
        outputImage = infer(inputImage)

    except (Exception, ValueError) as ex:
        print(str(ex))

    return response.Response(ctx, response_data=json.dumps({"output": str(outputImage, 'ascii')}),headers={"Content-Type": "application/json"})
