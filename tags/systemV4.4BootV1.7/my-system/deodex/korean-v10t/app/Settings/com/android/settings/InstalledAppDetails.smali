.class public Lcom/android/settings/InstalledAppDetails;
.super Landroid/app/Activity;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;,
        Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;,
        Lcom/android/settings/InstalledAppDetails$AppButtonStates;
    }
.end annotation


# static fields
.field private static final ATTR_PACKAGE_STATS:Ljava/lang/String; = "PackageStats"

.field private static final CLEAR_CACHE:I = 0x3

.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final DLG_APP_NOT_FOUND:I = 0x3

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x4

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final DLG_FACTORY_RESET:I = 0x2

.field private static final GET_PKG_SIZE:I = 0x2

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InstalledAppDetails"

.field private static final _UNKNOWN_APP:I = 0x7f0802b2


# instance fields
.field private localLOGV:Z

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppButton:Landroid/widget/Button;

.field private mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

.field private mAppButtonText:Ljava/lang/CharSequence;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mCachePanel:Landroid/view/View;

.field private mCacheSize:Landroid/widget/TextView;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mManageSpaceButton:Landroid/widget/Button;

.field private mPm:Landroid/content/pm/PackageManager;

.field mSizeInfo:Landroid/content/pm/PackageStats;

.field private mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

.field private mTotalSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    .line 122
    new-instance v0, Lcom/android/settings/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/InstalledAppDetails$1;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->refreshSizeInfo(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/InstalledAppDetails;)Landroid/content/pm/ApplicationInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/InstalledAppDetails;)Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/InstalledAppDetails;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/InstalledAppDetails;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 5
    .parameter "size"

    .prologue
    .line 170
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 171
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_c
    return-object v0

    :cond_d
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private initiateClearUserDataForSysPkg()V
    .registers 7

    .prologue
    const-string v5, "InstalledAppDetails"

    .line 431
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 433
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 434
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    const-string v3, "Clearing user data for system package"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_1e

    .line 436
    new-instance v3, Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    .line 438
    :cond_1e
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 439
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 440
    .local v2, res:Z
    if-nez v2, :cond_4b

    .line 442
    const-string v3, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    .line 447
    :goto_4a
    return-void

    .line 445
    :cond_4b
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const v4, 0x7f0802bc

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_4a
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 415
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 416
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 417
    .local v0, packageName:Ljava/lang/String;
    if-ne v1, v4, :cond_29

    .line 418
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 424
    :goto_28
    return-void

    .line 421
    :cond_29
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const v3, 0x7f0802ad

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 422
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_28
.end method

.method private refreshAppAttributes(Landroid/content/pm/PackageInfo;)V
    .registers 5
    .parameter "pkgInfo"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->setAppLabelAndIcon()V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings/InstalledAppDetails;->setAppVersion(Landroid/content/pm/PackageInfo;)V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->setAppBtnState()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 261
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 263
    :cond_1e
    return-void
.end method

.method private refreshCacheInfo(J)V
    .registers 5
    .parameter "cacheSize"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    .line 404
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 408
    :goto_15
    return-void

    .line 406
    :cond_16
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15
.end method

