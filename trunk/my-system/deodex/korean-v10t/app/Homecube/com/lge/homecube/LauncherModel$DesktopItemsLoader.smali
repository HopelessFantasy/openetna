.class Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopItemsLoader"
.end annotation


# instance fields
.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/homecube/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadApplications:Z

.field private final mLocaleChanged:Z

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/lge/homecube/LauncherModel;


# direct methods
.method constructor <init>(Lcom/lge/homecube/LauncherModel;Lcom/lge/homecube/Launcher;ZZ)V
    .registers 6
    .parameter
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-boolean p4, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    .line 693
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 694
    iput-boolean p3, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    .line 695
    return-void
.end method

.method static synthetic access$600(Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    return v0
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .registers 48

    .prologue
    .line 706
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mRunning:Z

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/homecube/Launcher;

    .line 709
    .local v12, launcher:Lcom/lge/homecube/Launcher;
    invoke-virtual {v12}, Lcom/lge/homecube/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 710
    .local v4, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v12}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    .line 712
    .local v40, manager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    move v5, v0

    if-eqz v5, :cond_26

    .line 713
    move-object v0, v4

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/lge/homecube/LauncherModel;->access$700(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 716
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/lge/homecube/LauncherModel;->access$802(Lcom/lge/homecube/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/lge/homecube/LauncherModel;->access$902(Lcom/lge/homecube/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5, v6}, Lcom/lge/homecube/LauncherModel;->access$1002(Lcom/lge/homecube/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    invoke-static {v5}, Lcom/lge/homecube/LauncherModel;->access$800(Lcom/lge/homecube/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v26

    .line 721
    .local v26, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    invoke-static {v5}, Lcom/lge/homecube/LauncherModel;->access$900(Lcom/lge/homecube/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v25

    .line 723
    .local v25, desktopAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/LauncherAppWidgetInfo;>;"
    sget-object v5, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 727
    .local v6, c:Landroid/database/Cursor;
    :try_start_69
    const-string v5, "_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 728
    .local v33, idIndex:I
    const-string v5, "intent"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 729
    .local v37, intentIndex:I
    const-string v5, "title"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 730
    .local v44, titleIndex:I
    const-string v5, "iconType"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 731
    .local v8, iconTypeIndex:I
    const-string v5, "icon"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 732
    .local v11, iconIndex:I
    const-string v5, "iconPackage"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 733
    .local v9, iconPackageIndex:I
    const-string v5, "iconResource"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 734
    .local v10, iconResourceIndex:I
    const-string v5, "container"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 735
    .local v24, containerIndex:I
    const-string v5, "itemType"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 736
    .local v39, itemTypeIndex:I
    const-string v5, "appWidgetId"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 737
    .local v19, appWidgetIdIndex:I
    const-string v5, "screen"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 738
    .local v41, screenIndex:I
    const-string v5, "cellX"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 739
    .local v21, cellXIndex:I
    const-string v5, "cellY"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 740
    .local v22, cellYIndex:I
    const-string v5, "spanX"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 741
    .local v42, spanXIndex:I
    const-string v5, "spanY"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 742
    .local v43, spanYIndex:I
    const-string v5, "uri"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 743
    .local v45, uriIndex:I
    const-string v5, "displayMode"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 753
    .local v27, displayModeIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    invoke-static {v5}, Lcom/lge/homecube/LauncherModel;->access$1000(Lcom/lge/homecube/LauncherModel;)Ljava/util/HashMap;

    move-result-object v30

    .line 755
    .local v30, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/homecube/FolderInfo;>;"
    :cond_d8
    :goto_d8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_3a0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e2
    .catchall {:try_start_69 .. :try_end_e2} :catchall_196

    move-result v5

    if-eqz v5, :cond_3a0

    .line 757
    :try_start_e5
    move-object v0, v6

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 759
    .local v38, itemType:I
    sparse-switch v38, :sswitch_data_3e0

    goto :goto_d8

    .line 762
    :sswitch_f0
    move-object v0, v6

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f6
    .catchall {:try_start_e5 .. :try_end_f6} :catchall_196
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f6} :catch_186

    move-result-object v36

    .line 764
    .local v36, intentDescription:Ljava/lang/String;
    :try_start_f7
    invoke-static/range {v36 .. v36}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_196
    .catch Ljava/net/URISyntaxException; {:try_start_f7 .. :try_end_fa} :catch_19b
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_186

    move-result-object v35

    .line 769
    .local v35, intent:Landroid/content/Intent;
    if-nez v38, :cond_19e

    .line 770
    :try_start_fd
    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/lge/homecube/LauncherModel;->access$1100(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v34

    .line 776
    .local v34, info:Lcom/lge/homecube/ApplicationInfo;
    :goto_105
    if-nez v34, :cond_115

    .line 777
    new-instance v34, Lcom/lge/homecube/ApplicationInfo;

    .end local v34           #info:Lcom/lge/homecube/ApplicationInfo;
    invoke-direct/range {v34 .. v34}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 778
    .restart local v34       #info:Lcom/lge/homecube/ApplicationInfo;
    invoke-virtual/range {v40 .. v40}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 781
    :cond_115
    if-eqz v34, :cond_d8

    .line 782
    move-object v0, v6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 783
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 785
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/lge/homecube/ApplicationInfo;->id:J

    .line 786
    move-object v0, v6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 787
    .local v23, container:I
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/lge/homecube/ApplicationInfo;->container:J

    .line 788
    move-object v0, v6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->screen:I

    .line 789
    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->cellX:I

    .line 790
    move-object v0, v6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->cellY:I

    .line 792
    packed-switch v23, :pswitch_data_3fa

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v13, v0

    move-object v0, v5

    move-object/from16 v1, v30

    move-wide v2, v13

    invoke-static {v0, v1, v2, v3}, Lcom/lge/homecube/LauncherModel;->access$1300(Lcom/lge/homecube/LauncherModel;Ljava/util/HashMap;J)Lcom/lge/homecube/UserFolderInfo;

    move-result-object v29

    .line 800
    .local v29, folderInfo:Lcom/lge/homecube/UserFolderInfo;
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/lge/homecube/UserFolderInfo;->add(Lcom/lge/homecube/ApplicationInfo;)V
    :try_end_184
    .catchall {:try_start_fd .. :try_end_184} :catchall_196
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_184} :catch_186

    goto/16 :goto_d8

    .line 900
    .end local v23           #container:I
    .end local v29           #folderInfo:Lcom/lge/homecube/UserFolderInfo;
    .end local v34           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #intentDescription:Ljava/lang/String;
    .end local v38           #itemType:I
    :catch_186
    move-exception v5

    move-object/from16 v28, v5

    .line 901
    .local v28, e:Ljava/lang/Exception;
    :try_start_189
    const-string v5, "CubeHome"

    const-string v7, "Desktop items loading interrupted:"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_194
    .catchall {:try_start_189 .. :try_end_194} :catchall_196

    goto/16 :goto_d8

    .line 905
    .end local v8           #iconTypeIndex:I
    .end local v9           #iconPackageIndex:I
    .end local v10           #iconResourceIndex:I
    .end local v11           #iconIndex:I
    .end local v19           #appWidgetIdIndex:I
    .end local v21           #cellXIndex:I
    .end local v22           #cellYIndex:I
    .end local v24           #containerIndex:I
    .end local v27           #displayModeIndex:I
    .end local v28           #e:Ljava/lang/Exception;
    .end local v30           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/homecube/FolderInfo;>;"
    .end local v33           #idIndex:I
    .end local v37           #intentIndex:I
    .end local v39           #itemTypeIndex:I
    .end local v41           #screenIndex:I
    .end local v42           #spanXIndex:I
    .end local v43           #spanYIndex:I
    .end local v44           #titleIndex:I
    .end local v45           #uriIndex:I
    :catchall_196
    move-exception v5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v5

    .line 765
    .restart local v8       #iconTypeIndex:I
    .restart local v9       #iconPackageIndex:I
    .restart local v10       #iconResourceIndex:I
    .restart local v11       #iconIndex:I
    .restart local v19       #appWidgetIdIndex:I
    .restart local v21       #cellXIndex:I
    .restart local v22       #cellYIndex:I
    .restart local v24       #containerIndex:I
    .restart local v27       #displayModeIndex:I
    .restart local v30       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/homecube/FolderInfo;>;"
    .restart local v33       #idIndex:I
    .restart local v36       #intentDescription:Ljava/lang/String;
    .restart local v37       #intentIndex:I
    .restart local v38       #itemType:I
    .restart local v39       #itemTypeIndex:I
    .restart local v41       #screenIndex:I
    .restart local v42       #spanXIndex:I
    .restart local v43       #spanYIndex:I
    .restart local v44       #titleIndex:I
    .restart local v45       #uriIndex:I
    :catch_19b
    move-exception v28

    .local v28, e:Ljava/net/URISyntaxException;
    goto/16 :goto_d8

    .line 772
    .end local v28           #e:Ljava/net/URISyntaxException;
    .restart local v35       #intent:Landroid/content/Intent;
    :cond_19e
    :try_start_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    move-object v7, v12

    invoke-static/range {v5 .. v11}, Lcom/lge/homecube/LauncherModel;->access$1200(Lcom/lge/homecube/LauncherModel;Landroid/database/Cursor;Lcom/lge/homecube/Launcher;IIII)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v34

    .restart local v34       #info:Lcom/lge/homecube/ApplicationInfo;
    goto/16 :goto_105

    .line 794
    .restart local v23       #container:I
    :pswitch_1aa
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    .line 807
    .end local v23           #container:I
    .end local v34           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #intentDescription:Ljava/lang/String;
    :sswitch_1b3
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 808
    .local v31, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v30

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Lcom/lge/homecube/LauncherModel;->access$1300(Lcom/lge/homecube/LauncherModel;Ljava/util/HashMap;J)Lcom/lge/homecube/UserFolderInfo;

    move-result-object v29

    .line 810
    .restart local v29       #folderInfo:Lcom/lge/homecube/UserFolderInfo;
    move-object v0, v6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lge/homecube/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 812
    move-wide/from16 v0, v31

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/lge/homecube/UserFolderInfo;->id:J

    .line 813
    move-object v0, v6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 814
    .restart local v23       #container:I
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/lge/homecube/UserFolderInfo;->container:J

    .line 815
    move-object v0, v6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Lcom/lge/homecube/UserFolderInfo;->screen:I

    .line 816
    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Lcom/lge/homecube/UserFolderInfo;->cellX:I

    .line 817
    move-object v0, v6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Lcom/lge/homecube/UserFolderInfo;->cellY:I

    .line 819
    packed-switch v23, :pswitch_data_400

    goto/16 :goto_d8

    .line 821
    :pswitch_213
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    .line 827
    .end local v23           #container:I
    .end local v29           #folderInfo:Lcom/lge/homecube/UserFolderInfo;
    .end local v31           #id:J
    :sswitch_21c
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 828
    .restart local v31       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v30

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Lcom/lge/homecube/LauncherModel;->access$1400(Lcom/lge/homecube/LauncherModel;Ljava/util/HashMap;J)Lcom/lge/homecube/LiveFolderInfo;

    move-result-object v17

    .line 830
    .local v17, liveFolderInfo:Lcom/lge/homecube/LiveFolderInfo;
    move-object v0, v6

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_237
    .catchall {:try_start_19e .. :try_end_237} :catchall_196
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_237} :catch_186

    move-result-object v36

    .line 831
    .restart local v36       #intentDescription:Ljava/lang/String;
    const/16 v35, 0x0

    .line 832
    .restart local v35       #intent:Landroid/content/Intent;
    if-eqz v36, :cond_240

    .line 834
    :try_start_23c
    invoke-static/range {v36 .. v36}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_23f
    .catchall {:try_start_23c .. :try_end_23f} :catchall_196
    .catch Ljava/net/URISyntaxException; {:try_start_23c .. :try_end_23f} :catch_3dc
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_23f} :catch_186

    move-result-object v35

    .line 840
    :cond_240
    :goto_240
    :try_start_240
    move-object v0, v6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lge/homecube/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 841
    move-wide/from16 v0, v31

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/lge/homecube/LiveFolderInfo;->id:J

    .line 842
    move-object v0, v6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 843
    .restart local v23       #container:I
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/lge/homecube/LiveFolderInfo;->container:J

    .line 844
    move-object v0, v6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lge/homecube/LiveFolderInfo;->screen:I

    .line 845
    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lge/homecube/LiveFolderInfo;->cellX:I

    .line 846
    move-object v0, v6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lge/homecube/LiveFolderInfo;->cellY:I

    .line 847
    move-object v0, v6

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lge/homecube/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 848
    move-object/from16 v0, v35

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lge/homecube/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 849
    move-object v0, v6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lge/homecube/LiveFolderInfo;->displayMode:I

    move-object v13, v6

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 851
    invoke-static/range {v12 .. v17}, Lcom/lge/homecube/LauncherModel;->access$1500(Lcom/lge/homecube/Launcher;Landroid/database/Cursor;IIILcom/lge/homecube/LiveFolderInfo;)V

    .line 854
    packed-switch v23, :pswitch_data_406

    goto/16 :goto_d8

    .line 856
    :pswitch_2b5
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    .line 861
    .end local v17           #liveFolderInfo:Lcom/lge/homecube/LiveFolderInfo;
    .end local v23           #container:I
    .end local v31           #id:J
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #intentDescription:Ljava/lang/String;
    :sswitch_2be
    invoke-static {}, Lcom/lge/homecube/Widget;->makeSearch()Lcom/lge/homecube/Widget;

    move-result-object v46

    .line 863
    .local v46, widgetInfo:Lcom/lge/homecube/Widget;
    move-object v0, v6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 864
    .restart local v23       #container:I
    const/16 v5, -0x64

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_2d9

    .line 865
    const-string v5, "CubeHome"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP  ignoring!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 870
    :cond_2d9
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/lge/homecube/Widget;->id:J

    .line 871
    move-object v0, v6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v46

    iput v0, v1, Lcom/lge/homecube/Widget;->screen:I

    .line 872
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/lge/homecube/Widget;->container:J

    .line 873
    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v46

    iput v0, v1, Lcom/lge/homecube/Widget;->cellX:I

    .line 874
    move-object v0, v6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v46

    iput v0, v1, Lcom/lge/homecube/Widget;->cellY:I

    .line 876
    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    .line 880
    .end local v23           #container:I
    .end local v46           #widgetInfo:Lcom/lge/homecube/Widget;
    :sswitch_31b
    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 881
    .local v18, appWidgetId:I
    new-instance v20, Lcom/lge/homecube/LauncherAppWidgetInfo;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/homecube/LauncherAppWidgetInfo;-><init>(I)V

    .line 882
    .local v20, appWidgetInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/lge/homecube/LauncherAppWidgetInfo;->id:J

    .line 883
    move-object v0, v6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/homecube/LauncherAppWidgetInfo;->screen:I

    .line 884
    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/homecube/LauncherAppWidgetInfo;->cellX:I

    .line 885
    move-object v0, v6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/homecube/LauncherAppWidgetInfo;->cellY:I

    .line 886
    move-object v0, v6

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanX:I

    .line 887
    move-object v0, v6

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanY:I

    .line 889
    move-object v0, v6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 890
    .restart local v23       #container:I
    const/16 v5, -0x64

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_38a

    .line 891
    const-string v5, "CubeHome"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 895
    :cond_38a
    move-object v0, v6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v13, v5

    move-wide v0, v13

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/lge/homecube/LauncherAppWidgetInfo;->container:J

    .line 897
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39e
    .catchall {:try_start_240 .. :try_end_39e} :catchall_196
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_39e} :catch_186

    goto/16 :goto_d8

    .line 905
    .end local v18           #appWidgetId:I
    .end local v20           #appWidgetInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    .end local v23           #container:I
    .end local v38           #itemType:I
    :cond_3a0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_3c5

    .line 909
    new-instance v5, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader$1;-><init>(Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v12, v5}, Lcom/lge/homecube/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    move v5, v0

    if-eqz v5, :cond_3c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    invoke-static {v5, v12}, Lcom/lge/homecube/LauncherModel;->access$1600(Lcom/lge/homecube/LauncherModel;Lcom/lge/homecube/Launcher;)V

    .line 917
    :cond_3c5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_3d5

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/lge/homecube/LauncherModel;->access$1702(Lcom/lge/homecube/LauncherModel;Z)Z

    .line 920
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3d5
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mRunning:Z

    .line 921
    return-void

    .line 835
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v17       #liveFolderInfo:Lcom/lge/homecube/LiveFolderInfo;
    .restart local v31       #id:J
    .restart local v35       #intent:Landroid/content/Intent;
    .restart local v36       #intentDescription:Ljava/lang/String;
    .restart local v38       #itemType:I
    :catch_3dc
    move-exception v5

    goto/16 :goto_240

    .line 759
    nop

    :sswitch_data_3e0
    .sparse-switch
        0x0 -> :sswitch_f0
        0x1 -> :sswitch_f0
        0x2 -> :sswitch_1b3
        0x3 -> :sswitch_21c
        0x4 -> :sswitch_31b
        0x3e9 -> :sswitch_2be
    .end sparse-switch

    .line 792
    :pswitch_data_3fa
    .packed-switch -0x64
        :pswitch_1aa
    .end packed-switch

    .line 819
    :pswitch_data_400
    .packed-switch -0x64
        :pswitch_213
    .end packed-switch

    .line 854
    :pswitch_data_406
    .packed-switch -0x64
        :pswitch_2b5
    .end packed-switch
.end method

.method stop()V
    .registers 2

    .prologue
    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->mStopped:Z

    .line 699
    return-void
.end method
