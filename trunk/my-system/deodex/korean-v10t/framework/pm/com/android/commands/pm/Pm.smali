.class public final Lcom/android/commands/pm/Pm;
.super Ljava/lang/Object;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/Pm$PackageDeleteObserver;,
        Lcom/android/commands/pm/Pm$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field mPm:Landroid/content/pm/IPackageManager;

.field private mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    .line 646
    return-void
.end method

.method private deletePackage(Ljava/lang/String;I)Z
    .registers 7
    .parameter "pkg"
    .parameter "unInstallFlags"

    .prologue
    .line 682
    new-instance v1, Lcom/android/commands/pm/Pm$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/commands/pm/Pm$PackageDeleteObserver;-><init>(Lcom/android/commands/pm/Pm;)V

    .line 684
    .local v1, obs:Lcom/android/commands/pm/Pm$PackageDeleteObserver;
    :try_start_5
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1, p2}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 686
    monitor-enter v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_1c

    .line 687
    :goto_b
    :try_start_b
    iget-boolean v2, v1, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->finished:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_19

    if-nez v2, :cond_15

    .line 689
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_b

    .line 690
    :catch_13
    move-exception v2

    goto :goto_b

    .line 693
    :cond_15
    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_19

    .line 698
    :goto_16
    iget-boolean v2, v1, Lcom/android/commands/pm/Pm$PackageDeleteObserver;->result:Z

    return v2

    .line 693
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 694
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 696
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16
.end method

