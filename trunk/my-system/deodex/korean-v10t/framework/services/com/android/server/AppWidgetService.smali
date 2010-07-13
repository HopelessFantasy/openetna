.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetService$AppWidgetId;,
        Lcom/android/server/AppWidgetService$Host;,
        Lcom/android/server/AppWidgetService$Provider;
    }
.end annotation


# static fields
.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final SETTINGS_TMP_FILENAME:Ljava/lang/String; = "appwidgets.xml.tmp"

.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field mBoot:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mNextAppWidgetId:I

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mSafeMode:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppWidgetService;->mBoot:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    .line 1056
    new-instance v0, Lcom/android/server/AppWidgetService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 132
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 133
    return-void
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I
    .registers 5
    .parameter "p"

    .prologue
    .line 664
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 665
    .local v2, instancesSize:I
    new-array v0, v2, [I

    .line 666
    .local v0, appWidgetIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_1a

    .line 667
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 669
    :cond_1a
    return-object v0
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;
    .registers 20
    .parameter "component"
    .parameter "ri"

    .prologue
    .line 684
    const/4 v8, 0x0

    .line 686
    .local v8, p:Lcom/android/server/AppWidgetService$Provider;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v2, v0

    .line 687
    .local v2, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .line 689
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v14, v0

    const-string v15, "android.appwidget.provider"

    invoke-virtual {v2, v14, v15}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 691
    if-nez v10, :cond_3c

    .line 692
    const-string v14, "AppWidgetService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_12c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_101

    .line 694
    const/4 v14, 0x0

    .line 749
    if-eqz v10, :cond_3b

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 751
    :cond_3b
    :goto_3b
    return-object v14

    .line 697
    :cond_3c
    :try_start_3c
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 701
    .local v3, attrs:Landroid/util/AttributeSet;
    :cond_40
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_4a

    const/4 v14, 0x2

    if-ne v12, v14, :cond_40

    .line 705
    :cond_4a
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, nodeName:Ljava/lang/String;
    const-string v14, "appwidget-provider"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7e

    .line 707
    const-string v14, "AppWidgetService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_3c .. :try_end_77} :catchall_12c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_77} :catch_101

    .line 709
    const/4 v14, 0x0

    .line 749
    if-eqz v10, :cond_3b

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3b

    .line 712
    :cond_7e
    :try_start_7e
    new-instance v9, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {v9}, Lcom/android/server/AppWidgetService$Provider;-><init>()V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_12c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_101

    .line 713
    .end local v8           #p:Lcom/android/server/AppWidgetService$Provider;
    .local v9, p:Lcom/android/server/AppWidgetService$Provider;
    :try_start_83
    new-instance v6, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v6}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v6, v9, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 715
    .local v6, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    move-object v1, v6

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 716
    iget-object v14, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v9, Lcom/android/server/AppWidgetService$Provider;->uid:I

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget-object v15, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v14, v3, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 724
    .local v11, sa:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 726
    .local v13, value:Landroid/util/TypedValue;
    if-eqz v13, :cond_fd

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_ad
    iput v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 727
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 728
    if-eqz v13, :cond_ff

    iget v14, v13, Landroid/util/TypedValue;->data:I

    :goto_b8
    iput v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 730
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 732
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 734
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, className:Ljava/lang/String;
    if-eqz v4, :cond_dc

    .line 737
    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 739
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v14, v0

    invoke-virtual {v2, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v14

    iput v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 741
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_f4
    .catchall {:try_start_83 .. :try_end_f4} :catchall_133
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_f4} :catch_136

    .line 749
    if-eqz v10, :cond_f9

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f9
    move-object v8, v9

    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v8       #p:Lcom/android/server/AppWidgetService$Provider;
    move-object v14, v9

    .line 751
    goto/16 :goto_3b

    .line 726
    .end local v4           #className:Ljava/lang/String;
    .end local v8           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_fd
    const/4 v14, 0x0

    goto :goto_ad

    .line 728
    :cond_ff
    const/4 v14, 0x0

    goto :goto_b8

    .line 742
    .end local v3           #attrs:Landroid/util/AttributeSet;
    .end local v6           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v7           #nodeName:Ljava/lang/String;
    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v11           #sa:Landroid/content/res/TypedArray;
    .end local v12           #type:I
    .end local v13           #value:Landroid/util/TypedValue;
    .restart local v8       #p:Lcom/android/server/AppWidgetService$Provider;
    :catch_101
    move-exception v14

    move-object v5, v14

    .line 746
    .local v5, e:Ljava/lang/Exception;
    :goto_103
    :try_start_103
    const-string v14, "AppWidgetService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_124
    .catchall {:try_start_103 .. :try_end_124} :catchall_12c

    .line 747
    const/4 v14, 0x0

    .line 749
    if-eqz v10, :cond_3b

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_3b

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_12c
    move-exception v14

    :goto_12d
    if-eqz v10, :cond_132

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_132
    throw v14

    .end local v8           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v3       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #nodeName:Ljava/lang/String;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v12       #type:I
    :catchall_133
    move-exception v14

    move-object v8, v9

    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v8       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_12d

    .line 742
    .end local v8           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    :catch_136
    move-exception v14

    move-object v5, v14

    move-object v8, v9

    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v8       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_103
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 6
    .parameter "ri"

    .prologue
    .line 590
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 592
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_1a

    .line 593
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    const/4 v1, 0x1

    .line 596
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 10
    .parameter "pkgName"

    .prologue
    .line 1122
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1126
    .local v2, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1127
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v0, :cond_2c

    .line 1128
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1129
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1131
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1132
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 1127
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1135
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2c
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 9
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 233
    :try_start_7
    iget v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 235
    .local v0, appWidgetId:I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 237
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    new-instance v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 238
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 239
    iput-object v2, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 241
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 246
    monitor-exit v4

    return v0

    .line 247
    .end local v0           #appWidgetId:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_29
    move-exception v5

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v5
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .registers 11
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    const/4 v7, 0x1

    .line 344
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_APPWIDGET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindGagetId appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 347
    :try_start_28
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 348
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v0, :cond_39

    .line 349
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 381
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_36
    move-exception v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw v4

    .line 351
    .restart local v0       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_39
    :try_start_39
    iget-object v4, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v4, :cond_66

    .line 352
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appWidgetId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v6, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 355
    :cond_66
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v2

    .line 356
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v2, :cond_85

    .line 357
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not a appwidget provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 359
    :cond_85
    iget-boolean v4, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-eqz v4, :cond_a2

    .line 360
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    :cond_a2
    iput-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 365
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 367
    .local v1, instancesSize:I
    if-ne v1, v7, :cond_b4

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 376
    :cond_b4
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 379
    invoke-static {v2}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 380
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 381
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_39 .. :try_end_c8} :catchall_36

    .line 382
    return-void
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z
    .registers 6
    .parameter "id"
    .parameter "callingUid"

    .prologue
    const/4 v2, 0x1

    .line 502
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v0, v0, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v0, p2, :cond_9

    move v0, v2

    .line 516
    :goto_8
    return v0

    .line 506
    :cond_9
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v0, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v0, p2, :cond_15

    move v0, v2

    .line 508
    goto :goto_8

    .line 510
    :cond_15
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    .line 513
    goto :goto_8

    .line 516
    :cond_21
    const/4 v0, 0x0

    goto :goto_8
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V
    .registers 6
    .parameter "p"

    .prologue
    .line 331
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1a

    .line 332
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    .local v0, token:J
    :try_start_f
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 341
    .end local v0           #token:J
    :cond_1a
    return-void

    .line 337
    .restart local v0       #token:J
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public deleteAllHosts()V
    .registers 8

    .prologue
    .line 272
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 273
    :try_start_3
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 274
    .local v1, callingUid:I
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    .local v0, N:I
    const/4 v2, 0x0

    .line 276
    .local v2, changed:Z
    const/4 v6, 0x1

    sub-int v4, v0, v6

    .local v4, i:I
    :goto_11
    if-ltz v4, :cond_26

    .line 277
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    .line 278
    .local v3, host:Lcom/android/server/AppWidgetService$Host;
    iget v6, v3, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v6, v1, :cond_23

    .line 279
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 280
    const/4 v2, 0x1

    .line 276
    :cond_23
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 283
    .end local v3           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_26
    if-eqz v2, :cond_2b

    .line 284
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 286
    :cond_2b
    monitor-exit v5

    .line 287
    return-void

    .line 286
    .end local v0           #N:I
    .end local v1           #callingUid:I
    .end local v2           #changed:Z
    .end local v4           #i:I
    :catchall_2d
    move-exception v6

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v6
.end method

