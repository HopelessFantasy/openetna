.class public Lcom/android/camera/VideoCamera;
.super Landroid/app/Activity;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$MainHandler;
    }
.end annotation


# static fields
.field private static final CANNOT_STAT_ERROR:J = -0x2L

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final DATA_PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final DEBUG_SUPPRESS_AUDIO_RECORDING:Z = false

.field private static final END:I = 0xa

.field private static final IDLE:I = 0xb

.field private static final INIT:I = 0x5

.field private static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field private static final MAX_RECORDING_DURATION_MS:I = 0x927c0

.field public static final MENU_GALLERY_PHOTOS:I = 0x7

.field public static final MENU_GALLERY_VIDEOS:I = 0x8

.field public static final MENU_SAVE_GALLERY_PHOTO:I = 0x22

.field public static final MENU_SAVE_NEW_VIDEO:I = 0x25

.field public static final MENU_SAVE_PLAY_VIDEO:I = 0x23

.field public static final MENU_SAVE_SELECT_VIDEO:I = 0x24

.field public static final MENU_SETTINGS:I = 0x6

.field private static final NO_STORAGE_ERROR:J = -0x1L

.field private static final READY:I = -0x1

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SHARE_FILE_LENGTH_LIMIT:J = 0x300000L

.field private static final STORAGE_STATUS_LOW:I = 0x1

.field private static final STORAGE_STATUS_NONE:I = 0x2

.field private static final STORAGE_STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "videocamera"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final VIDEOPLAY:I = 0x9

.field private static final VIDEORECORD:I = 0x6

.field private static final VIDEORECORDSTART:I = 0x7

.field private static final VIDEORECORDSTOP:I = 0x8

.field private static final VIDEO_ASPECT_RATIO:F = 1.3333334f

.field static mContentResolver:Landroid/content/ContentResolver;


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private bCantouch:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoTest:Z

.field private mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mCurrentVideoFileLength:J

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field mCurrentZoomIndex:I

.field mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsVideoCaptureIntent:Z

.field private mLastPictureButton:Landroid/widget/ImageView;

.field mLocationManager:Landroid/location/LocationManager;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field mPausing:Z

.field mPostPictureAlert:Landroid/view/View;

.field mPreferences:Landroid/content/SharedPreferences;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageStatus:I

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThumbController:Lcom/android/camera/ThumbnailController;

.field mVideoFrame:Landroid/widget/ImageView;

.field mVideoPreview:Lcom/android/camera/VideoPreview;

.field resRouting:I

.field private videocameraState:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1376
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/VideoCamera;->DATA_PATH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 113
    iput v2, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    .line 116
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFileLength:J

    .line 130
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 134
    iput v2, p0, Lcom/android/camera/VideoCamera;->mCurrentZoomIndex:I

    .line 138
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 139
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->resRouting:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mAutoTest:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->bCantouch:Z

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    .line 160
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 170
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v0, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private VideoCameraTest(I)V
    .registers 12
    .parameter "cur"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 1395
    const/4 v7, 0x5

    if-ne p1, v7, :cond_17

    .line 1396
    iput v9, p0, Lcom/android/camera/VideoCamera;->videocameraState:I

    .line 1397
    const-string v7, "videocamera"

    const-string v8, "Video camera test "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_e
    :goto_e
    new-instance v6, Lcom/android/camera/VideoCamera$11;

    invoke-direct {v6, p0}, Lcom/android/camera/VideoCamera$11;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 1488
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1489
    return-void

    .line 1400
    .end local v6           #t:Ljava/lang/Thread;
    :cond_17
    if-ne p1, v9, :cond_25

    .line 1402
    iput-boolean v8, p0, Lcom/android/camera/VideoCamera;->bCantouch:Z

    .line 1404
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v7}, Lcom/android/camera/ShutterButton;->performClick()Z

    .line 1405
    const/16 v7, 0x8

    iput v7, p0, Lcom/android/camera/VideoCamera;->videocameraState:I

    goto :goto_e

    .line 1425
    :cond_25
    const/16 v7, 0xa

    if-ne p1, v7, :cond_e

    .line 1428
    const-string v4, "com.lge.hiddenmenu"

    .line 1429
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1430
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1431
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1432
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 1433
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1434
    .local v0, AutoAllTest:Ljava/lang/Integer;
    const/16 v7, 0xb

    iput v7, p0, Lcom/android/camera/VideoCamera;->videocameraState:I

    .line 1436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1437
    const-string v2, "MotionSensorTest"

    .line 1439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1441
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V

    .line 1444
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    goto :goto_e
.end method

