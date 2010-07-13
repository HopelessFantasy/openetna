.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Mms"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 60
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 40
    const v0, 0x7f040001

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 42
    invoke-static {p0}, Lcom/android/mms/util/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 49
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 55
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 56
    return-void
.end method
