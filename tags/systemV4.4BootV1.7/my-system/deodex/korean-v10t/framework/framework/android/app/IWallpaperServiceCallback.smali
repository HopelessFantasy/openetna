.class public interface abstract Landroid/app/IWallpaperServiceCallback;
.super Ljava/lang/Object;
.source "IWallpaperServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWallpaperChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
