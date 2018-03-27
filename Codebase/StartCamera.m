function [SceneImage, v] = StartCamera
    disp('Initializing Video Camera. . .');
    v = videoinput('winvideo',1,'YUY2_640x480');
    disp('Camera is Activated');
    preview(v);
    
    disp('Image is Captured in 5 Sec. . .');
    pause(5);
    
    SceneImage = ycbcr2rgb(getsnapshot(v));
    closepreview(v);
    imshow(SceneImage);
end