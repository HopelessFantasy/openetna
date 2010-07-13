.class public Lcom/android/camera/DrmWallpaper;
.super Lcom/android/camera/Wallpaper;
.source "DrmWallpaper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/Wallpaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected formatIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/camera/Wallpaper;->formatIntent(Landroid/content/Intent;)V

    .line 32
    const-string v0, "pick-drm"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    return-void
.end method
