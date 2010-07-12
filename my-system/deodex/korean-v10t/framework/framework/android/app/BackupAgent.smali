.class public abstract Landroid/app/BackupAgent;
.super Landroid/content/ContextWrapper;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackupAgent$1;,
        Landroid/app/BackupAgent$BackupServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupAgent"


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v0, Landroid/app/BackupAgent$BackupServiceBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/BackupAgent;Landroid/app/BackupAgent$1;)V

    invoke-virtual {v0}, Landroid/app/BackupAgent$BackupServiceBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BackupAgent;->mBinder:Landroid/os/IBinder;

    .line 42
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/app/BackupAgent;->attachBaseContext(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public abstract onBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onBind()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/app/BackupAgent;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public abstract onRestore(Landroid/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
