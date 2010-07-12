.class public Landroid/os/Hardware;
.super Ljava/lang/Object;
.source "Hardware.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native enableCameraFlash(I)V
.end method

.method public static native getFlashlightEnabled()Z
.end method

.method public static native setFlashlightEnabled(Z)V
.end method
