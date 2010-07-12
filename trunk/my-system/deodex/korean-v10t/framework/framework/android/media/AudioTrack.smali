.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELCOUNT:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack-Java"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 16
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 182
    const/16 v0, 0x5622

    iput v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 193
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 201
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 207
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 259
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_47

    .line 260
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    :cond_47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 263
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 265
    invoke-direct {p0, p5}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 268
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v2, p0, Landroid/media/AudioTrack;->mStreamType:I

    iget v3, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v5, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v6, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v7, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII)I

    move-result v8

    .line 271
    .local v8, initResult:I
    if-eqz v8, :cond_88

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 281
    :goto_87
    return-void

    .line 276
    :cond_88
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_90

    .line 277
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_87

    .line 279
    :cond_90
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_87
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioTrack;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioTrack;)Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .registers 7
    .parameter "audioBufferSize"

    .prologue
    const/4 v4, 0x1

    .line 369
    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    move v2, v4

    :goto_9
    mul-int v0, v1, v2

    .line 371
    .local v0, frameSizeInBytes:I
    rem-int v1, p1, v0

    if-nez v1, :cond_11

    if-ge p1, v4, :cond_1b

    .line 372
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    .end local v0           #frameSizeInBytes:I
    :cond_19
    const/4 v2, 0x2

    goto :goto_9

    .line 375
    .restart local v0       #frameSizeInBytes:I
    :cond_1b
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 376
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .registers 11
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "mode"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 297
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    if-eq p1, v4, :cond_1d

    if-eq p1, v1, :cond_1d

    if-eq p1, v3, :cond_1d

    if-eqz p1, :cond_1d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1d

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1d
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 309
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_28

    const v0, 0xbb80

    if-le p2, v0, :cond_41

    .line 310
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_41
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 318
    packed-switch p3, :pswitch_data_7c

    .line 329
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 330
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :pswitch_52
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 322
    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 336
    :goto_56
    packed-switch p4, :pswitch_data_86

    .line 345
    iput v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :pswitch_63
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 326
    iput v4, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    goto :goto_56

    .line 338
    :pswitch_68
    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 352
    :goto_6a
    if-eq p5, v3, :cond_79

    if-eqz p5, :cond_79

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :pswitch_76
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_6a

    .line 355
    :cond_79
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 357
    return-void

    .line 318
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_63
    .end packed-switch

    .line 336
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_68
        :pswitch_76
        :pswitch_76
    .end packed-switch
.end method

.method public static getMaxVolume()F
    .registers 1

    .prologue
    .line 417
    const/high16 v0, 0x3f80

    return v0
.end method

.method public static getMinBufferSize(III)I
    .registers 8
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, channelCount:I
    packed-switch p1, :pswitch_data_56

    .line 554
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    move v2, v4

    .line 575
    :goto_c
    return v2

    .line 548
    :pswitch_d
    const/4 v0, 0x1

    .line 558
    :goto_e
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1d

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1d

    .line 560
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    move v2, v4

    .line 561
    goto :goto_c

    .line 551
    :pswitch_1b
    const/4 v0, 0x2

    .line 552
    goto :goto_e

    .line 564
    :cond_1d
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_26

    const v2, 0xbb80

    if-le p0, v2, :cond_44

    .line 565
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    move v2, v4

    .line 566
    goto :goto_c

    .line 569
    :cond_44
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 570
    .local v1, size:I
    if-eq v1, v3, :cond_4c

    if-nez v1, :cond_53

    .line 571
    :cond_4c
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    move v2, v3

    .line 572
    goto :goto_c

    :cond_53
    move v2, v1

    .line 575
    goto :goto_c

    .line 546
    nop

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_d
        :pswitch_1b
    .end packed-switch
.end method

