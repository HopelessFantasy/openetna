.class public interface abstract Landroid/backup/BackupHelper;
.super Ljava/lang/Object;
.source "BackupHelper.java"


# virtual methods
.method public abstract performBackup(Landroid/os/ParcelFileDescriptor;Landroid/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract restoreEntity(Landroid/backup/BackupDataInputStream;)V
.end method

.method public abstract writeRestoreSnapshot(Landroid/os/ParcelFileDescriptor;)V
.end method
