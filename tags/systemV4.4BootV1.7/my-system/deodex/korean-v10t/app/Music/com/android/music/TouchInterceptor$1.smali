.class Lcom/android/music/TouchInterceptor$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/TouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TouchInterceptor;


# direct methods
.method constructor <init>(Lcom/android/music/TouchInterceptor;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-static {v1}, Lcom/android/music/TouchInterceptor;->access$000(Lcom/android/music/TouchInterceptor;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 77
    const/high16 v1, 0x447a

    cmpl-float v1, p3, v1

    if-lez v1, :cond_46

    .line 78
    iget-object v1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-static {v1}, Lcom/android/music/TouchInterceptor;->access$100(Lcom/android/music/TouchInterceptor;)Landroid/graphics/Rect;

    move-result-object v0

    .line 79
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-static {v1}, Lcom/android/music/TouchInterceptor;->access$000(Lcom/android/music/TouchInterceptor;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_46

    .line 82
    iget-object v1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-static {v1}, Lcom/android/music/TouchInterceptor;->access$200(Lcom/android/music/TouchInterceptor;)V

    .line 83
    iget-object v1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-static {v1}, Lcom/android/music/TouchInterceptor;->access$400(Lcom/android/music/TouchInterceptor;)Lcom/android/music/TouchInterceptor$RemoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-static {v2}, Lcom/android/music/TouchInterceptor;->access$300(Lcom/android/music/TouchInterceptor;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/music/TouchInterceptor$RemoveListener;->remove(I)V

    .line 84
    iget-object v1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-static {v1, v3}, Lcom/android/music/TouchInterceptor;->access$500(Lcom/android/music/TouchInterceptor;Z)V

    .end local v0           #r:Landroid/graphics/Rect;
    :cond_46
    move v1, v3

    .line 90
    :goto_47
    return v1

    :cond_48
    const/4 v1, 0x0

    goto :goto_47
.end method
