.class public Lcom/android/camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$ImageCapture;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$LocationListener;,
        Lcom/android/camera/Camera$MainHandler;,
        Lcom/android/camera/Camera$Capturer;
    }
.end annotation


# static fields
.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final CROP_MSG:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEBUG_TIME_OPERATIONS:Z = false

.field private static final FOCUSING:I = 0x1

.field private static final FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field private static final FOCUS_FAIL:I = 0x4

.field private static final FOCUS_NOT_STARTED:I = 0x0

.field private static final FOCUS_SUCCESS:I = 0x3

.field private static final IDLE:I = 0x1

.field private static final IMAGEVIEW:I = 0x2

.field private static final INIT:I = 0x0

.field private static final MAXIMUM_BRIGHTNESS:I = 0xc

.field public static final MENU_FLASH_AUTO:I = 0x3

.field public static final MENU_FLASH_OFF:I = 0x5

.field public static final MENU_FLASH_ON:I = 0x4

.field public static final MENU_FLASH_SETTING:I = 0x2

.field public static final MENU_GALLERY_PHOTOS:I = 0x7

.field public static final MENU_GALLERY_VIDEOS:I = 0x8

.field public static final MENU_SAVE_CAMERA_DONE:I = 0x24

.field public static final MENU_SAVE_CAMERA_VIDEO_DONE:I = 0x25

.field public static final MENU_SAVE_GALLERY_PHOTO:I = 0x22

.field public static final MENU_SAVE_GALLERY_VIDEO_PHOTO:I = 0x23

.field public static final MENU_SAVE_NEW_PHOTO:I = 0x1f

.field public static final MENU_SAVE_SELECT_PHOTOS:I = 0x1e

.field public static final MENU_SETTINGS:I = 0x6

.field public static final MENU_SWITCH_TO_CAMERA:I = 0x1

.field public static final MENU_SWITCH_TO_VIDEO:I = 0x0

.field private static final MINIMUM_BRIGHTNESS:I = 0x0

.field private static final READY:I = -0x1

.field private static final RESTART_PREVIEW:I = 0x3

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SNAPSHOT_COMPLETED:I = 0x3

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x2

.field private static final STORE_IMAGE_DONE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "camera"

.field private static final TAKEPICTURE:I = 0x1

.field private static final VIDEORECORD:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:J = 0x0L

.field private static keypresscount:I = 0x0

.field private static keyup:I = 0x0

.field private static mContentResolver:Landroid/content/ContentResolver; = null

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private brightnessProgressBar:Landroid/widget/ProgressBar;

.field private cameraState:I

.field private mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field private mAutoTest:Z

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraEnabled:I

.field private mCaptureObject:Lcom/android/camera/Camera$Capturer;

.field private mCaptureStartTime:J

.field private mClickSound:Landroid/media/MediaPlayer;

.field private mDidRegister:Z

.field private mFocusBlinkAnimation:Landroid/view/animation/Animation;

.field private mFocusCallbackTime:J

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusStartTime:J

.field private mFocusState:I

.field private mFocusStatus:Z

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImageCapture:Lcom/android/camera/Camera$ImageCapture;

.field private mImageSavingItem:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsImageCaptureIntent:Z

.field private mKeepAndRestartPreview:Z

.field private mLastContentUri1:Landroid/net/Uri;

.field private mLastOrientation:I

.field private mLastPictureButton:Landroid/widget/ImageView;

.field mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOriginalViewFinderHeight:I

.field private mOriginalViewFinderWidth:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPicturesRemaining:I

.field private mPostCaptureAlert:Landroid/view/View;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreviewing:Z

.field private mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRawWait:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordLocation:Z

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field private mStatus:I

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/android/camera/VideoPreview;

.field private mThumbController:Lcom/android/camera/ThumbnailController;

.field private mView:Landroid/view/View;

.field private mViewFinderHeight:I

.field private mViewFinderWidth:I

.field private mZoom:D

.field mZoomControlRunnable:Ljava/lang/Runnable;

.field mZoomControls:Landroid/widget/ZoomControls;

.field private mbrightness:I

.field private mbrightness_step:I

.field private storeimageThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/Camera;->ZOOM_CONTROLS_TIMEOUT:J

    .line 164
    sput v2, Lcom/android/camera/Camera;->keypresscount:I

    .line 165
    sput v2, Lcom/android/camera/Camera;->keyup:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastOrientation:I

    .line 128
    iput v4, p0, Lcom/android/camera/Camera;->mStatus:I

    .line 129
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mRawWait:Z

    .line 136
    iput-object v2, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 140
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 147
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 149
    iput v4, p0, Lcom/android/camera/Camera;->mbrightness_step:I

    .line 151
    iput-object v2, p0, Lcom/android/camera/Camera;->storeimageThread:Ljava/lang/Thread;

    .line 159
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mZoom:D

    .line 160
    iput v4, p0, Lcom/android/camera/Camera;->mCameraEnabled:I

    .line 161
    iput-object v2, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    .line 163
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPausing:Z

    .line 166
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mFocusStatus:Z

    .line 172
    iput v3, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 175
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mGalleryItems:Ljava/util/ArrayList;

    .line 179
    iput-object v2, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 189
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 190
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 191
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 207
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mAutoTest:Z

    .line 225
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/Camera$LocationListener;

    new-instance v1, Lcom/android/camera/Camera$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$LocationListener;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/Camera$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$LocationListener;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    .line 265
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mImageSavingItem:Z

    .line 416
    new-instance v0, Lcom/android/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2063
    new-instance v0, Lcom/android/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$11;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    return-void
.end method

.method private CameraTest(I)V
    .registers 6
    .parameter "cur"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2114
    if-nez p1, :cond_16

    .line 2115
    iput v2, p0, Lcom/android/camera/Camera;->cameraState:I

    .line 2116
    const-string v2, "camera"

    const-string v3, "camera auto test_ihurga "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_d
    :goto_d
    new-instance v1, Lcom/android/camera/Camera$15;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$15;-><init>(Lcom/android/camera/Camera;)V

    .line 2174
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2175
    return-void

    .line 2119
    .end local v1           #t:Ljava/lang/Thread;
    :cond_16
    if-ne p1, v2, :cond_1e

    .line 2122
    invoke-virtual {p0}, Lcom/android/camera/Camera;->viewNativeLastImage()V

    .line 2123
    iput v3, p0, Lcom/android/camera/Camera;->cameraState:I

    goto :goto_d

    .line 2125
    :cond_1e
    if-ne p1, v3, :cond_d

    .line 2131
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.AUTO_CAMCODER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2132
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2134
    :try_start_2c
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_2f} :catch_36

    .line 2138
    :goto_2f
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2139
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/Camera;->cameraState:I

    goto :goto_d

    .line 2135
    :catch_36
    move-exception v2

    goto :goto_2f
