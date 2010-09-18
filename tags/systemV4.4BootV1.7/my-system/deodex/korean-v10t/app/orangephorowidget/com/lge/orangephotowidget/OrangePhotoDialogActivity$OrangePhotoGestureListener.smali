.class Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$OrangePhotoGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OrangePhotoDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrangePhotoGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;


# direct methods
.method constructor <init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$OrangePhotoGestureListener;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x436c

    const/high16 v3, 0x4330

    const/high16 v2, 0x4238

    const/high16 v1, 0x41b8

    .line 1030
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_34

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_32

    .line 1032
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$OrangePhotoGestureListener;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$300(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    .line 1042
    :cond_32
    :goto_32
    const/4 v0, 0x1

    return v0

    .line 1037
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_32

    .line 1038
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$OrangePhotoGestureListener;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-static {v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$400(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    goto :goto_32
.end method
