.class public Lcom/android/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 25
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x400000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 27
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 28
    return-void
.end method