.end method

.method public static GetDisplayMatrix(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Matrix;
    .registers 13
    .parameter "b"
    .parameter "v"

    .prologue
    const/high16 v10, 0x3f00

    .line 745
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 746
    .local v2, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 747
    .local v1, bw:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 748
    .local v0, bh:F
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v5, v8

    .line 749
    .local v5, vw:F
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v4, v8

    .line 751
    .local v4, vh:F
    mul-float v8, v1, v4

    mul-float v9, v5, v0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_33

    .line 752
    div-float v3, v4, v0

    .line 753
    .local v3, scale:F
    mul-float v8, v3, v1

    sub-float v8, v5, v8

    mul-float v6, v8, v10

    .line 754
    .local v6, x:F
    const/4 v7, 0x0

    .line 760
    .local v7, y:F
    :goto_2c
    invoke-virtual {v2, v3, v3, v10, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 761
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 762
    return-object v2

    .line 756
    .end local v3           #scale:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_33
    div-float v3, v5, v1

    .line 757
    .restart local v3       #scale:F
    const/4 v6, 0x0

    .line 758
    .restart local v6       #x:F
    mul-float v8, v3, v0

    sub-float v8, v4, v8

    mul-float v7, v8, v10

    .restart local v7       #y:F
    goto :goto_2c
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateStorageHint()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/VideoPreview;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceView:Lcom/android/camera/VideoPreview;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mKeepAndRestartPreview:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mKeepAndRestartPreview:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mAutoTest:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->CameraTest(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->cameraState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/Camera;->cameraState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->decrementkeypress()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/Camera;->mFocusState:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()V

    return-void
.end method

.method static synthetic access$2900(J)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/camera/Camera;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;[BLandroid/net/Uri;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->setLastPictureThumb([BLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelAutomaticPreviewRestart()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/camera/Camera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/Camera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)Landroid/location/Location;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->incrementkeypress()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ShutterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$RawPictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/Camera;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/android/camera/Camera;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/camera/Camera;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->zoomIn()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->zoomOut()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getImageForURI(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$Capturer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/camera/Camera;->calculatePicturesRemaining()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->updateStorageHint(I)V

    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const v7, 0x7f09002f

    const v6, 0x108003f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2080
    invoke-static {p1, p0, v5}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;Landroid/app/Activity;Z)V

    .line 2082
    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-interface {p1, v2, v3, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/Camera$12;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$12;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2088
    .local v0, gallery:Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2089
    iget-object v2, p0, Lcom/android/camera/Camera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2092
    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/Camera$13;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$13;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2098
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2099
    iget-object v2, p0, Lcom/android/camera/Camera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    const/4 v2, 0x6

    const v3, 0x7f090015

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/Camera$14;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$14;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 2110
    .local v1, item:Landroid/view/MenuItem;
    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2111
    return-void
.end method

.method private autoFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1256
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 1257
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_1a

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 1258
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1a

    .line 1262
    iput v2, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 1263
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1266
    :cond_1a
    return-void
.end method

.method private calculatePicturesRemaining()I
    .registers 2

    .prologue
    .line 2075
    invoke-static {}, Lcom/android/camera/MenuHelper;->calculatePicturesRemaining()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    .line 2076
    iget v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method private cancelAutomaticPreviewRestart()V
    .registers 3

    .prologue
    .line 1947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mKeepAndRestartPreview:Z

    .line 1948
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1949
    return-void
.end method

.method private clearFocusState()V
    .registers 2

    .prologue
    .line 1269
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 1270
    return-void
.end method

.method private closeCamera()V
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_f

    .line 1540
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1544
    :cond_f
    return-void
.end method

.method private static createName(J)Ljava/lang/String;
    .registers 3
    .parameter "dateTaken"

    .prologue
    .line 741
    const-string v0, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createZoomControls()Landroid/widget/ZoomControls;
    .registers 3

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControls:Landroid/widget/ZoomControls;

    if-nez v0, :cond_26

    .line 2004
    new-instance v0, Landroid/widget/ZoomControls;

    invoke-direct {v0, p0}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomControls:Landroid/widget/ZoomControls;

    .line 2005
    new-instance v0, Lcom/android/camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 2011
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/android/camera/Camera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 2019
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/android/camera/Camera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$10;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 2028
    :cond_26
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method private static dataLocation()Lcom/android/camera/ImageManager$DataLocation;
    .registers 1

    .prologue
    .line 1178
    sget-object v0, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private declared-synchronized decrementkeypress()V
    .registers 3

    .prologue
    .line 1027
    monitor-enter p0

    :try_start_1
    sget v0, Lcom/android/camera/Camera;->keypresscount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/Camera;->keypresscount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1028
    monitor-exit p0

    return-void

    .line 1027
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doAttach()V
    .registers 23

    .prologue
    .line 914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPausing:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 1015
    :cond_7
    :goto_7
    return-void

    .line 917
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/Camera$ImageCapture;->getLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 919
    .local v4, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 920
    .local v12, cropValue:Ljava/lang/String;
    const/16 v18, 0x0

    .line 922
    .local v18, saveUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 923
    .local v14, myExtras:Landroid/os/Bundle;
    if-eqz v14, :cond_2c

    .line 924
    const-string v5, "output"

    invoke-virtual {v14, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    .end local v18           #saveUri:Landroid/net/Uri;
    check-cast v18, Landroid/net/Uri;

    .line 925
    .restart local v18       #saveUri:Landroid/net/Uri;
    const-string v5, "crop"

    invoke-virtual {v14, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 929
    :cond_2c
    if-nez v12, :cond_a4

    .line 935
    if-eqz v18, :cond_6c

    .line 936
    const/16 v16, 0x0

    .line 938
    .local v16, outputStream:Ljava/io/OutputStream;
    :try_start_32
    sget-object v5, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v16

    .line 939
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    move-object v0, v4

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 940
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 942
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setResult(I)V

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_65
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_54} :catch_5c

    .line 947
    if-eqz v16, :cond_7

    .line 949
    :try_start_56
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_7

    .line 950
    :catch_5a
    move-exception v5

    goto :goto_7

    .line 944
    :catch_5c
    move-exception v5

    .line 947
    if-eqz v16, :cond_7

    .line 949
    :try_start_5f
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_7

    .line 950
    :catch_63
    move-exception v5

    goto :goto_7

    .line 947
    :catchall_65
    move-exception v5

    if-eqz v16, :cond_6b

    .line 949
    :try_start_68
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_151

    .line 952
    :cond_6b
    :goto_6b
    throw v5

    .line 956
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :cond_6c
    const/high16 v19, 0x3f00

    .line 957
    .local v19, scale:F
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 958
    .local v9, m:Landroid/graphics/Matrix;
    move-object v0, v9

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 960
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 965
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "inline-data"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "data"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->finish()V

    goto/16 :goto_7

    .line 973
    .end local v9           #m:Landroid/graphics/Matrix;
    .end local v19           #scale:F
    :cond_a4
    const/16 v21, 0x0

    .line 974
    .local v21, tempUri:Landroid/net/Uri;
    const/16 v20, 0x0

    .line 976
    .local v20, tempStream:Ljava/io/FileOutputStream;
    :try_start_a8
    const-string v5, "crop-temp"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 977
    .local v17, path:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 978
    const-string v5, "crop-temp"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v20

    .line 979
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    move-object v0, v4

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 980
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 981
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_d1
    .catchall {:try_start_a8 .. :try_end_d1} :catchall_143
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_d1} :catch_117
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_d1} :catch_12d

    move-result-object v21

    .line 991
    if-eqz v20, :cond_d7

    .line 993
    :try_start_d4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_154

    .line 1000
    :cond_d7
    :goto_d7
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v15, newExtras:Landroid/os/Bundle;
    const-string v5, "circle"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 1002
    const-string v5, "circleCrop"

    const-string v6, "true"

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_eb
    if-eqz v18, :cond_14a

    .line 1004
    const-string v5, "output"

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1008
    :goto_f6
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1009
    .local v11, cropIntent:Landroid/content/Intent;
    const-class v5, Lcom/android/camera/CropImage;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1010
    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1011
    invoke-virtual {v11, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1013
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 982
    .end local v11           #cropIntent:Landroid/content/Intent;
    .end local v15           #newExtras:Landroid/os/Bundle;
    .end local v17           #path:Ljava/io/File;
    :catch_117
    move-exception v5

    move-object v13, v5

    .line 983
    .local v13, ex:Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    :try_start_11a
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setResult(I)V

    .line 984
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_143

    .line 991
    if-eqz v20, :cond_7

    .line 993
    :try_start_125
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_12a

    goto/16 :goto_7

    .line 994
    :catch_12a
    move-exception v5

    goto/16 :goto_7

    .line 986
    .end local v13           #ex:Ljava/io/FileNotFoundException;
    :catch_12d
    move-exception v5

    move-object v13, v5

    .line 987
    .local v13, ex:Ljava/io/IOException;
    const/4 v5, 0x0

    :try_start_130
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setResult(I)V

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_139
    .catchall {:try_start_130 .. :try_end_139} :catchall_143

    .line 991
    if-eqz v20, :cond_7

    .line 993
    :try_start_13b
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_140

    goto/16 :goto_7

    .line 994
    :catch_140
    move-exception v5

    goto/16 :goto_7

    .line 991
    .end local v13           #ex:Ljava/io/IOException;
    :catchall_143
    move-exception v5

    if-eqz v20, :cond_149

    .line 993
    :try_start_146
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_156

    .line 996
    :cond_149
    :goto_149
    throw v5

    .line 1006
    .restart local v15       #newExtras:Landroid/os/Bundle;
    .restart local v17       #path:Ljava/io/File;
    :cond_14a
    const-string v5, "return-data"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_f6

    .line 950
    .end local v15           #newExtras:Landroid/os/Bundle;
    .end local v17           #path:Ljava/io/File;
    .end local v20           #tempStream:Ljava/io/FileOutputStream;
    .end local v21           #tempUri:Landroid/net/Uri;
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    :catch_151
    move-exception v6

    goto/16 :goto_6b

    .line 994
    .end local v16           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #path:Ljava/io/File;
    .restart local v20       #tempStream:Ljava/io/FileOutputStream;
    .restart local v21       #tempUri:Landroid/net/Uri;
    :catch_154
    move-exception v5

    goto :goto_d7

    .end local v17           #path:Ljava/io/File;
    :catch_156
    move-exception v6

    goto :goto_149
.end method

.method private doCancel()V
    .registers 3

    .prologue
    .line 1018
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1020
    return-void
.end method

.method private doFocus(Z)V
    .registers 4
    .parameter "pressed"

    .prologue
    .line 1490
    if-eqz p1, :cond_14

    .line 1491
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_a

    .line 1492
    invoke-direct {p0}, Lcom/android/camera/Camera;->autoFocus()V

    .line 1504
    :cond_9
    :goto_9
    return-void

    .line 1493
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    if-eqz v0, :cond_9

    .line 1495
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    invoke-interface {v0}, Lcom/android/camera/Camera$Capturer;->onSnap()V

    goto :goto_9

    .line 1498
    :cond_14
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 1500
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 1501
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    goto :goto_9
.end method

.method private doSnap()V
    .registers 3

    .prologue
    .line 1471
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-nez v0, :cond_1e

    .line 1474
    :cond_e
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    if-eqz v0, :cond_17

    .line 1475
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    invoke-interface {v0}, Lcom/android/camera/Camera$Capturer;->onSnap()V

    .line 1477
    :cond_17
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 1478
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 1487
    :cond_1d
    :goto_1d
    return-void

    .line 1479
    :cond_1e
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 1483
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    goto :goto_1d

    .line 1484
    :cond_27
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-nez v0, :cond_1d

    goto :goto_1d
.end method

.method private ensureCameraDevice()Z
    .registers 2

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_a

    .line 1548
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1550
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getCurrentLocation()Landroid/location/Location;
    .registers 4

    .prologue
    .line 1896
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 1897
    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/Camera$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 1898
    .local v1, l:Landroid/location/Location;
    if-eqz v1, :cond_12

    move-object v2, v1

    .line 1900
    .end local v1           #l:Landroid/location/Location;
    :goto_11
    return-object v2

    .line 1896
    .restart local v1       #l:Landroid/location/Location;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1900
    .end local v1           #l:Landroid/location/Location;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private getImageForURI(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 1839
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    sget-object v2, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/camera/Camera;->dataLocation()Lcom/android/camera/ImageManager$DataLocation;

    move-result-object v3

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;II)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v7

    .line 1845
    .local v7, list:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v7, p1}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v6

    .line 1846
    .local v6, image:Lcom/android/camera/ImageManager$IImage;
    invoke-interface {v7}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 1847
    return-object v6
.end method

.method private hidePostCaptureAlert()V
    .registers 3

    .prologue
    .line 2045
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_a

    .line 2046
    iget-object v0, p0, Lcom/android/camera/Camera;->mPostCaptureAlert:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    :cond_a
    return-void
.end method

.method private declared-synchronized incrementkeypress()V
    .registers 2

    .prologue
    .line 1023
    monitor-enter p0

    :try_start_1
    sget v0, Lcom/android/camera/Camera;->keypresscount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/camera/Camera;->keypresscount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1024
    monitor-exit p0

    return-void

    .line 1023
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isImageCaptureIntent()Z
    .registers 3

    .prologue
    .line 1952
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1953
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private declared-synchronized keypressvalue()I
    .registers 2

    .prologue
    .line 1030
    monitor-enter p0

    :try_start_1
    sget v0, Lcom/android/camera/Camera;->keypresscount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private pauseAudioPlayback()V
    .registers 4

    .prologue
    .line 1574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1575
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1578
    return-void
.end method

.method private restartPreview()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1580
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceView:Lcom/android/camera/VideoPreview;

    .line 1583
    .local v0, surfaceView:Lcom/android/camera/VideoPreview;
    sget v1, Lcom/android/camera/VideoPreview;->DONT_CARE:F

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoPreview;->setAspectRatio(F)V

    .line 1584
    iget v1, p0, Lcom/android/camera/Camera;->mOriginalViewFinderWidth:I

    iget v2, p0, Lcom/android/camera/Camera;->mOriginalViewFinderHeight:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/Camera;->setViewFinder(IIZ)V

    .line 1585
    iput v3, p0, Lcom/android/camera/Camera;->mStatus:I

    .line 1592
    invoke-direct {p0}, Lcom/android/camera/Camera;->calculatePicturesRemaining()I

    .line 1594
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailController;->isUriValid()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1595
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateLastImage()V

    .line 1598
    :cond_23
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2c

    .line 1599
    iget-object v1, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 1601
    :cond_2c
    return-void
.end method

.method private setLastPictureThumb([BLandroid/net/Uri;)V
    .registers 7
    .parameter "data"
    .parameter "uri"

    .prologue
    .line 734
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 735
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 736
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    .local v0, lastPictureThumb:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v2, p2, v0}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 738
    return-void
.end method

.method private setViewFinder(IIZ)V
    .registers 30
    .parameter "w"
    .parameter "h"
    .parameter "startPreview"

    .prologue
    .line 1604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPausing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1773
    :cond_8
    :goto_8
    return-void

    .line 1607
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPreviewing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera;->mViewFinderWidth:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera;->mViewFinderHeight:I

    move/from16 v20, v0

    move/from16 v0, p2

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 1613
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->ensureCameraDevice()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1619
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPausing:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 1626
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Camera;->mViewFinderWidth:I

    .line 1627
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Camera;->mViewFinderHeight:I

    .line 1628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera;->mOriginalViewFinderHeight:I

    move/from16 v20, v0

    if-nez v20, :cond_65

    .line 1629
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Camera;->mOriginalViewFinderWidth:I

    .line 1630
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Camera;->mOriginalViewFinderHeight:I

    .line 1633
    :cond_65
    if-eqz p3, :cond_8

    .line 1642
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mPreviewing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_72

    .line 1643
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1647
    :cond_72
    :try_start_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_81} :catch_229

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1665
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_c7

    .line 1667
    move/from16 v8, p1

    .line 1668
    .local v8, temp:I
    move/from16 p1, p2

    .line 1669
    move/from16 p2, v8

    .line 1670
    const-string v20, "camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Swapped dimensions W = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " H = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    .end local v8           #temp:I
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "pref_camera_whitebalance_key"

    const-string v22, "Auto"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 1676
    .local v19, white_balance_value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "pref_camera_coloreffects_key"

    const-string v22, "None"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1678
    .local v6, color_effects_value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "pref_camera_antibanding_key"

    const-string v22, "off"

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1683
    .local v5, anti_banding_value:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/Camera;->mCameraEnabled:I

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "zoom"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/Camera;->mZoom:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "whitebalance"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "effect"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "antibanding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/Camera;->mAutoTest:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16f

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "flash-mode"

    const-string v22, "on"

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "luma-adaptation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera;->mbrightness:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    const-string v21, "camera_enabled"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/Camera;->mCameraEnabled:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :try_start_199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_199 .. :try_end_1a8} :catch_244

    .line 1714
    :goto_1a8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 1715
    .local v15, wallTimeStart:J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v11

    .line 1717
    .local v11, threadTimeStart:J
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    .line 1718
    .local v18, watchDogSync:Ljava/lang/Object;
    new-instance v17, Ljava/lang/Thread;

    new-instance v20, Lcom/android/camera/Camera$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-wide v3, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;Ljava/lang/Object;J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1751
    .local v17, watchDog:Ljava/lang/Thread;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    .line 1756
    :try_start_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1d6
    .catch Ljava/lang/Throwable; {:try_start_1cd .. :try_end_1d6} :catch_242

    .line 1761
    :goto_1d6
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1762
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/Camera;->pauseAudioPlayback()V

    .line 1763
    monitor-enter v18

    .line 1764
    :try_start_1e2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1765
    monitor-exit v18
    :try_end_1e6
    .catchall {:try_start_1e2 .. :try_end_1e6} :catchall_23f

    .line 1767
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v9

    .line 1768
    .local v9, threadTimeEnd:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1769
    .local v13, wallTimeEnd:J
    sub-long v20, v13, v15

    const-wide/16 v22, 0xbb8

    cmp-long v20, v20, v22

    if-lez v20, :cond_8

    .line 1770
    const-string v20, "camera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startPreview() to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v13, v15

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms. Thread time was"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v9, v11

    const-wide/32 v24, 0xf4240

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1648
    .end local v5           #anti_banding_value:Ljava/lang/String;
    .end local v6           #color_effects_value:Ljava/lang/String;
    .end local v9           #threadTimeEnd:J
    .end local v11           #threadTimeStart:J
    .end local v13           #wallTimeEnd:J
    .end local v15           #wallTimeStart:J
    .end local v17           #watchDog:Ljava/lang/Thread;
    .end local v18           #watchDogSync:Ljava/lang/Object;
    .end local v19           #white_balance_value:Ljava/lang/String;
    :catch_229
    move-exception v20

    move-object/from16 v7, v20

    .line 1649
    .local v7, exception:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->release()V

    .line 1650
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    goto/16 :goto_8

    .line 1765
    .end local v7           #exception:Ljava/io/IOException;
    .restart local v5       #anti_banding_value:Ljava/lang/String;
    .restart local v6       #color_effects_value:Ljava/lang/String;
    .restart local v11       #threadTimeStart:J
    .restart local v15       #wallTimeStart:J
    .restart local v17       #watchDog:Ljava/lang/Thread;
    .restart local v18       #watchDogSync:Ljava/lang/Object;
    .restart local v19       #white_balance_value:Ljava/lang/String;
    :catchall_23f
    move-exception v20

    :try_start_240
    monitor-exit v18
    :try_end_241
    .catchall {:try_start_240 .. :try_end_241} :catchall_23f

    throw v20

    .line 1757
    :catch_242
    move-exception v20

    goto :goto_1d6

    .line 1709
    .end local v11           #threadTimeStart:J
    .end local v15           #wallTimeStart:J
    .end local v17           #watchDog:Ljava/lang/Thread;
    .end local v18           #watchDogSync:Ljava/lang/Object;
    :catch_244
    move-exception v20

    goto/16 :goto_1a8
.end method

.method private showPostCaptureAlert()V
    .registers 10

    .prologue
    .line 2031
    iget-boolean v7, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v7, :cond_33

    .line 2032
    iget-object v7, p0, Lcom/android/camera/Camera;->mPostCaptureAlert:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2033
    const/4 v7, 0x2

    new-array v5, v7, [I

    fill-array-data v5, :array_34

    .line 2034
    .local v5, pickIds:[I
    move-object v1, v5

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v4, :cond_33

    aget v3, v1, v2

    .line 2035
    .local v3, id:I
    iget-object v7, p0, Lcom/android/camera/Camera;->mPostCaptureAlert:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2036
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2037
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2038
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v7, 0x1f4

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2039
    invoke-virtual {v6, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2034
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2042
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #len$:I
    .end local v5           #pickIds:[I
    .end local v6           #view:Landroid/view/View;
    :cond_33
    return-void

    .line 2033
    :array_34
    .array-data 0x4
        0x3bt 0x0t 0xbt 0x7ft
        0x3ct 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private startReceivingLocationUpdates()V
    .registers 11

    .prologue
    const-string v9, "provider does not exist "

    const-string v8, "camera"

    .line 1852
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_26

    .line 1854
    :try_start_8
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_17} :catch_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_17} :catch_27

    .line 1867
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_26} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_26} :catch_46

    .line 1880
    :cond_26
    :goto_26
    return-void

    .line 1861
    :catch_27
    move-exception v0

    move-object v6, v0

    .line 1863
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider does not exist "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1874
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_46
    move-exception v0

    move-object v6, v0

    .line 1876
    .restart local v6       #ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider does not exist "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1872
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_65
    move-exception v0

    goto :goto_26

    .line 1859
    :catch_67
    move-exception v0

    goto :goto_17
.end method

.method private stopPreview()V
    .registers 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_d

    .line 1777
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1779
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1781
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 1782
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .registers 4

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_16

    .line 1884
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 1886
    :try_start_a
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_17

    .line 1884
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1892
    .end local v0           #i:I
    :cond_16
    return-void

    .line 1887
    .restart local v0       #i:I
    :catch_17
    move-exception v1

    goto :goto_13
.end method

.method private updateFocusIndicator()V
    .registers 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/Camera$6;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1287
    return-void
.end method

.method private updateLastImage()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    .line 1554
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    sget-object v2, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/camera/Camera;->dataLocation()Lcom/android/camera/ImageManager$DataLocation;

    move-result-object v3

    sget-object v6, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v9

    .line 1561
    .local v9, list:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v7

    .line 1562
    .local v7, count:I
    if-lez v7, :cond_31

    .line 1563
    sub-int v0, v7, v4

    invoke-interface {v9, v0}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v8

    .line 1564
    .local v8, image:Lcom/android/camera/ImageManager$IImage;
    invoke-interface {v8}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v10

    .line 1565
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-interface {v8}, Lcom/android/camera/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1569
    .end local v8           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_2d
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 1570
    return-void

    .line 1567
    :cond_31
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0, v11, v11}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_2d
.end method

.method private updateStorageHint()V
    .registers 2

    .prologue
    .line 1094
    invoke-static {}, Lcom/android/camera/MenuHelper;->calculatePicturesRemaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->updateStorageHint(I)V

    .line 1095
    return-void
.end method

.method private updateStorageHint(I)V
    .registers 5
    .parameter "remaining"

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1102
    .local v0, noStorageText:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2d

    .line 1103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, state:Ljava/lang/String;
    const-string v2, "checking"

    if-ne v1, v2, :cond_25

    .line 1105
    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .end local v1           #state:Ljava/lang/String;
    :cond_13
    :goto_13
    if-eqz v0, :cond_3e

    .line 1114
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v2, :cond_38

    .line 1115
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 1119
    :goto_1f
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/OnScreenHint;->show()V

    .line 1124
    :cond_24
    :goto_24
    return-void

    .line 1107
    .restart local v1       #state:Ljava/lang/String;
    :cond_25
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1109
    .end local v1           #state:Ljava/lang/String;
    :cond_2d
    const/4 v2, 0x1

    if-ge p1, v2, :cond_13

    .line 1110
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1117
    :cond_38
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v2, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 1120
    :cond_3e
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v2, :cond_24

    .line 1121
    iget-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v2}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 1122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_24
