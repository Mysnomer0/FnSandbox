import io
import json


from fdk import response
from infer import infer

def handler(ctx, data: io.BytesIO=None):

    infer('0.jpg')

    name = "worked!"
    try:
        body = json.loads(data.getvalue())
        name = body.get("name")
    except (Exception, ValueError) as ex:
        print(str(ex))

    return response.Response(
        ctx, response_data=json.dumps(
            {"message": "It {0}".format(name)}),
        headers={"Content-Type": "application/json"}
    )