.method private refreshSizeInfo(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, changed:Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "PackageStats"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageStats;

    .line 354
    .local v3, newPs:Landroid/content/pm/PackageStats;
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v11, v3, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v9, v11

    iget-wide v11, v3, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v4, v9, v11

    .line 355
    .local v4, newTot:J
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    if-nez v9, :cond_6f

    .line 356
    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    .line 357
    invoke-direct {p0, v4, v5}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .end local v8           #str:Ljava/lang/String;
    :cond_46
    :goto_46
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 388
    .local v1, data:J
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v10, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->NONE:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    if-eq v9, v10, :cond_69

    .line 389
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v10, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->CLEAR_DATA:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    if-ne v9, v10, :cond_d4

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-nez v9, :cond_d4

    .line 391
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    :cond_69
    :goto_69
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-direct {p0, v9, v10}, Lcom/android/settings/InstalledAppDetails;->refreshCacheInfo(J)V

    .line 398
    return-void

    .line 363
    .end local v1           #data:J
    :cond_6f
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v9, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v9, v11

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v6, v9, v11

    .line 364
    .local v6, oldTot:J
    cmp-long v9, v4, v6

    if-eqz v9, :cond_8c

    .line 365
    invoke-direct {p0, v4, v5}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v8

    .line 366
    .restart local v8       #str:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const/4 v0, 0x1

    .line 369
    .end local v8           #str:Ljava/lang/String;
    :cond_8c
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->codeSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a2

    .line 370
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const/4 v0, 0x1

    .line 373
    :cond_a2
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b8

    .line 374
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    const/4 v0, 0x1

    .line 377
    :cond_b8
    iget-wide v9, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v11, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_ce

    .line 378
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-wide v10, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-direct {p0, v10, v11}, Lcom/android/settings/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const/4 v0, 0x1

    .line 381
    :cond_ce
    if-eqz v0, :cond_46

    .line 382
    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mSizeInfo:Landroid/content/pm/PackageStats;

    goto/16 :goto_46

    .line 393
    .end local v6           #oldTot:J
    .restart local v1       #data:J
    :cond_d4
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 394
    iget-object v9, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_69
.end method

.method private setAppBtnState()V
    .registers 4

    .prologue
    .line 291
    const/4 v0, 0x1

    .line 292
    .local v0, visible:Z
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4a

    .line 293
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2e

    .line 294
    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->FACTORY_RESET:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 295
    const v1, 0x7f0802ae

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonText:Ljava/lang/CharSequence;

    .line 310
    :goto_1e
    if-eqz v0, :cond_58

    .line 311
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    :goto_2d
    return-void

    .line 297
    :cond_2e
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_3c

    .line 299
    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->NONE:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 300
    const/4 v0, 0x0

    goto :goto_1e

    .line 302
    :cond_3c
    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->CLEAR_DATA:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 303
    const v1, 0x7f0802ad

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonText:Ljava/lang/CharSequence;

    goto :goto_1e

    .line 307
    :cond_4a
    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->UNINSTALL:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    .line 308
    const v1, 0x7f0802ac

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonText:Ljava/lang/CharSequence;

    goto :goto_1e

    .line 314
    :cond_58
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2d
.end method

.method private setAppLabelAndIcon()V
    .registers 5

    .prologue
    .line 267
    const v1, 0x7f0a0054

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 270
    .local v0, appName:Ljava/lang/CharSequence;
    if-nez v0, :cond_25

    .line 271
    const v1, 0x7f0802b2

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_25
    const v1, 0x7f0a0052

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method private setAppVersion(Landroid/content/pm/PackageInfo;)V
    .registers 7
    .parameter "pkgInfo"

    .prologue
    const/4 v4, 0x0

    .line 279
    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 280
    if-eqz p1, :cond_2b

    .line 281
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const v1, 0x7f0802cc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_2a
    return-void

    .line 285
    :cond_2b
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a
.end method

.method private setIntentAndFinish(ZZ)V
    .registers 7
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 336
    iget-boolean v1, p0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    if-eqz v1, :cond_1c

    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.changed"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/InstalledAppDetails;->setResult(ILandroid/content/Intent;)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 341
    if-eqz p1, :cond_35

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/InstalledAppDetails;->finish()V

    .line 344
    :cond_35
    return-void
.end method

.method private showDialogInner(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/android/settings/InstalledAppDetails;->showDialog(I)V

    .line 452
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 506
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 508
    invoke-direct {p0, v4, v4}, Lcom/android/settings/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 509
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 546
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 547
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->CLEAR_DATA:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    if-ne v0, v1, :cond_d

    .line 549
    invoke-direct {p0}, Lcom/android/settings/InstalledAppDetails;->initiateClearUserDataForSysPkg()V

    .line 557
    :cond_c
    :goto_c
    return-void

    .line 550
    :cond_d
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v1, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->FACTORY_RESET:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    if-ne v0, v1, :cond_c

    .line 552
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 516
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 517
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_28

    .line 518
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v4, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->CLEAR_DATA:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    if-ne v3, v4, :cond_13

    .line 519
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    .line 543
    :cond_12
    :goto_12
    return-void

    .line 520
    :cond_13
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v4, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->FACTORY_RESET:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    if-ne v3, v4, :cond_1e

    .line 521
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_12

    .line 522
    :cond_1e
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppButtonState:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    sget-object v4, Lcom/android/settings/InstalledAppDetails$AppButtonStates;->UNINSTALL:Lcom/android/settings/InstalledAppDetails$AppButtonStates;

    if-ne v3, v4, :cond_12

    .line 523
    invoke-direct {p0, v2}, Lcom/android/settings/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_12

    .line 525
    :cond_28
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_38

    .line 526
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_12

    .line 528
    :cond_38
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mManageSpaceButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_53

    .line 529
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_12

    .line 532
    .end local v1           #intent:Landroid/content/Intent;
    :cond_53
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_6a

    .line 534
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    if-nez v3, :cond_62

    .line 535
    new-instance v3, Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    .line 537
    :cond_62
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_12

    .line 538
    :cond_6a
    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_12

    .line 539
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 541
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "icicle"

    .prologue
    .line 179
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/InstalledAppDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/InstalledAppDetails;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 184
    .local v8, intent:Landroid/content/Intent;
    const-string v15, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, packageName:Ljava/lang/String;
    const v15, 0x7f0802c9

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    move-object v6, v0

    .local v6, dataSizeStr:Ljava/lang/CharSequence;
    move-object v3, v6

    .local v3, appSizeStr:Ljava/lang/CharSequence;
    move-object v14, v6

    .line 189
    .local v14, totalSizeStr:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    move v15, v0

    if-eqz v15, :cond_3a

    const-string v15, "InstalledAppDetails"

    const-string v16, "Have to compute package sizes"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_3a
    new-instance v15, Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mSizeObserver:Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    .line 192
    :try_start_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object v15, v0

    const/16 v16, 0x2000

    move-object v0, v15

    move-object v1, v10

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_5b} :catch_1f1

    .line 199
    const v15, 0x7f03001c

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->setContentView(I)V

    .line 202
    const v15, 0x7f0a0057

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v15, 0x7f0a0059

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v15, 0x7f0a005c

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    move-object v15, v0

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v15, 0x7f0a005f

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mAppButton:Landroid/widget/Button;

    .line 211
    const v15, 0x7f0a005d

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mManageSpaceButton:Landroid/widget/Button;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v15, :cond_f4

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mManageSpaceButton:Landroid/widget/Button;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mManageSpaceButton:Landroid/widget/Button;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_f4
    const v15, 0x7f0a0060

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mCachePanel:Landroid/view/View;

    .line 218
    const v15, 0x7f0a0063

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const v15, 0x7f0a0064

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 221
    const v15, 0x7f0a0067

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v15, 0x7f0a0066

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 225
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v12, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v9, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object v15, v0

    invoke-virtual {v15, v9, v12, v10}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/InstalledAppDetails;->localLOGV:Z

    move v15, v0

    if-eqz v15, :cond_19f

    const-string v15, "InstalledAppDetails"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Have "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " number of activities in prefered list"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_19f
    const v15, 0x7f0a0065

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 231
    .local v5, autoLaunchView:Landroid/widget/TextView;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-gtz v15, :cond_21a

    .line 233
    const v15, 0x7f0802b0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    :goto_1c1
    const v15, 0x7f0a0068

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 242
    .local v11, permsView:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/AppSecurityPermissions;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    .local v4, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v4}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v15

    if-lez v15, :cond_22c

    .line 244
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    const v15, 0x7f0a0069

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 248
    .local v13, securityList:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    .end local v4           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v5           #autoLaunchView:Landroid/widget/TextView;
    .end local v9           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v11           #permsView:Landroid/widget/LinearLayout;
    .end local v12           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v13           #securityList:Landroid/widget/LinearLayout;
    :goto_1f0
    return-void

    .line 194
    .restart local p1
    :catch_1f1
    move-exception v15

    move-object v7, v15

    .line 195
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "InstalledAppDetails"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception when retrieving package:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v15, 0x3

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_1f0

    .line 236
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local p1
    .restart local v5       #autoLaunchView:Landroid/widget/TextView;
    .restart local v9       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v12       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_21a
    const v15, 0x7f0802af

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c1

    .line 250
    .restart local v4       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v11       #permsView:Landroid/widget/LinearLayout;
    :cond_22c
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1f0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x7f0802c1

    const v4, 0x7f0802c0

    const v3, 0x7f0802bf

    const v2, 0x1080027

    .line 456
    packed-switch p1, :pswitch_data_c4

    .line 500
    const/4 v0, 0x0

    :goto_10
    return-object v0

    .line 458
    :pswitch_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802be

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_10

    .line 466
    :pswitch_3d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802c4

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802c5

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_10

    .line 474
    :pswitch_69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/InstalledAppDetails$2;

    invoke-direct {v2, p0}, Lcom/android/settings/InstalledAppDetails$2;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_10

    .line 487
    :pswitch_95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802c6

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802c7

    invoke-virtual {p0, v1}, Lcom/android/settings/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/InstalledAppDetails$3;

    invoke-direct {v1, p0}, Lcom/android/settings/InstalledAppDetails$3;-><init>(Lcom/android/settings/InstalledAppDetails;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_10

    .line 456
    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_11
        :pswitch_3d
        :pswitch_69
        :pswitch_95
    .end packed-switch
.end method

.method public onStart()V
    .registers 6

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 324
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 326
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_1b} :catch_20

    move-result-object v1

    .line 332
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lcom/android/settings/InstalledAppDetails;->refreshAppAttributes(Landroid/content/pm/PackageInfo;)V

    .line 333
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_1f
    return-void

    .line 327
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 328
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/InstalledAppDetails;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/settings/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_1f
.end method