.method private displayPackageFilePath(Ljava/lang/String;)V
    .registers 6
    .parameter "pckg"

    .prologue
    .line 750
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 751
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1d

    .line 752
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 753
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 759
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_1d
    :goto_1d
    return-void

    .line 755
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 756
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 757
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 26
    .parameter
    .parameter "groups"
    .parameter "labels"
    .parameter "summary"
    .parameter "startProtectionLevel"
    .parameter "endProtectionLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    .local p1, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_2de

    .line 374
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 375
    .local v6, groupName:Ljava/lang/String;
    const-string v11, ""

    .line 376
    .local v11, prefix:Ljava/lang/String;
    if-eqz p2, :cond_68

    .line 377
    if-lez v7, :cond_1d

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    :cond_1d
    if-eqz v6, :cond_164

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object v15, v0

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v6

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v9

    .line 381
    .local v9, pgi:Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_b7

    .line 382
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 383
    .local v14, res:Landroid/content/res/Resources;
    if-eqz v14, :cond_99

    .line 384
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    iget v0, v0, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move/from16 v17, v0

    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 410
    .end local v9           #pgi:Landroid/content/pm/PermissionGroupInfo;
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_66
    :goto_66
    const-string v11, "  "

    .line 412
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    move-object v15, v0

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v4

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v13

    .line 414
    .local v13, ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    .line 415
    .local v4, count:I
    const/4 v5, 0x1

    .line 416
    .local v5, first:Z
    const/4 v8, 0x0

    .local v8, p:I
    :goto_86
    if-ge v8, v4, :cond_2d1

    .line 417
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PermissionInfo;

    .line 418
    .local v10, pi:Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_187

    if-nez v6, :cond_187

    iget-object v15, v10, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v15, :cond_187

    .line 416
    :cond_96
    :goto_96
    add-int/lit8 v8, v8, 0x1

    goto :goto_86

    .line 387
    .end local v4           #count:I
    .end local v5           #first:Z
    .end local v8           #p:I
    .end local v10           #pi:Landroid/content/pm/PermissionInfo;
    .end local v13           #ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .restart local v9       #pgi:Landroid/content/pm/PermissionGroupInfo;
    .restart local v14       #res:Landroid/content/res/Resources;
    :cond_99
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_66

    .line 391
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_b7
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_160

    const-string v17, "+ "

    :goto_c2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "group:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    if-eqz p3, :cond_66

    .line 394
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  package:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 396
    .restart local v14       #res:Landroid/content/res/Resources;
    if-eqz v14, :cond_66

    .line 397
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  label:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v9

    iget v0, v0, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    move/from16 v17, v0

    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  description:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v9

    iget v0, v0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    move/from16 v17, v0

    move-object v0, v9

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_66

    .line 391
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_160
    const-string v17, ""

    goto/16 :goto_c2

    .line 407
    .end local v9           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :cond_164
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_184

    if-nez p4, :cond_184

    const-string v17, "+ "

    :goto_171
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ungrouped:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_66

    :cond_184
    const-string v17, ""

    goto :goto_171

    .line 421
    .restart local v4       #count:I
    .restart local v5       #first:Z
    .restart local v8       #p:I
    .restart local v10       #pi:Landroid/content/pm/PermissionInfo;
    .restart local v13       #ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_187
    iget v15, v10, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move v0, v15

    move/from16 v1, p5

    if-lt v0, v1, :cond_96

    iget v15, v10, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move v0, v15

    move/from16 v1, p6

    if-gt v0, v1, :cond_96

    .line 425
    if-eqz p4, :cond_1d3

    .line 426
    if-eqz v5, :cond_1bf

    .line 427
    const/4 v5, 0x0

    .line 431
    :goto_19a
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 432
    .restart local v14       #res:Landroid/content/res/Resources;
    if-eqz v14, :cond_1c7

    .line 433
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v0, v10

    iget v0, v0, Landroid/content/pm/PermissionInfo;->labelRes:I

    move/from16 v16, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_96

    .line 429
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_1bf
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_19a

    .line 436
    .restart local v14       #res:Landroid/content/res/Resources;
    :cond_1c7
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_96

    .line 439
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_1d3
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p3, :cond_2c1

    const-string v17, "+ "

    :goto_1e5
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "permission:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    if-eqz p3, :cond_96

    .line 442
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  package:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v14

    .line 444
    .restart local v14       #res:Landroid/content/res/Resources;
    if-eqz v14, :cond_296

    .line 445
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  label:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v10

    iget v0, v0, Landroid/content/pm/PermissionInfo;->labelRes:I

    move/from16 v17, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  description:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v10

    iget v0, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    move/from16 v17, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/pm/Pm;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    :cond_296
    const-string v12, "unknown"

    .line 453
    .local v12, protLevel:Ljava/lang/String;
    iget v15, v10, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    packed-switch v15, :pswitch_data_2e0

    .line 467
    :goto_29d
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  protectionLevel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_96

    .line 439
    .end local v12           #protLevel:Ljava/lang/String;
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_2c1
    const-string v17, ""

    goto/16 :goto_1e5

    .line 455
    .restart local v12       #protLevel:Ljava/lang/String;
    .restart local v14       #res:Landroid/content/res/Resources;
    :pswitch_2c5
    const-string v12, "dangerous"

    .line 456
    goto :goto_29d

    .line 458
    :pswitch_2c8
    const-string v12, "normal"

    .line 459
    goto :goto_29d

    .line 461
    :pswitch_2cb
    const-string v12, "signature"

    .line 462
    goto :goto_29d

    .line 464
    :pswitch_2ce
    const-string v12, "signatureOrSystem"

    goto :goto_29d

    .line 472
    .end local v10           #pi:Landroid/content/pm/PermissionInfo;
    .end local v12           #protLevel:Ljava/lang/String;
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_2d1
    if-eqz p4, :cond_2da

    .line 473
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_2da
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 476
    .end local v4           #count:I
    .end local v5           #first:Z
    .end local v6           #groupName:Ljava/lang/String;
    .end local v8           #p:I
    .end local v11           #prefix:Ljava/lang/String;
    .end local v13           #ps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_2de
    return-void

    .line 453
    nop

    :pswitch_data_2e0
    .packed-switch 0x0
        :pswitch_2c8
        :pswitch_2c5
        :pswitch_2cb
        :pswitch_2ce
    .end packed-switch
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .registers 2
    .parameter "state"

    .prologue
    .line 702
    packed-switch p0, :pswitch_data_10

    .line 710
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 704
    :pswitch_6
    const-string v0, "default"

    goto :goto_5

    .line 706
    :pswitch_9
    const-string v0, "enabled"

    goto :goto_5

    .line 708
    :pswitch_c
    const-string v0, "disabled"

    goto :goto_5

    .line 702
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 11
    .parameter "pii"

    .prologue
    const/4 v8, 0x0

    .line 762
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 763
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v3, :cond_f

    move-object v5, v3

    .line 775
    :goto_e
    return-object v5

    .line 766
    :cond_f
    :try_start_f
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 767
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 768
    .local v1, am:Landroid/content/res/AssetManager;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 769
    new-instance v4, Landroid/content/res/Resources;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_29} :catch_33

    .line 770
    .end local v3           #res:Landroid/content/res/Resources;
    .local v4, res:Landroid/content/res/Resources;
    :try_start_29
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_47

    move-object v3, v4

    .end local v4           #res:Landroid/content/res/Resources;
    .restart local v3       #res:Landroid/content/res/Resources;
    move-object v5, v4

    .line 771
    goto :goto_e

    .line 772
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #am:Landroid/content/res/AssetManager;
    :catch_33
    move-exception v5

    move-object v2, v5

    .line 773
    .local v2, e:Landroid/os/RemoteException;
    :goto_35
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 774
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v8

    .line 775
    goto :goto_e

    .line 772
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #am:Landroid/content/res/AssetManager;
    .restart local v4       #res:Landroid/content/res/Resources;
    :catch_47
    move-exception v5

    move-object v2, v5

    move-object v3, v4

    .end local v4           #res:Landroid/content/res/Resources;
    .restart local v3       #res:Landroid/content/res/Resources;
    goto :goto_35
