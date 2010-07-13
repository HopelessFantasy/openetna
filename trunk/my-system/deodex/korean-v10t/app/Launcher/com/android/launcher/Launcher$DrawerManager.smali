.class Lcom/android/launcher/Launcher$DrawerManager;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerManager"
.end annotation


# instance fields
.field private mOpen:Z

.field final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2132
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher$DrawerManager;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private offsetBoundsToDragLayer(Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5
    .parameter "bounds"
    .parameter "view"

    .prologue
    .line 2148
    invoke-virtual {p2, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2150
    :goto_3
    iget-object v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$2400(Lcom/android/launcher/Launcher;)Lcom/android/launcher/DragLayer;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    .line 2151
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2152
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/View;

    .restart local p2
    goto :goto_3

    .line 2154
    :cond_1d
    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2157
    iget-boolean v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->mOpen:Z

    if-eqz v0, :cond_1d

    .line 2158
    iget-object v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$2200(Lcom/android/launcher/Launcher;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 2159
    iget-object v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2160
    iput-boolean v2, p0, Lcom/android/launcher/Launcher$DrawerManager;->mOpen:Z

    .line 2163
    :cond_1d
    iget-object v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$2300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/AllAppsGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher/AllAppsGridView;->setSelection(I)V

    .line 2164
    iget-object v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$2300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/AllAppsGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/AllAppsGridView;->clearTextFilter()V

    .line 2165
    return-void
.end method

.method public onDrawerOpened()V
    .registers 4

    .prologue
    .line 2137
    iget-boolean v1, p0, Lcom/android/launcher/Launcher$DrawerManager;->mOpen:Z

    if-nez v1, :cond_23

    .line 2138
    iget-object v1, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->access$2200(Lcom/android/launcher/Launcher;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 2140
    iget-object v1, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 2141
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->access$2300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/AllAppsGridView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/Launcher$DrawerManager;->offsetBoundsToDragLayer(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 2143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/Launcher$DrawerManager;->mOpen:Z

    .line 2145
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_23
    return-void
.end method

.method public onScrollEnded()V
    .registers 1

    .prologue
    .line 2180
    return-void
.end method

.method public onScrollStarted()V
    .registers 3

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->access$2300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/AllAppsGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/AllAppsGridView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher/Workspace;->mDrawerContentWidth:I

    .line 2173
    iget-object v0, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/Launcher$DrawerManager;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->access$2300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/AllAppsGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/AllAppsGridView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher/Workspace;->mDrawerContentHeight:I

    .line 2174
    return-void
.end method