.method public static getMinVolume()F
    .registers 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .registers 2
    .parameter "streamType"

    .prologue
    .line 524
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1051
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1055
    const-string v0, "AudioTrack-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioTrack ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "audiotrack_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 981
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 982
    .local v1, track:Landroid/media/AudioTrack;
    if-nez v1, :cond_b

    .line 992
    :cond_a
    :goto_a
    return-void

    .line 986
    :cond_b
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    if-eqz v2, :cond_a

    .line 987
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 989
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-virtual {v2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 396
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 397
    return-void
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 804
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 806
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 809
    :cond_8
    return-void
.end method

.method public getAudioFormat()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getChannelConfiguration()I
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method protected getNativeFrameCount()I
    .registers 2

    .prologue
    .line 496
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .registers 2

    .prologue
    .line 503
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .registers 2

    .prologue
    .line 489
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    return v0
.end method

.method public getPlaybackHeadPosition()I
    .registers 2

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .registers 2

    .prologue
    .line 431
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .registers 2

    .prologue
    .line 510
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 479
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 449
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 782
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 783
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_d
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 790
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 749
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 750
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_d
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 755
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 756
    monitor-exit v0

    .line 757
    return-void

    .line 756
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public release()V
    .registers 2

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_a

    .line 390
    :goto_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 392
    return-void

    .line 387
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public reloadStaticData()I
    .registers 3

    .prologue
    .line 881
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 882
    const/4 v0, -0x3

    .line 884
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_6
.end method

.method public setLoopPoints(III)I
    .registers 6
    .parameter "startInFrames"
    .parameter "endInFrames"
    .parameter "loopCount"

    .prologue
    .line 724
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 725
    const/4 v0, -0x3

    .line 727
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_6
.end method

.method public setNotificationMarkerPosition(I)I
    .registers 4
    .parameter "markerInFrames"

    .prologue
    .line 678
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 679
    const/4 v0, -0x3

    .line 681
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_6
.end method

.method public setPlaybackHeadPosition(I)I
    .registers 5
    .parameter "positionInFrames"

    .prologue
    .line 705
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 707
    :cond_d
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v1

    monitor-exit v0

    move v0, v1

    .line 709
    :goto_13
    return v0

    :cond_14
    const/4 v1, -0x3

    monitor-exit v0

    move v0, v1

    goto :goto_13

    .line 711
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 592
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 5
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 604
    iget-object v0, p0, Landroid/media/AudioTrack;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    iput-object p1, p0, Landroid/media/AudioTrack;->mPositionListener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 606
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 607
    if-eqz p1, :cond_f

    .line 608
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 611
    :cond_f
    return-void

    .line 606
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setPlaybackRate(I)I
    .registers 4
    .parameter "sampleRateInHz"

    .prologue
    .line 661
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 662
    const/4 v0, -0x3

    .line 667
    :goto_6
    return v0

    .line 664
    :cond_7
    if-gtz p1, :cond_b

    .line 665
    const/4 v0, -0x2

    goto :goto_6

    .line 667
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_6
.end method

.method public setPositionNotificationPeriod(I)I
    .registers 4
    .parameter "periodInFrames"

    .prologue
    .line 691
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 692
    const/4 v0, -0x3

    .line 694
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_6
.end method

.method protected setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 736
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 737
    return-void
.end method

.method public setStereoVolume(FF)I
    .registers 5
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 625
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 626
    const/4 v0, -0x3

    .line 645
    :goto_6
    return v0

    .line 630
    :cond_7
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    .line 631
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 633
    :cond_13
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1f

    .line 634
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 636
    :cond_1f
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2b

    .line 637
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 639
    :cond_2b
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_37

    .line 640
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 643
    :cond_37
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 645
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 765
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_d

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_d
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 772
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 773
    monitor-exit v0

    .line 774
    return-void

    .line 773
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public write([BII)I
    .registers 7
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    const/4 v2, 0x1

    .line 823
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_e

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    if-lez p3, :cond_e

    .line 826
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 829
    :cond_e
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_14

    .line 830
    const/4 v0, -0x3

    .line 838
    :goto_13
    return v0

    .line 833
    :cond_14
    if-eqz p1, :cond_1f

    if-ltz p2, :cond_1f

    if-ltz p3, :cond_1f

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 835
    :cond_1f
    const/4 v0, -0x2

    goto :goto_13

    .line 838
    :cond_21
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result v0

    goto :goto_13
.end method

.method public write([SII)I
    .registers 7
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    const/4 v2, 0x1

    .line 854
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_e

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    if-lez p3, :cond_e

    .line 857
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    .line 860
    :cond_e
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v2, :cond_14

    .line 861
    const/4 v0, -0x3

    .line 869
    :goto_13
    return v0

    .line 864
    :cond_14
    if-eqz p1, :cond_1f

    if-ltz p2, :cond_1f

    if-ltz p3, :cond_1f

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_21

    .line 866
    :cond_1f
    const/4 v0, -0x2

    goto :goto_13

    .line 869
    :cond_21
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    goto :goto_13
.end method
