.class Lcom/android/browser/BrowserActivity$AnimatingView;
.super Landroid/view/View;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatingView"
.end annotation


# static fields
.field private static final ZOOM_BITS:I = 0x86

.field private static final sZoomFilter:Landroid/graphics/DrawFilter;


# instance fields
.field private final mPicture:Landroid/graphics/Picture;

.field private final mScale:F

.field private final mScrollX:I

.field private final mScrollY:I

.field final mTab:Lcom/android/browser/TabControl$Tab;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 5332
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity$AnimatingView;->sZoomFilter:Landroid/graphics/DrawFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/browser/TabControl$Tab;)V
    .registers 6
    .parameter "ctxt"
    .parameter "t"

    .prologue
    .line 5341
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5342
    iput-object p2, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mTab:Lcom/android/browser/TabControl$Tab;

    .line 5345
    invoke-virtual {p2}, Lcom/android/browser/TabControl$Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 5346
    .local v0, w:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mPicture:Landroid/graphics/Picture;

    .line 5347
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mScale:F

    .line 5348
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mScrollX:I

    .line 5349
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mScrollY:I

    .line 5350
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 5354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5355
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5356
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mPicture:Landroid/graphics/Picture;

    if-eqz v1, :cond_2c

    .line 5357
    sget-object v1, Lcom/android/browser/BrowserActivity$AnimatingView;->sZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5358
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity$AnimatingView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mScale:F

    mul-float v0, v1, v2

    .line 5359
    .local v0, scale:F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5360
    iget v1, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5361
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$AnimatingView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 5363
    .end local v0           #scale:F
    :cond_2c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5364
    return-void
.end method
