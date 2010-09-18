.class Lcom/android/camera/SlideShow$ImageViewTouch$xy;
.super Ljava/lang/Object;
.source "SlideShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlideShow$ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "xy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlideShow$ImageViewTouch;

.field timeAdded:J

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/android/camera/SlideShow$ImageViewTouch;FF)V
    .registers 6
    .parameter
    .parameter "xIn"
    .parameter "yIn"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->this$0:Lcom/android/camera/SlideShow$ImageViewTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p2, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->x:F

    .line 100
    iput p3, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->y:F

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->timeAdded:J

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/SlideShow$ImageViewTouch;Landroid/view/MotionEvent;)V
    .registers 5
    .parameter
    .parameter "e"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->this$0:Lcom/android/camera/SlideShow$ImageViewTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->x:F

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->y:F

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->timeAdded:J

    .line 107
    return-void
.end method
