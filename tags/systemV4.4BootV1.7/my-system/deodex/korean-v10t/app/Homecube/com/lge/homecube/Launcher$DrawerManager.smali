.class Lcom/lge/homecube/Launcher$DrawerManager;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerManager"
.end annotation


# instance fields
.field private mOpen:Z

.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 3768
    iput-object p1, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3768
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$DrawerManager;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method private offsetBoundsToDragLayer(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5
    .parameter "bounds"
    .parameter "view"

    .prologue
    .line 3791
    invoke-virtual {p2, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3793
    :goto_3
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$3000(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/DragLayer;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    .line 3794
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3795
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/View;

    .restart local p2
    goto :goto_3

    .line 3797
    :cond_1d
    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3801
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0, v2}, Lcom/lge/homecube/Launcher;->access$2700(Lcom/lge/homecube/Launcher;Z)V

    .line 3804
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->mOpen:Z

    if-eqz v0, :cond_27

    .line 3805
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$2800(Lcom/lge/homecube/Launcher;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 3806
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/homecube/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3807
    iput-boolean v2, p0, Lcom/lge/homecube/Launcher$DrawerManager;->mOpen:Z

    .line 3809
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/Launcher;->setAllAppsGridViewDrawingCacheEnabled(Z)V

    .line 3816
    :cond_27
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$3000(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/homecube/DragLayer;->setDefaultScrollValeus()V

    .line 3820
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$3100(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/AllAppsGridView;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 3821
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$3100(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/AllAppsGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->refreshGroupViewItems()V

    .line 3823
    :cond_41
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/homecube/Launcher;->access$3102(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/AllAppsGridView;)Lcom/lge/homecube/AllAppsGridView;

    .line 3824
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/lge/homecube/Launcher;->access$3202(Lcom/lge/homecube/Launcher;I)I

    .line 3826
    return-void
.end method

.method public onDrawerOpened()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3774
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1, v3}, Lcom/lge/homecube/Launcher;->access$2700(Lcom/lge/homecube/Launcher;Z)V

    .line 3777
    iget-boolean v1, p0, Lcom/lge/homecube/Launcher$DrawerManager;->mOpen:Z

    if-nez v1, :cond_2d

    .line 3778
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1}, Lcom/lge/homecube/Launcher;->access$2800(Lcom/lge/homecube/Launcher;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 3780
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v1

    iget-object v0, v1, Lcom/lge/homecube/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 3783
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1}, Lcom/lge/homecube/Launcher;->access$2900(Lcom/lge/homecube/Launcher;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/homecube/Launcher$DrawerManager;->offsetBoundsToDragLayer(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 3784
    iput-boolean v3, p0, Lcom/lge/homecube/Launcher$DrawerManager;->mOpen:Z

    .line 3786
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DrawerManager;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1, v3}, Lcom/lge/homecube/Launcher;->setAllAppsGridViewDrawingCacheEnabled(Z)V

    .line 3788
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_2d
    return-void
.end method

.method public onScrollEnded()V
    .registers 1

    .prologue
    .line 3841
    return-void
.end method

.method public onScrollStarted()V
    .registers 1

    .prologue
    .line 3835
    return-void
.end method
