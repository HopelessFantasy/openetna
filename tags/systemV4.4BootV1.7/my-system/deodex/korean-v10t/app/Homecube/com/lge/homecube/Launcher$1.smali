.class Lcom/lge/homecube/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/lge/homecube/Launcher$1;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 613
    const-string v2, "search"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v1

    .line 616
    .local v1, searchManagerService:Landroid/app/ISearchManager;
    :try_start_a
    invoke-interface {v1}, Landroid/app/ISearchManager;->stopSearch()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 620
    :goto_d
    return-void

    .line 617
    :catch_e
    move-exception v0

    .line 618
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CubeHome"

    const-string v3, "error stopping search"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
