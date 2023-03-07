# Image command line using Mac OS Terminal

## Batch resize image

#### Usage
```
 ~ sips -Z 720 *.jpg
 ```

Adjsut max image ratio examples: 640,720,1024,1280 etc.


## Combine two images into one


#### Prerequisites
```
 ~ brew install imagemagick
 ```

#### Usage
```
 ~ convert +append image1.png image2.png combined_image.png
 ```

#### Result

#### Image 1:
![image1](/img/image1.png)
##### Image 2:
![image2](/img/image2.png)
##### Combined image:
![combined_image](/img/combined_image.png)
