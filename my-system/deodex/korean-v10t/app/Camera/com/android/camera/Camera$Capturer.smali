.class interface abstract Lcom/android/camera/Camera$Capturer;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Capturer"
.end annotation


# virtual methods
.method public abstract dismissFreezeFrame()V
.end method

.method public abstract getLastCaptureUri()Landroid/net/Uri;
.end method

.method public abstract onSnap()V
.end method
