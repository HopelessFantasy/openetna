.class public Lcom/android/packageinstaller/InstallAppProgress;
.super Landroid/app/Activity;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    }
.end annotation


# instance fields
.field private final INSTALL_COMPLETE:I

.field private final TAG:Ljava/lang/String;

.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mHandler:Landroid/os/Handler;

.field private mPackageURI:Landroid/net/Uri;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string v0, "InstallAppProgress"

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->localLOGV:Z

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->INSTALL_COMPLETE:I

    .line 51
    new-instance v0, Lcom/android/packageinstaller/InstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/InstallAppProgress$1;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public initView()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 88
    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->requestWindowFeature(I)Z

    .line 89
    const v7, 0x7f050005

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/InstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, unknown:Ljava/lang/String;
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/InstallAppProgress;->setContentView(I)V

    .line 92
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/high16 v8, 0x7f06

    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-static {p0, v7, v8, v9}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;ILandroid/net/Uri;)Landroid/view/View;

    .line 93
    const v7, 0x7f06000a

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, installTextView:Landroid/widget/TextView;
    const v7, 0x7f050006

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 95
    const v7, 0x7f06000d

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    .line 96
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, installFlags:I
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 101
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_3e
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x2000

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_47} :catch_81

    move-result-object v4

    .line 103
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_4c

    .line 104
    or-int/lit8 v0, v0, 0x2

    .line 108
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_4c
    :goto_4c
    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_6c

    .line 109
    const-string v7, "InstallAppProgress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Replacing package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_6c
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, installerPackageName:Ljava/lang/String;
    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    .line 115
    .local v3, observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v3, v0, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 116
    return-void

    .line 106
    .end local v2           #installerPackageName:Ljava/lang/String;
    .end local v3           #observer:Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    :catch_81
    move-exception v7

    goto :goto_4c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    .line 70
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->initView()V

    .line 71
    return-void
.end method

.method setResultAndFinish(I)V
    .registers 3
    .parameter "retCode"

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, data:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    .line 85
    return-void
.end method