.end method

.method private viewLastImage()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1789
    iget-object v2, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/android/camera/ThumbnailController;->isUriValid()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1790
    iget-object v2, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/android/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1791
    .local v1, targetUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "bucketId"

    sget-object v4, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1793
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1794
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.screenOrientation"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1796
    const-string v2, "android.intent.extra.fullScreen"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1797
    const-string v2, "android.intent.extra.showActionIcons"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1798
    const-string v2, "com.android.camera.ReviewMode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1801
    :try_start_3b
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3b .. :try_end_3e} :catch_47

    .line 1808
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #targetUri:Landroid/net/Uri;
    :goto_3e
    return-void

    .line 1806
    :cond_3f
    const-string v2, "camera"

    const-string v3, "Can\'t view last image."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1802
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #targetUri:Landroid/net/Uri;
    :catch_47
    move-exception v2

    goto :goto_3e
.end method

.method private zoomIn()V
    .registers 5

    .prologue
    .line 1959
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_35

    .line 1960
    iget-wide v0, p0, Lcom/android/camera/Camera;->mZoom:D

    const-wide v2, 0x3ffe666666666666L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_35

    .line 1961
    iget-wide v0, p0, Lcom/android/camera/Camera;->mZoom:D

    const-wide v2, 0x3fb999999999999aL

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/Camera;->mZoom:D

    .line 1964
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1965
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "zoom"

    iget-wide v2, p0, Lcom/android/camera/Camera;->mZoom:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1969
    :cond_35
    return-void
