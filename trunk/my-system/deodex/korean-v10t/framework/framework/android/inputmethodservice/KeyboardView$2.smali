.class Landroid/inputmethodservice/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v6, 0x4448

    const/high16 v5, 0x43fa

    const/high16 v4, -0x3c06

    const/4 v3, 0x1

    .line 357
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 358
    .local v0, absX:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 359
    .local v1, absY:F
    cmpl-float v2, p3, v5

    if-lez v2, :cond_1e

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1e

    .line 360
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    move v2, v3

    .line 374
    :goto_1d
    return v2

    .line 362
    :cond_1e
    cmpg-float v2, p3, v4

    if-gez v2, :cond_2d

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2d

    .line 363
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    move v2, v3

    .line 364
    goto :goto_1d

    .line 365
    :cond_2d
    cmpg-float v2, p4, v4

    if-gez v2, :cond_3c

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3c

    .line 366
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    move v2, v3

    .line 367
    goto :goto_1d

    .line 368
    :cond_3c
    cmpl-float v2, p4, v5

    if-lez v2, :cond_4d

    const/high16 v2, 0x4348

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4d

    .line 369
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    move v2, v3

    .line 370
    goto :goto_1d

    .line 371
    :cond_4d
    cmpl-float v2, v0, v6

    if-gtz v2, :cond_55

    cmpl-float v2, v1, v6

    if-lez v2, :cond_57

    :cond_55
    move v2, v3

    .line 372
    goto :goto_1d

    .line 374
    :cond_57
    const/4 v2, 0x0

    goto :goto_1d
.end method
