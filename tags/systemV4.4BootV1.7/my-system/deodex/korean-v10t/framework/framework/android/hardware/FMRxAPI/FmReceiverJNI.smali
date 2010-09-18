.class Landroid/hardware/FMRxAPI/FmReceiverJNI;
.super Ljava/lang/Object;
.source "FmReceiverJNI.java"


# static fields
.field static final FM_JNI_FAILURE:I = -0x1

.field static final FM_JNI_SUCCESS:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native acquireFdNative(Ljava/lang/String;)I
.end method

.method static native audioControlNative(III)I
.end method

.method static native cancelSearchNative(I)I
.end method

.method static native changeFreqNative(DI)I
.end method

.method static native changeRadioStateNative(II)I
.end method

.method static native closeFdNative(I)I
.end method

.method static native getFrequencyNative(I)D
.end method

.method static native listenForEventsNative(I[BI)I
.end method

.method static native seekScanControlNative(III)I
.end method