.end method

.method private installFailureToString(I)Ljava/lang/String;
    .registers 3
    .parameter "result"

    .prologue
    .line 503
    sparse-switch p1, :sswitch_data_54

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, s:Ljava/lang/String;
    :goto_7
    return-object v0

    .line 505
    .end local v0           #s:Ljava/lang/String;
    :sswitch_8
    const-string v0, "INSTALL_FAILED_ALREADY_EXISTS"

    .line 506
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 508
    .end local v0           #s:Ljava/lang/String;
    :sswitch_b
    const-string v0, "INSTALL_FAILED_INVALID_APK"

    .line 509
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 511
    .end local v0           #s:Ljava/lang/String;
    :sswitch_e
    const-string v0, "INSTALL_FAILED_INVALID_URI"

    .line 512
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 514
    .end local v0           #s:Ljava/lang/String;
    :sswitch_11
    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    .line 515
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 517
    .end local v0           #s:Ljava/lang/String;
    :sswitch_14
    const-string v0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    .line 518
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 520
    .end local v0           #s:Ljava/lang/String;
    :sswitch_17
    const-string v0, "INSTALL_FAILED_NO_SHARED_USER"

    .line 521
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 523
    .end local v0           #s:Ljava/lang/String;
    :sswitch_1a
    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    .line 524
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 526
    .end local v0           #s:Ljava/lang/String;
    :sswitch_1d
    const-string v0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    .line 527
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 529
    .end local v0           #s:Ljava/lang/String;
    :sswitch_20
    const-string v0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    .line 530
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 532
    .end local v0           #s:Ljava/lang/String;
    :sswitch_23
    const-string v0, "INSTALL_FAILED_DEXOPT"

    .line 533
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 535
    .end local v0           #s:Ljava/lang/String;
    :sswitch_26
    const-string v0, "INSTALL_FAILED_OLDER_SDK"

    .line 536
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 538
    .end local v0           #s:Ljava/lang/String;
    :sswitch_29
    const-string v0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    .line 539
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 541
    .end local v0           #s:Ljava/lang/String;
    :sswitch_2c
    const-string v0, "INSTALL_FAILED_NEWER_SDK"

    .line 542
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 544
    .end local v0           #s:Ljava/lang/String;
    :sswitch_2f
    const-string v0, "INSTALL_FAILED_TEST_ONLY"

    .line 545
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 547
    .end local v0           #s:Ljava/lang/String;
    :sswitch_32
    const-string v0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    .line 548
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 550
    .end local v0           #s:Ljava/lang/String;
    :sswitch_35
    const-string v0, "INSTALL_PARSE_FAILED_NOT_APK"

    .line 551
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 553
    .end local v0           #s:Ljava/lang/String;
    :sswitch_38
    const-string v0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    .line 554
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 556
    .end local v0           #s:Ljava/lang/String;
    :sswitch_3b
    const-string v0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    .line 557
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 559
    .end local v0           #s:Ljava/lang/String;
    :sswitch_3e
    const-string v0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    .line 560
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 562
    .end local v0           #s:Ljava/lang/String;
    :sswitch_41
    const-string v0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    .line 563
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 565
    .end local v0           #s:Ljava/lang/String;
    :sswitch_44
    const-string v0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    .line 566
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 568
    .end local v0           #s:Ljava/lang/String;
    :sswitch_47
    const-string v0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    .line 569
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 571
    .end local v0           #s:Ljava/lang/String;
    :sswitch_4a
    const-string v0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    .line 572
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 574
    .end local v0           #s:Ljava/lang/String;
    :sswitch_4d
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    .line 575
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 577
    .end local v0           #s:Ljava/lang/String;
    :sswitch_50
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    .line 578
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_7

    .line 503
    nop

    :sswitch_data_54
    .sparse-switch
        -0x6d -> :sswitch_50
        -0x6c -> :sswitch_4d
        -0x6b -> :sswitch_4a
        -0x6a -> :sswitch_47
        -0x69 -> :sswitch_44
        -0x68 -> :sswitch_41
        -0x67 -> :sswitch_3e
        -0x66 -> :sswitch_3b
        -0x65 -> :sswitch_38
        -0x64 -> :sswitch_35
        -0x10 -> :sswitch_32
        -0xf -> :sswitch_2f
        -0xe -> :sswitch_2c
        -0xd -> :sswitch_29
        -0xc -> :sswitch_26
        -0xb -> :sswitch_23
        -0x9 -> :sswitch_20
        -0x8 -> :sswitch_1d
        -0x7 -> :sswitch_1a
        -0x6 -> :sswitch_17
        -0x5 -> :sswitch_14
        -0x4 -> :sswitch_11
        -0x3 -> :sswitch_e
        -0x2 -> :sswitch_b
        -0x1 -> :sswitch_8
    .end sparse-switch
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .parameter "pii"
    .parameter "res"
    .parameter "nonLocalized"

    .prologue
    .line 284
    if-eqz p3, :cond_7

    .line 285
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_6
    return-object v1

    .line 287
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/commands/pm/Pm;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 288
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_12

    .line 289
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 291
    :cond_12
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 57
    new-instance v0, Lcom/android/commands/pm/Pm;

    invoke-direct {v0}, Lcom/android/commands/pm/Pm;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/pm/Pm;->run([Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 817
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 818
    const/4 v1, 0x0

    .line 822
    :goto_8
    return-object v1

    .line 820
    :cond_9
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v1, v2

    .line 821
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    move-object v1, v0

    .line 822
    goto :goto_8
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 780
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    move-object v1, v3

    .line 801
    :goto_b
    return-object v1

    .line 783
    :cond_c
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v1, v2

    .line 784
    .local v0, arg:Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v1, v3

    .line 785
    goto :goto_b

    .line 787
    :cond_1c
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    .line 788
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v3

    .line 789
    goto :goto_b

    .line 791
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_50

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_50

    .line 792
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_4c

    .line 793
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    .line 794
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 796
    :cond_4c
    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 797
    goto :goto_b

    .line 800
    :cond_50
    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 801
    goto :goto_b
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 806
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    .line 813
    :goto_6
    return-object v1

    .line 808
    :cond_7
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    .line 809
    const/4 v1, 0x0

    goto :goto_6

    .line 811
    :cond_10
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    aget-object v0, v1, v2

    .line 812
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    move-object v1, v0

    .line 813
    goto :goto_6
.end method

.method private runInstall()V
    .registers 10

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, installFlags:I
    const/4 v3, 0x0

    .line 591
    .local v3, installerPackageName:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v5

    .local v5, opt:Ljava/lang/String;
    if-eqz v5, :cond_5e

    .line 592
    const-string v6, "-l"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 593
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 594
    :cond_13
    const-string v6, "-r"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 595
    or-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 596
    :cond_1e
    const-string v6, "-i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 597
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    .line 598
    if-nez v3, :cond_2

    .line 599
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no value specified for -i"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 644
    :goto_36
    return-void

    .line 603
    :cond_37
    const-string v6, "-t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 604
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 606
    :cond_42
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_36

    .line 612
    :cond_5e
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, apkFilePath:Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tpkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 614
    if-nez v0, :cond_87

    .line 615
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: no package specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_36

    .line 620
    :cond_87
    new-instance v4, Lcom/android/commands/pm/Pm$PackageInstallObserver;

    invoke-direct {v4, p0}, Lcom/android/commands/pm/Pm$PackageInstallObserver;-><init>(Lcom/android/commands/pm/Pm;)V

    .line 622
    .local v4, obs:Lcom/android/commands/pm/Pm$PackageInstallObserver;
    :try_start_8c
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7, v4, v2, v3}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 625
    monitor-enter v4
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_9b} :catch_b6

    .line 626
    :goto_9b
    :try_start_9b
    iget-boolean v6, v4, Lcom/android/commands/pm/Pm$PackageInstallObserver;->finished:Z
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_b3

    if-nez v6, :cond_a5

    .line 628
    :try_start_9f
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_b3
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_9b

    .line 629
    :catch_a3
    move-exception v6

    goto :goto_9b

    .line 632
    :cond_a5
    :try_start_a5
    iget v6, v4, Lcom/android/commands/pm/Pm$PackageInstallObserver;->result:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ca

    .line 633
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Success"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    :goto_b1
    monitor-exit v4

    goto :goto_36

    :catchall_b3
    move-exception v6

    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_a5 .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw v6
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_b6} :catch_b6

    .line 640
    :catch_b6
    move-exception v6

    move-object v1, v6

    .line 641
    .local v1, e:Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 642
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 635
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_ca
    :try_start_ca
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/commands/pm/Pm$PackageInstallObserver;->result:I

    invoke-direct {p0, v8}, Lcom/android/commands/pm/Pm;->installFailureToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_ca .. :try_end_ee} :catchall_b3

    goto :goto_b1
