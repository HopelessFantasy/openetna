.class public Lcom/android/mms/drm/DrmProcessResultActivity;
.super Landroid/app/Activity;
.source "DrmProcessResultActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmProcessResultActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const-string v1, "DrmProcessResultActivity"

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const-string v0, "DrmProcessResultActivity"

    const-string v0, "DrmProcessResultActivity"

    invoke-static {v1, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmProcessResultActivity;->finish()V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 40
    return-void
.end method
