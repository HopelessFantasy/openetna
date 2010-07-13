.class Lcom/android/camera/ViewImage$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method private constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/camera/ViewImage$MyGestureListener;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ViewImage;Lcom/android/camera/ViewImage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/android/camera/ViewImage$MyGestureListener;-><init>(Lcom/android/camera/ViewImage;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 256
    iget-object v1, p0, Lcom/android/camera/ViewImage$MyGestureListener;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v1

    aget-object v0, v1, v3

    .line 257
    .local v0, imageView:Lcom/android/camera/ViewImage$ImageViewTouch;
    invoke-virtual {v0}, Lcom/android/camera/ViewImage$ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1c

    .line 258
    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/camera/ViewImage$ImageViewTouch;->postTranslate(FFZ)V

    .line 259
    invoke-virtual {v0, v3, v3, v4}, Lcom/android/camera/ViewImage$ImageViewTouch;->center(ZZZ)V

    .line 261
    :cond_1c
    return v3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/android/camera/ViewImage$MyGestureListener;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0, v1}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 267
    return v1
.end method