.end method

.method private runList()V
    .registers 5

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, type:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 143
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: didn\'t specify type of data to list"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 159
    :goto_10
    return-void

    .line 147
    :cond_11
    const-string v1, "package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "packages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 148
    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/commands/pm/Pm;->runListPackages(Z)V

    goto :goto_10

    .line 149
    :cond_26
    const-string v1, "permission-groups"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 150
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissionGroups()V

    goto :goto_10

    .line 151
    :cond_32
    const-string v1, "permissions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 152
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListPermissions()V

    goto :goto_10

    .line 153
    :cond_3e
    const-string v1, "instrumentation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 154
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runListInstrumentation()V

    goto :goto_10

    .line 156
    :cond_4a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown list type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_10
.end method

.method private runListInstrumentation()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 211
    const/4 v4, 0x0

    .line 212
    .local v4, flags:I
    const/4 v9, 0x0

    .line 213
    .local v9, showPackage:Z
    const/4 v10, 0x0

    .line 217
    .local v10, targetPackage:Ljava/lang/String;
    :goto_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v7

    .local v7, opt:Ljava/lang/String;
    if-eqz v7, :cond_5d

    .line 218
    const-string v11, "-f"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 219
    const/4 v9, 0x1

    goto :goto_4

    .line 220
    :cond_14
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_1f

    .line 221
    move-object v10, v7

    goto :goto_4

    .line 223
    :cond_1f
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: Unknown option: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_3a} :catch_3b

    .line 262
    .end local v7           #opt:Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 228
    :catch_3b
    move-exception v11

    move-object v3, v11

    .line 229
    .local v3, ex:Ljava/lang/RuntimeException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_3a

    .line 235
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v7       #opt:Ljava/lang/String;
    :cond_5d
    :try_start_5d
    iget-object v11, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v10, v4}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 238
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v11, Lcom/android/commands/pm/Pm$1;

    invoke-direct {v11, p0}, Lcom/android/commands/pm/Pm$1;-><init>(Lcom/android/commands/pm/Pm;)V

    invoke-static {v6, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 244
    if-eqz v6, :cond_bc

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    move v1, v11

    .line 245
    .local v1, count:I
    :goto_72
    const/4 v8, 0x0

    .local v8, p:I
    :goto_73
    if-ge v8, v1, :cond_3a

    .line 246
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstrumentationInfo;

    .line 247
    .local v5, ii:Landroid/content/pm/InstrumentationInfo;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "instrumentation:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    if-eqz v9, :cond_92

    .line 249
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 250
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 252
    :cond_92
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v5, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v0, cn:Landroid/content/ComponentName;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 254
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, " (target="

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v12, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_b9} :catch_be

    .line 245
    add-int/lit8 v8, v8, 0x1

    goto :goto_73

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #count:I
    .end local v5           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v8           #p:I
    :cond_bc
    move v1, v13

    .line 244
    goto :goto_72

    .line 258
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :catch_be
    move-exception v11

    move-object v2, v11

    .line 259
    .local v2, e:Landroid/os/RemoteException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v12, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3a
