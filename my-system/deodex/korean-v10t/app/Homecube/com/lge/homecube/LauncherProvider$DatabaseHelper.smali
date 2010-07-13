.class Lcom/lge/homecube/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_BOOKMARK_OCH:Ljava/lang/String; = "bookmark_och"

.field private static final TAG_BOOKMARK_OFR:Ljava/lang/String; = "bookmark_ofr"

.field private static final TAG_CELLBROADCAST:Ljava/lang/String; = "cellbroadcast"

.field private static final TAG_CLARO:Ljava/lang/String; = "claro"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_MAKAM:Ljava/lang/String; = "makam"

.field private static final TAG_PHOTO:Ljava/lang/String; = "photo"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_TEL:Ljava/lang/String; = "tel"

.field private static final TAG_TIM:Ljava/lang/String; = "tim"

.field private static final TAG_VIVO:Ljava/lang/String; = "vivo"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 202
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 203
    iput-object p1, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 204
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x401

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 205
    return-void
.end method

.method private addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 12
    .parameter "db"
    .parameter "name"
    .parameter "uri"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, shortcutIntent:Landroid/content/Intent;
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 569
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 570
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "itemType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    const-string v2, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 572
    const-string v2, "intent"

    invoke-virtual {v0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v2, "screen"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const-string v2, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string v2, "cellY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    const-string v2, "appWidgetId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v2, "iconPackage"

    const-string v3, "com.android.browser"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v2, "iconResource"

    const-string v3, "com.android.browser:drawable/ic_launcher_shortcut_browser_bookmark"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 585
    return v4
.end method

.method private addCellcomWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v6, 0x4

    .line 699
    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    .line 703
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "makam.wid"

    const-string v7, "makam.wid.makamwid"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    const/4 v0, 0x0

    .line 711
    .local v0, allocatedAppWidgets:Z
    :try_start_19
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 713
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_4c} :catch_53

    .line 719
    const/4 v0, 0x1

    .line 725
    .end local v1           #appWidgetId:I
    :goto_4d
    if-eqz v0, :cond_52

    .line 726
    invoke-direct {p0, v2, v3}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 729
    :cond_52
    return v0

    .line 720
    :catch_53
    move-exception v5

    move-object v4, v5

    .line 721
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d
.end method

.method private addClaroWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const-string v5, "appWidgetId"

    .line 809
    const/4 v5, 0x3

    new-array v2, v5, [I

    fill-array-data v2, :array_13a

    .line 816
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.cbwidget"

    const-string v7, "com.lge.cbwidget.CBWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "lge.android.fmradio"

    const-string v7, "lge.android.fmradio.FmRadioWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.music"

    const-string v7, "com.android.music.MediaAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    const/4 v0, 0x0

    .line 833
    .local v0, allocatedAppWidgets:Z
    :try_start_32
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 835
    .local v1, appWidgetId:I
    const-string v5, "screen"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    const-string v5, "cellX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    const-string v5, "cellY"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    const-string v5, "itemType"

    const/16 v6, 0x3ef

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 844
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 846
    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v5, "cellX"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v5, "cellY"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v5, "itemType"

    const/16 v6, 0x3ec

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v5, "spanX"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 855
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 857
    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v5, "cellX"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v5, "cellY"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string v5, "itemType"

    const/16 v6, 0x3eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string v5, "spanX"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_128
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_128} :catch_12f

    .line 866
    const/4 v0, 0x1

    .line 872
    .end local v1           #appWidgetId:I
    :goto_129
    if-eqz v0, :cond_12e

    .line 873
    invoke-direct {p0, v2, v3}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 876
    :cond_12e
    return v0

    .line 867
    :catch_12f
    move-exception v5

    move-object v4, v5

    .line 868
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_129

    .line 809
    nop

    :array_13a
    .array-data 0x4
        0xeft 0x3t 0x0t 0x0t
        0xect 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const/16 v6, 0x3e8

    .line 626
    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    .line 630
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    const/4 v0, 0x0

    .line 638
    .local v0, allocatedAppWidgets:Z
    :try_start_1a
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 640
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_4e} :catch_55

    .line 646
    const/4 v0, 0x1

    .line 652
    .end local v1           #appWidgetId:I
    :goto_4f
    if-eqz v0, :cond_54

    .line 653
    invoke-direct {p0, v2, v3}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 656
    :cond_54
    return v0

    .line 647
    :catch_55
    move-exception v5

    move-object v4, v5

    .line 648
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f
.end method

