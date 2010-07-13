.class public Lcom/android/packageinstaller/PackageInstallerActivity;
.super Landroid/app/Activity;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;
    }
.end annotation


# static fields
.field private static final DLG_BASE:I = 0x0

.field private static final DLG_INSTALL_ERROR:I = 0x5

.field private static final DLG_OUT_OF_SPACE:I = 0x4

.field private static final DLG_PACKAGE_ERROR:I = 0x3

.field private static final DLG_REPLACE_APP:I = 0x1

.field private static final DLG_UNKNOWN_APPS:I = 0x2

.field private static final FAILED:I = 0x0

.field private static final FREE_SPACE:I = 0x1

.field private static final HANDLER_BASE_MSG_IDX:I = 0x0

.field private static final INSTALL_CONFIRM:I = 0x1

.field private static final INSTALL_DONE:I = 0x3

.field private static final INSTALL_INITIAL:I = 0x0

.field private static final INSTALL_PROGRESS:I = 0x2

.field private static final SUCCEEDED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field mClearCacheReceiver:Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;

.field private mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field private mPackageURI:Landroid/net/Uri;

.field private mPkgInfo:Landroid/content/pm/PackageParser$Package;

.field mPm:Landroid/content/pm/PackageManager;

.field private mTmpFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    .line 67
    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurrentState:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 89
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->makeTempCopyAndInstall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/PackageInstallerActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->launchSettingsAppAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkOutOfSpace(J)V
    .registers 9
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.android.packageinstaller.CLEAR_CACHE"

    .line 258
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v1, :cond_25

    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number of bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_25
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mClearCacheReceiver:Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;

    if-nez v1, :cond_31

    .line 260
    new-instance v1, Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$1;)V

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mClearCacheReceiver:Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;

    .line 262
    :cond_31
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mClearCacheReceiver:Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.packageinstaller.CLEAR_CACHE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.packageinstaller.CLEAR_CACHE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 266
    .local v0, pi:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/pm/PackageManager;->freeStorage(JLandroid/content/IntentSender;)V

    .line 267
    return-void
.end method

.method private createTempPackageFile(Ljava/lang/String;)Ljava/io/File;
    .registers 14
    .parameter "filePath"

    .prologue
    const/4 v9, 0x0

    const-string v11, "PackageInstaller"

    const-string v10, "Error opening file "

    .line 283
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 285
    .local v3, i:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_2d

    .line 286
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, tmpFileName:Ljava/lang/String;
    :goto_14
    const/4 v7, 0x1

    :try_start_15
    invoke-virtual {p0, v5, v7}, Lcom/android/packageinstaller/PackageInstallerActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_2f

    move-result-object v2

    .line 298
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_4a

    .line 303
    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 304
    .local v6, tmpPackageFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v4, srcPackageFile:Ljava/io/File;
    invoke-static {v4, v6}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_65

    move-object v7, v9

    .line 308
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #srcPackageFile:Ljava/io/File;
    .end local v6           #tmpPackageFile:Ljava/io/File;
    :goto_2c
    return-object v7

    .line 288
    .end local v5           #tmpFileName:Ljava/lang/String;
    :cond_2d
    move-object v5, p1

    .restart local v5       #tmpFileName:Ljava/lang/String;
    goto :goto_14

    .line 293
    :catch_2f
    move-exception v1

    .line 294
    .local v1, e1:Ljava/io/FileNotFoundException;
    const-string v7, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error opening file "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 295
    goto :goto_2c

    .line 299
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4a
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/IOException;
    const-string v7, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error opening file "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 301
    goto :goto_2c

    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #srcPackageFile:Ljava/io/File;
    .restart local v6       #tmpPackageFile:Ljava/io/File;
    :cond_65
    move-object v7, v6

    .line 308
    goto :goto_2c
.end method

.method private isInstallingUnknownAppsAllowed()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
.end method

.method private launchSettingsAppAndFinish()V
    .registers 3

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, launchSettingsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 274
    return-void
.end method

.method private makeTempCopyAndInstall()V
    .registers 6

    .prologue
    const-string v4, "PackageInstaller"

    .line 313
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->createTempPackageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mTmpFile:Ljava/io/File;

    .line 314
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mTmpFile:Ljava/io/File;

    if-nez v1, :cond_1e

    .line 316
    const-string v1, "PackageInstaller"

    const-string v1, "Error copying file locally. Failed Installation"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 335
    :goto_1d
    return-void

    .line 320
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    .line 323
    :try_start_3d
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_4b} :catch_53

    .line 328
    :goto_4b
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_59

    .line 329
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    goto :goto_1d

    .line 325
    :catch_53
    move-exception v1

    move-object v0, v1

    .line 326
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_4b

    .line 331
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_59
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v1, :cond_7b

    const-string v1, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing existing package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_7b
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_1d
.end method

