.class Lcom/lge/homecube/Launcher$DesktopBinder;
.super Landroid/os/Handler;
.source "Launcher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopBinder"
.end annotation


# static fields
.field static final ITEMS_COUNT:I = 0x6

.field static final MESSAGE_BIND_APPWIDGETS:I = 0x2

.field static final MESSAGE_BIND_ITEMS:I = 0x1


# instance fields
.field private final mAppWidgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lge/homecube/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/homecube/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mTerminate:Z


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .parameter "launcher"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/homecube/Launcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3858
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ItemInfo;>;"
    .local p3, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/LauncherAppWidgetInfo;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3855
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mTerminate:Z

    .line 3860
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 3861
    iput-object p2, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    .line 3864
    invoke-static {p1}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v1

    .line 3865
    .local v1, currentScreen:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3866
    .local v3, size:I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    .line 3868
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    if-ge v2, v3, :cond_3d

    .line 3869
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/LauncherAppWidgetInfo;

    .line 3870
    .local v0, appWidgetInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    iget v4, v0, Lcom/lge/homecube/LauncherAppWidgetInfo;->screen:I

    if-ne v4, v1, :cond_37

    .line 3871
    iget-object v4, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3868
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 3873
    :cond_37
    iget-object v4, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_34

    .line 3876
    .end local v0           #appWidgetInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    :cond_3d
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 3901
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/Launcher;

    .line 3902
    .local v0, launcher:Lcom/lge/homecube/Launcher;
    const-string v1, "Homecube"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thom21 DesktopBinder.handleMessage 11 msg.what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " launcher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    if-eqz v0, :cond_32

    iget-boolean v1, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mTerminate:Z

    if-eqz v1, :cond_33

    .line 3917
    :cond_32
    :goto_32
    return-void

    .line 3907
    :cond_33
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4a

    goto :goto_32

    .line 3909
    :pswitch_39
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0, v1, v2, v3}, Lcom/lge/homecube/Launcher;->access$3300(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    goto :goto_32

    .line 3913
    :pswitch_43
    iget-object v1, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-static {v0, p0, v1}, Lcom/lge/homecube/Launcher;->access$3400(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    goto :goto_32

    .line 3907
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_43
    .end packed-switch
.end method

.method public queueIdle()Z
    .registers 2

    .prologue
    .line 3891
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher$DesktopBinder;->startBindingAppWidgets()V

    .line 3892
    const/4 v0, 0x0

    return v0
.end method

.method public startBindingAppWidgets()V
    .registers 2

    .prologue
    .line 3896
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3897
    return-void
.end method

.method public startBindingAppWidgetsWhenIdle()V
    .registers 4

    .prologue
    .line 3884
    const-string v1, "Homecube"

    const-string v2, "thom21 DesktopBinder.startBindingAppWidgetsWhenIdle "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 3886
    .local v0, messageQueue:Landroid/os/MessageQueue;
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3887
    return-void
.end method

.method public startBindingItems()V
    .registers 4

    .prologue
    .line 3879
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/homecube/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/homecube/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3880
    return-void
.end method
