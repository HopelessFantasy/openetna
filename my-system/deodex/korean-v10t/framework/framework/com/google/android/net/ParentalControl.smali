.class public Lcom/google/android/net/ParentalControl;
.super Ljava/lang/Object;
.source "ParentalControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/net/ParentalControl$RemoteCallback;,
        Lcom/google/android/net/ParentalControl$Callback;
    }
.end annotation


# static fields
.field public static final VENDING:Ljava/lang/String; = "vending"

.field public static final YOUTUBE:Ljava/lang/String; = "youtube"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getParentalControlState(Lcom/google/android/net/ParentalControl$Callback;Ljava/lang/String;)V
    .registers 7
    .parameter "callback"
    .parameter "requestingApp"

    .prologue
    .line 62
    const-string v3, "checkin"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ICheckinService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICheckinService;

    move-result-object v2

    .line 65
    .local v2, service:Landroid/os/ICheckinService;
    new-instance v1, Lcom/google/android/net/ParentalControl$RemoteCallback;

    invoke-direct {v1, p0}, Lcom/google/android/net/ParentalControl$RemoteCallback;-><init>(Lcom/google/android/net/ParentalControl$Callback;)V

    .line 67
    .local v1, remoteCallback:Lcom/google/android/net/ParentalControl$RemoteCallback;
    :try_start_f
    invoke-interface {v2, v1, p1}, Landroid/os/ICheckinService;->getParentalControlState(Landroid/os/IParentalControlCallback;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 72
    :goto_12
    return-void

    .line 68
    :catch_13
    move-exception v0

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ParentalControl"

    const-string v4, "Failed to talk to the checkin service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method
