.class Lcom/android/launcher/DeleteZone$FastTranslateAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/DeleteZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastTranslateAnimation"
.end annotation


# direct methods
.method public constructor <init>(IFIFIFIF)V
    .registers 9
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"

    .prologue
    .line 235
    invoke-direct/range {p0 .. p8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 237
    return-void
.end method


# virtual methods
.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method
