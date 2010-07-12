.class public Landroid/backup/BackupHelperAgent;
.super Landroid/app/BackupAgent;
.source "BackupHelperAgent.java"


# static fields
.field static final TAG:Ljava/lang/String; = "BackupHelperAgent"


# instance fields
.field mDispatcher:Landroid/backup/BackupHelperDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/BackupAgent;-><init>()V

    .line 33
    new-instance v0, Landroid/backup/BackupHelperDispatcher;

    invoke-direct {v0}, Landroid/backup/BackupHelperDispatcher;-><init>()V

    iput-object v0, p0, Landroid/backup/BackupHelperAgent;->mDispatcher:Landroid/backup/BackupHelperDispatcher;

    return-void
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/backup/BackupHelper;)V
    .registers 4
    .parameter "keyPrefix"
    .parameter "helper"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/backup/BackupHelperAgent;->mDispatcher:Landroid/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2}, Landroid/backup/BackupHelperDispatcher;->addHelper(Ljava/lang/String;Landroid/backup/BackupHelper;)V

    .line 53
    return-void
.end method

.method public getDispatcher()Landroid/backup/BackupHelperDispatcher;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Landroid/backup/BackupHelperAgent;->mDispatcher:Landroid/backup/BackupHelperDispatcher;

    return-object v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Landroid/backup/BackupHelperAgent;->mDispatcher:Landroid/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Landroid/backup/BackupHelperDispatcher;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 39
    return-void
.end method

.method public onRestore(Landroid/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 5
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Landroid/backup/BackupHelperAgent;->mDispatcher:Landroid/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Landroid/backup/BackupHelperDispatcher;->performRestore(Landroid/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 45
    return-void
.end method
