.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAGS_ORIENTATION_ANIMATION_DISABLE:I = 0x1

.field public static final FX_SURFACE_BLUR:I = 0x10000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final GPU:I = 0x28

.field public static final HARDWARE:I = 0x10

.field public static final HIDDEN:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "Surface"

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final PUSH_BUFFERS:I = 0x200

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SECURE:I = 0x80

.field public static final SURACE_FROZEN:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SURFACE_BLUR_FREEZE:I = 0x10

.field public static final SURFACE_DITHER:I = 0x4

.field public static final SURFACE_FROZEN:I = 0x2

.field public static final SURFACE_HIDDEN:I = 0x1


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mSaveCount:I

.field private mSurface:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 172
    invoke-static {}, Landroid/view/Surface;->nativeClassInit()V

    .line 376
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v1, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 191
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 192
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 366
    invoke-direct {p0, p1}, Landroid/view/Surface;->init(Landroid/os/Parcel;)V

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Surface$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;IIIIII)V
    .registers 9
    .parameter "s"
    .parameter "pid"
    .parameter "display"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 182
    invoke-direct/range {p0 .. p7}, Landroid/view/Surface;->init(Landroid/view/SurfaceSession;IIIIII)V

    .line 183
    return-void
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/util/DisplayMetrics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static native closeTransaction()V
.end method

.method public static native freezeDisplay(I)V
.end method

.method private native init(Landroid/os/Parcel;)V
.end method

.method private native init(Landroid/view/SurfaceSession;IIIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native lockCanvasNative(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
.end method

.method private static native nativeClassInit()V
.end method

.method public static native openTransaction()V
.end method

.method public static setOrientation(II)V
    .registers 3
    .parameter "display"
    .parameter "orientation"

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/Surface;->setOrientation(III)V

    .line 336
    return-void
.end method

.method public static native setOrientation(III)V
.end method

.method public static native unfreezeDisplay(I)V
.end method


# virtual methods
.method public native clear()V
.end method

.method public native copyFrom(Landroid/view/Surface;)V
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/view/Surface;->clear()V

    .line 397
    return-void
.end method

.method public native freeze()V
.end method

.method public native hide()V
.end method

.method public native isValid()Z
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_b

    .line 283
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 285
    :cond_b
    invoke-direct {p0, p1}, Landroid/view/Surface;->lockCanvasNative(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public native readFromParcel(Landroid/os/Parcel;)V
.end method

.method public native setAlpha(F)V
.end method

.method setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V
    .registers 5
    .parameter "metrics"
    .parameter "translator"

    .prologue
    .line 249
    iput-object p1, p0, Landroid/view/Surface;->mCompatibleDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 250
    if-eqz p2, :cond_12

    .line 251
    iget v0, p2, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 252
    .local v0, appScale:F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 253
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 255
    .end local v0           #appScale:F
    :cond_12
    return-void
.end method

.method public native setFlags(II)V
.end method

.method public native setFreezeTint(I)V
.end method

.method public native setLayer(I)V
.end method

.method public native setMatrix(FFFF)V
.end method

.method public native setPosition(II)V
.end method

.method public native setSize(II)V
.end method

.method public native setTransparentRegionHint(Landroid/graphics/Region;)V
.end method

.method public native show()V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(native-token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Surface;->mSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native unfreeze()V
.end method

.method public native unlockCanvas(Landroid/graphics/Canvas;)V
.end method

.method public native unlockCanvasAndPost(Landroid/graphics/Canvas;)V
.end method

.method public native writeToParcel(Landroid/os/Parcel;I)V
.end method