.end method

.method private zoomOut()V
    .registers 5

    .prologue
    .line 1973
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_32

    .line 1974
    iget-wide v0, p0, Lcom/android/camera/Camera;->mZoom:D

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_32

    .line 1975
    iget-wide v0, p0, Lcom/android/camera/Camera;->mZoom:D

    const-wide v2, 0x3fb999999999999aL

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/Camera;->mZoom:D

    .line 1978
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1979
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "zoom"

    iget-wide v2, p0, Lcom/android/camera/Camera;->mZoom:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1983
    :cond_32
    return-void
.end method


# virtual methods
.method gotoGallery()V
    .registers 1

    .prologue
    .line 1785
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraImageGallery(Landroid/app/Activity;)V

    .line 1786
    return-void
.end method

.method keep()V
    .registers 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    if-eqz v0, :cond_9

    .line 1834
    iget-object v0, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    invoke-interface {v0}, Lcom/android/camera/Camera$Capturer;->dismissFreezeFrame()V

    .line 1836
    :cond_9
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1235
    packed-switch p1, :pswitch_data_24

    .line 1253
    :goto_3
    return-void

    .line 1237
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1238
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_14

    .line 1239
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1240
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_14

    .line 1241
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1244
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_14
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1247
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1248
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 1235
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 899
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 911
    :cond_7
    :goto_7
    return-void

    .line 901
    :sswitch_8
    iget v0, p0, Lcom/android/camera/Camera;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-nez v0, :cond_7

    .line 902
    invoke-direct {p0}, Lcom/android/camera/Camera;->viewLastImage()V

    goto :goto_7

    .line 906
    :sswitch_15
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    goto :goto_7

    .line 909
    :sswitch_19
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCancel()V

    goto :goto_7

    .line 899
    nop

    :sswitch_data_1e
    .sparse-switch
        0x7f0b0005 -> :sswitch_8
        0x7f0b003b -> :sswitch_15
        0x7f0b003c -> :sswitch_19
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    .line 768
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 775
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/Camera;->bAutoAllTest:Ljava/lang/Integer;

    .line 776
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/camera/Camera;->cameraState:I

    .line 783
    new-instance v4, Ljava/lang/Thread;

    new-instance v10, Lcom/android/camera/Camera$3;

    invoke-direct {v10, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    invoke-direct {v4, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 788
    .local v4, openCameraThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 792
    new-instance v3, Ljava/lang/Thread;

    new-instance v10, Lcom/android/camera/Camera$4;

    invoke-direct {v10, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    invoke-direct {v3, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 806
    .local v3, loadServiceThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 808
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    .line 809
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sput-object v10, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 811
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 812
    .local v8, win:Landroid/view/Window;
    const/16 v10, 0x80

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 813
    const/high16 v10, 0x7f03

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 815
    const v10, 0x7f0b0001

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/camera/VideoPreview;

    iput-object p1, p0, Lcom/android/camera/Camera;->mSurfaceView:Lcom/android/camera/VideoPreview;

    .line 816
    const v10, 0x7f0b0003

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    .line 821
    iget-object v10, p0, Lcom/android/camera/Camera;->mSurfaceView:Lcom/android/camera/VideoPreview;

    invoke-virtual {v10}, Lcom/android/camera/VideoPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 822
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 823
    const/4 v10, 0x3

    invoke-interface {v2, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 825
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 827
    iget-boolean v10, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v10, :cond_9d

    .line 828
    const v10, 0x7f0b0005

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    .line 829
    iget-object v10, p0, Lcom/android/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020013

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 831
    .local v1, frame:Landroid/graphics/drawable/Drawable;
    new-instance v10, Lcom/android/camera/ThumbnailController;

    iget-object v11, p0, Lcom/android/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    sget-object v12, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v10, v11, v1, v12}, Lcom/android/camera/ThumbnailController;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/content/ContentResolver;)V

    iput-object v10, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    .line 833
    iget-object v10, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/camera/ThumbnailController;->loadData(Ljava/lang/String;)Z

    .line 836
    .end local v1           #frame:Landroid/graphics/drawable/Drawable;
    :cond_9d
    const v10, 0x7f0b0002

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ShutterButton;

    iput-object p1, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 837
    iget-object v10, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v10, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 839
    const v10, 0x7f0b0007

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    .line 840
    iget-object v10, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    instance-of v10, v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_c7

    .line 841
    iget-object v7, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    check-cast v7, Landroid/widget/SeekBar;

    .line 842
    .local v7, seeker:Landroid/widget/SeekBar;
    iget-object v10, p0, Lcom/android/camera/Camera;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 844
    .end local v7           #seeker:Landroid/widget/SeekBar;
    :cond_c7
    iget-object v10, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 845
    iget-object v10, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v11, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 846
    invoke-direct {p0}, Lcom/android/camera/Camera;->createZoomControls()Landroid/widget/ZoomControls;

    move-result-object v9

    .line 847
    .local v9, zoomControls:Landroid/view/View;
    const/high16 v10, 0x7f0b

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 848
    .local v6, root:Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 851
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 852
    const/16 v10, 0xe

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 853
    invoke-virtual {v6, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    const v10, 0x7f0b0004

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/Camera;->mFocusIndicator:Landroid/view/View;

    .line 856
    const/high16 v10, 0x7f04

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    .line 857
    iget-object v10, p0, Lcom/android/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 858
    iget-object v10, p0, Lcom/android/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 861
    iget-boolean v10, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v10, :cond_131

    .line 862
    const/high16 v10, 0x7f0b

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 863
    .local v0, cameraView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03000d

    invoke-virtual {v10, v11, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 865
    const v10, 0x7f0b003a

    invoke-virtual {p0, v10}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/Camera;->mPostCaptureAlert:Landroid/view/View;

    .line 870
    .end local v0           #cameraView:Landroid/view/ViewGroup;
    :cond_131
    :try_start_131
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 871
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_137
    .catch Ljava/lang/InterruptedException; {:try_start_131 .. :try_end_137} :catch_13b

    .line 875
    :goto_137
    invoke-static {}, Lcom/android/camera/ImageManager;->ensureOSXCompatibleFolder()V

    .line 876
    return-void

    .line 872
    :catch_13b
    move-exception v10

    goto :goto_137
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 2052
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2054
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_9

    .line 2056
    const/4 v0, 0x0

    .line 2060
    :goto_8
    return v0

    .line 2058
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 2060
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1292
    iget-object v6, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1293
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1295
    const-string v6, "camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "$$$$$$$$$$$$$$$ keyCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    sparse-switch p1, :sswitch_data_1e4

    .line 1453
    :cond_41
    :goto_41
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    :goto_45
    return v6

    .line 1299
    :sswitch_46
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/Camera;->bAutoAllTest:Ljava/lang/Integer;

    .line 1300
    iget-object v6, p0, Lcom/android/camera/Camera;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v6, :cond_a2

    iget-object v6, p0, Lcom/android/camera/Camera;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a2

    .line 1301
    const-string v4, "com.lge.hiddenmenu"

    .line 1302
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1303
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1304
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1305
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 1306
    .local v1, ExtraName:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1308
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".device_test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1309
    const-string v2, "MotionSensorTest"

    .line 1311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1313
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1317
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageName2:Ljava/lang/String;
    :cond_a2
    const/4 v6, 0x1

    goto :goto_45

    .line 1333
    :sswitch_a4
    const/4 v6, 0x1

    goto :goto_45

    .line 1338
    :sswitch_a6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_b0

    .line 1339
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/camera/Camera;->doFocus(Z)V

    .line 1341
    :cond_b0
    const/4 v6, 0x1

    goto :goto_45

    .line 1343
    :sswitch_b2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_bb

    .line 1344
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnap()V

    .line 1346
    :cond_bb
    const/4 v6, 0x1

    goto :goto_45

    .line 1349
    :sswitch_bd
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_c6

    .line 1350
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1352
    :cond_c6
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1354
    :sswitch_c9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/Camera;->mAutoTest:Z

    .line 1355
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_d9

    .line 1356
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/camera/Camera;->doFocus(Z)V

    .line 1357
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnap()V

    .line 1359
    :cond_d9
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1368
    :sswitch_dc
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1371
    :sswitch_df
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1373
    :sswitch_e2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_eb

    .line 1374
    invoke-virtual {p0}, Lcom/android/camera/Camera;->viewNativeLastImage()V

    .line 1377
    :cond_eb
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1379
    :sswitch_ee
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_f7

    .line 1380
    invoke-direct {p0}, Lcom/android/camera/Camera;->zoomIn()V

    .line 1382
    :cond_f7
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1384
    :sswitch_fa
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_103

    .line 1385
    invoke-direct {p0}, Lcom/android/camera/Camera;->zoomOut()V

    .line 1387
    :cond_103
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1389
    :sswitch_106
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_124

    .line 1390
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1391
    iget-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "flash-mode"

    const-string v8, "on"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1394
    :cond_124
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1396
    :sswitch_127
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_145

    .line 1397
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1398
    iget-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "flash-mode"

    const-string v8, "off"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1401
    :cond_145
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1404
    :sswitch_148
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v6, :cond_41

    .line 1405
    iget v6, p0, Lcom/android/camera/Camera;->mbrightness:I

    if-lez v6, :cond_173

    .line 1406
    iget v6, p0, Lcom/android/camera/Camera;->mbrightness:I

    iget v7, p0, Lcom/android/camera/Camera;->mbrightness_step:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 1409
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1410
    iget-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "luma-adaptation"

    iget v8, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1414
    :cond_173
    iget-object v6, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v7, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1415
    iget-object v6, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_41

    .line 1420
    :sswitch_182
    iget-boolean v6, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v6, :cond_41

    .line 1421
    iget v6, p0, Lcom/android/camera/Camera;->mbrightness:I

    const/16 v7, 0xc

    if-ge v6, v7, :cond_1af

    .line 1422
    iget v6, p0, Lcom/android/camera/Camera;->mbrightness:I

    iget v7, p0, Lcom/android/camera/Camera;->mbrightness_step:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/camera/Camera;->mbrightness:I

    .line 1425
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1426
    iget-object v6, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "luma-adaptation"

    iget v8, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v6, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1430
    :cond_1af
    iget-object v6, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    iget v7, p0, Lcom/android/camera/Camera;->mbrightness:I

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1431
    iget-object v6, p0, Lcom/android/camera/Camera;->brightnessProgressBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_41

    .line 1439
    :sswitch_1be
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1db

    .line 1442
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/camera/Camera;->doFocus(Z)V

    .line 1443
    iget-object v6, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v6}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_1de

    .line 1444
    iget-object v6, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v6}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1448
    :goto_1d5
    iget-object v6, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1450
    :cond_1db
    const/4 v6, 0x1

    goto/16 :goto_45

    .line 1446
    :cond_1de
    iget-object v6, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v6}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1d5

    .line 1296
    :sswitch_data_1e4
    .sparse-switch
        0x4 -> :sswitch_a4
        0x15 -> :sswitch_148
        0x16 -> :sswitch_182
        0x17 -> :sswitch_1be
        0x1b -> :sswitch_b2
        0x50 -> :sswitch_a6
        0x52 -> :sswitch_46
        0x63 -> :sswitch_bd
        0x64 -> :sswitch_dc
        0x66 -> :sswitch_e2
        0x67 -> :sswitch_df
        0x68 -> :sswitch_106
        0x69 -> :sswitch_127
        0x6a -> :sswitch_ee
        0x6b -> :sswitch_fa
        0x73 -> :sswitch_c9
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1458
    packed-switch p1, :pswitch_data_1e

    .line 1465
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 1460
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "cancel-autofocus"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1461
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->doFocus(Z)V

    move v0, v2

    .line 1463
    goto :goto_8

    .line 1458
    nop

    :pswitch_data_1e
    .packed-switch 0x50
        :pswitch_9
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1917
    if-nez p1, :cond_a

    .line 1918
    iget v0, p0, Lcom/android/camera/Camera;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1919
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelAutomaticPreviewRestart()V

    .line 1922
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 1905
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1906
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mImageSavingItem:Z

    if-eqz v0, :cond_10

    .line 1910
    invoke-virtual {p0}, Lcom/android/camera/Camera;->keep()V

    .line 1911
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1913
    :cond_10
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1192
    invoke-virtual {p0}, Lcom/android/camera/Camera;->keep()V

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    .line 1195
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1197
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    invoke-static {v0}, Lcom/android/camera/Camera$ImageCapture;->access$4600(Lcom/android/camera/Camera$ImageCapture;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1200
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1202
    :cond_1b
    sput v1, Lcom/android/camera/Camera;->keypresscount:I

    .line 1203
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_28

    .line 1204
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1205
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1207
    :cond_28
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopReceivingLocationUpdates()V

    .line 1209
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_36

    .line 1210
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1211
    iput-object v2, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1214
    :cond_36
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_43

    .line 1215
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailController;->storeData(Ljava/lang/String;)Z

    .line 1218
    :cond_43
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_4e

    .line 1219
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 1220
    iput-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 1225
    :cond_4e
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    invoke-static {v0}, Lcom/android/camera/Camera$ImageCapture;->access$4700(Lcom/android/camera/Camera$ImageCapture;)V

    .line 1226
    iput-object v2, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    .line 1227
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1228
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1231
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1927
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1929
    const/4 v0, 0x1

    .local v0, i:I
    :goto_7
    const/4 v1, 0x5

    if-gt v0, v1, :cond_12

    .line 1930
    if-eq v0, v3, :cond_f

    .line 1931
    invoke-interface {p1, v0, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1929
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1935
    :cond_12
    iget v1, p0, Lcom/android/camera/Camera;->mStatus:I

    if-eq v1, v5, :cond_1b

    iget v1, p0, Lcom/android/camera/Camera;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 1936
    :cond_1b
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1937
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mImageSavingItem:Z

    .line 1943
    :goto_20
    return v3

    .line 1939
    :cond_21
    const/4 v1, 0x4

    invoke-interface {p1, v1, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1940
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mImageSavingItem:Z

    goto :goto_20
.end method

.method public onResume()V
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1137
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "AutoAllTest"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/android/camera/Camera;->bAutoAllTest:Ljava/lang/Integer;

    .line 1140
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1141
    iget-object v3, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1143
    iput-boolean v6, p0, Lcom/android/camera/Camera;->mPausing:Z

    .line 1144
    sput v6, Lcom/android/camera/Camera;->keypresscount:I

    .line 1145
    iput-boolean v7, p0, Lcom/android/camera/Camera;->mFocusStatus:Z

    .line 1146
    iget-object v3, p0, Lcom/android/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->enable()V

    .line 1147
    iget-object v3, p0, Lcom/android/camera/Camera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_camera_recordlocation_key"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    .line 1149
    iget-object v3, p0, Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1152
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1154
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1155
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1156
    const-string v3, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1158
    iget-object v3, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1159
    iput-boolean v7, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1161
    new-instance v3, Lcom/android/camera/Camera$ImageCapture;

    invoke-direct {v3, p0}, Lcom/android/camera/Camera$ImageCapture;-><init>(Lcom/android/camera/Camera;)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    .line 1163
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()V

    .line 1165
    iget-boolean v3, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v3, :cond_79

    invoke-direct {p0}, Lcom/android/camera/Camera;->startReceivingLocationUpdates()V

    .line 1167
    :cond_79
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 1170
    :try_start_7c
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_86} :catch_87

    .line 1175
    :goto_86
    return-void

    .line 1171
    :catch_87
    move-exception v3

    move-object v0, v3

    .line 1172
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_86
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_5

    .line 1091
    :cond_4
    :goto_4
    return-void

    .line 1078
    :cond_5
    iget v0, p0, Lcom/android/camera/Camera;->cameraState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 1082
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFocusStatus:Z

    if-eqz v0, :cond_4

    .line 1086
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    goto :goto_4

    .line 1088
    :pswitch_16
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnap()V

    goto :goto_4

    .line 1086
    :pswitch_data_1a
    .packed-switch 0x7f0b0002
        :pswitch_16
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ShutterButton;Z)V
    .registers 9
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "camera"

    .line 1035
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v1, :cond_9

    .line 1072
    :cond_8
    :goto_8
    return-void

    .line 1038
    :cond_9
    iget v1, p0, Lcom/android/camera/Camera;->cameraState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 1043
    iput-boolean v5, p0, Lcom/android/camera/Camera;->mFocusStatus:Z

    .line 1044
    invoke-direct {p0}, Lcom/android/camera/Camera;->keypressvalue()I

    move-result v0

    .line 1045
    .local v0, keydown:I
    if-nez v0, :cond_2d

    if-eqz p2, :cond_2d

    .line 1047
    sput v5, Lcom/android/camera/Camera;->keyup:I

    .line 1048
    const-string v1, "camera"

    const-string v1, "the keydown is  pressed first time"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    goto :goto_8

    .line 1069
    :pswitch_29
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->doFocus(Z)V

    goto :goto_8

    .line 1050
    :cond_2d
    if-eqz v0, :cond_3b

    if-eqz p2, :cond_3b

    .line 1052
    const-string v1, "camera"

    const-string v1, "the keydown is pressed next time "

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mFocusStatus:Z

    goto :goto_8

    .line 1056
    :cond_3b
    sget v1, Lcom/android/camera/Camera;->keyup:I

    if-nez v1, :cond_4b

    if-nez p2, :cond_4b

    .line 1058
    const-string v1, "camera"

    const-string v1, "the keyup is pressed second time "

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mFocusStatus:Z

    goto :goto_8

    .line 1062
    :cond_4b
    sget v1, Lcom/android/camera/Camera;->keyup:I

    if-ne v1, v5, :cond_21

    if-nez p2, :cond_21

    .line 1064
    const-string v1, "camera"

    const-string v1, "the keyup is pressed first time "

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    sput v4, Lcom/android/camera/Camera;->keyup:I

    goto :goto_21

    .line 1067
    nop

    :pswitch_data_5c
    .packed-switch 0x7f0b0002
        :pswitch_29
    .end packed-switch
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 880
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 882
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/Camera$5;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 895
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 896
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/android/camera/Camera;->keep()V

    .line 1184
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1186
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1187
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1188
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/android/camera/Camera;->mSurfaceView:Lcom/android/camera/VideoPreview;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoPreview;->setVisibility(I)V

    .line 1509
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    .line 1518
    .local v0, preview:Z
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&&&&&&&&&&&&&&&& width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget v1, p0, Lcom/android/camera/Camera;->mOriginalViewFinderWidth:I

    if-nez v1, :cond_34

    .line 1522
    iput p3, p0, Lcom/android/camera/Camera;->mOriginalViewFinderWidth:I

    .line 1523
    iput p4, p0, Lcom/android/camera/Camera;->mOriginalViewFinderHeight:I

    .line 1525
    :cond_34
    invoke-direct {p0, p3, p4, v0}, Lcom/android/camera/Camera;->setViewFinder(IIZ)V

    .line 1526
    iget-object v1, p0, Lcom/android/camera/Camera;->mImageCapture:Lcom/android/camera/Camera$ImageCapture;

    iput-object v1, p0, Lcom/android/camera/Camera;->mCaptureObject:Lcom/android/camera/Camera$Capturer;

    .line 1527
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1531
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 1534
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1536
    return-void
.end method

.method public viewNativeLastImage()V
    .registers 8

    .prologue
    .line 1811
    iget-object v4, p0, Lcom/android/camera/Camera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v4}, Lcom/android/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1812
    .local v3, targetUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "bucketId"

    sget-object v6, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1814
    const-string v1, "AutoAllTest"

    .line 1815
    .local v1, ExtraName:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1817
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1818
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1819
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1821
    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.ViewImage"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    :try_start_2f
    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_33

    .line 1830
    :goto_32
    return-void

    .line 1824
    :catch_33
    move-exception v4

    goto :goto_32
.end method
