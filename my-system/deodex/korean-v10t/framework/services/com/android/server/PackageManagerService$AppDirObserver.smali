.class final Lcom/android/server/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V
    .registers 5
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 3349
    iput-object p1, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    .line 3350
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 3351
    iput-object p2, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 3352
    iput-boolean p4, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 3353
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 20
    .parameter "event"
    .parameter "path"

    .prologue
    .line 3356
    const/4 v15, 0x0

    .line 3357
    .local v15, removedPackage:Ljava/lang/String;
    const/16 v16, -0x1

    .line 3358
    .local v16, removedUid:I
    const/4 v9, 0x0

    .line 3359
    .local v9, addedPackage:Ljava/lang/String;
    const/4 v10, -0x1

    .line 3361
    .local v10, addedUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v11, v3, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3362
    const/4 v13, 0x0

    .line 3363
    .local v13, fullPathStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3364
    .local v4, fullPath:Ljava/io/File;
    if-eqz p2, :cond_24

    .line 3365
    :try_start_11
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_f0

    .line 3366
    .end local v4           #fullPath:Ljava/io/File;
    .local v12, fullPath:Ljava/io/File;
    :try_start_1f
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_fb

    move-result-object v13

    move-object v4, v12

    .line 3373
    .end local v12           #fullPath:Ljava/io/File;
    .restart local v4       #fullPath:Ljava/io/File;
    :cond_24
    :try_start_24
    invoke-static/range {p2 .. p2}, Lcom/android/server/PackageManagerService;->access$1100(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 3376
    monitor-exit v11

    .line 3424
    .end local v4           #fullPath:Ljava/io/File;
    :cond_2b
    :goto_2b
    return-void

    .line 3379
    .restart local v4       #fullPath:Ljava/io/File;
    :cond_2c
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x248

    move v3, v0

    if-eqz v3, :cond_5f

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_f0

    .line 3381
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Package;

    .line 3382
    .local v14, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_5e

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v14, v6}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 3384
    iget-object v5, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3385
    iget-object v5, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    .line 3387
    :cond_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_3b .. :try_end_5f} :catchall_ed

    .line 3390
    .end local v14           #p:Landroid/content/pm/PackageParser$Package;
    :cond_5f
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x88

    move v3, v0

    if-eqz v3, :cond_a9

    .line 3391
    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Package;

    .line 3392
    .restart local v14       #p:Landroid/content/pm/PackageParser$Package;
    if-nez v14, :cond_a9

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    move v5, v0

    if-eqz v5, :cond_f3

    const/4 v5, 0x1

    :goto_82
    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v7, v5, 0x4

    const/4 v8, 0x1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v3 .. v8}, Lcom/android/server/PackageManagerService;->access$1200(Lcom/android/server/PackageManagerService;Ljava/io/File;Ljava/io/File;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 3398
    if-eqz v14, :cond_a9

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_97
    .catchall {:try_start_66 .. :try_end_97} :catchall_f0

    .line 3400
    :try_start_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v14, v6}, Lcom/android/server/PackageManagerService;->access$1300(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 3401
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_f5

    .line 3402
    :try_start_a1
    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3403
    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3408
    .end local v14           #p:Landroid/content/pm/PackageParser$Package;
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_b1
    .catchall {:try_start_a1 .. :try_end_b1} :catchall_f0

    .line 3409
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v5}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 3410
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_f8

    .line 3411
    :try_start_bc
    monitor-exit v11
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_f0

    .line 3413
    if-eqz v15, :cond_d9

    .line 3414
    new-instance v11, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 3415
    .local v11, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    move-object v0, v11

    move-object v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3416
    const-string v3, "android.intent.extra.DATA_REMOVED"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3417
    .end local v4           #fullPath:Ljava/io/File;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v3, v15, v11}, Lcom/android/server/PackageManagerService;->access$1400(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3419
    .end local v11           #extras:Landroid/os/Bundle;
    :cond_d9
    if-eqz v9, :cond_2b

    .line 3420
    new-instance v11, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 3421
    .restart local v11       #extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v11, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3422
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v3, v9, v11}, Lcom/android/server/PackageManagerService;->access$1400(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2b

    .line 3387
    .end local v11           #extras:Landroid/os/Bundle;
    .restart local v4       #fullPath:Ljava/io/File;
    :catchall_ed
    move-exception v5

    :try_start_ee
    monitor-exit v3
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    :try_start_ef
    throw v5

    .line 3411
    :catchall_f0
    move-exception v3

    :goto_f1
    monitor-exit v11
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f0

    throw v3

    .line 3393
    .restart local v14       #p:Landroid/content/pm/PackageParser$Package;
    :cond_f3
    const/4 v5, 0x0

    goto :goto_82

    .line 3401
    :catchall_f5
    move-exception v5

    :try_start_f6
    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v5
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f0

    .line 3410
    .end local v14           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_f8
    move-exception v5

    :try_start_f9
    monitor-exit v3
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    :try_start_fa
    throw v5
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f0

    .line 3411
    .end local v4           #fullPath:Ljava/io/File;
    .restart local v12       #fullPath:Ljava/io/File;
    :catchall_fb
    move-exception v3

    move-object v4, v12

    .end local v12           #fullPath:Ljava/io/File;
    .restart local v4       #fullPath:Ljava/io/File;
    goto :goto_f1
.end method