.end method

.method private runListPackages(Z)V
    .registers 12
    .parameter "showApplicationPackage"

    .prologue
    .line 167
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, opt:Ljava/lang/String;
    if-eqz v4, :cond_60

    .line 168
    const-string v7, "-l"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 170
    const-string v7, "-lf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 171
    const/4 p1, 0x1

    goto :goto_0

    .line 172
    :cond_18
    const-string v7, "-f"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 173
    const/4 p1, 0x1

    goto :goto_0

    .line 175
    :cond_22
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Unknown option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 203
    .end local v4           #opt:Ljava/lang/String;
    :cond_3d
    :goto_3d
    return-void

    .line 180
    :catch_3e
    move-exception v7

    move-object v2, v7

    .line 181
    .local v2, ex:Ljava/lang/RuntimeException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto :goto_3d

    .line 187
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #opt:Ljava/lang/String;
    :cond_60
    :try_start_60
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/content/pm/IPackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 189
    .local v6, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    .local v0, count:I
    const/4 v5, 0x0

    .local v5, p:I
    :goto_6c
    if-ge v5, v0, :cond_3d

    .line 191
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 192
    .local v3, info:Landroid/content/pm/PackageInfo;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "package:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 193
    if-eqz p1, :cond_8d

    .line 194
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 195
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 197
    :cond_8d
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_94} :catch_97

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 199
    .end local v0           #count:I
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v5           #p:I
    .end local v6           #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_97
    move-exception v7

    move-object v1, v7

    .line 200
    .local v1, e:Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private runListPermissionGroups()V
    .registers 8

    .prologue
    .line 269
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v4

    .line 271
    .local v4, pgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 272
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, p:I
    :goto_c
    if-ge v2, v0, :cond_37

    .line 273
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionGroupInfo;

    .line 274
    .local v3, pgi:Landroid/content/pm/PermissionGroupInfo;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "permission group:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 275
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_25

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 277
    .end local v0           #count:I
    .end local v2           #p:I
    .end local v3           #pgi:Landroid/content/pm/PermissionGroupInfo;
    .end local v4           #pgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :catch_25
    move-exception v5

    move-object v1, v5

    .line 278
    .local v1, e:Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_37
    return-void
