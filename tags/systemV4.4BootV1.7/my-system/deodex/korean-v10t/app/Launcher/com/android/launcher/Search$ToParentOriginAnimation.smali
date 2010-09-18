.class Lcom/android/launcher/Search$ToParentOriginAnimation;
.super Landroid/view/animation/Animation;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToParentOriginAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher/Search;


# direct methods
.method private constructor <init>(Lcom/android/launcher/Search;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/launcher/Search$ToParentOriginAnimation;->this$0:Lcom/android/launcher/Search;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher/Search;Lcom/android/launcher/Search$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/launcher/Search$ToParentOriginAnimation;-><init>(Lcom/android/launcher/Search;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 359
    iget-object v2, p0, Lcom/android/launcher/Search$ToParentOriginAnimation;->this$0:Lcom/android/launcher/Search;

    invoke-virtual {v2}, Lcom/android/launcher/Search;->getLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v0, v2, p1

    .line 360
    .local v0, dx:F
    iget-object v2, p0, Lcom/android/launcher/Search$ToParentOriginAnimation;->this$0:Lcom/android/launcher/Search;

    invoke-virtual {v2}, Lcom/android/launcher/Search;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v1, v2, p1

    .line 361
    .local v1, dy:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 362
    return-void
.end method
