.class public interface abstract Landroid/backup/IRestoreSession;
.super Ljava/lang/Object;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/backup/IRestoreSession$Stub;
    }
.end annotation


# virtual methods
.method public abstract endRestoreSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAvailableRestoreSets()[Landroid/backup/RestoreSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performRestore(JLandroid/backup/IRestoreObserver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
