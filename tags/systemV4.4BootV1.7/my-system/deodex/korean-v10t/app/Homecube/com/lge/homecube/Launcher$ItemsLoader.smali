.class Lcom/lge/homecube/Launcher$ItemsLoader;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemsLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 3938
    iput-object p1, p0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3938
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$ItemsLoader;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 48

    .prologue
    .line 3940
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/lge/homecube/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3941
    .local v3, contentResolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    .line 3943
    .local v37, manager:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3945
    .local v9, Values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    .line 3946
    .local v39, operatorItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v15, v4, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    .line 3947
    .local v15, communicationItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    .line 3948
    .local v38, multimediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    .line 3949
    .local v46, utilitiesItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 3950
    .local v22, googleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 3951
    .local v19, downloadsItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 3952
    .local v23, group1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 3953
    .local v24, group2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 3954
    .local v25, group3Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .line 3955
    .local v26, group4Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 3956
    .local v27, group5Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 3958
    .local v28, group6Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    const-string v4, "CubeHome"

    const-string v5, "Load Item from DB!!   :hwang072"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    sget-object v4, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_21f

    move-result-object v12

    .line 3964
    .local v12, c:Landroid/database/Cursor;
    :try_start_9e
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 3965
    .local v31, idIndex:I
    const-string v4, "intent"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 3966
    .local v35, intentIndex:I
    const-string v4, "title"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 3967
    .local v45, titleIndex:I
    const-string v4, "container"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 3968
    .local v17, containerIndex:I
    const-string v4, "position"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 3969
    .local v42, positionIndex:I
    const-string v4, "group_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 3970
    .local v29, group_idIndex:I
    const-string v4, "original_position"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 3971
    .local v41, origin_positionIndex:I
    const-string v4, "original_group_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 3980
    .local v40, origin_group_idIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    if-eqz v4, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    if-nez v4, :cond_146

    .line 3985
    :cond_13a
    const-string v4, "ItemsLoader"

    const-string v5, "null!!! ItemsLoader 2009_10_25"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catchall {:try_start_9e .. :try_end_141} :catchall_21a

    .line 4228
    :try_start_141
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_21f

    .line 4234
    :goto_144
    monitor-exit p0

    return-void

    .line 3989
    :cond_146
    :try_start_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-static {v4}, Lcom/lge/homecube/Launcher;->access$3500(Lcom/lge/homecube/Launcher;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4011
    new-instance v36, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    move-object/from16 v0, v36

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4012
    .local v36, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v36

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4014
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 4018
    .local v10, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4019
    .local v11, appsmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_1f1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_223

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 4021
    .local v18, cur_info:Landroid/content/pm/ResolveInfo;
    new-instance v14, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    .local v14, cn:Landroid/content/ComponentName;
    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_219
    .catchall {:try_start_146 .. :try_end_219} :catchall_21a

    goto :goto_1f1

    .line 4228
    .end local v10           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #appsmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;>;"
    .end local v14           #cn:Landroid/content/ComponentName;
    .end local v17           #containerIndex:I
    .end local v18           #cur_info:Landroid/content/pm/ResolveInfo;
    .end local v29           #group_idIndex:I
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #idIndex:I
    .end local v35           #intentIndex:I
    .end local v36           #mainIntent:Landroid/content/Intent;
    .end local v40           #origin_group_idIndex:I
    .end local v41           #origin_positionIndex:I
    .end local v42           #positionIndex:I
    .end local v45           #titleIndex:I
    :catchall_21a
    move-exception v4

    :try_start_21b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_21f
    .catchall {:try_start_21b .. :try_end_21f} :catchall_21f

    .line 3940
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    .end local v9           #Values:Landroid/content/ContentValues;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #communicationItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v19           #downloadsItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v22           #googleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v23           #group1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v24           #group2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v25           #group3Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v26           #group4Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v27           #group5Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v28           #group6Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v37           #manager:Landroid/content/pm/PackageManager;
    .end local v38           #multimediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v39           #operatorItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v46           #utilitiesItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    :catchall_21f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 4031
    .restart local v3       #contentResolver:Landroid/content/ContentResolver;
    .restart local v9       #Values:Landroid/content/ContentValues;
    .restart local v10       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11       #appsmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;>;"
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v15       #communicationItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v17       #containerIndex:I
    .restart local v19       #downloadsItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v22       #googleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v23       #group1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v24       #group2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v25       #group3Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v26       #group4Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v27       #group5Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v28       #group6Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v29       #group_idIndex:I
    .restart local v30       #i$:Ljava/util/Iterator;
    .restart local v31       #idIndex:I
    .local v34, intentDescription:Ljava/lang/String;
    .restart local v35       #intentIndex:I
    .restart local v36       #mainIntent:Landroid/content/Intent;
    .restart local v37       #manager:Landroid/content/pm/PackageManager;
    .restart local v38       #multimediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v39       #operatorItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v40       #origin_group_idIndex:I
    .restart local v41       #origin_positionIndex:I
    .restart local v42       #positionIndex:I
    .restart local v45       #titleIndex:I
    .restart local v46       #utilitiesItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    :catch_222
    move-exception v21

    .line 4025
    .end local v34           #intentDescription:Ljava/lang/String;
    :cond_223
    :goto_223
    :try_start_223
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_226
    .catchall {:try_start_223 .. :try_end_226} :catchall_21a

    move-result v4

    if-eqz v4, :cond_5de

    .line 4027
    :try_start_229
    move-object v0, v12

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_22f
    .catchall {:try_start_229 .. :try_end_22f} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_22f} :catch_358

    move-result-object v34

    .line 4030
    .restart local v34       #intentDescription:Ljava/lang/String;
    :try_start_230
    invoke-static/range {v34 .. v34}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_233
    .catchall {:try_start_230 .. :try_end_233} :catchall_21a
    .catch Ljava/net/URISyntaxException; {:try_start_230 .. :try_end_233} :catch_222
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_233} :catch_358

    move-result-object v33

    .line 4035
    .local v33, intent:Landroid/content/Intent;
    :try_start_234
    new-instance v32, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct/range {v32 .. v32}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 4042
    .local v32, info:Lcom/lge/homecube/ApplicationInfo;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->itemType:I

    .line 4043
    move-object v0, v12

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 4044
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 4045
    move-object v0, v12

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/lge/homecube/ApplicationInfo;->id:J

    .line 4047
    move-object v0, v12

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 4048
    move-object v0, v12

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .line 4049
    move-object v0, v12

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->origin_position:I

    .line 4050
    move-object v0, v12

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->origin_group_id:I

    .line 4053
    invoke-virtual/range {v33 .. v33}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 4054
    .local v16, component:Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 4061
    .local v13, classname:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/ResolveInfo;

    .line 4063
    .local v44, tempInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v44, :cond_33f

    .line 4065
    const/16 v20, 0x0

    .line 4068
    .local v20, drawableIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/lge/homecube/Launcher;->getThemeState()Z

    move-result v4

    if-eqz v4, :cond_50d

    .line 4070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    .line 4072
    .local v43, resources:Landroid/content/res/Resources;
    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_368

    .line 4073
    const v4, 0x7f020009

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 4146
    .end local v43           #resources:Landroid/content/res/Resources;
    :goto_2c8
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 4147
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/lge/homecube/Launcher;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/homecube/AllAppsUtilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lcom/lge/homecube/FastBitmapDrawable;

    invoke-virtual {v4}, Lcom/lge/homecube/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v5

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 4149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-static {v4}, Lcom/lge/homecube/Launcher;->access$3600(Lcom/lge/homecube/Launcher;)Z

    move-result v4

    if-eqz v4, :cond_33f

    .line 4151
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33f

    .line 4152
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 4153
    const-string v4, "title"

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    move-object v0, v12

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4169
    .end local v20           #drawableIcon:Landroid/graphics/drawable/Drawable;
    :cond_33f
    move-object/from16 v0, v32

    iget v0, v0, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    move v4, v0

    packed-switch v4, :pswitch_data_5fc

    .line 4222
    :goto_347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-static {v4}, Lcom/lge/homecube/Launcher;->access$3500(Lcom/lge/homecube/Launcher;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_356
    .catchall {:try_start_234 .. :try_end_356} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_356} :catch_358

    goto/16 :goto_223

    .line 4224
    .end local v13           #classname:Ljava/lang/String;
    .end local v16           #component:Landroid/content/ComponentName;
    .end local v32           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v33           #intent:Landroid/content/Intent;
    .end local v34           #intentDescription:Ljava/lang/String;
    .end local v44           #tempInfo:Landroid/content/pm/ResolveInfo;
    :catch_358
    move-exception v4

    move-object/from16 v21, v4

    .line 4225
    .local v21, e:Ljava/lang/Exception;
    :try_start_35b
    const-string v4, "AllApps"

    const-string v5, "Desktop items loading interrupted:"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_366
    .catchall {:try_start_35b .. :try_end_366} :catchall_21a

    goto/16 :goto_223

    .line 4075
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v13       #classname:Ljava/lang/String;
    .restart local v16       #component:Landroid/content/ComponentName;
    .restart local v20       #drawableIcon:Landroid/graphics/drawable/Drawable;
    .restart local v32       #info:Lcom/lge/homecube/ApplicationInfo;
    .restart local v33       #intent:Landroid/content/Intent;
    .restart local v34       #intentDescription:Ljava/lang/String;
    .restart local v43       #resources:Landroid/content/res/Resources;
    .restart local v44       #tempInfo:Landroid/content/pm/ResolveInfo;
    :cond_368
    :try_start_368
    const-string v4, "com.android.contacts.DialtactsContactsEntryActivity"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37c

    .line 4076
    const v4, 0x7f020012

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4078
    :cond_37c
    const-string v4, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_390

    .line 4079
    const v4, 0x7f020016

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4081
    :cond_390
    const-string v4, "com.android.email.activity.Welcome"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a4

    .line 4082
    const v4, 0x7f020017

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4084
    :cond_3a4
    const-string v4, "com.android.im.plugin.orange.LandingPage"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3bc

    const-string v4, "com.android.im.app.LandingPage"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3bc

    const-string v4, " com.android.im.plugin.tim.LandingPage"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c8

    .line 4087
    :cond_3bc
    const v4, 0x7f02003b

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4089
    :cond_3c8
    const-string v4, "com.android.mms.ui.ConversationList"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3dc

    .line 4090
    const v4, 0x7f020049

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4092
    :cond_3dc
    const-string v4, "com.good.android.ui.LaunchActivity"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f0

    .line 4093
    const v4, 0x7f020068

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4095
    :cond_3f0
    const-string v4, "com.lge.sns.account.ui.AccountListView"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_404

    .line 4096
    const v4, 0x7f020046

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4098
    :cond_404
    const-string v4, "com.arcsoft.camera.ArcCameraApp"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_418

    .line 4099
    const v4, 0x7f020010

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4101
    :cond_418
    const-string v4, "lge.android.fmradio.FmRadioView"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42c

    .line 4102
    const v4, 0x7f020019

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4104
    :cond_42c
    const-string v4, "arcsoft.android.arcmediagallery.ArcPictureGallery"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_440

    .line 4105
    const v4, 0x7f020001

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4107
    :cond_440
    const-string v4, "arcsoft.android.arcmmp.MainUI"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_454

    .line 4108
    const v4, 0x7f020047

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4110
    :cond_454
    const-string v4, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_468

    .line 4111
    const v4, 0x7f02004b

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4113
    :cond_468
    const-string v4, "arcsoft.android.videoeditor.MainUI"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47c

    .line 4114
    const v4, 0x7f020084

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4116
    :cond_47c
    const-string v4, "com.android.alarmclock.AlarmClock"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48f

    .line 4117
    const/high16 v4, 0x7f02

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4119
    :cond_48f
    const-string v4, "com.android.calculator2.Calculator"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a3

    .line 4120
    const v4, 0x7f02000e

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4122
    :cond_4a3
    const-string v4, "com.lge.favoritecontacts.FavoriteContacts"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b7

    .line 4123
    const v4, 0x7f020018

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4125
    :cond_4b7
    const-string v4, "com.lge.homeselector.HomeSelectorActivity"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4cb

    .line 4126
    const v4, 0x7f020022

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4128
    :cond_4cb
    const-string v4, "com.android.soundrecorder.SRListActivity"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4df

    .line 4129
    const v4, 0x7f020086

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4131
    :cond_4df
    const-string v4, "com.android.settings.Settings"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f3

    .line 4132
    const v4, 0x7f02006e

    move-object/from16 v0, v43

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4135
    :cond_4f3
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 4136
    if-nez v20, :cond_503

    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4137
    :cond_503
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4141
    .end local v43           #resources:Landroid/content/res/Resources;
    :cond_50d
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 4142
    if-nez v20, :cond_51d

    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4143
    :cond_51d
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_2c8

    .line 4171
    .end local v20           #drawableIcon:Landroid/graphics/drawable/Drawable;
    :pswitch_527
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4172
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4175
    :pswitch_536
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4176
    move-object v0, v15

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4179
    :pswitch_544
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4180
    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4183
    :pswitch_553
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4184
    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4187
    :pswitch_562
    const/4 v4, 0x4

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4188
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4191
    :pswitch_571
    const/4 v4, 0x5

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4192
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4195
    :pswitch_580
    const/4 v4, 0x6

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4196
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4199
    :pswitch_58f
    const/4 v4, 0x7

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4200
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4203
    :pswitch_59e
    const/16 v4, 0x8

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4204
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4207
    :pswitch_5ae
    const/16 v4, 0x9

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4208
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4211
    :pswitch_5be
    const/16 v4, 0xa

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4212
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_347

    .line 4215
    :pswitch_5ce
    const/16 v4, 0xb

    move v0, v4

    move-object/from16 v1, v32

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 4216
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5dc
    .catchall {:try_start_368 .. :try_end_5dc} :catchall_21a
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_5dc} :catch_358

    goto/16 :goto_347

    .line 4228
    .end local v13           #classname:Ljava/lang/String;
    .end local v16           #component:Landroid/content/ComponentName;
    .end local v32           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v33           #intent:Landroid/content/Intent;
    .end local v34           #intentDescription:Ljava/lang/String;
    .end local v44           #tempInfo:Landroid/content/pm/ResolveInfo;
    :cond_5de
    :try_start_5de
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/lge/homecube/Launcher;->ItemListSort()V

    .line 4232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/lge/homecube/Launcher;->getApplicationsList()V

    .line 4233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ItemsLoader;->this$0:Lcom/lge/homecube/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/lge/homecube/Launcher;->setGridViewHeight()V
    :try_end_5f9
    .catchall {:try_start_5de .. :try_end_5f9} :catchall_21f

    goto/16 :goto_144

    .line 4169
    nop

    :pswitch_data_5fc
    .packed-switch 0x0
        :pswitch_527
        :pswitch_536
        :pswitch_544
        :pswitch_553
        :pswitch_562
        :pswitch_571
        :pswitch_580
        :pswitch_58f
        :pswitch_59e
        :pswitch_5ae
        :pswitch_5be
        :pswitch_5ce
    .end packed-switch
.end method
