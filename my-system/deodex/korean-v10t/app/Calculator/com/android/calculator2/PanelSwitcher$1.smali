.class Lcom/android/calculator2/PanelSwitcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanelSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/PanelSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/PanelSwitcher;


# direct methods
.method constructor <init>(Lcom/android/calculator2/PanelSwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calculator2/PanelSwitcher$1;->this$0:Lcom/android/calculator2/PanelSwitcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 61
    .local v0, dx:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_30

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_30

    .line 62
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2a

    .line 63
    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher$1;->this$0:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    .line 67
    :goto_28
    const/4 v1, 0x1

    .line 69
    :goto_29
    return v1

    .line 65
    :cond_2a
    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher$1;->this$0:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v1}, Lcom/android/calculator2/PanelSwitcher;->moveLeft()V

    goto :goto_28

    .line 69
    :cond_30
    const/4 v1, 0x0

    goto :goto_29
.end method
