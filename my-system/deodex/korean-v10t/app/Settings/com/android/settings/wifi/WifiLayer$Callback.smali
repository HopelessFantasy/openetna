.class interface abstract Lcom/android/settings/wifi/WifiLayer$Callback;
.super Ljava/lang/Object;
.source "WifiLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAccessPointSetChanged(Lcom/android/settings/wifi/AccessPointState;Z)V
.end method

.method public abstract onAccessPointsStateChanged(Z)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onRetryPassword(Lcom/android/settings/wifi/AccessPointState;)V
.end method

.method public abstract onScanningStatusChanged(Z)V
.end method
