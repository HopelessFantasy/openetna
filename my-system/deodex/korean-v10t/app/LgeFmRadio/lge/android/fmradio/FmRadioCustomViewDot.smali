.class public Llge/android/fmradio/FmRadioCustomViewDot;
.super Landroid/view/View;
.source "FmRadioCustomViewDot.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mnX:I

.field mnY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v0, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnX:I

    .line 20
    iput v0, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnY:I

    .line 25
    invoke-direct {p0}, Llge/android/fmradio/FmRadioCustomViewDot;->InitView()V

    .line 26
    return-void
.end method

.method private final InitView()V
    .registers 5

    .prologue
    .line 31
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewDot;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 34
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method


# virtual methods
.method public SetDisplay(II)V
    .registers 6
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 39
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioCustomViewDot][SetDisplay] X = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput p1, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnX:I

    .line 42
    iput p2, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnY:I

    .line 43
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewDot;->invalidate()V

    .line 44
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 50
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget v0, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnX:I

    if-nez v0, :cond_b

    iget v0, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnY:I

    if-eqz v0, :cond_17

    .line 58
    :cond_b
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewDot;->mnY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 60
    :cond_17
    return-void
.end method
