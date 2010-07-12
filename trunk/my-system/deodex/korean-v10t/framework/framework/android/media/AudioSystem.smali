.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final MAX_VOLUME:I = 0x64

.field public static final MIN_VOLUME:I = 0x0

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_MODES:I = 0x3

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0x7

.field public static final ROUTE_ALL:I = -0x1

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4

.field public static final ROUTE_DUALMIC_HANDSET:I = 0x20

.field public static final ROUTE_DUALMIC_SPEAKER:I = 0x40

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_FMRADIO:I = 0x400

.field public static final ROUTE_HEADSET:I = 0x8

.field public static final ROUTE_RECORDER:I = 0x800

.field public static final ROUTE_SPEAKER:I = 0x2

.field public static final ROUTE_TTY_DEVICE_FULL:I = 0x80

.field public static final ROUTE_TTY_DEVICE_HCO:I = 0x100

.field public static final ROUTE_TTY_DEVICE_VCO:I = 0x200

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_VOICE_CALL:I

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method private static errorCallbackFromNative(I)V
    .registers 2
    .parameter "error"

    .prologue
    .line 262
    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v0, :cond_9

    .line 263
    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 265
    :cond_9
    return-void
.end method

.method public static native getMode()I
.end method

.method public static final getNumStreamTypes()I
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x7

    return v0
.end method

.method public static native getRouting(I)I
.end method

.method public static native getVolume(I)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static native isMusicActive()Z
.end method

.method public static native muteMicrophone(Z)I
.end method

.method public static native setAmpGain(IIII)I
.end method

.method public static native setDtmfVolume(IIBII)I
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .registers 1
    .parameter "cb"

    .prologue
    .line 257
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 258
    return-void
.end method

.method public static native setFMRadioMultiSound()I
.end method

.method public static native setLoopbackMode(I)I
.end method

.method public static native setMicAmpGain(IIII)I
.end method

.method public static native setMode(I)I
.end method

.method public static native setNextEcParam(IIII)I
.end method

.method public static native setPadValue(IIBII)I
.end method

.method public static native setParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setPowerOff()I
.end method

.method public static native setRouting(III)I
.end method

.method public static native setRxVolume(IIBII)I
.end method

.method public static native setVoccalIIRParam(IIII)I
.end method

.method public static native setVoccalParam(IIII)I
.end method

.method public static native setVoiceClarity(I)I
.end method

.method public static native setVolume(II)I
.end method

.method public static native writeEFS()I
.end method

.method public static native writeMEM()I
.end method
