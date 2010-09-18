.class public interface abstract Landroid/os/IParentalControlCallback;
.super Ljava/lang/Object;
.source "IParentalControlCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IParentalControlCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(Lcom/google/android/net/ParentalControlState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
