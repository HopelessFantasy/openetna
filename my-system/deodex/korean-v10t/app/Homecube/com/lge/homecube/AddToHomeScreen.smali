.class public Lcom/lge/homecube/AddToHomeScreen;
.super Landroid/widget/TextView;
.source "AddToHomeScreen.java"

# interfaces
.implements Lcom/lge/homecube/DropTarget;
.implements Lcom/lge/homecube/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/AddToHomeScreen$1;,
        Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x258


# instance fields
.field private closeSlidingDrawerState:I

.field private mAddToHomeRunnable:Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;

.field private mDragLayer:Lcom/lge/homecube/DragLayer;

.field private mDragger:Lcom/lge/homecube/DragController;

.field private mHandle:Landroid/view/View;

.field private mLauncher:Lcom/lge/homecube/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/homecube/AddToHomeScreen;->closeSlidingDrawerState:I

    .line 51
    new-instance v0, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;-><init>(Lcom/lge/homecube/AddToHomeScreen;Lcom/lge/homecube/AddToHomeScreen$1;)V

    iput-object v0, p0, Lcom/lge/homecube/AddToHomeScreen;->mAddToHomeRunnable:Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/homecube/AddToHomeScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/homecube/AddToHomeScreen;->closeSlidingDrawerState:I

    .line 51
    new-instance v0, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;-><init>(Lcom/lge/homecube/AddToHomeScreen;Lcom/lge/homecube/AddToHomeScreen$1;)V

    iput-object v0, p0, Lcom/lge/homecube/AddToHomeScreen;->mAddToHomeRunnable:Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/lge/homecube/AddToHomeScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/homecube/AddToHomeScreen;->closeSlidingDrawerState:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/homecube/AddToHomeScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/lge/homecube/AddToHomeScreen;->closeSlidingDrawerState:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/homecube/AddToHomeScreen;)Lcom/lge/homecube/Launcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/homecube/AddToHomeScreen;->mLauncher:Lcom/lge/homecube/Launcher;

    return-object v0
.end method


# virtual methods
.method public acceptDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public onDragEnter(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/homecube/AddToHomeScreen;->mAddToHomeRunnable:Lcom/lge/homecube/AddToHomeScreen$AddToHomeRunnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/homecube/AddToHomeScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/homecube/AddToHomeScreen;->closeSlidingDrawerState:I

    .line 90
    return-void
.end method

.method public onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 100
    iget-object v3, p0, Lcom/lge/homecube/AddToHomeScreen;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f02007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/lge/homecube/AddToHomeScreen;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3}, Lcom/lge/homecube/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 105
    .local v1, display:Landroid/view/Display;
    iget v3, p0, Lcom/lge/homecube/AddToHomeScreen;->closeSlidingDrawerState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 107
    iget-object v3, p0, Lcom/lge/homecube/AddToHomeScreen;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v3, v3, Lcom/lge/homecube/Launcher;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    :goto_25
    return-void

    .line 125
    :cond_26
    const/4 v3, 0x2

    iput v3, p0, Lcom/lge/homecube/AddToHomeScreen;->closeSlidingDrawerState:I

    goto :goto_25
.end method

.method public onDragOver(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 95
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V
    .registers 5
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 131
    return-void
.end method

.method public onDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 73
    return-void
.end method

.method setDragController(Lcom/lge/homecube/DragLayer;)V
    .registers 2
    .parameter "dragLayer"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lge/homecube/AddToHomeScreen;->mDragLayer:Lcom/lge/homecube/DragLayer;

    .line 144
    return-void
.end method

.method setHandle(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lge/homecube/AddToHomeScreen;->mHandle:Landroid/view/View;

    .line 148
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/homecube/AddToHomeScreen;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 140
    return-void
.end method
