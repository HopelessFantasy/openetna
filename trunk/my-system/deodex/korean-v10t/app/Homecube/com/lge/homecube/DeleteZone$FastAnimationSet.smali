.class Lcom/lge/homecube/DeleteZone$FastAnimationSet;
.super Landroid/view/animation/AnimationSet;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/DeleteZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastAnimationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 263
    return-void
.end method


# virtual methods
.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method