.method private showDialogInner(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->removeDialog(I)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialog(I)V

    .line 150
    return-void
.end method

.method private startInstallActivityClass(ILjava/lang/Class;)V
    .registers 4
    .parameter "requestCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, newIntent:Landroid/content/Intent;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallActivityClass(Landroid/content/Intent;ILjava/lang/Class;)V

    .line 109
    return-void
.end method

.method private startInstallActivityClass(Landroid/content/Intent;ILjava/lang/Class;)V
    .registers 8
    .parameter "newIntent"
    .parameter "requestCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p3, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    .line 112
    const-string v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, installerPackageName:Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 120
    const-string v1, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :cond_24
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v1, :cond_42

    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloaded app uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_42
    invoke-virtual {p0, p1, p2}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method

.method private startInstallConfirm()V
    .registers 4

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    const-class v1, Lcom/android/packageinstaller/InstallAppConfirmation;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method

.method private startInstallDone()V
    .registers 4

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.installStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const/4 v1, 0x3

    const-class v2, Lcom/android/packageinstaller/InstallAppDone;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallActivityClass(Landroid/content/Intent;ILjava/lang/Class;)V

    .line 144
    return-void
.end method

.method private startInstallProgress()V
    .registers 3

    .prologue
    .line 137
    const/4 v0, 0x2

    const-class v1, Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0, v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallActivityClass(ILjava/lang/Class;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 384
    const/4 v0, 0x1

    .line 385
    .local v0, finish:Z
    const/4 v1, 0x0

    .line 386
    .local v1, removeTmpFile:Z
    packed-switch p1, :pswitch_data_44

    .line 414
    :goto_5
    :pswitch_5
    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mTmpFile:Ljava/io/File;

    if-eqz v2, :cond_14

    .line 415
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->deleteFile(Ljava/lang/String;)Z

    .line 417
    :cond_14
    if-eqz v0, :cond_24

    .line 419
    iget-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v2, :cond_21

    const-string v2, "PackageInstaller"

    const-string v3, "Finishing off activity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_21
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 422
    :cond_24
    return-void

    .line 388
    :pswitch_25
    const/4 v2, -0x1

    if-ne p2, v2, :cond_30

    .line 389
    const/4 v0, 0x0

    .line 390
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurrentState:I

    .line 391
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallProgress()V

    goto :goto_5

    .line 393
    :cond_30
    const/4 v1, 0x1

    .line 395
    goto :goto_5

    .line 397
    :pswitch_32
    const/4 v0, 0x0

    .line 398
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCurrentState:I

    .line 399
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3e

    .line 401
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallDone()V

    .line 406
    :goto_3c
    const/4 v1, 0x1

    .line 407
    goto :goto_5

    .line 403
    :cond_3e
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_3c

    .line 386
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_25
        :pswitch_32
        :pswitch_5
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 427
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 342
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    .line 343
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 344
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    .line 347
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-nez v5, :cond_2b

    .line 348
    const-string v5, "PackageInstaller"

    const-string v6, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 371
    :goto_2a
    return-void

    .line 354
    :cond_2b
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->requestWindowFeature(I)Z

    .line 355
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->setContentView(I)V

    .line 356
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/high16 v6, 0x7f06

    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-static {p0, v5, v6, v7}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;ILandroid/net/Uri;)Landroid/view/View;

    .line 359
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallingUnknownAppsAllowed()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 361
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_2a

    .line 366
    :cond_4b
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, apkPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, apkFile:Ljava/io/File;
    const-wide/16 v5, 0x4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    mul-long v3, v5, v7

    .line 370
    .local v3, size:J
    invoke-direct {p0, v3, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->checkOutOfSpace(J)V

    goto :goto_2a
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const v9, 0x7f05000e

    const v8, 0x7f050004

    .line 154
    packed-switch p1, :pswitch_data_126

    .line 243
    const/4 v5, 0x0

    :goto_c
    return-object v5

    .line 156
    :pswitch_d
    const v4, 0x7f050012

    .line 158
    .local v4, msgId:I
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1f

    .line 159
    const v4, 0x7f050013

    .line 161
    :cond_1f
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f050011

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/packageinstaller/PackageInstallerActivity$3;

    invoke-direct {v6, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$3;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/packageinstaller/PackageInstallerActivity$2;

    invoke-direct {v6, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$2;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_c

    .line 176
    .end local v4           #msgId:I
    :pswitch_4a
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f05000c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f05000d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/packageinstaller/PackageInstallerActivity$5;

    invoke-direct {v6, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$5;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f05000f

    new-instance v7, Lcom/android/packageinstaller/PackageInstallerActivity$4;

    invoke-direct {v7, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$4;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_c

    .line 193
    :pswitch_7b
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f050021

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f050022

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/packageinstaller/PackageInstallerActivity$6;

    invoke-direct {v6, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$6;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_c

    .line 205
    :pswitch_a1
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 206
    .local v0, appTitle:Ljava/lang/CharSequence;
    const v5, 0x7f050015

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, dlgText:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f050014

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f050010

    new-instance v7, Lcom/android/packageinstaller/PackageInstallerActivity$8;

    invoke-direct {v7, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$8;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/packageinstaller/PackageInstallerActivity$7;

    invoke-direct {v6, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$7;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_c

    .line 229
    .end local v0           #appTitle:Ljava/lang/CharSequence;
    .end local v2           #dlgText:Ljava/lang/String;
    :pswitch_e9
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 230
    .local v1, appTitle1:Ljava/lang/CharSequence;
    const v5, 0x7f05000a

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, dlgText1:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f050009

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/packageinstaller/PackageInstallerActivity$9;

    invoke-direct {v6, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$9;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_c

    .line 154
    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_d
        :pswitch_4a
        :pswitch_7b
        :pswitch_a1
        :pswitch_e9
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 377
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mTmpFile:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 378
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->deleteFile(Ljava/lang/String;)Z

    .line 380
    :cond_10
    return-void
.end method