.method private addOrangeWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v5, 0x2

    .line 660
    new-array v2, v5, [I

    fill-array-data v2, :array_6a

    .line 665
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.orangephotowidget"

    const-string v7, "com.lge.orangephotowidget.OrangePhotoWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    const/4 v0, 0x0

    .line 676
    .local v0, allocatedAppWidgets:Z
    :try_start_24
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 678
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/16 v6, 0x3ea

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_58} :catch_5f

    .line 684
    const/4 v0, 0x1

    .line 690
    .end local v1           #appWidgetId:I
    :goto_59
    if-eqz v0, :cond_5e

    .line 691
    invoke-direct {p0, v2, v3}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 694
    :cond_5e
    return v0

    .line 685
    :catch_5f
    move-exception v5

    move-object v4, v5

    .line 686
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    .line 660
    nop

    :array_6a
    .array-data 0x4
        0xeat 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 6
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    .line 617
    const-string v0, "itemType"

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v0, "spanX"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v0, "spanY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 622
    return v2
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .registers 15
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 593
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, className:Ljava/lang/String;
    :try_start_a
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v5, 0x0

    invoke-virtual {p4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 598
    .local v3, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 599
    const/high16 v5, 0x1020

    invoke-virtual {p5, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 601
    const-string v5, "intent"

    invoke-virtual {p5}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v5, "title"

    invoke-virtual {v3, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v5, "itemType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v5, "spanX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_56} :catch_58

    move v5, v7

    .line 612
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_57
    return v5

    .line 607
    :catch_58
    move-exception v5

    move-object v2, v5

    .line 608
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add favorite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v8

    .line 610
    goto :goto_57
.end method

.method private addTelWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const/16 v6, 0x3ef

    const/4 v5, 0x1

    .line 881
    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    .line 885
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.cbwidget"

    const-string v7, "com.lge.cbwidget.CBWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    const/4 v0, 0x0

    .line 894
    .local v0, allocatedAppWidgets:Z
    :try_start_1a
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 896
    .local v1, appWidgetId:I
    const-string v5, "screen"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    const-string v5, "cellX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v5, "cellY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string v5, "itemType"

    const/16 v6, 0x3ef

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 903
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_6c} :catch_73

    .line 905
    const/4 v0, 0x1

    .line 911
    .end local v1           #appWidgetId:I
    :goto_6d
    if-eqz v0, :cond_72

    .line 912
    invoke-direct {p0, v2, v3}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 915
    :cond_72
    return v0

    .line 906
    :catch_73
    move-exception v5

    move-object v4, v5

    .line 907
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d
.end method

.method private addTimWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const-string v5, "appWidgetId"

    .line 920
    const/4 v5, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_1f6

    .line 928
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "lge.android.fmradio"

    const-string v7, "lge.android.fmradio.FmRadioWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.music"

    const-string v7, "com.android.music.MediaAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "br.com.conception.tim"

    const-string v7, "br.com.conception.tim.widgetNow"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "br.com.conception.tim"

    const-string v7, "br.com.conception.tim.widgetLogo"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.cbwidget"

    const-string v7, "com.lge.cbwidget.CBWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    const/4 v0, 0x0

    .line 951
    .local v0, allocatedAppWidgets:Z
    :try_start_4a
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 953
    .local v1, appWidgetId:I
    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    const-string v5, "cellX"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    const-string v5, "cellY"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    const-string v5, "itemType"

    const/16 v6, 0x3ec

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string v5, "spanX"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 960
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 962
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 964
    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    const-string v5, "cellX"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    const-string v5, "cellY"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    const-string v5, "itemType"

    const/16 v6, 0x3eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    const-string v5, "spanX"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 973
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 975
    const-string v5, "screen"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string v5, "cellX"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    const-string v5, "cellY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    const-string v5, "itemType"

    const/16 v6, 0x3ed

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    const-string v5, "spanX"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 984
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 986
    const-string v5, "screen"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    const-string v5, "cellX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v5, "cellY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v5, "itemType"

    const/16 v6, 0x3ee

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 996
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 998
    const-string v5, "screen"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    const-string v5, "cellX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1000
    const-string v5, "cellY"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    const-string v5, "itemType"

    const/16 v6, 0x3ef

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1003
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1e4
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_1e4} :catch_1eb

    .line 1007
    const/4 v0, 0x1

    .line 1013
    .end local v1           #appWidgetId:I
    :goto_1e5
    if-eqz v0, :cond_1ea

    .line 1014
    invoke-direct {p0, v2, v3}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 1017
    :cond_1ea
    return v0

    .line 1008
    :catch_1eb
    move-exception v5

    move-object v4, v5

    .line 1009
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e5

    .line 920
    nop

    :array_1f6
    .array-data 0x4
        0xect 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xedt 0x3t 0x0t 0x0t
        0xeet 0x3t 0x0t 0x0t
        0xeft 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private addVivoWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v5, 0x4

    .line 734
    new-array v2, v5, [I

    fill-array-data v2, :array_142

    .line 741
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.providers.calendar"

    const-string v7, "com.android.providers.calendar.CalendarAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.music"

    const-string v7, "com.android.music.MediaAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.cbwidget"

    const-string v7, "com.lge.cbwidget.CBWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    const/4 v0, 0x0

    .line 761
    .local v0, allocatedAppWidgets:Z
    :try_start_3c
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 763
    .local v1, appWidgetId:I
    const-string v5, "screen"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    const-string v5, "cellX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 765
    const-string v5, "cellY"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string v5, "itemType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 772
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 774
    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v5, "cellX"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string v5, "cellY"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v5, "itemType"

    const/16 v6, 0x3eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v5, "spanX"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 783
    iget-object v5, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 785
    const-string v5, "screen"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const-string v5, "cellX"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    const-string v5, "cellY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    const-string v5, "itemType"

    const/16 v6, 0x3ef

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    const-string v5, "spanY"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 791
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_131
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_131} :catch_138

    .line 794
    const/4 v0, 0x1

    .line 800
    .end local v1           #appWidgetId:I
    :goto_132
    if-eqz v0, :cond_137

    .line 801
    invoke-direct {p0, v2, v3}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 804
    :cond_137
    return v0

    .line 795
    :catch_138
    move-exception v5

    move-object v4, v5

    .line 796
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132

    .line 734
    :array_142
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeft 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 12
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    const-string v9, "LauncherProvider"

    .line 256
    const-string v2, "LauncherProvider"

    const-string v2, "converting database from an older format, but not onUpgrade"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v6, 0x0

    .line 259
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 265
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1c
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_4d

    move-result-object v7

    .line 271
    :goto_20
    if-eqz v7, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_38

    .line 273
    :try_start_28
    invoke-direct {p0, p1, v7}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_48

    move-result v2

    if-lez v2, :cond_45

    const/4 v2, 0x1

    move v6, v2

    .line 275
    :goto_30
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 278
    if-eqz v6, :cond_38

    .line 279
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 283
    :cond_38
    if-eqz v6, :cond_44

    .line 285
    const-string v2, "LauncherProvider"

    const-string v2, "converted and now triggering widget upgrade"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 289
    :cond_44
    return v6

    .line 273
    :cond_45
    const/4 v2, 0x0

    move v6, v2

    goto :goto_30

    .line 275
    :catchall_48
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 266
    :catch_4d
    move-exception v2

    goto :goto_20
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 25
    .parameter "db"

    .prologue
    .line 389
    const/4 v5, 0x2

    new-array v15, v5, [I

    fill-array-data v15, :array_142

    .line 394
    .local v15, bindSources:[I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v16, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.camera"

    const-string v7, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    const-string v5, "itemType"

    invoke-static {v5, v15}, Lcom/lge/homecube/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v8

    .line 402
    .local v8, selectWhere:Ljava/lang/String;
    const/16 v17, 0x0

    .line 403
    .local v17, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 405
    .local v13, allocatedAppWidgets:Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 408
    :try_start_35
    const-string v6, "favorites"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 411
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found upgrade cursor count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v22, values:Landroid/content/ContentValues;
    :goto_6a
    if-eqz v17, :cond_12c

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 415
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_79
    .catchall {:try_start_35 .. :try_end_79} :catchall_138
    .catch Landroid/database/SQLException; {:try_start_35 .. :try_end_79} :catch_10b

    move-result-wide v19

    .line 419
    .local v19, favoriteId:J
    :try_start_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v14

    .line 421
    .local v14, appWidgetId:I
    const-string v5, "LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocated appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for favoriteId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 424
    const-string v5, "appWidgetId"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 431
    .local v21, updateWhere:Ljava/lang/String;
    const-string v5, "favorites"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_7a .. :try_end_f8} :catchall_138
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_f8} :catch_fb
    .catch Landroid/database/SQLException; {:try_start_7a .. :try_end_f8} :catch_10b

    .line 433
    const/4 v13, 0x1

    goto/16 :goto_6a

    .line 434
    .end local v14           #appWidgetId:I
    .end local v21           #updateWhere:Ljava/lang/String;
    :catch_fb
    move-exception v5

    move-object/from16 v18, v5

    .line 435
    .local v18, ex:Ljava/lang/RuntimeException;
    :try_start_fe
    const-string v5, "LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_109
    .catchall {:try_start_fe .. :try_end_109} :catchall_138
    .catch Landroid/database/SQLException; {:try_start_fe .. :try_end_109} :catch_10b

    goto/16 :goto_6a

    .line 440
    .end local v18           #ex:Ljava/lang/RuntimeException;
    .end local v19           #favoriteId:J
    .end local v22           #values:Landroid/content/ContentValues;
    :catch_10b
    move-exception v5

    move-object/from16 v18, v5

    .line 441
    .local v18, ex:Landroid/database/SQLException;
    :try_start_10e
    const-string v5, "LauncherProvider"

    const-string v6, "Problem while allocating appWidgetIds for existing widgets"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_10e .. :try_end_119} :catchall_138

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 444
    if-eqz v17, :cond_121

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 450
    .end local v18           #ex:Landroid/database/SQLException;
    :cond_121
    :goto_121
    if-eqz v13, :cond_12b

    .line 451
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 453
    :cond_12b
    return-void

    .line 439
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_12c
    :try_start_12c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_138
    .catch Landroid/database/SQLException; {:try_start_12c .. :try_end_12f} :catch_10b

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 444
    if-eqz v17, :cond_121

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_121

    .line 443
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_138
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 444
    if-eqz v17, :cond_141

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_141
    throw v5

    .line 389
    :array_142
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .registers 31
    .parameter "db"
    .parameter "c"

    .prologue
    .line 293
    const-string v24, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 294
    .local v14, idIndex:I
    const-string v24, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 295
    .local v15, intentIndex:I
    const-string v24, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 296
    .local v20, titleIndex:I
    const-string v24, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 297
    .local v13, iconTypeIndex:I
    const-string v24, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 298
    .local v10, iconIndex:I
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 299
    .local v11, iconPackageIndex:I
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 300
    .local v12, iconResourceIndex:I
    const-string v24, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 301
    .local v6, containerIndex:I
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 302
    .local v16, itemTypeIndex:I
    const-string v24, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 303
    .local v19, screenIndex:I
    const-string v24, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 304
    .local v4, cellXIndex:I
    const-string v24, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 305
    .local v5, cellYIndex:I
    const-string v24, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 306
    .local v22, uriIndex:I
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 308
    .local v7, displayModeIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 309
    .local v18, rows:[Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 310
    .local v8, i:I
    :goto_97
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_184

    .line 311
    new-instance v23, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 312
    .local v23, values:Landroid/content/ContentValues;
    const-string v24, "_id"

    move-object/from16 v0, p2

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    const-string v24, "intent"

    move-object/from16 v0, p2

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v24, "title"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v24, "iconType"

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v24, "icon"

    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 317
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v24, "container"

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v24, "appWidgetId"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v24, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v24, "cellX"

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v24, "cellY"

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v24, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aput-object v23, v18, v8

    move v8, v9

    .line 328
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_97

    .line 330
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_184
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 331
    const/16 v21, 0x0

    .line 333
    .local v21, total:I
    :try_start_189
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 334
    .local v17, numValues:I
    const/4 v8, 0x0

    :goto_18f
    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b7

    .line 335
    const-string v24, "favorites"

    const/16 v25, 0x0

    aget-object v26, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a5
    .catchall {:try_start_189 .. :try_end_1a5} :catchall_1c0

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1b2

    .line 336
    const/16 v24, 0x0

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 346
    :goto_1b1
    return v24

    .line 338
    :cond_1b2
    add-int/lit8 v21, v21, 0x1

    .line 334
    add-int/lit8 v8, v8, 0x1

    goto :goto_18f

    .line 341
    :cond_1b7
    :try_start_1b7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1c0

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v24, v21

    .line 346
    goto :goto_1b1

    .line 343
    .end local v17           #numValues:I
    :catchall_1c0
    move-exception v24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v24
.end method

.method private launchAppWidgetBinder([ILjava/util/ArrayList;)V
    .registers 8
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 465
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 467
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.android.launcher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 469
    const-string v2, "com.android.launcher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 471
    const-string v2, "com.lge.homecube"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 474
    iget-object v2, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 475
    return-void
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 26
    .parameter "db"

    .prologue
    .line 483
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v5, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 488
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    .line 490
    .local v20, i:I
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    .line 491
    .local v22, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v17

    .line 492
    .local v17, attrs:Landroid/util/AttributeSet;
    const-string v3, "favorites"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 494
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    .line 498
    .local v18, depth:I
    :cond_3d
    :goto_3d
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    .local v23, type:I
    const/4 v3, 0x3

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_50

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v18

    if-le v0, v1, :cond_c6

    :cond_50
    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-eq v0, v1, :cond_c6

    .line 500
    const/4 v3, 0x2

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_3d

    .line 504
    const/16 v16, 0x0

    .line 505
    .local v16, added:Z
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 507
    .local v21, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    sget-object v4, Lcom/lge/homecube/R$styleable;->Favorite:[I

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 509
    .local v6, a:Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 510
    const-string v3, "container"

    const/16 v4, -0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const-string v3, "screen"

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v3, "cellX"

    const/4 v4, 0x3

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v3, "cellY"

    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v3, "favorite"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 520
    invoke-direct/range {v3 .. v8}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v16

    .line 550
    :cond_b0
    :goto_b0
    if-eqz v16, :cond_b4

    add-int/lit8 v20, v20, 0x1

    .line 552
    :cond_b4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_b7} :catch_b8
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_b7} :catch_270

    goto :goto_3d

    .line 554
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v16           #added:Z
    .end local v17           #attrs:Landroid/util/AttributeSet;
    .end local v18           #depth:I
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #parser:Landroid/content/res/XmlResourceParser;
    .end local v23           #type:I
    :catch_b8
    move-exception v3

    move-object/from16 v19, v3

    .line 555
    .local v19, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v19           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_c6
    :goto_c6
    return v20

    .line 521
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v16       #added:Z
    .restart local v17       #attrs:Landroid/util/AttributeSet;
    .restart local v18       #depth:I
    .restart local v21       #name:Ljava/lang/String;
    .restart local v22       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v23       #type:I
    :cond_c7
    :try_start_c7
    const-string v3, "search"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto :goto_b0

    .line 523
    :cond_dc
    const-string v3, "clock"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto :goto_b0

    .line 525
    :cond_f1
    const-string v3, "photo"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 526
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addOrangeWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto :goto_b0

    .line 527
    :cond_106
    const-string v3, "makam"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addCellcomWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto :goto_b0

    .line 529
    :cond_11b
    const-string v3, "vivo"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addVivoWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto :goto_b0

    .line 531
    :cond_130
    const-string v3, "tim"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 532
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addTimWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto/16 :goto_b0

    .line 533
    :cond_146
    const-string v3, "claro"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addClaroWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto/16 :goto_b0

    .line 535
    :cond_15c
    const-string v3, "tel"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addTelWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v16

    goto/16 :goto_b0

    .line 537
    :cond_172
    const-string v3, "bookmark_och"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://mobile.orange.ch/livetv"

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://mobile.orange.ch/ringtones"

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://mobile.orange.ch/games"

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://mobile.orange.ch/news"

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z

    .line 542
    add-int/lit8 v20, v20, 0x4

    goto/16 :goto_b0

    .line 543
    :cond_1f1
    const-string v3, "bookmark_ofr"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://info.mob1.orange.fr"

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://meteo.mob1.orange.fr"

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://sport.mob1.orange.fr"

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "http://trafic2.mob1.orange.fr"

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->addBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;III)Z
    :try_end_26c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c7 .. :try_end_26c} :catch_b8
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_26c} :catch_270

    .line 548
    add-int/lit8 v20, v20, 0x4

    goto/16 :goto_b0

    .line 556
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v16           #added:Z
    .end local v17           #attrs:Landroid/util/AttributeSet;
    .end local v18           #depth:I
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #parser:Landroid/content/res/XmlResourceParser;
    .end local v23           #type:I
    :catch_270
    move-exception v3

    move-object/from16 v19, v3

    .line 557
    .local v19, e:Ljava/io/IOException;
    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c6
.end method

.method private sendAppWidgetResetNotify()V
    .registers 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/lge/homecube/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 216
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 220
    const-string v0, "LauncherProvider"

    const-string v1, "creating new launcher database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_18

    .line 245
    iget-object v0, p0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 246
    invoke-direct {p0}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 249
    :cond_18
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 251
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 253
    :cond_21
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v5, 0x3

    const-string v4, "LauncherProvider"

    .line 351
    const-string v2, "LauncherProvider"

    const-string v2, "onUpgrade triggered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    move v1, p2

    .line 354
    .local v1, version:I
    if-ge v1, v5, :cond_21

    .line 356
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 359
    :try_start_10
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_43
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_18} :catch_34

    .line 362
    const/4 v1, 0x3

    .line 367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 371
    :goto_1c
    if-ne v1, v5, :cond_21

    .line 372
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 376
    :cond_21
    const/4 v2, 0x4

    if-eq v1, v2, :cond_33

    .line 377
    const-string v2, "LauncherProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    :cond_33
    return-void

    .line 363
    :catch_34
    move-exception v2

    move-object v0, v2

    .line 365
    .local v0, ex:Landroid/database/SQLException;
    :try_start_36
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_43

    .line 367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1c

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_43
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
