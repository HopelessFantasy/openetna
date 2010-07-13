.class public Lcom/android/googlesearch/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static sLocationUtils:Lcom/android/googlesearch/LocationUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/googlesearch/LocationUtils;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static declared-synchronized getLocationUtils(Landroid/content/Context;)Lcom/android/googlesearch/LocationUtils;
    .registers 3
    .parameter "context"

    .prologue
    .line 36
    const-class v0, Lcom/android/googlesearch/LocationUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/googlesearch/LocationUtils;->sLocationUtils:Lcom/android/googlesearch/LocationUtils;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/android/googlesearch/LocationUtils;

    invoke-direct {v1, p0}, Lcom/android/googlesearch/LocationUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/googlesearch/LocationUtils;->sLocationUtils:Lcom/android/googlesearch/LocationUtils;

    .line 39
    :cond_e
    sget-object v1, Lcom/android/googlesearch/LocationUtils;->sLocationUtils:Lcom/android/googlesearch/LocationUtils;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public showLocationOptIn()V
    .registers 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/googlesearch/LocationUtils;->systemHasGoogleSettingsProvider()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, consent:Landroid/content/Intent;
    const-string v1, "SHOW_USE_LOCATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/googlesearch/LocationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    .end local v0           #consent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method public systemHasGoogleSettingsProvider()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/android/googlesearch/LocationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.providers.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_14

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    .line 59
    :goto_11
    return v1

    :cond_12
    move v1, v4

    .line 56
    goto :goto_11

    .line 58
    :catch_14
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v1, v4

    .line 59
    goto :goto_11
.end method

.method public userAcceptedLocationOptIn()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/android/googlesearch/LocationUtils;->systemHasGoogleSettingsProvider()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 98
    iget-object v0, p0, Lcom/android/googlesearch/LocationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_19

    move v0, v4

    .line 101
    :goto_18
    return v0

    :cond_19
    move v0, v3

    .line 98
    goto :goto_18

    :cond_1b
    move v0, v3

    .line 101
    goto :goto_18
.end method

.method public userRespondedToLocationOptIn()Z
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 68
    iget-object v0, p0, Lcom/android/googlesearch/LocationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
