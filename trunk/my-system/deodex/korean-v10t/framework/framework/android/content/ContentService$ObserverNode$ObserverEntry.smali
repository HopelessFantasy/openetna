.class Landroid/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverEntry"
.end annotation


# instance fields
.field public notifyForDescendents:Z

.field public observer:Landroid/database/IContentObserver;

.field final synthetic this$0:Landroid/content/ContentService$ObserverNode;


# direct methods
.method public constructor <init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V
    .registers 7
    .parameter
    .parameter "o"
    .parameter "n"

    .prologue
    .line 388
    iput-object p1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->this$0:Landroid/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 390
    iput-boolean p3, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    .line 392
    :try_start_9
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    .line 396
    :goto_13
    return-void

    .line 393
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    goto :goto_13
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 399
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->this$0:Landroid/content/ContentService$ObserverNode;

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentService$ObserverNode;->removeObserver(Landroid/database/IContentObserver;)Z

    .line 400
    return-void
.end method
