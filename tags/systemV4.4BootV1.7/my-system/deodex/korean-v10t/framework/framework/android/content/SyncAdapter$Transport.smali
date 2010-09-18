.class Landroid/content/SyncAdapter$Transport;
.super Landroid/content/ISyncAdapter$Stub;
.source "SyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncAdapter;


# direct methods
.method constructor <init>(Landroid/content/SyncAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Landroid/content/SyncAdapter$Transport;->this$0:Landroid/content/SyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSync()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Landroid/content/SyncAdapter$Transport;->this$0:Landroid/content/SyncAdapter;

    invoke-virtual {v0}, Landroid/content/SyncAdapter;->cancelSync()V

    .line 39
    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter "syncContext"
    .parameter "account"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Landroid/content/SyncAdapter$Transport;->this$0:Landroid/content/SyncAdapter;

    new-instance v1, Landroid/content/SyncContext;

    invoke-direct {v1, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/SyncAdapter;->startSync(Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    return-void
.end method
