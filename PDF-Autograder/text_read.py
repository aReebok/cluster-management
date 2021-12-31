import cv2
import numpy as np
import requests
import io
import json

img = cv2.imread("result.jpg")
_, compressedimage = cv2.imencode('.jpg', img, [1, 90])
file_bytes = io.BytesIO(compressedimage)
#OCR API 
url_api = "https://api.ocr.space/parse/image"

result = requests.post(url_api, files={"result.jpg": file_bytes}, data={"apikey": "XXXX"})

result = result.content.decode()

result = json.loads(result)
text_detected = result.get("ParsedResults")[0].get("ParsedText")
print(text_detected)


# cv2.imshow("img", img)
cv2.waitKey(0)
cv2.destroyAllWindows()