.method public deleteAppWidgetId(I)V
    .registers 5
    .parameter "appWidgetId"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 252
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 253
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_f

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 257
    :cond_f
    monitor-exit v1

    .line 258
    return-void

    .line 257
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v2
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .registers 7
    .parameter "id"

    .prologue
    .line 302
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 303
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 306
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 309
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v2, :cond_54

    .line 310
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    iget-boolean v3, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v3, :cond_54

    .line 313
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 315
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_54

    .line 319
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 322
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 324
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    .end local v1           #intent:Landroid/content/Intent;
    :cond_54
    return-void
.end method

.method public deleteHost(I)V
    .registers 6
    .parameter "hostId"

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 262
    :try_start_3
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 263
    .local v0, callingUid:I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v1

    .line 264
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    if-eqz v1, :cond_13

    .line 265
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 268
    :cond_13
    monitor-exit v2

    .line 269
    return-void

    .line 268
    .end local v0           #callingUid:I
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .registers 6
    .parameter "host"

    .prologue
    .line 290
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 291
    .local v0, N:I
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_19

    .line 292
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 293
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 291
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 295
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_19
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 299
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v6, " "

    const-string v6, "  ["

    .line 165
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_37

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    :goto_36
    return-void

    .line 173
    :cond_37
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 174
    :try_start_3a
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    .local v0, N:I
    const-string v7, "Providers:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x0

    .local v2, i:I
    :goto_46
    if-ge v2, v0, :cond_a6

    .line 177
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppWidgetService$Provider;

    .line 178
    .local v5, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v5, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 179
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] provider "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 182
    const-string v7, "    min=("

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 183
    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 184
    const-string v7, ") updatePeriodMillis="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 186
    const-string v7, " initialLayout=#"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    const-string v7, " zombie="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 191
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_a6
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 192
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string v7, "AppWidgetIds:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x0

    :goto_b7
    if-ge v2, v0, :cond_12e

    .line 195
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 196
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] id="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 198
    const-string v7, "    hostId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v7, v7, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 200
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 201
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v7, v7, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 202
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v7, :cond_10d

    .line 203
    const-string v7, "    provider="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    :cond_10d
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    if-eqz v7, :cond_11d

    .line 207
    const-string v7, "    host.callbacks="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 209
    :cond_11d
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_12b

    .line 210
    const-string v7, "    views="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 194
    :cond_12b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 214
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_12e
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 215
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v7, "Hosts:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const/4 v2, 0x0

    :goto_13f
    if-ge v2, v0, :cond_199

    .line 218
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 219
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] hostId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget v7, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 221
    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 222
    iget v7, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 223
    const-string v7, "    callbacks="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 224
    const-string v7, "    instances.size="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 225
    const-string v7, " zombie="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_13f

    .line 227
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_199
    monitor-exit v6

    goto/16 :goto_36

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_19c
    move-exception v7

    monitor-exit v6
    :try_end_19e
    .catchall {:try_start_3a .. :try_end_19e} :catchall_19c

    throw v7
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .registers 9
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-string v6, "packageName and uid don\'t match packageName="

    .line 763
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 766
    .local v0, callingUid:I
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_2b

    move-result v2

    .line 771
    .local v2, packageUid:I
    if-eq v0, v2, :cond_45

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 772
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 767
    .end local v2           #packageUid:I
    :catch_2b
    move-exception v1

    .line 768
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 775
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #packageUid:I
    :cond_45
    return v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 6
    .parameter "provider"

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 674
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 675
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v2

    iget v3, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v2, v3, :cond_18

    .line 676
    invoke-static {v0}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 678
    :goto_17
    return-object v1

    :cond_18
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v1

    move-object v1, v2

    goto :goto_17

    .line 680
    .end local v0           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 5
    .parameter "appWidgetId"

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 386
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 387
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v2, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v2, :cond_1a

    .line 388
    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v2, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    monitor-exit v1

    move-object v1, v2

    .line 390
    :goto_19
    return-object v1

    :cond_1a
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_19

    .line 391
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .registers 5
    .parameter "appWidgetId"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 396
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 397
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_e

    .line 398
    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    monitor-exit v1

    move-object v1, v2

    .line 400
    :goto_d
    return-object v1

    :cond_e
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_d

    .line 401
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public getInstalledProviders()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 406
    :try_start_3
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 407
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_25

    .line 409
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 410
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    iget-boolean v5, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v5, :cond_22

    .line 411
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 414
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_25
    monitor-exit v4

    return-object v3

    .line 415
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_27
    move-exception v5

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v5
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .registers 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 756
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_13

    .line 757
    :cond_d
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 759
    :cond_13
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1
.end method