.end method

.method private runListPermissions()V
    .registers 15

    .prologue
    const-string v0, ""

    .line 299
    const/4 v3, 0x0

    .line 300
    .local v3, labels:Z
    const/4 v2, 0x0

    .line 301
    .local v2, groups:Z
    const/4 v13, 0x0

    .line 302
    .local v13, userOnly:Z
    const/4 v4, 0x0

    .line 303
    .local v4, summary:Z
    const/4 v7, 0x0

    .line 305
    .local v7, dangerousOnly:Z
    :goto_7
    :try_start_7
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v12

    .local v12, opt:Ljava/lang/String;
    if-eqz v12, :cond_5d

    .line 306
    const-string v0, "-f"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 307
    const/4 v3, 0x1

    goto :goto_7

    .line 308
    :cond_17
    const-string v0, "-g"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 309
    const/4 v2, 0x1

    goto :goto_7

    .line 310
    :cond_21
    const-string v0, "-s"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 311
    const/4 v2, 0x1

    .line 312
    const/4 v3, 0x1

    .line 313
    const/4 v4, 0x1

    goto :goto_7

    .line 314
    :cond_2d
    const-string v0, "-u"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 315
    const/4 v13, 0x1

    goto :goto_7

    .line 316
    :cond_37
    const-string v0, "-d"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 317
    const/4 v7, 0x1

    goto :goto_7

    .line 319
    :cond_41
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 367
    .end local v12           #opt:Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-void

    .line 325
    .restart local v12       #opt:Ljava/lang/String;
    :cond_5d
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, grp:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_c8

    .line 328
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v11

    .line 330
    .local v11, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_70
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_84

    .line 331
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v10, v10, 0x1

    goto :goto_70

    .line 333
    :cond_84
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v10           #i:I
    .end local v11           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :goto_88
    if-eqz v7, :cond_cc

    .line 339
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Dangerous Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 344
    if-eqz v13, :cond_5c

    .line 345
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Normal Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b4} :catch_b5

    goto :goto_5c

    .line 363
    .end local v1           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #grp:Ljava/lang/String;
    .end local v12           #opt:Ljava/lang/String;
    :catch_b5
    move-exception v0

    move-object v8, v0

    .line 364
    .local v8, e:Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5c

    .line 335
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v1       #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #grp:Ljava/lang/String;
    .restart local v12       #opt:Ljava/lang/String;
    :cond_c8
    :try_start_c8
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 351
    :cond_cc
    if-eqz v13, :cond_e4

    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto/16 :goto_5c

    .line 358
    :cond_e4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "All Permissions:"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    const/16 v5, -0x2710

    const/16 v6, 0x2710

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/commands/pm/Pm;->doListPermissions(Ljava/util/ArrayList;ZZZII)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_fa} :catch_b5

    goto/16 :goto_5c
