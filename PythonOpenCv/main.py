import cv2

image = cv2.VideoCapture(0)

while True:
        _, frame = image.read()

        if cv2.waitKey(0) & 0xFF == ord('q'):
                break