.method loadAppWidgetList()V
    .registers 8

    .prologue
    .line 576
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 578
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v3, intent:Landroid/content/Intent;
    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 582
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 583
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_22

    .line 584
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 585
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 587
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_22
    return-void
.end method

.method loadStateLocked()V
    .registers 4

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateTempFile()Ljava/io/File;

    move-result-object v1

    .line 796
    .local v1, temp:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateRealFile()Ljava/io/File;

    move-result-object v0

    .line 801
    .local v0, real:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 802
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/File;)V

    .line 803
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 805
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 812
    :cond_1a
    :goto_1a
    return-void

    .line 807
    :cond_1b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 808
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/File;)V

    .line 810
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1a
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;
    .registers 7
    .parameter "appWidgetId"

    .prologue
    .line 520
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 521
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_24

    .line 523
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 524
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_21

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v4, v3

    .line 528
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_20
    return-object v4

    .line 522
    .restart local v3       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 528
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_24
    const/4 v4, 0x0

    goto :goto_20
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;
    .registers 7
    .parameter "uid"
    .parameter "hostId"

    .prologue
    .line 543
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1e

    .line 545
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 546
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v3, p1, :cond_1b

    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v3, p2, :cond_1b

    move-object v3, v1

    .line 550
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1a
    return-object v3

    .line 544
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 550
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;
    .registers 9
    .parameter "uid"
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 554
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 555
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v0, :cond_22

    .line 556
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 557
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v4, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v4, p3, :cond_1f

    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v4, v1

    .line 566
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1e
    return-object v4

    .line 555
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 561
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_22
    new-instance v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 562
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    .line 563
    iput p1, v2, Lcom/android/server/AppWidgetService$Host;->uid:I

    .line 564
    iput p3, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 565
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    .line 566
    goto :goto_1e
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;
    .registers 6
    .parameter "provider"

    .prologue
    .line 532
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 533
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 534
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 535
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v2

    .line 539
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :goto_1c
    return-object v3

    .line 533
    .restart local v2       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 539
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .registers 3
    .parameter "host"

    .prologue
    .line 570
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_11

    .line 571
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 573
    :cond_11
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/File;)V
    .registers 28
    .parameter "file"

    .prologue
    .line 914
    const/16 v18, 0x0

    .line 916
    .local v18, stream:Ljava/io/FileInputStream;
    const/16 v20, 0x0

    .line 919
    .local v20, success:Z
    :try_start_4
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_d} :catch_356
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_d} :catch_351
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_d} :catch_34c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_2b5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_d} :catch_2db

    .line 920
    .end local v18           #stream:Ljava/io/FileInputStream;
    .local v19, stream:Ljava/io/FileInputStream;
    :try_start_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 921
    .local v14, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v23, 0x0

    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 924
    const/16 v16, 0x0

    .line 925
    .local v16, providerIndex:I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 927
    .local v11, loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    :cond_22
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .line 928
    .local v22, type:I
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b8

    .line 929
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 930
    .local v21, tag:Ljava/lang/String;
    const-string v23, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f0

    .line 933
    const/16 v23, 0x0

    const-string v24, "pkg"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 934
    .local v15, pkg:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "cl"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, cl:Ljava/lang/String;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    move-object v1, v15

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v12

    .line 936
    .local v12, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v12, :cond_a9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a9

    .line 938
    new-instance v12, Lcom/android/server/AppWidgetService$Provider;

    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    invoke-direct {v12}, Lcom/android/server/AppWidgetService$Provider;-><init>()V

    .line 939
    .restart local v12       #p:Lcom/android/server/AppWidgetService$Provider;
    new-instance v23, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v23 .. v23}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v23

    move-object v1, v12

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 940
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    move-object v1, v15

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 941
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object v1, v12

    iput-boolean v0, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_a9
    if-eqz v12, :cond_b6

    .line 946
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v11

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_b6} :catch_15a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_b6} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_b6} :catch_28d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_b6} :catch_345
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_b6} :catch_33f

    .line 948
    :cond_b6
    add-int/lit8 v16, v16, 0x1

    .line 1008
    .end local v4           #cl:Ljava/lang/String;
    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v15           #pkg:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    :cond_b8
    :goto_b8
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_22

    .line 1009
    const/16 v20, 0x1

    move-object/from16 v18, v19

    .line 1022
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #providerIndex:I
    .end local v19           #stream:Ljava/io/FileInputStream;
    .end local v22           #type:I
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :goto_c4
    if-eqz v18, :cond_c9

    .line 1023
    :try_start_c6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_33b

    .line 1029
    :cond_c9
    :goto_c9
    if-eqz v20, :cond_301

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    sub-int v9, v23, v24

    .end local p1
    .local v9, i:I
    :goto_d9
    if-ltz v9, :cond_33e

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppWidgetService$Host;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1032
    add-int/lit8 v9, v9, -0x1

    goto :goto_d9

    .line 950
    .end local v9           #i:I
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #providerIndex:I
    .restart local v19       #stream:Ljava/io/FileInputStream;
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    .restart local p1
    :cond_f0
    :try_start_f0
    const-string v23, "h"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b5

    .line 951
    new-instance v8, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v8}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 955
    .local v8, host:Lcom/android/server/AppWidgetService$Host;
    const/16 v23, 0x0

    const-string v24, "pkg"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/NullPointerException; {:try_start_f0 .. :try_end_113} :catch_15a
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_113} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f0 .. :try_end_113} :catch_28d
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_113} :catch_345
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f0 .. :try_end_113} :catch_33f

    .line 957
    :try_start_113
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Lcom/android/server/AppWidgetService$Host;->uid:I
    :try_end_125
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_113 .. :try_end_125} :catch_182
    .catch Ljava/lang/NullPointerException; {:try_start_113 .. :try_end_125} :catch_15a
    .catch Ljava/lang/NumberFormatException; {:try_start_113 .. :try_end_125} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_113 .. :try_end_125} :catch_28d
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_125} :catch_345
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_113 .. :try_end_125} :catch_33f

    .line 961
    :goto_125
    :try_start_125
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    move/from16 v23, v0

    if-eqz v23, :cond_134

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b8

    .line 964
    :cond_134
    const/16 v23, 0x0

    const-string v24, "id"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_158
    .catch Ljava/lang/NullPointerException; {:try_start_125 .. :try_end_158} :catch_15a
    .catch Ljava/lang/NumberFormatException; {:try_start_125 .. :try_end_158} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_125 .. :try_end_158} :catch_28d
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_158} :catch_345
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_125 .. :try_end_158} :catch_33f

    goto/16 :goto_b8

    .line 1010
    .end local v8           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_15a
    move-exception v23

    move-object/from16 v5, v23

    move-object/from16 v18, v19

    .line 1011
    .end local v19           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NullPointerException;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :goto_15f
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c4

    .line 958
    .end local v5           #e:Ljava/lang/NullPointerException;
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v8       #host:Lcom/android/server/AppWidgetService$Host;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #providerIndex:I
    .restart local v19       #stream:Ljava/io/FileInputStream;
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :catch_182
    move-exception v23

    move-object/from16 v6, v23

    .line 959
    .local v6, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v23, 0x1

    :try_start_187
    move/from16 v0, v23

    move-object v1, v8

    iput-boolean v0, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z
    :try_end_18c
    .catch Ljava/lang/NullPointerException; {:try_start_187 .. :try_end_18c} :catch_15a
    .catch Ljava/lang/NumberFormatException; {:try_start_187 .. :try_end_18c} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_187 .. :try_end_18c} :catch_28d
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18c} :catch_345
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_187 .. :try_end_18c} :catch_33f

    goto :goto_125

    .line 1012
    .end local v6           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_18d
    move-exception v23

    move-object/from16 v5, v23

    move-object/from16 v18, v19

    .line 1013
    .end local v19           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NumberFormatException;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :goto_192
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c4

    .line 969
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #providerIndex:I
    .restart local v19       #stream:Ljava/io/FileInputStream;
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :cond_1b5
    :try_start_1b5
    const-string v23, "g"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b8

    .line 970
    new-instance v10, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v10}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 971
    .local v10, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v23, 0x0

    const-string v24, "id"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v10

    iput v0, v1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 972
    move-object v0, v10

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1fc

    .line 973
    move-object v0, v10

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 976
    :cond_1fc
    const/16 v23, 0x0

    const-string v24, "p"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 977
    .local v17, providerString:Ljava/lang/String;
    if-eqz v17, :cond_22b

    .line 981
    const/16 v23, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 982
    .local v13, pIndex:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    iput-object v3, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 987
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b8

    .line 994
    .end local v13           #pIndex:I
    :cond_22b
    const/16 v23, 0x0

    const-string v24, "h"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 995
    .local v7, hIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    iput-object v3, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 996
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b8

    .line 1001
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_26e

    .line 1002
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_26e
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28b
    .catch Ljava/lang/NullPointerException; {:try_start_1b5 .. :try_end_28b} :catch_15a
    .catch Ljava/lang/NumberFormatException; {:try_start_1b5 .. :try_end_28b} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b5 .. :try_end_28b} :catch_28d
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_28b} :catch_345
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b5 .. :try_end_28b} :catch_33f

    goto/16 :goto_b8

    .line 1014
    .end local v7           #hIndex:I
    .end local v10           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v14           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #providerIndex:I
    .end local v17           #providerString:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_28d
    move-exception v23

    move-object/from16 v5, v23

    move-object/from16 v18, v19

    .line 1015
    .end local v19           #stream:Ljava/io/FileInputStream;
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    :goto_292
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c4

    .line 1016
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2b5
    move-exception v23

    move-object/from16 v5, v23

    .line 1017
    .local v5, e:Ljava/io/IOException;
    :goto_2b8
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c4

    .line 1018
    .end local v5           #e:Ljava/io/IOException;
    :catch_2db
    move-exception v23

    move-object/from16 v5, v23

    .line 1019
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_2de
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c4

    .line 1037
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1040
    .local v3, N:I
    const/4 v9, 0x0

    .end local p1
    .restart local v9       #i:I
    :goto_31e
    if-ge v9, v3, :cond_33e

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1040
    add-int/lit8 v9, v9, 0x1

    goto :goto_31e

    .line 1025
    .end local v3           #N:I
    .end local v9           #i:I
    .restart local p1
    :catch_33b
    move-exception v23

    goto/16 :goto_c9

    .line 1044
    .end local p1
    .restart local v9       #i:I
    :cond_33e
    return-void

    .line 1018
    .end local v9           #i:I
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    .restart local p1
    :catch_33f
    move-exception v23

    move-object/from16 v5, v23

    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    goto :goto_2de

    .line 1016
    .end local v18           #stream:Ljava/io/FileInputStream;
    .restart local v19       #stream:Ljava/io/FileInputStream;
    :catch_345
    move-exception v23

    move-object/from16 v5, v23

    move-object/from16 v18, v19

    .end local v19           #stream:Ljava/io/FileInputStream;
    .restart local v18       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_2b8

    .line 1014
    :catch_34c
    move-exception v23

    move-object/from16 v5, v23

    goto/16 :goto_292

    .line 1012
    :catch_351
    move-exception v23

    move-object/from16 v5, v23

    goto/16 :goto_192

    .line 1010
    :catch_356
    move-exception v23

    move-object/from16 v5, v23

    goto/16 :goto_15f
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .registers 14
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    const/4 v1, 0x1

    .line 637
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_4f

    .line 641
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_50

    move v7, v1

    .line 642
    .local v7, alreadyRegistered:Z
    :goto_c
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 644
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 645
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 647
    .local v9, token:J
    :try_start_23
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x800

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_53

    .line 650
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    if-nez v7, :cond_4f

    .line 653
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 654
    .local v4, period:J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_42

    .line 655
    const-wide/32 v4, 0x1b7740

    .line 657
    :cond_42
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 661
    .end local v4           #period:J
    .end local v7           #alreadyRegistered:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #token:J
    :cond_4f
    return-void

    .line 641
    :cond_50
    const/4 v0, 0x0

    move v7, v0

    goto :goto_c

    .line 650
    .restart local v7       #alreadyRegistered:Z
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #token:J
    :catchall_53
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V
    .registers 8
    .parameter "index"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 601
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 602
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_30

    .line 603
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 605
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 607
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 609
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 610
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 611
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 612
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 613
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 615
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_30
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 616
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 618
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 619
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 8
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x1

    .line 1206
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1207
    .local v0, N:I
    sub-int v2, v0, v5

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_27

    .line 1208
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1209
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1210
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1207
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1218
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_27
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1219
    sub-int v2, v0, v5

    :goto_2f
    if-ltz v2, :cond_47

    .line 1220
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 1221
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1222
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1219
    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 1225
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_47
    return-void
