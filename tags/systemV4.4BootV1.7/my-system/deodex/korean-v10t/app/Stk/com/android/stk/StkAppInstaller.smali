.class abstract Lcom/android/stk/StkAppInstaller;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    .line 34
    return-void
.end method

.method private static setAppState(Landroid/content/Context;Z)V
    .registers 9
    .parameter "context"
    .parameter "install"

    .prologue
    const/4 v6, 0x1

    .line 41
    if-nez p0, :cond_4

    .line 60
    :cond_3
    :goto_3
    return-void

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 45
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_3

    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.stk"

    const-string v5, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, cName:Landroid/content/ComponentName;
    if-eqz p1, :cond_24

    move v3, v6

    .line 55
    .local v3, state:I
    :goto_16
    const/4 v4, 0x1

    :try_start_17
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_3

    .line 57
    :catch_1b
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "StkAppInstaller"

    const-string v5, "Could not change STK app state"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 51
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #state:I
    :cond_24
    const/4 v4, 0x2

    move v3, v4

    goto :goto_16
.end method

.method static unInstall(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    .line 38
    return-void
.end method
