```

```
图片读取、写入、显示
```
import cv2 as cv

img = cv.imread(path '_ )  #后可加图片属性 cv.CV_LOAD_IMAGE_GRAYSCALE
img_gray = cv.cvtColor(img cv.COLOR_BGR2GRAY)
cv.threshold(灰图 阈值 最大值 cv2.THRESH_BINARY、cv2.THRESH_BINARY_INV、cv2.THRESH_TRUNC、cv2.THRESH_TOZERO、cv2.THRESH_TOZERO_INV）
cv.imshow('名字' img)
k=cv.waitKey(0) #参数为按键反应时间
if k==27:#ESC
  cv.destoryALLWindows()
elif k == ord('s'): 
  cv.imwrite('name' img)
```

图片文本添加
```
cv.putText(img 'text' (x y) cv.FONT_HERSHEY_SIMPLEX 4 (127 127 255) 2  #图片 文字 位置 字体 字号 颜色 粗细
```

轮廓
```
name contours 层级 = cv.findContours(img 内外轮cv.RETR_TREE  轮廓数量）
cv.drawContours(图像 轮廓点 轮廓数量 颜色 粗细）
cv.pointPloygonTest(轮廓点）
cv.contoursArea()
四点和角度 = cv.minAreaRect(轮廓）  cv.boundingRect(轮廓）
```

