.class public Lcom/android/browser/FakeWebView;
.super Landroid/widget/ImageView;
.source "FakeWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/FakeWebView$1;,
        Lcom/android/browser/FakeWebView$Listener;
    }
.end annotation


# instance fields
.field private mPicture:Landroid/graphics/Picture;

.field private mTab:Lcom/android/browser/TabControl$Tab;

.field private mUsesResource:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/FakeWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/FakeWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/FakeWebView;Landroid/graphics/Picture;)Landroid/graphics/Picture;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/browser/FakeWebView;->mPicture:Landroid/graphics/Picture;

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 61
    iget-boolean v2, p0, Lcom/android/browser/FakeWebView;->mUsesResource:Z

    if-eqz v2, :cond_8

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    :cond_7
    :goto_7
    return-void

    .line 70
    :cond_8
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 71
    iget-object v2, p0, Lcom/android/browser/FakeWebView;->mTab:Lcom/android/browser/TabControl$Tab;

    if-eqz v2, :cond_7

    .line 72
    iget-object v2, p0, Lcom/android/browser/FakeWebView;->mTab:Lcom/android/browser/TabControl$Tab;

    invoke-virtual {v2}, Lcom/android/browser/TabControl$Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 73
    .local v1, w:Landroid/webkit/WebView;
    if-eqz v1, :cond_7

    .line 74
    iget-object v2, p0, Lcom/android/browser/FakeWebView;->mPicture:Landroid/graphics/Picture;

    if-eqz v2, :cond_7

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    invoke-virtual {p0}, Lcom/android/browser/FakeWebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 77
    .local v0, scale:F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    iget-object v2, p0, Lcom/android/browser/FakeWebView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7
.end method

.method public setImageResource(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/FakeWebView;->mUsesResource:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/FakeWebView;->mTab:Lcom/android/browser/TabControl$Tab;

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    return-void
.end method

.method public setTab(Lcom/android/browser/TabControl$Tab;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/FakeWebView;->mUsesResource:Z

    .line 100
    iput-object p1, p0, Lcom/android/browser/FakeWebView;->mTab:Lcom/android/browser/TabControl$Tab;

    .line 101
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 102
    new-instance v0, Lcom/android/browser/FakeWebView$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/FakeWebView$Listener;-><init>(Lcom/android/browser/FakeWebView;Lcom/android/browser/FakeWebView$1;)V

    .line 103
    .local v0, l:Lcom/android/browser/FakeWebView$Listener;
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 104
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 108
    :goto_20
    iget-object v1, p0, Lcom/android/browser/FakeWebView;->mTab:Lcom/android/browser/TabControl$Tab;

    invoke-virtual {v1}, Lcom/android/browser/TabControl$Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/FakeWebView;->mPicture:Landroid/graphics/Picture;

    .line 110
    .end local v0           #l:Lcom/android/browser/FakeWebView$Listener;
    :cond_2c
    return-void

    .line 106
    .restart local v0       #l:Lcom/android/browser/FakeWebView$Listener;
    :cond_2d
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_20
.end method
