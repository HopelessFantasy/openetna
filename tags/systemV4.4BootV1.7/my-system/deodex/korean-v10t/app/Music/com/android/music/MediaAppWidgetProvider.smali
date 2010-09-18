.class public Lcom/android/music/MediaAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider.java"


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate"

.field static final TAG:Ljava/lang/String; = "MusicAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sInstance:Lcom/android/music/MediaAppWidgetProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.music"

    const-string v2, "com.android.music.MediaAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/MediaAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 74
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f0a0004

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 75
    const v2, 0x7f0a0005

    const v3, 0x7f07003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 79
    invoke-direct {p0, p1, v1, v4}, Lcom/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 80
    invoke-direct {p0, p1, p2, v1}, Lcom/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 81
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/music/MediaAppWidgetProvider;
    .registers 2

    .prologue
    .line 46
    const-class v0, Lcom/android/music/MediaAppWidgetProvider;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;

    if-nez v1, :cond_e

    .line 47
    new-instance v1, Lcom/android/music/MediaAppWidgetProvider;

    invoke-direct {v1}, Lcom/android/music/MediaAppWidgetProvider;-><init>()V

    sput-object v1, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;

    .line 49
    :cond_e
    sget-object v1, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 98
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/music/MediaAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 99
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .registers 10
    .parameter "context"
    .parameter "views"
    .parameter "playerActive"

    .prologue
    const v5, 0x7f0a0003

    const/4 v4, 0x0

    .line 174
    const/high16 v3, 0x7f0a

    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v2, serviceName:Landroid/content/ComponentName;
    if-eqz p3, :cond_49

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 185
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 193
    :goto_20
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 197
    const v3, 0x7f0a0001

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 203
    const v3, 0x7f0a0002

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 204
    return-void

    .line 187
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_49
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/music/MusicBrowserActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 190
    .restart local v1       #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_20
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 85
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 86
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_a

    .line 87
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 91
    :goto_9
    return-void

    .line 89
    :cond_a
    sget-object v1, Lcom/android/music/MediaAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_9
.end method


# virtual methods
.method notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .registers 4
    .parameter "service"
    .parameter "what"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 107
    const-string v0, "com.android.music.playbackcomplete"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.android.music.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 110
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 113
    :cond_22
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 54
    invoke-direct {p0, p1, p3}, Lcom/android/music/MediaAppWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method performUpdate(Lcom/android/music/MediaPlaybackService;[I)V
    .registers 16
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v12, 0x7f0a0005

    const v11, 0x7f0a0001

    const/4 v10, 0x0

    const v9, 0x7f0a0004

    .line 119
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 120
    .local v3, res:Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 122
    .local v6, views:Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, titleName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, artistName:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 127
    .local v1, errorState:Ljava/lang/CharSequence;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, status:Ljava/lang/String;
    const-string v7, "shared"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    const-string v7, "unmounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 130
    :cond_36
    const v7, 0x7f07002b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 137
    :cond_3d
    :goto_3d
    if-eqz v1, :cond_79

    .line 139
    const/16 v7, 0x8

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 140
    invoke-virtual {v6, v12, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 149
    :goto_47
    const/high16 v7, 0x7f0a

    invoke-virtual {v6, v7, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 153
    .local v2, playing:Z
    if-eqz v2, :cond_83

    .line 154
    const v7, 0x7f02000c

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 160
    :goto_58
    invoke-direct {p0, p1, v6, v2}, Lcom/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 162
    invoke-direct {p0, p1, p2, v6}, Lcom/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 163
    return-void

    .line 131
    .end local v2           #playing:Z
    :cond_5f
    const-string v7, "removed"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 132
    const v7, 0x7f070029

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3d

    .line 133
    :cond_6f
    if-nez v5, :cond_3d

    .line 134
    const v7, 0x7f07003e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3d

    .line 144
    :cond_79
    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 145
    invoke-virtual {v6, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v6, v12, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_47

    .line 156
    .restart local v2       #playing:Z
    :cond_83
    const v7, 0x7f020010

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_58
.end method
