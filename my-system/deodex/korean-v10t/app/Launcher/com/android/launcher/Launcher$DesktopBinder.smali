.class Lcom/android/launcher/Launcher$DesktopBinder;
.super Landroid/os/Handler;
.source "Launcher.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopBinder"
.end annotation


# static fields
.field static final ITEMS_COUNT:I = 0x6

.field static final MESSAGE_BIND_APPWIDGETS:I = 0x2

.field static final MESSAGE_BIND_DRAWER:I = 0x3

.field static final MESSAGE_BIND_ITEMS:I = 0x1


# instance fields
.field private final mAppWidgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawerAdapter:Lcom/android/launcher/ApplicationsAdapter;

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mTerminate:Z


# direct methods
.method constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher/ApplicationsAdapter;)V
    .registers 13
    .parameter "launcher"
    .parameter
    .parameter
    .parameter "drawerAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/android/launcher/ApplicationsAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    .local p3, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    const-string v7, "Launcher"

    const-string v6, "------> binding "

    .line 2200
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2196
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mTerminate:Z

    .line 2202
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 2203
    iput-object p2, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    .line 2204
    iput-object p4, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mDrawerAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 2207
    invoke-static {p1}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v1

    .line 2208
    .local v1, currentScreen:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2209
    .local v3, size:I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    .line 2211
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    if-ge v2, v3, :cond_43

    .line 2212
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/LauncherAppWidgetInfo;

    .line 2213
    .local v0, appWidgetInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    iget v4, v0, Lcom/android/launcher/LauncherAppWidgetInfo;->screen:I

    if-ne v4, v1, :cond_3d

    .line 2214
    iget-object v4, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2211
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2216
    :cond_3d
    iget-object v4, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_3a

    .line 2221
    .end local v0           #appWidgetInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    :cond_43
    const-string v4, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------> binding "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const-string v4, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------> binding "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " widgets"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 2253
    iget-object v1, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    .line 2254
    .local v0, launcher:Lcom/android/launcher/Launcher;
    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mTerminate:Z

    if-eqz v1, :cond_f

    .line 2272
    :cond_e
    :goto_e
    return-void

    .line 2258
    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_e

    .line 2260
    :pswitch_15
    iget-object v1, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/launcher/Launcher;->access$2500(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    goto :goto_e

    .line 2264
    :pswitch_1f
    iget-object v1, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mDrawerAdapter:Lcom/android/launcher/ApplicationsAdapter;

    invoke-static {v0, p0, v1}, Lcom/android/launcher/Launcher;->access$2600(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$DesktopBinder;Lcom/android/launcher/ApplicationsAdapter;)V

    goto :goto_e

    .line 2268
    :pswitch_25
    iget-object v1, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-static {v0, p0, v1}, Lcom/android/launcher/Launcher;->access$2700(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    goto :goto_e

    .line 2258
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method

.method public queueIdle()Z
    .registers 2

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/android/launcher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    .line 2244
    const/4 v0, 0x0

    return v0
.end method

.method public startBindingAppWidgets()V
    .registers 2

    .prologue
    .line 2248
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2249
    return-void
.end method

.method public startBindingAppWidgetsWhenIdle()V
    .registers 2

    .prologue
    .line 2237
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 2238
    .local v0, messageQueue:Landroid/os/MessageQueue;
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2239
    return-void
.end method

.method public startBindingDrawer()V
    .registers 2

    .prologue
    .line 2232
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2233
    return-void
.end method

.method public startBindingItems()V
    .registers 4

    .prologue
    .line 2227
    const-string v0, "Launcher"

    const-string v1, "------> start binding items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2229
    return-void
.end method
