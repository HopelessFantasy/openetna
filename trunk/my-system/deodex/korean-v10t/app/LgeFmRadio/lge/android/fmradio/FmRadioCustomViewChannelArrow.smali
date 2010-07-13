.class public Llge/android/fmradio/FmRadioCustomViewChannelArrow;
.super Landroid/view/View;
.source "FmRadioCustomViewChannelArrow.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"


# instance fields
.field mBmChannelArrowLeftOff:Landroid/graphics/Bitmap;

.field mBmChannelArrowLeftOn:Landroid/graphics/Bitmap;

.field mBmChannelArrowRightOff:Landroid/graphics/Bitmap;

.field mBmChannelArrowRightOn:Landroid/graphics/Bitmap;

.field mCurrentChannel:I

.field mnLeftArrowX:I

.field mnLeftArrowY:I

.field mnRightArrowX:I

.field mnRightArrowY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x176

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/16 v0, 0xc

    iput v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowX:I

    .line 24
    iput v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowY:I

    .line 25
    const/16 v0, 0x129

    iput v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowX:I

    .line 26
    iput v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowY:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mCurrentChannel:I

    .line 33
    invoke-direct {p0}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->InitView()V

    .line 34
    return-void
.end method

.method private final InitView()V
    .registers 3

    .prologue
    .line 38
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowLeftOn:Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowLeftOff:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowRightOn:Landroid/graphics/Bitmap;

    .line 41
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowRightOff:Landroid/graphics/Bitmap;

    .line 42
    return-void
.end method


# virtual methods
.method public DisplayChannelArrow(I)V
    .registers 2
    .parameter "nChannel"

    .prologue
    .line 46
    iput p1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mCurrentChannel:I

    .line 47
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->invalidate()V

    .line 48
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 54
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mCurrentChannel:I

    if-nez v0, :cond_1f

    .line 62
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowLeftOff:Landroid/graphics/Bitmap;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 63
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowRightOn:Landroid/graphics/Bitmap;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 72
    :goto_1e
    return-void

    .line 65
    :cond_1f
    iget v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mCurrentChannel:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3b

    .line 66
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowLeftOn:Landroid/graphics/Bitmap;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowRightOff:Landroid/graphics/Bitmap;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 69
    :cond_3b
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowLeftOn:Landroid/graphics/Bitmap;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnLeftArrowY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mBmChannelArrowRightOn:Landroid/graphics/Bitmap;

    iget v1, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowX:I

    int-to-float v1, v1

    iget v2, p0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->mnRightArrowY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e
.end method
