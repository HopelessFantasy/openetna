.class Llge/android/buttonflicking/PanelSwitcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanelSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llge/android/buttonflicking/PanelSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/buttonflicking/PanelSwitcher;


# direct methods
.method constructor <init>(Llge/android/buttonflicking/PanelSwitcher;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Llge/android/buttonflicking/PanelSwitcher$1;->this$0:Llge/android/buttonflicking/PanelSwitcher;

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
    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 73
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

    .line 74
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2a

    .line 75
    iget-object v1, p0, Llge/android/buttonflicking/PanelSwitcher$1;->this$0:Llge/android/buttonflicking/PanelSwitcher;

    invoke-virtual {v1}, Llge/android/buttonflicking/PanelSwitcher;->moveRight()V

    .line 79
    :goto_28
    const/4 v1, 0x1

    .line 81
    :goto_29
    return v1

    .line 77
    :cond_2a
    iget-object v1, p0, Llge/android/buttonflicking/PanelSwitcher$1;->this$0:Llge/android/buttonflicking/PanelSwitcher;

    invoke-virtual {v1}, Llge/android/buttonflicking/PanelSwitcher;->moveLeft()V

    goto :goto_28

    .line 81
    :cond_30
    const/4 v1, 0x0

    goto :goto_29
.end method
