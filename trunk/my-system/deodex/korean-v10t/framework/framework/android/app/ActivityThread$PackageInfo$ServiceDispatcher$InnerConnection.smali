.class Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;
.super Landroid/app/IServiceConnection$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerConnection"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;)V
    .registers 3
    .parameter "sd"

    .prologue
    .line 905
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 906
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 907
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    .line 911
    .local v0, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-eqz v0, :cond_d

    .line 912
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 914
    :cond_d
    return-void
.end method