.end method

.method private runPath()V
    .registers 4

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, pkg:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 481
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 486
    :goto_10
    return-void

    .line 485
    :cond_11
    invoke-direct {p0, v0}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private runSetEnabledSetting(I)V
    .registers 9
    .parameter "state"

    .prologue
    const-string v6, "Error: Could not access the Package Manager.  Is the system running?"

    const-string v3, " new state: "

    .line 714
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, pkg:Ljava/lang/String;
    if-nez v2, :cond_15

    .line 716
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: no package or component specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 742
    :goto_14
    return-void

    .line 720
    :cond_15
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 721
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_61

    .line 723
    :try_start_1b
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, p1, v4}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 724
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_4d} :catch_4e

    goto :goto_14

    .line 727
    :catch_4e
    move-exception v3

    move-object v1, v3

    .line 728
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 733
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_61
    :try_start_61
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, v0, p1, v4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 734
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v0}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_97} :catch_99

    goto/16 :goto_14

    .line 737
    :catch_99
    move-exception v3

    move-object v1, v3

    .line 738
    .restart local v1       #e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 739
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_14
.end method

.method private runUninstall()V
    .registers 7

    .prologue
    .line 660
    const/4 v3, 0x0

    .line 662
    .local v3, unInstallFlags:I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, opt:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v4, "-k"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 664
    const/4 v3, 0x1

    .line 667
    :cond_10
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, pkg:Ljava/lang/String;
    if-nez v1, :cond_21

    .line 669
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 679
    :goto_20
    return-void

    .line 673
    :cond_21
    invoke-direct {p0, v1, v3}, Lcom/android/commands/pm/Pm;->deletePackage(Ljava/lang/String;I)Z

    move-result v2

    .line 674
    .local v2, result:Z
    if-eqz v2, :cond_2f

    .line 675
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Success"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 677
    :cond_2f
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Failure"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20
.end method

