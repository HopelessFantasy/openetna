.class public Landroid/media/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/FaceDetector$1;,
        Landroid/media/FaceDetector$Face;
    }
.end annotation


# static fields
.field private static sInitialized:Z


# instance fields
.field private mBWBuffer:[B

.field private mDCR:I

.field private mFD:I

.field private mHeight:I

.field private mMaxFaces:I

.field private mSDK:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-string v2, "FFTEm"

    .line 178
    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z

    .line 180
    :try_start_5
    const-string v1, "FFTEm"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Landroid/media/FaceDetector;->nativeClassInit()V

    .line 182
    const/4 v1, 0x1

    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z
    :try_end_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_10} :catch_11

    .line 186
    :goto_10
    return-void

    .line 183
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 184
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "FFTEm"

    const-string v1, "face detection library not found!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public constructor <init>(III)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "maxFaces"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    if-nez v0, :cond_8

    .line 121
    :goto_7
    return-void

    .line 116
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Landroid/media/FaceDetector;->fft_initialize(III)I

    .line 117
    iput p1, p0, Landroid/media/FaceDetector;->mWidth:I

    .line 118
    iput p2, p0, Landroid/media/FaceDetector;->mHeight:I

    .line 119
    iput p3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    .line 120
    mul-int v0, p1, p2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/FaceDetector;->mBWBuffer:[B

    goto :goto_7
.end method

.method private native fft_destroy()V
.end method

.method private native fft_detect(Landroid/graphics/Bitmap;)I
.end method

.method private native fft_get_face(Landroid/media/FaceDetector$Face;I)V
.end method

.method private native fft_initialize(III)I
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/media/FaceDetector;->fft_destroy()V

    .line 168
    return-void
.end method

.method public findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
    .registers 7
    .parameter "bitmap"
    .parameter "faces"

    .prologue
    .line 140
    sget-boolean v2, Landroid/media/FaceDetector;->sInitialized:Z

    if-nez v2, :cond_6

    .line 141
    const/4 v2, 0x0

    .line 160
    :goto_5
    return v2

    .line 143
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/media/FaceDetector;->mWidth:I

    if-ne v2, v3, :cond_16

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/media/FaceDetector;->mHeight:I

    if-eq v2, v3, :cond_1e

    .line 144
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bitmap size doesn\'t match initialization"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_1e
    array-length v2, p2

    iget v3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-ge v2, v3, :cond_2b

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "faces[] smaller than maxFaces"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_2b
    invoke-direct {p0, p1}, Landroid/media/FaceDetector;->fft_detect(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 153
    .local v1, numFaces:I
    iget v2, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-lt v1, v2, :cond_35

    .line 154
    iget v1, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    .line 155
    :cond_35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_36
    if-ge v0, v1, :cond_4c

    .line 156
    aget-object v2, p2, v0

    if-nez v2, :cond_44

    .line 157
    new-instance v2, Landroid/media/FaceDetector$Face;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector$1;)V

    aput-object v2, p2, v0

    .line 158
    :cond_44
    aget-object v2, p2, v0

    invoke-direct {p0, v2, v0}, Landroid/media/FaceDetector;->fft_get_face(Landroid/media/FaceDetector$Face;I)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4c
    move v2, v1

    .line 160
    goto :goto_5
.end method
