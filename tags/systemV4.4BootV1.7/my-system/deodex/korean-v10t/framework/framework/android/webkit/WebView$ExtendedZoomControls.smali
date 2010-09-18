.class Landroid/webkit/WebView$ExtendedZoomControls;
.super Landroid/widget/FrameLayout;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedZoomControls"
.end annotation


# instance fields
.field mZoomControls:Landroid/widget/ZoomControls;

.field mZoomMagnify:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/webkit/WebView$ExtendedZoomControls;->this$0:Landroid/webkit/WebView;

    .line 118
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109006b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    const v1, 0x10201e9

    invoke-virtual {p0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ZoomControls;

    iput-object v1, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomControls:Landroid/widget/ZoomControls;

    .line 123
    const v1, 0x10201ec

    invoke-virtual {p0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomMagnify:Landroid/widget/ImageView;

    .line 124
    return-void
.end method

.method private fade(IFF)V
    .registers 7
    .parameter "visibility"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    .line 137
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 138
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 139
    invoke-virtual {p0, v0}, Landroid/webkit/WebView$ExtendedZoomControls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 141
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomMagnify:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hide()V
    .registers 4

    .prologue
    .line 133
    const/16 v0, 0x8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;->fade(IFF)V

    .line 134
    return-void
.end method

.method public setIsZoomMagnifyEnabled(Z)V
    .registers 3
    .parameter "isEnabled"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomMagnify:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 145
    return-void
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 152
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method public setOnZoomMagnifyClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomMagnify:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method public show(ZZ)V
    .registers 7
    .parameter "showZoom"
    .parameter "canZoomOut"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomControls:Landroid/widget/ZoomControls;

    if-eqz p1, :cond_1a

    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Landroid/webkit/WebView$ExtendedZoomControls;->mZoomMagnify:Landroid/widget/ImageView;

    if-eqz p2, :cond_1c

    move v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, v2, v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->fade(IFF)V

    .line 130
    return-void

    :cond_1a
    move v1, v3

    .line 127
    goto :goto_8

    :cond_1c
    move v1, v3

    .line 128
    goto :goto_10
.end method