.method static synthetic access$100(Lcom/android/camera/VideoCamera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearScreenOnFlag()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->discardCurrentVideoAndStartPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoCamera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/VideoCamera;->videocameraState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/VideoCamera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/VideoCamera;->videocameraState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->VideoCameraTest(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoCamera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/VideoCamera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideo()Z

    move-result v0

    return v0
.end method

.method private acquireVideoThumb()V
    .registers 4

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/ImageManager;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1335
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1336
    if-eqz v0, :cond_12

    .line 1337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1339
    :cond_12
    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .registers 9
    .parameter "menu"

    .prologue
    const v6, 0x7f09002f

    const v4, 0x108003f

    const/4 v5, 0x0

    .line 1054
    invoke-static {p1, p0, v5}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;Landroid/app/Activity;Z)V

    .line 1056
    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-interface {p1, v2, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/VideoCamera$8;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoCamera$8;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1062
    .local v0, gallery:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1063
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/VideoCamera$9;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoCamera$9;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1072
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1073
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    const/4 v2, 0x1

    const/4 v3, 0x6

    const v4, 0x7f090015

    invoke-interface {p1, v2, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/VideoCamera$10;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoCamera$10;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 1084
    .local v1, item:Landroid/view/MenuItem;
    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1085
    return-void
.end method

.method private cleanupEmptyFile()V
    .registers 6

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 844
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 846
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 850
    .end local v0           #f:Ljava/io/File;
    :cond_38
    return-void
.end method

.method private clearScreenOnFlag()V
    .registers 4

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1309
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1310
    .local v0, keepScreenOnFlag:I
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_15

    .line 1311
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1313
    :cond_15
    return-void
.end method

.method private connectAndFadeIn([I)V
    .registers 10
    .parameter "connectIds"

    .prologue
    .line 1234
    move-object v1, p1

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v4, :cond_23

    aget v3, v1, v2

    .line 1235
    .local v3, id:I
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mPostPictureAlert:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1236
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1238
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1239
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1234
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1241
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v3           #id:I
    .end local v5           #view:Landroid/view/View;
    :cond_23
    return-void
.end method

.method private static createName(J)Ljava/lang/String;
    .registers 3
    .parameter "dateTaken"

    .prologue
    .line 275
    const-string v0, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createVideoPath()V
    .registers 15

    .prologue
    const-string v13, ".3gp"

    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1001
    .local v4, dateTaken:J
    invoke-static {v4, v5}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v9

    .line 1002
    .local v9, title:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".3gp"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1003
    .local v6, displayName:Ljava/lang/String;
    sget-object v1, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 1004
    .local v1, cameraDirPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v0, cameraDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1006
    new-instance v3, Ljava/text/SimpleDateFormat;

    const v11, 0x7f0900ae

    invoke-virtual {p0, v11}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v3, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1009
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1010
    .local v8, filepart:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".3gp"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1011
    .local v7, filename:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v11, 0x7

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 1012
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "title"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v11, "_display_name"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v11, "description"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v11, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1016
    const-string v11, "mime_type"

    const-string v12, "video/3gpp"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v11, "_data"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 1019
    const-string v11, "videocamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current camera video filename: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iput-object v10, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1021
    return-void
.end method

.method private static dataLocation()Lcom/android/camera/ImageManager$DataLocation;
    .registers 1

    .prologue
    .line 1354
    sget-object v0, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private deleteCurrentVideo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1034
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1035
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 1036
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1038
    :cond_c
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_19

    .line 1039
    sget-object v0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1040
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1042
    :cond_19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    .line 1043
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .registers 6
    .parameter "fileName"

    .prologue
    const-string v3, "videocamera"

    .line 1046
    const-string v1, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1049
    const-string v1, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_3d
    return-void
.end method

.method private discardCurrentVideoAndStartPreview()V
    .registers 1

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 467
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlertAndStartPreview()V

    .line 468
    return-void
.end method

.method private doPlayCurrentNativeVideo()V
    .registers 8

    .prologue
    .line 446
    const-string v1, "AutoAllTest"

    .line 447
    .local v1, ExtraName:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 448
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 449
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 451
    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.MovieView"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 456
    :try_start_1b
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 462
    :goto_1e
    return-void

    .line 458
    :catch_1f
    move-exception v2

    .line 459
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t view video "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method private doPlayCurrentVideo()V
    .registers 6

    .prologue
    const-string v4, "videocamera"

    .line 437
    const-string v2, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing current video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 440
    .local v1, intent:Landroid/content/Intent;
    :try_start_25
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    .line 444
    :goto_28
    return-void

    .line 441
    :catch_29
    move-exception v0

    .line 442
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t view video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method private doReturnToCaller(Z)V
    .registers 5
    .parameter "success"

    .prologue
    .line 809
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 811
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_14

    .line 812
    const/4 v0, -0x1

    .line 813
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 817
    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResult(ILandroid/content/Intent;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 819
    return-void

    .line 815
    .end local v0           #resultCode:I
    :cond_14
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_d
.end method

.method private static getAvailableStorage()J
    .registers 7

    .prologue
    .line 827
    :try_start_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v3

    if-nez v3, :cond_9

    .line 828
    const-wide/16 v3, -0x1

    .line 838
    :goto_8
    return-wide v3

    .line 830
    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, storageDirectory:Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 832
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_22

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    goto :goto_8

    .line 834
    .end local v1           #stat:Landroid/os/StatFs;
    .end local v2           #storageDirectory:Ljava/lang/String;
    :catch_22
    move-exception v3

    move-object v0, v3

    .line 838
    .local v0, ex:Ljava/lang/Exception;
    const-wide/16 v3, -0x2

    goto :goto_8
.end method

.method private getBooleanPreference(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 996
    if-eqz p2, :cond_d

    move v0, v2

    :goto_5
    invoke-direct {p0, p1, v0}, Lcom/android/camera/VideoCamera;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_f
    move v0, v1

    goto :goto_c
.end method

.method private getDataPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 1381
    const/4 v6, 0x0

    .line 1383
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    sget-object v0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/camera/VideoCamera;->DATA_PATH_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1384
    if-eqz v6, :cond_21

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1385
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_28

    move-result-object v0

    .line 1390
    if-eqz v6, :cond_20

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    if-eqz v6, :cond_26

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_26
    move-object v0, v7

    goto :goto_20

    :catchall_28
    move-exception v0

    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2e
    throw v0
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .registers 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 985
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, s:Ljava/lang/String;
    move v0, p2

    .line 988
    .local v0, result:I
    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result v0

    .line 992
    :goto_d
    return v0

    .line 989
    :catch_e
    move-exception v2

    goto :goto_d
.end method

.method private getStorageStatus(Z)I
    .registers 8
    .parameter "mayHaveSd"

    .prologue
    const-wide/16 v4, -0x1

    .line 500
    if-eqz p1, :cond_f

    invoke-static {}, Lcom/android/camera/VideoCamera;->getAvailableStorage()J

    move-result-wide v2

    move-wide v0, v2

    .line 501
    .local v0, remaining:J
    :goto_9
    cmp-long v2, v0, v4

    if-nez v2, :cond_11

    .line 502
    const/4 v2, 0x2

    .line 504
    :goto_e
    return v2

    .end local v0           #remaining:J
    :cond_f
    move-wide v0, v4

    .line 500
    goto :goto_9

    .line 504
    .restart local v0       #remaining:J
    :cond_11
    const-wide/32 v2, 0x80000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private hideAlert()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 1228
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPostPictureAlert:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showLastPictureButton()V

    .line 1231
    return-void
.end method

.method private hideAlertAndStartPreview()V
    .registers 1

    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 1325
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideo()Z

    .line 1326
    return-void
.end method

.method private hideAlertAndStartVideoRecording()V
    .registers 1

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    .line 1330
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    .line 1331
    return-void
.end method

.method private hideLastPictureButton()V
    .registers 3

    .prologue
    .line 1348
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_a

    .line 1349
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1351
    :cond_a
    return-void
.end method

.method private initializeVideo()Z
    .registers 14

    .prologue
    .line 855
    const-string v10, "videocamera"

    const-string v11, "initializeVideo"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isAlertVisible()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x0

    .line 971
    :goto_e
    return v10

    .line 860
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 861
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 863
    .local v4, myExtras:Landroid/os/Bundle;
    iget-boolean v10, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v10, :cond_37

    if-eqz v4, :cond_37

    .line 864
    const-string v10, "output"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 865
    .local v7, saveUri:Landroid/net/Uri;
    if-eqz v7, :cond_37

    .line 867
    :try_start_27
    sget-object v10, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "rw"

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 869
    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_37} :catch_47

    .line 877
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_37
    :goto_37
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 879
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v10, :cond_53

    .line 880
    const-string v10, "videocamera"

    const-string v11, "SurfaceHolder is null"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v10, 0x0

    goto :goto_e

    .line 871
    .restart local v7       #saveUri:Landroid/net/Uri;
    :catch_47
    move-exception v10

    move-object v0, v10

    .line 873
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v10, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 884
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_53
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 889
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 891
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 892
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 894
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v11, 0x927c0

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 896
    iget v10, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    if-eqz v10, :cond_10b

    .line 897
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v11, "/dev/null"

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 908
    :goto_7f
    const-string v10, "pref_camera_videoquality_key"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/camera/VideoCamera;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v9

    .line 910
    .local v9, videoQualityHigh:Z
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "pref_camera_videoformat_key"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 912
    .local v8, videoFormat:Z
    const-string v10, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 913
    const-string v10, "android.intent.extra.videoQuality"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 914
    .local v2, extraVideoQuality:I
    if-lez v2, :cond_124

    const/4 v10, 0x1

    move v9, v10

    .line 921
    .end local v2           #extraVideoQuality:I
    :cond_a2
    :goto_a2
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v11, "camera.settings.fps"

    const/16 v12, 0x14

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 923
    if-eqz v9, :cond_128

    .line 924
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0x140

    const/16 v12, 0xf0

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 928
    :goto_ba
    if-eqz v8, :cond_132

    .line 929
    const-string v10, "videocamera"

    const-string v11, "Recording in MPEG4 Format"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 937
    :goto_c9
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 939
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 941
    invoke-static {}, Lcom/android/camera/VideoCamera;->getAvailableStorage()J

    move-result-wide v5

    .line 945
    .local v5, remaining:J
    :try_start_de
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v11, 0x20000

    sub-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_e8
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_e8} :catch_162

    .line 954
    :goto_e8
    :try_start_e8
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ed} :catch_140

    .line 961
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 963
    iget-boolean v10, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v10, :cond_ff

    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v10}, Lcom/android/camera/ThumbnailController;->isUriValid()Z

    move-result v10

    if-nez v10, :cond_ff

    .line 964
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateLastVideo()V

    .line 967
    :cond_ff
    iget-boolean v10, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v10, :cond_108

    .line 968
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v10}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 971
    :cond_108
    const/4 v10, 0x1

    goto/16 :goto_e

    .line 900
    .end local v5           #remaining:J
    .end local v8           #videoFormat:Z
    .end local v9           #videoQualityHigh:Z
    :cond_10b
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v10, :cond_118

    .line 901
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto/16 :goto_7f

    .line 903
    :cond_118
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->createVideoPath()V

    .line 904
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 914
    .restart local v2       #extraVideoQuality:I
    .restart local v8       #videoFormat:Z
    .restart local v9       #videoQualityHigh:Z
    :cond_124
    const/4 v10, 0x0

    move v9, v10

    goto/16 :goto_a2

    .line 926
    .end local v2           #extraVideoQuality:I
    :cond_128
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0xb0

    const/16 v12, 0x90

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_ba

    .line 933
    :cond_132
    const-string v10, "videocamera"

    const-string v11, "Recording in H263 Format"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v10, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto :goto_c9

    .line 955
    .restart local v5       #remaining:J
    :catch_140
    move-exception v10

    move-object v1, v10

    .line 956
    .local v1, exception:Ljava/io/IOException;
    const-string v10, "videocamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepare failed for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 959
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 946
    .end local v1           #exception:Ljava/io/IOException;
    :catch_162
    move-exception v10

    goto :goto_e8
.end method

.method private isAlertVisible()Z
    .registers 2

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPostPictureAlert:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isVideoCaptureIntent()Z
    .registers 3

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private pauseAudioPlayback()V
    .registers 4

    .prologue
    .line 1113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1117
    return-void
.end method

.method private registerVideo()V
    .registers 5

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_2e

    .line 1025
    const-string v1, "content://media/external/video/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1026
    .local v0, videoTable:Landroid/net/Uri;
    sget-object v1, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1028
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local v0           #videoTable:Landroid/net/Uri;
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1031
    return-void
.end method

.method private releaseMediaRecorder()V
    .registers 3

    .prologue
    .line 975
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1b

    .line 977
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 978
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 979
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 982
    :cond_1b
    return-void
.end method

.method private setScreenOnFlag()V
    .registers 4

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1317
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1318
    .local v0, keepScreenOnFlag:I
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_15

    .line 1319
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1321
    :cond_15
    return-void
.end method

.method private setScreenTimeoutInfinite()V
    .registers 3

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1304
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenOnFlag()V

    .line 1305
    return-void
.end method

.method private setScreenTimeoutLong()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 1297
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1298
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenOnFlag()V

    .line 1299
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1300
    return-void
.end method

.method private setScreenTimeoutSystemDefault()V
    .registers 3

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1293
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->clearScreenOnFlag()V

    .line 1294
    return-void
.end method

.method private showAlert()V
    .registers 19

    .prologue
    .line 1184
    const/4 v14, 0x2

    new-array v11, v14, [I

    fill-array-data v11, :array_b4

    .line 1185
    .local v11, pickIds:[I
    const/4 v14, 0x3

    new-array v9, v14, [I

    fill-array-data v9, :array_bc

    .line 1186
    .local v9, normalIds:[I
    const/4 v14, 0x1

    new-array v2, v14, [I

    const/4 v14, 0x0

    const v15, 0x7f0b0040

    aput v15, v2, v14

    .line 1187
    .local v2, alwaysOnIds:[I
    move-object v5, v11

    .line 1188
    .local v5, hideIds:[I
    move-object v4, v9

    .line 1189
    .local v4, connectIds:[I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    move v14, v0

    if-eqz v14, :cond_20

    .line 1190
    move-object v5, v9

    .line 1191
    move-object v4, v11

    .line 1193
    :cond_20
    move-object v3, v5

    .local v3, arr$:[I
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_23
    if-ge v6, v8, :cond_38

    aget v7, v3, v6

    .line 1194
    .local v7, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPostPictureAlert:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 1196
    .end local v7           #id:I
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPostPictureAlert:Landroid/view/View;

    move-object v14, v0

    const v15, 0x7f0b0041

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ActionMenuButton;

    .line 1198
    .local v12, shareButton:Lcom/android/camera/ActionMenuButton;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/VideoCamera;->mCurrentVideoFileLength:J

    move-wide v14, v0

    const-wide/32 v16, 0x300000

    cmp-long v14, v14, v16

    if-lez v14, :cond_b1

    const/4 v14, 0x1

    :goto_53
    invoke-virtual {v12, v14}, Lcom/android/camera/ActionMenuButton;->setRestricted(Z)V

    .line 1200
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/camera/VideoCamera;->connectAndFadeIn([I)V

    .line 1201
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/camera/VideoCamera;->connectAndFadeIn([I)V

    .line 1202
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoCamera;->hideLastPictureButton()V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mPostPictureAlert:Landroid/view/View;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    move v14, v0

    if-nez v14, :cond_94

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/camera/VideoCamera;->getDataPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1219
    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    move-object v10, v0

    .line 1220
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_b0

    .line 1221
    invoke-static {v10}, Lcom/android/camera/ImageManager;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1222
    .local v13, videoFrame:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    move-object v14, v0

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    .end local v13           #videoFrame:Landroid/graphics/Bitmap;
    :cond_b0
    return-void

    .line 1198
    .end local v10           #path:Ljava/lang/String;
    :cond_b1
    const/4 v14, 0x0

    goto :goto_53

    .line 1184
    nop

    :array_b4
    .array-data 0x4
        0x3bt 0x0t 0xbt 0x7ft
        0x3ct 0x0t 0xbt 0x7ft
    .end array-data

    .line 1185
    :array_bc
    .array-data 0x4
        0x2et 0x0t 0xbt 0x7ft
        0x41t 0x0t 0xbt 0x7ft
        0xat 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private showLastPictureButton()V
    .registers 3

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_a

    .line 1343
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1345
    :cond_a
    return-void
.end method

.method private showStorageHint()V
    .registers 3

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, errorMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    packed-switch v1, :pswitch_data_3c

    .line 486
    :goto_6
    if-eqz v0, :cond_2e

    .line 487
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_28

    .line 488
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 492
    :goto_12
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 497
    :cond_17
    :goto_17
    return-void

    .line 481
    :pswitch_18
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    goto :goto_6

    .line 484
    :pswitch_20
    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 490
    :cond_28
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 493
    :cond_2e
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_17

    .line 494
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 495
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_17

    .line 479
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_18
    .end packed-switch
.end method

.method private startShareVideoActivity()V
    .registers 7

    .prologue
    .line 336
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFileLength:J

    const-wide/32 v4, 0x300000

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    .line 337
    const v2, 0x7f0900b1

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 350
    :goto_14
    return-void

    .line 341
    :cond_15
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v2, "video/3gpp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    const v2, 0x7f0900a4

    :try_start_2e
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_14

    .line 347
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 348
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f09002d

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_14
.end method

.method private startVideoRecording()V
    .registers 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "videocamera"

    .line 1120
    const-string v1, "videocamera"

    const-string v1, "startVideoRecording"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iput-boolean v5, p0, Lcom/android/camera/VideoCamera;->bCantouch:Z

    .line 1122
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1d

    .line 1124
    iget v1, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    if-eqz v1, :cond_1e

    .line 1125
    const-string v1, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_1d
    :goto_1d
    return-void

    .line 1130
    :cond_1e
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_30

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideo()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1131
    const-string v1, "videocamera"

    const-string v1, "Initialize video (MediaRecorder) failed."

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1135
    :cond_30
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1138
    :try_start_33
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mAutoTest:Z

    if-eqz v1, :cond_3b

    .line 1139
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->VideoCameraTest(I)V

    .line 1140
    :cond_3b
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1141
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1142
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 1144
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 1146
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoCamera;->resRouting:I

    .line 1148
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/16 v3, 0x800

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setRouting(III)V
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_66} :catch_89

    .line 1155
    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 1157
    invoke-direct {p0, v7}, Lcom/android/camera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 1158
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1161
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenTimeoutInfinite()V

    .line 1162
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideLastPictureButton()V

    goto :goto_1d

    .line 1151
    :catch_89
    move-exception v1

    move-object v0, v1

    .line 1152
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v1, "Could not start media recorder. "

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private stopVideoRecording()V
    .registers 10

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v7, "videocamera"

    .line 1248
    const-string v2, "videocamera"

    const-string v2, "stopVideoRecording"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v1, 0x0

    .line 1251
    .local v1, needToRegisterRecording:Z
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_87

    .line 1252
    :cond_15
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_77

    .line 1254
    :try_start_1d
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1255
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1257
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_37

    .line 1258
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 1259
    :cond_37
    iget v2, p0, Lcom/android/camera/VideoCamera;->resRouting:I

    if-eq v2, v4, :cond_44

    .line 1260
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/VideoCamera;->resRouting:I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setRouting(III)V

    .line 1262
    :cond_44
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_49} :catch_95

    .line 1267
    :goto_49
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1269
    :try_start_4d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFileLength:J
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_5a} :catch_b4

    .line 1274
    :goto_5a
    const-string v2, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting current video filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v1, 0x1

    .line 1276
    iput-boolean v8, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1278
    :cond_77
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1279
    invoke-direct {p0, v8}, Lcom/android/camera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 1280
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1281
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenTimeoutLong()V

    .line 1283
    :cond_87
    if-eqz v1, :cond_90

    iget v2, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    if-nez v2, :cond_90

    .line 1284
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->registerVideo()V

    .line 1287
    :cond_90
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 1288
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 1289
    return-void

    .line 1263
    :catch_95
    move-exception v2

    move-object v0, v2

    .line 1264
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1270
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_b4
    move-exception v2

    move-object v0, v2

    .line 1271
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file length fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFileLength:J

    goto :goto_5a
.end method

.method private stopVideoRecordingAndGetThumbnail()V
    .registers 1

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1175
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->acquireVideoThumb()V

    .line 1176
    return-void
.end method

.method private stopVideoRecordingAndShowAlert()V
    .registers 1

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1180
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    .line 1181
    return-void
.end method

.method private updateAndShowStorageHint(Z)V
    .registers 3
    .parameter "mayHaveSd"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->getStorageStatus(Z)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    .line 474
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    .line 475
    return-void
.end method

.method private updateLastVideo()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 1358
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    sget-object v2, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/camera/VideoCamera;->dataLocation()Lcom/android/camera/ImageManager$DataLocation;

    move-result-object v3

    const/4 v4, 0x4

    sget-object v6, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v9

    .line 1365
    .local v9, list:Lcom/android/camera/ImageManager$IImageList;
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v7

    .line 1366
    .local v7, count:I
    if-lez v7, :cond_31

    .line 1367
    sub-int v0, v7, v5

    invoke-interface {v9, v0}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v8

    .line 1368
    .local v8, image:Lcom/android/camera/ImageManager$IImage;
    invoke-interface {v8}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v10

    .line 1369
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-interface {v8}, Lcom/android/camera/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1373
    .end local v8           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_2d
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 1374
    return-void

    .line 1371
    :cond_31
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0, v11, v11}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_2d
.end method

.method private updateRecordingIndicator(Z)V
    .registers 5
    .parameter "showRecording"

    .prologue
    .line 1167
    if-eqz p1, :cond_14

    const v2, 0x7f020032

    move v1, v2

    .line 1169
    .local v1, drawableId:I
    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1170
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v2, v0}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    return-void

    .line 1167
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableId:I
    :cond_14
    const v2, 0x7f020035

    move v1, v2

    goto :goto_6
.end method


# virtual methods
.method gotoGallery()V
    .registers 1

    .prologue
    .line 743
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraVideoGallery(Landroid/app/Activity;)V

    .line 744
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c

    .line 392
    :goto_7
    return-void

    .line 356
    :sswitch_8
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraVideoGallery(Landroid/app/Activity;)V

    goto :goto_7

    .line 360
    :sswitch_c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_7

    .line 364
    :sswitch_11
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_7

    .line 368
    :sswitch_16
    new-instance v0, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 373
    .local v0, deleteCallback:Ljava/lang/Runnable;
    invoke-static {p0, v0}, Lcom/android/camera/MenuHelper;->deleteVideo(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_7

    .line 378
    .end local v0           #deleteCallback:Ljava/lang/Runnable;
    :sswitch_1f
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startShareVideoActivity()V

    goto :goto_7

    .line 383
    :sswitch_23
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->doPlayCurrentNativeVideo()V

    goto :goto_7

    .line 388
    :sswitch_27
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndShowAlert()V

    goto :goto_7

    .line 353
    nop

    :sswitch_data_2c
    .sparse-switch
        0x7f0b0005 -> :sswitch_27
        0x7f0b000a -> :sswitch_16
        0x7f0b002e -> :sswitch_8
        0x7f0b003b -> :sswitch_c
        0x7f0b003c -> :sswitch_11
        0x7f0b0040 -> :sswitch_23
        0x7f0b0041 -> :sswitch_1f
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    const-string v7, "location"

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mLocationManager:Landroid/location/LocationManager;

    .line 285
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mPreferences:Landroid/content/SharedPreferences;

    .line 286
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sput-object v7, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 289
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->requestWindowFeature(I)Z

    .line 290
    const v7, 0x7f03000f

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 292
    const v7, 0x7f0b0001

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/VideoPreview;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoPreview:Lcom/android/camera/VideoPreview;

    .line 293
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoPreview:Lcom/android/camera/VideoPreview;

    const v8, 0x3faaaaab

    invoke-virtual {v7, v8}, Lcom/android/camera/VideoPreview;->setAspectRatio(F)V

    .line 298
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoPreview:Lcom/android/camera/VideoPreview;

    invoke-virtual {v7}, Lcom/android/camera/VideoPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 299
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 300
    const/4 v7, 0x3

    invoke-interface {v2, v7}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 302
    const v7, 0x7f0b003a

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mPostPictureAlert:Landroid/view/View;

    .line 304
    const/4 v7, 0x5

    new-array v5, v7, [I

    fill-array-data v5, :array_ce

    .line 306
    .local v5, ids:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_55
    if-ge v3, v6, :cond_63

    aget v4, v0, v3

    .line 307
    .local v4, id:I
    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 310
    .end local v4           #id:I
    :cond_63
    const v7, 0x7f0b0002

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ShutterButton;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 311
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v7, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 312
    const v7, 0x7f0b003f

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 313
    const v7, 0x7f0b003e

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    .line 314
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 315
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v7, :cond_c2

    .line 316
    const v7, 0x7f0b0005

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    .line 317
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 319
    .local v1, frame:Landroid/graphics/drawable/Drawable;
    new-instance v7, Lcom/android/camera/ThumbnailController;

    iget-object v8, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    sget-object v9, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v7, v8, v1, v9}, Lcom/android/camera/ThumbnailController;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/content/ContentResolver;)V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    .line 321
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastVideoThumbPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/camera/ThumbnailController;->loadData(Ljava/lang/String;)Z

    .line 329
    .end local v1           #frame:Landroid/graphics/drawable/Drawable;
    :cond_c2
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->bAutoAllTest:Ljava/lang/Integer;

    .line 330
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->bCantouch:Z

    .line 333
    return-void

    .line 304
    nop

    :array_ce
    .array-data 0x4
        0x40t 0x0t 0xbt 0x7ft
        0x41t 0x0t 0xbt 0x7ft
        0xat 0x0t 0xbt 0x7ft
        0x3ct 0x0t 0xbt 0x7ft
        0x3bt 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 762
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 764
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_a

    move v0, v2

    .line 800
    :goto_9
    return v0

    .line 768
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 769
    const/16 v1, -0x61

    .line 771
    .local v1, menuFlags:I
    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/VideoCamera$5;

    invoke-direct {v5, p0}, Lcom/android/camera/VideoCamera$5;-><init>(Lcom/android/camera/VideoCamera;)V

    new-instance v6, Lcom/android/camera/VideoCamera$6;

    invoke-direct {v6, p0}, Lcom/android/camera/VideoCamera$6;-><init>(Lcom/android/camera/VideoCamera;)V

    move-object v0, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;IZLandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/camera/MenuHelper$MenuInvoker;)Lcom/android/camera/MenuHelper$MenuItemsResult;

    .line 790
    const/4 v0, 0x2

    const/16 v3, 0x22

    const v4, 0x7f09002f

    invoke-interface {p1, v0, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/android/camera/VideoCamera$7;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoCamera$7;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v7

    .line 798
    .local v7, gallery:Landroid/view/MenuItem;
    const v0, 0x108003f

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 800
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 5
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 1089
    if-ne p2, v0, :cond_9

    .line 1091
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1092
    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    .line 1094
    :cond_9
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 5
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1098
    const/16 v0, 0x320

    if-ne p2, v0, :cond_a

    .line 1099
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    .line 1104
    :cond_9
    :goto_9
    return-void

    .line 1100
    :cond_a
    const/16 v0, 0x321

    if-ne p2, v0, :cond_9

    .line 1101
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    .line 1102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint(Z)V

    goto :goto_9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 587
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenTimeoutLong()V

    .line 590
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$$$$$ VideoCamera $$$$$$$$$ keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sparse-switch p1, :sswitch_data_ae

    .line 706
    :cond_33
    :goto_33
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_37
    return v1

    :sswitch_38
    move v1, v4

    .line 607
    goto :goto_37

    .line 613
    :sswitch_3a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_33

    .line 614
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    move v1, v4

    .line 615
    goto :goto_37

    .line 620
    :sswitch_47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_50

    .line 621
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    :cond_50
    move v1, v4

    .line 623
    goto :goto_37

    .line 625
    :sswitch_52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mAutoTest:Z

    .line 626
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->bCantouch:Z

    .line 627
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_62

    .line 628
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    :cond_62
    move v1, v4

    .line 630
    goto :goto_37

    :sswitch_64
    move v1, v4

    .line 638
    goto :goto_37

    .line 640
    :sswitch_66
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_77

    .line 641
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideo()Z

    .line 643
    new-instance v0, Lcom/android/camera/VideoCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 648
    .local v0, deleteCallback:Ljava/lang/Runnable;
    invoke-static {p0, v0}, Lcom/android/camera/MenuHelper;->deleteVideo(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .end local v0           #deleteCallback:Ljava/lang/Runnable;
    :cond_77
    move v1, v4

    .line 650
    goto :goto_37

    .line 652
    :sswitch_79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_82

    .line 653
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->doPlayCurrentNativeVideo()V

    :cond_82
    move v1, v4

    .line 656
    goto :goto_37

    :sswitch_84
    move v1, v4

    .line 660
    goto :goto_37

    .line 663
    :sswitch_86
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_33

    .line 664
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ShutterButton;->performClick()Z

    move v1, v4

    .line 665
    goto :goto_37

    .line 670
    :sswitch_93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->bAutoAllTest:Ljava/lang/Integer;

    .line 673
    iget v1, p0, Lcom/android/camera/VideoCamera;->videocameraState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a7

    .line 675
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->doPlayCurrentNativeVideo()V

    .line 676
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/camera/VideoCamera;->videocameraState:I

    goto :goto_33

    .line 698
    :cond_a7
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_33

    move v1, v4

    .line 700
    goto :goto_37

    .line 591
    nop

    :sswitch_data_ae
    .sparse-switch
        0x4 -> :sswitch_38
        0x17 -> :sswitch_86
        0x1b -> :sswitch_3a
        0x52 -> :sswitch_93
        0x63 -> :sswitch_47
        0x65 -> :sswitch_64
        0x66 -> :sswitch_79
        0x67 -> :sswitch_66
        0x68 -> :sswitch_84
        0x69 -> :sswitch_84
        0x73 -> :sswitch_52
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 711
    packed-switch p1, :pswitch_data_10

    .line 716
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 713
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 714
    const/4 v0, 0x1

    goto :goto_7

    .line 711
    :pswitch_data_10
    .packed-switch 0x1b
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 556
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 560
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_40

    .line 561
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3c

    .line 562
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndShowAlert()V

    .line 570
    :goto_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 572
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 573
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenTimeoutSystemDefault()V

    .line 575
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2f

    .line 576
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/ImageManager;->getLastVideoThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailController;->storeData(Ljava/lang/String;)Z

    .line 579
    :cond_2f
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_3b

    .line 580
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 583
    :cond_3b
    return-void

    .line 564
    :cond_3c
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndGetThumbnail()V

    goto :goto_17

    .line 567
    :cond_40
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    goto :goto_17
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 748
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 750
    const/4 v0, 0x1

    .local v0, i:I
    :goto_6
    if-gt v0, v3, :cond_11

    .line 751
    if-eq v0, v2, :cond_e

    .line 752
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 750
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 756
    :cond_11
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 757
    return v2
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 510
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 512
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenTimeoutLong()V

    .line 514
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 517
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 524
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->getStorageStatus(Z)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoCamera;->mStorageStatus:I

    .line 526
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideo()Z

    .line 540
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 541
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "AutoAllTest"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->bAutoAllTest:Ljava/lang/Integer;

    .line 542
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 545
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .registers 4
    .parameter "button"

    .prologue
    const-string v1, "videocamera"

    .line 399
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->bCantouch:Z

    if-nez v0, :cond_7

    .line 432
    :goto_6
    return-void

    .line 403
    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    goto :goto_6

    .line 405
    :pswitch_f
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3a

    .line 406
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1b

    .line 407
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndShowAlert()V

    goto :goto_6

    .line 409
    :cond_1b
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecordingAndGetThumbnail()V

    .line 411
    const-string v0, "videocamera"

    const-string v0, "%%%%%%%%%%%%%%%%%%%%% RestartVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mAutoTest:Z

    if-eqz v0, :cond_2d

    .line 413
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideo()Z

    goto :goto_6

    .line 415
    :cond_2d
    const-string v0, "videocamera"

    const-string v0, "%%%%%%%%%%%%%%%%%%%%% Ready to view video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_6

    .line 421
    :cond_3a
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isAlertVisible()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 422
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_48

    .line 423
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->discardCurrentVideoAndStartPreview()V

    goto :goto_6

    .line 425
    :cond_48
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlertAndStartVideoRecording()V

    goto :goto_6

    .line 428
    :cond_4c
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_6

    .line 403
    :pswitch_data_50
    .packed-switch 0x7f0b0002
        :pswitch_f
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ShutterButton;Z)V
    .registers 3
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 396
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setScreenTimeoutSystemDefault()V

    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 551
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_5

    .line 732
    :goto_4
    return-void

    .line 730
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 731
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeVideo()Z

    goto :goto_4
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 736
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 740
    return-void
.end method