.end method

.method saveStateLocked()V
    .registers 4

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateTempFile()Ljava/io/File;

    move-result-object v1

    .line 816
    .local v1, temp:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateRealFile()Ljava/io/File;

    move-result-object v0

    .line 818
    .local v0, real:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 826
    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_24

    .line 832
    :cond_11
    :goto_11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 834
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 837
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->writeStateToFileLocked(Ljava/io/File;)V

    .line 840
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 842
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 843
    return-void

    .line 827
    :catch_24
    move-exception v2

    goto :goto_11
.end method

.method savedStateRealFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 1052
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/appwidgets.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method savedStateTempFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 1047
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/appwidgets.xml.tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 624
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 625
    return-void
.end method

.method sendInitialBroadcasts()V
    .registers 7

    .prologue
    .line 779
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 780
    :try_start_3
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 781
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_2c

    .line 782
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 783
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v5, v3, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_29

    .line 784
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 785
    invoke-static {v3}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v1

    .line 786
    .local v1, appWidgetIds:[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 787
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 781
    .end local v1           #appWidgetIds:[I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 790
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_2c
    monitor-exit v4

    .line 791
    return-void

    .line 790
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2e
    move-exception v5

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v5
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .registers 5
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    .line 628
    if-eqz p2, :cond_1d

    array-length v1, p2

    if-lez v1, :cond_1d

    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 631
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 632
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .registers 14
    .parameter "callbacks"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 474
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 475
    .local v1, callingUid:I
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 476
    :try_start_7
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 477
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 479
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 481
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    .line 482
    .local v5, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 483
    .local v0, N:I
    new-array v6, v0, [I

    .line 484
    .local v6, updatedIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v0, :cond_2d

    .line 485
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 486
    .local v4, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v8, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v8, v6, v3

    .line 487
    iget-object v8, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 489
    .end local v4           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_2d
    monitor-exit v7

    return-object v6

    .line 490
    .end local v0           #N:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #i:I
    .end local v5           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v6           #updatedIds:[I
    :catchall_2f
    move-exception v8

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v8
.end method

.method public stopListening(I)V
    .registers 5
    .parameter "hostId"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 495
    :try_start_3
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v0

    .line 496
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 498
    monitor-exit v1

    .line 499
    return-void

    .line 498
    .end local v0           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v2
.end method

.method public systemReady(Z)V
    .registers 8
    .parameter "safeMode"

    .prologue
    const/4 v5, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadAppWidgetList()V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadStateLocked()V

    .line 144
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 8
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 419
    if-nez p1, :cond_3

    .line 433
    :cond_2
    :goto_2
    return-void

    .line 422
    :cond_3
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 425
    array-length v0, p1

    .line 427
    .local v0, N:I
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 428
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 429
    :try_start_d
    aget v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 430
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 432
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_19
    monitor-exit v3

    goto :goto_2

    :catchall_1b
    move-exception v4

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v4
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V
    .registers 6
    .parameter "id"
    .parameter "views"

    .prologue
    .line 455
    if-eqz p1, :cond_23

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_23

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_23

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v1, :cond_23

    .line 456
    iput-object p2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 459
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_23

    .line 462
    :try_start_1a
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24

    .line 470
    :cond_23
    :goto_23
    return-void

    .line 463
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 466
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_23
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 12
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 436
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 437
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v4

    .line 438
    .local v4, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v4, :cond_23

    .line 439
    const-string v6, "AppWidgetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    monitor-exit v5

    .line 449
    :goto_22
    return-void

    .line 442
    :cond_23
    iget-object v3, v4, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    .line 443
    .local v3, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 444
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    if-ge v1, v0, :cond_38

    .line 445
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 446
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 448
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_38
    monitor-exit v5

    goto :goto_22

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v4           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_3a
    move-exception v6

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v6
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 23
    .parameter "pkgName"

    .prologue
    .line 1140
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1141
    .local v14, keep:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x80

    move-object/from16 v0, v18

    move-object v1, v12

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1146
    .local v7, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 1147
    .local v4, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_25
    if-ge v10, v4, :cond_10d

    .line 1148
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1149
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    .line 1150
    .local v5, ai:Landroid/content/pm/ActivityInfo;
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_73

    .line 1151
    new-instance v8, Landroid/content/ComponentName;

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    .local v8, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v15

    .line 1153
    .local v15, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v15, :cond_76

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v18

    if-eqz v18, :cond_73

    .line 1155
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1147
    .end local v8           #component:Landroid/content/ComponentName;
    .end local v15           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_73
    :goto_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 1158
    .restart local v8       #component:Landroid/content/ComponentName;
    .restart local v15       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_76
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v16

    .line 1159
    .local v16, parsed:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v16, :cond_73

    .line 1160
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1162
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1164
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1165
    .local v3, M:I
    if-lez v3, :cond_73

    .line 1166
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v6

    .line 1170
    .local v6, appWidgetIds:[I
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1171
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1173
    const/4 v13, 0x0

    .local v13, j:I
    :goto_b4
    if-ge v13, v3, :cond_104

    .line 1174
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1175
    .local v11, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f0

    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f0

    .line 1177
    :try_start_d8
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v18, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v19, v0

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_f0} :catch_f3

    .line 1173
    :cond_f0
    :goto_f0
    add-int/lit8 v13, v13, 0x1

    goto :goto_b4

    .line 1178
    :catch_f3
    move-exception v18

    move-object/from16 v9, v18

    .line 1182
    .local v9, ex:Landroid/os/RemoteException;
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_f0

    .line 1187
    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v11           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_104
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    goto/16 :goto_73

    .line 1195
    .end local v3           #M:I
    .end local v5           #ai:Landroid/content/pm/ActivityInfo;
    .end local v6           #appWidgetIds:[I
    .end local v8           #component:Landroid/content/ComponentName;
    .end local v13           #j:I
    .end local v15           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v16           #parsed:Lcom/android/server/AppWidgetService$Provider;
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1196
    const/16 v18, 0x1

    sub-int v10, v4, v18

    :goto_11b
    if-ltz v10, :cond_167

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppWidgetService$Provider;

    .line 1198
    .restart local v15       #p:Lcom/android/server/AppWidgetService$Provider;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_164

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_164

    .line 1200
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1196
    :cond_164
    add-int/lit8 v10, v10, -0x1

    goto :goto_11b

    .line 1203
    .end local v15           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_167
    return-void
.end method

.method writeStateToFileLocked(Ljava/io/File;)V
    .registers 15
    .parameter "file"

    .prologue
    const-string v10, "id"

    const-string v10, "gs"

    const-string v10, "g"

    const-string v10, "h"

    .line 846
    const/4 v8, 0x0

    .line 850
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v9, p1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_101

    .line 851
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v9, stream:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 852
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 853
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 856
    const/4 v10, 0x0

    const-string v11, "gs"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    const/4 v7, 0x0

    .line 859
    .local v7, providerIndex:I
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 860
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    if-ge v3, v0, :cond_71

    .line 861
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppWidgetService$Provider;

    .line 862
    .local v6, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v10, v6, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6e

    .line 863
    const/4 v10, 0x0

    const-string v11, "p"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    const/4 v10, 0x0

    const-string v11, "pkg"

    iget-object v12, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    const/4 v10, 0x0

    const-string v11, "cl"

    iget-object v12, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    const/4 v10, 0x0

    const-string v11, "h"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 867
    iput v7, v6, Lcom/android/server/AppWidgetService$Provider;->tag:I

    .line 868
    add-int/lit8 v7, v7, 0x1

    .line 860
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 872
    .end local v6           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_71
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 873
    const/4 v3, 0x0

    :goto_78
    if-ge v3, v0, :cond_a7

    .line 874
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    .line 875
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    const/4 v10, 0x0

    const-string v11, "h"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    const/4 v10, 0x0

    const-string v11, "pkg"

    iget-object v12, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 877
    const/4 v10, 0x0

    const-string v11, "id"

    iget v12, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    const/4 v10, 0x0

    const-string v11, "h"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    iput v3, v2, Lcom/android/server/AppWidgetService$Host;->tag:I

    .line 873
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 882
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_a7
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 883
    const/4 v3, 0x0

    :goto_ae
    if-ge v3, v0, :cond_f3

    .line 884
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 885
    .local v4, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v10, 0x0

    const-string v11, "g"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    const/4 v10, 0x0

    const-string v11, "id"

    iget v12, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    const/4 v10, 0x0

    const-string v11, "h"

    iget-object v12, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v12, v12, Lcom/android/server/AppWidgetService$Host;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    iget-object v10, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v10, :cond_ea

    .line 889
    const/4 v10, 0x0

    const-string v11, "p"

    iget-object v12, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v12, v12, Lcom/android/server/AppWidgetService$Provider;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    :cond_ea
    const/4 v10, 0x0

    const-string v11, "g"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    .line 894
    .end local v4           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_f3
    const/4 v10, 0x0

    const-string v11, "gs"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 897
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_ff} :catch_114

    move-object v8, v9

    .line 911
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #providerIndex:I
    .end local v9           #stream:Ljava/io/FileOutputStream;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_100
    :goto_100
    return-void

    .line 898
    :catch_101
    move-exception v10

    move-object v1, v10

    .line 900
    .local v1, e:Ljava/io/IOException;
    :goto_103
    if-eqz v8, :cond_108

    .line 901
    :try_start_105
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_112

    .line 906
    :cond_108
    :goto_108
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_100

    .line 908
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_100

    .line 903
    :catch_112
    move-exception v10

    goto :goto_108

    .line 898
    .end local v1           #e:Ljava/io/IOException;
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v9       #stream:Ljava/io/FileOutputStream;
    :catch_114
    move-exception v10

    move-object v1, v10

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileOutputStream;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    goto :goto_103
.end method