.method private static showUsage()V
    .registers 4

    .prologue
    const-string v3, "  -f: see their associated file."

    const-string v2, ""

    .line 826
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: pm [list|path|install|uninstall]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 827
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list packages [-f]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list permission-groups"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 829
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 830
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 831
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm path PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 832
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm install [-l] [-r] [-t] [-i INSTALLER_PACKAGE_NAME] PATH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 833
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm uninstall [-k] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 834
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm enable PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 835
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       pm disable PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 837
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The list packages command prints all packages.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 838
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -f: see their associated file."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 839
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 840
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The list permission-groups command prints all known"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 841
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "permission groups."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 842
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 843
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The list permissions command prints all known"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "permissions, optionally only those in GROUP.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 845
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -g: organize by group."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 846
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -f: print all information."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 847
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -s: short summary."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 848
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -d: only list dangerous permissions."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 849
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -u: list only the permissions users will see."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 850
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 851
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The list instrumentation command prints all instrumentations,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 852
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "or only those that target a specified package.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 853
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -f: see their associated file."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 854
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 855
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The path command prints the path to the .apk of a package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 856
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 857
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The install command installs a package to the system.  Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 858
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -l: install the package with FORWARD_LOCK."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 859
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -r: reinstall an exisiting app, keeping its data."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 860
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -t: allow test .apks to be installed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 861
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -i: specify the installer package name."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 862
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 863
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The uninstall command removes a package from the system. Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 864
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  -k: keep the data and cache directories around."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 865
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "after the package removal."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The enable and disable commands change the enabled state of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 868
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "a given package or component (written as \"package/class\")."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .registers 10
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "Error: unknown command \'"

    const-string v6, "\'"

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, validCommand:Z
    array-length v2, p1

    if-ge v2, v3, :cond_f

    .line 63
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    .line 130
    :cond_e
    :goto_e
    return-void

    .line 67
    :cond_f
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    .line 68
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_27

    .line 69
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Package Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 73
    :cond_27
    iput-object p1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    .line 74
    aget-object v0, p1, v4

    .line 75
    .local v0, op:Ljava/lang/String;
    iput v3, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    .line 77
    const-string v2, "list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 78
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runList()V

    goto :goto_e

    .line 82
    :cond_39
    const-string v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 83
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runPath()V

    goto :goto_e

    .line 87
    :cond_45
    const-string v2, "install"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 88
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstall()V

    goto :goto_e

    .line 92
    :cond_51
    const-string v2, "uninstall"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 93
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runUninstall()V

    goto :goto_e

    .line 97
    :cond_5d
    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 98
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)V

    goto :goto_e

    .line 102
    :cond_69
    const-string v2, "disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 103
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)V

    goto :goto_e

    .line 108
    :cond_75
    :try_start_75
    array-length v2, p1

    if-ne v2, v3, :cond_e7

    .line 109
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "-l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 110
    const/4 v1, 0x1

    .line 111
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)V
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_c0

    .line 123
    :cond_88
    :goto_88
    if-nez v1, :cond_e

    .line 124
    if-eqz v0, :cond_aa

    .line 125
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown command \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :cond_aa
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    goto/16 :goto_e

    .line 112
    :cond_af
    const/4 v2, 0x0

    :try_start_b0
    aget-object v2, p1, v2

    const-string v3, "-lf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 113
    const/4 v1, 0x1

    .line 114
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runListPackages(Z)V
    :try_end_bf
    .catchall {:try_start_b0 .. :try_end_bf} :catchall_c0

    goto :goto_88

    .line 123
    :catchall_c0
    move-exception v2

    if-nez v1, :cond_e6

    .line 124
    if-eqz v0, :cond_e3

    .line 125
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown command \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :cond_e3
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()V

    :cond_e6
    throw v2

    .line 116
    :cond_e7
    :try_start_e7
    array-length v2, p1

    if-ne v2, v5, :cond_88

    .line 117
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 118
    const/4 v1, 0x1

    .line 119
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_e7 .. :try_end_fc} :catchall_c0

    goto :goto_88
.end method
