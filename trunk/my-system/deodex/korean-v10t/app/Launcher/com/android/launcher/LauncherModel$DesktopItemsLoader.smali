.class Lcom/android/launcher/LauncherModel$DesktopItemsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopItemsLoader"
.end annotation


# instance fields
.field private final mId:I

.field private final mIsLaunching:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadApplications:Z

.field private final mLocaleChanged:Z

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher/LauncherModel;Lcom/android/launcher/Launcher;ZZZ)V
    .registers 7
    .parameter
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"
    .parameter "isLaunching"

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-boolean p4, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    .line 733
    iput-boolean p5, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    .line 734
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 735
    iput-boolean p3, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    .line 736
    invoke-static {}, Lcom/android/launcher/LauncherModel;->access$800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mId:I

    .line 737
    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher/LauncherModel$DesktopItemsLoader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    return v0
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .registers 51

    .prologue
    .line 748
    const-string v6, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ----> running workspace loader ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mId:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    .line 752
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher/Launcher;

    .line 755
    .local v13, launcher:Lcom/android/launcher/Launcher;
    invoke-virtual {v13}, Lcom/android/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 756
    .local v5, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v13}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    .line 758
    .local v41, manager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    move v6, v0

    if-eqz v6, :cond_4d

    .line 759
    move-object v0, v5

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/android/launcher/LauncherModel;->access$900(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 762
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/android/launcher/LauncherModel;->access$1002(Lcom/android/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/android/launcher/LauncherModel;->access$1102(Lcom/android/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7}, Lcom/android/launcher/LauncherModel;->access$1202(Lcom/android/launcher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/launcher/LauncherModel;->access$1000(Lcom/android/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v27

    .line 767
    .local v27, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/launcher/LauncherModel;->access$1100(Lcom/android/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v26

    .line 769
    .local v26, desktopAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    sget-object v6, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 773
    .local v7, c:Landroid/database/Cursor;
    :try_start_90
    const-string v6, "_id"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 774
    .local v34, idIndex:I
    const-string v6, "intent"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 775
    .local v38, intentIndex:I
    const-string v6, "title"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 776
    .local v45, titleIndex:I
    const-string v6, "iconType"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 777
    .local v9, iconTypeIndex:I
    const-string v6, "icon"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 778
    .local v12, iconIndex:I
    const-string v6, "iconPackage"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 779
    .local v10, iconPackageIndex:I
    const-string v6, "iconResource"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 780
    .local v11, iconResourceIndex:I
    const-string v6, "container"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 781
    .local v25, containerIndex:I
    const-string v6, "itemType"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 782
    .local v40, itemTypeIndex:I
    const-string v6, "appWidgetId"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 783
    .local v20, appWidgetIdIndex:I
    const-string v6, "screen"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 784
    .local v42, screenIndex:I
    const-string v6, "cellX"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 785
    .local v22, cellXIndex:I
    const-string v6, "cellY"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 786
    .local v23, cellYIndex:I
    const-string v6, "spanX"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 787
    .local v43, spanXIndex:I
    const-string v6, "spanY"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 788
    .local v44, spanYIndex:I
    const-string v6, "uri"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 789
    .local v48, uriIndex:I
    const-string v6, "displayMode"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 799
    .local v28, displayModeIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/launcher/LauncherModel;->access$1200(Lcom/android/launcher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v31

    .line 801
    .local v31, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher/FolderInfo;>;"
    :cond_ff
    :goto_ff
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v6, v0

    if-nez v6, :cond_3d1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_109
    .catchall {:try_start_90 .. :try_end_109} :catchall_1c2

    move-result v6

    if-eqz v6, :cond_3d1

    .line 803
    :try_start_10c
    move-object v0, v7

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 805
    .local v39, itemType:I
    sparse-switch v39, :sswitch_data_480

    goto :goto_ff

    .line 808
    :sswitch_117
    move-object v0, v7

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_11d
    .catchall {:try_start_10c .. :try_end_11d} :catchall_1c2
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_11d} :catch_1b2

    move-result-object v37

    .line 810
    .local v37, intentDescription:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_11f
    move-object/from16 v0, v37

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_125
    .catchall {:try_start_11f .. :try_end_125} :catchall_1c2
    .catch Ljava/net/URISyntaxException; {:try_start_11f .. :try_end_125} :catch_1c7
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_125} :catch_1b2

    move-result-object v36

    .line 815
    .local v36, intent:Landroid/content/Intent;
    if-nez v39, :cond_1ca

    .line 816
    :try_start_128
    move-object/from16 v0, v41

    move-object/from16 v1, v36

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/launcher/LauncherModel;->access$1300(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v35

    .line 822
    .local v35, info:Lcom/android/launcher/ApplicationInfo;
    :goto_131
    if-nez v35, :cond_141

    .line 823
    new-instance v35, Lcom/android/launcher/ApplicationInfo;

    .end local v35           #info:Lcom/android/launcher/ApplicationInfo;
    invoke-direct/range {v35 .. v35}, Lcom/android/launcher/ApplicationInfo;-><init>()V

    .line 824
    .restart local v35       #info:Lcom/android/launcher/ApplicationInfo;
    invoke-virtual/range {v41 .. v41}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 827
    :cond_141
    if-eqz v35, :cond_ff

    .line 828
    move-object v0, v7

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 829
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 831
    move-object v0, v7

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide v0, v14

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/launcher/ApplicationInfo;->id:J

    .line 832
    move-object v0, v7

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 833
    .local v24, container:I
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v14, v0

    move-wide v0, v14

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/launcher/ApplicationInfo;->container:J

    .line 834
    move-object v0, v7

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v35

    iput v0, v1, Lcom/android/launcher/ApplicationInfo;->screen:I

    .line 835
    move-object v0, v7

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v35

    iput v0, v1, Lcom/android/launcher/ApplicationInfo;->cellX:I

    .line 836
    move-object v0, v7

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v35

    iput v0, v1, Lcom/android/launcher/ApplicationInfo;->cellY:I

    .line 838
    packed-switch v24, :pswitch_data_49a

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v14, v0

    move-object v0, v6

    move-object/from16 v1, v31

    move-wide v2, v14

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/LauncherModel;->access$1500(Lcom/android/launcher/LauncherModel;Ljava/util/HashMap;J)Lcom/android/launcher/UserFolderInfo;

    move-result-object v30

    .line 846
    .local v30, folderInfo:Lcom/android/launcher/UserFolderInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher/UserFolderInfo;->add(Lcom/android/launcher/ApplicationInfo;)V
    :try_end_1b0
    .catchall {:try_start_128 .. :try_end_1b0} :catchall_1c2
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_1b0} :catch_1b2

    goto/16 :goto_ff

    .line 946
    .end local v24           #container:I
    .end local v30           #folderInfo:Lcom/android/launcher/UserFolderInfo;
    .end local v35           #info:Lcom/android/launcher/ApplicationInfo;
    .end local v36           #intent:Landroid/content/Intent;
    .end local v37           #intentDescription:Ljava/lang/String;
    .end local v39           #itemType:I
    :catch_1b2
    move-exception v6

    move-object/from16 v29, v6

    .line 947
    .local v29, e:Ljava/lang/Exception;
    :try_start_1b5
    const-string v6, "Launcher"

    const-string v8, "Desktop items loading interrupted:"

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c0
    .catchall {:try_start_1b5 .. :try_end_1c0} :catchall_1c2

    goto/16 :goto_ff

    .line 951
    .end local v9           #iconTypeIndex:I
    .end local v10           #iconPackageIndex:I
    .end local v11           #iconResourceIndex:I
    .end local v12           #iconIndex:I
    .end local v20           #appWidgetIdIndex:I
    .end local v22           #cellXIndex:I
    .end local v23           #cellYIndex:I
    .end local v25           #containerIndex:I
    .end local v28           #displayModeIndex:I
    .end local v29           #e:Ljava/lang/Exception;
    .end local v31           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher/FolderInfo;>;"
    .end local v34           #idIndex:I
    .end local v38           #intentIndex:I
    .end local v40           #itemTypeIndex:I
    .end local v42           #screenIndex:I
    .end local v43           #spanXIndex:I
    .end local v44           #spanYIndex:I
    .end local v45           #titleIndex:I
    .end local v48           #uriIndex:I
    :catchall_1c2
    move-exception v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v6

    .line 811
    .restart local v9       #iconTypeIndex:I
    .restart local v10       #iconPackageIndex:I
    .restart local v11       #iconResourceIndex:I
    .restart local v12       #iconIndex:I
    .restart local v20       #appWidgetIdIndex:I
    .restart local v22       #cellXIndex:I
    .restart local v23       #cellYIndex:I
    .restart local v25       #containerIndex:I
    .restart local v28       #displayModeIndex:I
    .restart local v31       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher/FolderInfo;>;"
    .restart local v34       #idIndex:I
    .restart local v37       #intentDescription:Ljava/lang/String;
    .restart local v38       #intentIndex:I
    .restart local v39       #itemType:I
    .restart local v40       #itemTypeIndex:I
    .restart local v42       #screenIndex:I
    .restart local v43       #spanXIndex:I
    .restart local v44       #spanYIndex:I
    .restart local v45       #titleIndex:I
    .restart local v48       #uriIndex:I
    :catch_1c7
    move-exception v29

    .local v29, e:Ljava/net/URISyntaxException;
    goto/16 :goto_ff

    .line 818
    .end local v29           #e:Ljava/net/URISyntaxException;
    .restart local v36       #intent:Landroid/content/Intent;
    :cond_1ca
    :try_start_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    move-object v8, v13

    invoke-static/range {v6 .. v12}, Lcom/android/launcher/LauncherModel;->access$1400(Lcom/android/launcher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/android/launcher/ApplicationInfo;

    move-result-object v35

    .restart local v35       #info:Lcom/android/launcher/ApplicationInfo;
    goto/16 :goto_131

    .line 840
    .restart local v24       #container:I
    :pswitch_1d6
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ff

    .line 853
    .end local v24           #container:I
    .end local v35           #info:Lcom/android/launcher/ApplicationInfo;
    .end local v36           #intent:Landroid/content/Intent;
    .end local v37           #intentDescription:Ljava/lang/String;
    :sswitch_1df
    move-object v0, v7

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 854
    .local v32, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/LauncherModel;->access$1500(Lcom/android/launcher/LauncherModel;Ljava/util/HashMap;J)Lcom/android/launcher/UserFolderInfo;

    move-result-object v30

    .line 856
    .restart local v30       #folderInfo:Lcom/android/launcher/UserFolderInfo;
    move-object v0, v7

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/launcher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 858
    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/launcher/UserFolderInfo;->id:J

    .line 859
    move-object v0, v7

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 860
    .restart local v24       #container:I
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v14, v0

    move-wide v0, v14

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/launcher/UserFolderInfo;->container:J

    .line 861
    move-object v0, v7

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/launcher/UserFolderInfo;->screen:I

    .line 862
    move-object v0, v7

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/launcher/UserFolderInfo;->cellX:I

    .line 863
    move-object v0, v7

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/launcher/UserFolderInfo;->cellY:I

    .line 865
    packed-switch v24, :pswitch_data_4a0

    goto/16 :goto_ff

    .line 867
    :pswitch_23f
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ff

    .line 873
    .end local v24           #container:I
    .end local v30           #folderInfo:Lcom/android/launcher/UserFolderInfo;
    .end local v32           #id:J
    :sswitch_248
    move-object v0, v7

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 874
    .restart local v32       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/LauncherModel;->access$1600(Lcom/android/launcher/LauncherModel;Ljava/util/HashMap;J)Lcom/android/launcher/LiveFolderInfo;

    move-result-object v18

    .line 876
    .local v18, liveFolderInfo:Lcom/android/launcher/LiveFolderInfo;
    move-object v0, v7

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_263
    .catchall {:try_start_1ca .. :try_end_263} :catchall_1c2
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_263} :catch_1b2

    move-result-object v37

    .line 877
    .restart local v37       #intentDescription:Ljava/lang/String;
    const/16 v36, 0x0

    .line 878
    .restart local v36       #intent:Landroid/content/Intent;
    if-eqz v37, :cond_270

    .line 880
    const/4 v6, 0x0

    :try_start_269
    move-object/from16 v0, v37

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_26f
    .catchall {:try_start_269 .. :try_end_26f} :catchall_1c2
    .catch Ljava/net/URISyntaxException; {:try_start_269 .. :try_end_26f} :catch_47d
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_26f} :catch_1b2

    move-result-object v36

    .line 886
    :cond_270
    :goto_270
    :try_start_270
    move-object v0, v7

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/launcher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 887
    move-wide/from16 v0, v32

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/launcher/LiveFolderInfo;->id:J

    .line 888
    move-object v0, v7

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 889
    .restart local v24       #container:I
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v14, v0

    move-wide v0, v14

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/launcher/LiveFolderInfo;->container:J

    .line 890
    move-object v0, v7

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher/LiveFolderInfo;->screen:I

    .line 891
    move-object v0, v7

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher/LiveFolderInfo;->cellX:I

    .line 892
    move-object v0, v7

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher/LiveFolderInfo;->cellY:I

    .line 893
    move-object v0, v7

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/launcher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 894
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/launcher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 895
    move-object v0, v7

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher/LiveFolderInfo;->displayMode:I

    move-object v14, v7

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    .line 897
    invoke-static/range {v13 .. v18}, Lcom/android/launcher/LauncherModel;->access$1700(Lcom/android/launcher/Launcher;Landroid/database/Cursor;IIILcom/android/launcher/LiveFolderInfo;)V

    .line 900
    packed-switch v24, :pswitch_data_4a6

    goto/16 :goto_ff

    .line 902
    :pswitch_2e6
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ff

    .line 907
    .end local v18           #liveFolderInfo:Lcom/android/launcher/LiveFolderInfo;
    .end local v24           #container:I
    .end local v32           #id:J
    .end local v36           #intent:Landroid/content/Intent;
    .end local v37           #intentDescription:Ljava/lang/String;
    :sswitch_2ef
    invoke-static {}, Lcom/android/launcher/Widget;->makeSearch()Lcom/android/launcher/Widget;

    move-result-object v49

    .line 909
    .local v49, widgetInfo:Lcom/android/launcher/Widget;
    move-object v0, v7

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 910
    .restart local v24       #container:I
    const/16 v6, -0x64

    move/from16 v0, v24

    move v1, v6

    if-eq v0, v1, :cond_30a

    .line 911
    const-string v6, "Launcher"

    const-string v8, "Widget found where container != CONTAINER_DESKTOP  ignoring!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    .line 916
    :cond_30a
    move-object v0, v7

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide v0, v14

    move-object/from16 v2, v49

    iput-wide v0, v2, Lcom/android/launcher/Widget;->id:J

    .line 917
    move-object v0, v7

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/launcher/Widget;->screen:I

    .line 918
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v14, v0

    move-wide v0, v14

    move-object/from16 v2, v49

    iput-wide v0, v2, Lcom/android/launcher/Widget;->container:J

    .line 919
    move-object v0, v7

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/launcher/Widget;->cellX:I

    .line 920
    move-object v0, v7

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v49

    iput v0, v1, Lcom/android/launcher/Widget;->cellY:I

    .line 922
    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ff

    .line 926
    .end local v24           #container:I
    .end local v49           #widgetInfo:Lcom/android/launcher/Widget;
    :sswitch_34c
    move-object v0, v7

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 927
    .local v19, appWidgetId:I
    new-instance v21, Lcom/android/launcher/LauncherAppWidgetInfo;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 928
    .local v21, appWidgetInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    move-object v0, v7

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-wide v0, v14

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher/LauncherAppWidgetInfo;->id:J

    .line 929
    move-object v0, v7

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher/LauncherAppWidgetInfo;->screen:I

    .line 930
    move-object v0, v7

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher/LauncherAppWidgetInfo;->cellX:I

    .line 931
    move-object v0, v7

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher/LauncherAppWidgetInfo;->cellY:I

    .line 932
    move-object v0, v7

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 933
    move-object v0, v7

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 935
    move-object v0, v7

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 936
    .restart local v24       #container:I
    const/16 v6, -0x64

    move/from16 v0, v24

    move v1, v6

    if-eq v0, v1, :cond_3bb

    .line 937
    const-string v6, "Launcher"

    const-string v8, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    .line 941
    :cond_3bb
    move-object v0, v7

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v14, v6

    move-wide v0, v14

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher/LauncherAppWidgetInfo;->container:J

    .line 943
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3cf
    .catchall {:try_start_270 .. :try_end_3cf} :catchall_1c2
    .catch Ljava/lang/Exception; {:try_start_270 .. :try_end_3cf} :catch_1b2

    goto/16 :goto_ff

    .line 951
    .end local v19           #appWidgetId:I
    .end local v21           #appWidgetInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    .end local v24           #container:I
    .end local v39           #itemType:I
    :cond_3d1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 954
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v6, v0

    if-nez v6, :cond_475

    .line 956
    const-string v6, "HomeLoaders"

    const-string v7, "  --> done loading workspace"

    .end local v7           #c:Landroid/database/Cursor;
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v6, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ----> worskpace items="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v6, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ----> worskpace widgets="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v46, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 965
    .local v46, uiDesktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    new-instance v47, Ljava/util/ArrayList;

    move-object/from16 v0, v47

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 968
    .local v47, uiDesktopWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v6, v0

    if-nez v6, :cond_44a

    .line 969
    const-string v6, "HomeLoaders"

    const-string v7, "  ----> items cloned, ready to refresh UI"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v6, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, v46

    move-object/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;-><init>(Lcom/android/launcher/LauncherModel$DesktopItemsLoader;Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v13, v6}, Lcom/android/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 978
    :cond_44a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    move v6, v0

    if-eqz v6, :cond_465

    .line 980
    const-string v6, "HomeLoaders"

    const-string v7, "  ----> loading applications from workspace loader"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    move v7, v0

    invoke-static {v6, v13, v7}, Lcom/android/launcher/LauncherModel;->access$1800(Lcom/android/launcher/LauncherModel;Lcom/android/launcher/Launcher;Z)V

    .line 985
    :cond_465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/launcher/LauncherModel;->access$1902(Lcom/android/launcher/LauncherModel;Z)Z

    .line 989
    .end local v46           #uiDesktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    .end local v47           #uiDesktopWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    :goto_46e
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    .line 990
    return-void

    .line 987
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_475
    const-string v6, "HomeLoaders"

    const-string v7, "  ----> worskpace loader was stopped"

    .end local v7           #c:Landroid/database/Cursor;
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46e

    .line 881
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v18       #liveFolderInfo:Lcom/android/launcher/LiveFolderInfo;
    .restart local v32       #id:J
    .restart local v36       #intent:Landroid/content/Intent;
    .restart local v37       #intentDescription:Ljava/lang/String;
    .restart local v39       #itemType:I
    :catch_47d
    move-exception v6

    goto/16 :goto_270

    .line 805
    :sswitch_data_480
    .sparse-switch
        0x0 -> :sswitch_117
        0x1 -> :sswitch_117
        0x2 -> :sswitch_1df
        0x3 -> :sswitch_248
        0x4 -> :sswitch_34c
        0x3e9 -> :sswitch_2ef
    .end sparse-switch

    .line 838
    :pswitch_data_49a
    .packed-switch -0x64
        :pswitch_1d6
    .end packed-switch

    .line 865
    :pswitch_data_4a0
    .packed-switch -0x64
        :pswitch_23f
    .end packed-switch

    .line 900
    :pswitch_data_4a6
    .packed-switch -0x64
        :pswitch_2e6
    .end packed-switch
.end method

.method stop()V
    .registers 2

    .prologue
    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    .line 741
    return-void
.end method
