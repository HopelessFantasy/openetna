.class public Llge/android/fmradio/FmRadioWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FmRadioWidgetProvider.java"


# static fields
.field public static final CMDAPPWIDGETUPDATE:Ljava/lang/String; = "appwidgetupdate"

.field static final LOGTAG:Ljava/lang/String; = "FM RADIO"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sInstance:Llge/android/fmradio/FmRadioWidgetProvider;


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "lge.android.fmradio"

    const-string v2, "lge.android.fmradio.FmRadioWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Llge/android/fmradio/FmRadioWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 55
    new-instance v0, Llge/android/fmradio/FmRadioWidgetProvider$1;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioWidgetProvider$1;-><init>(Llge/android/fmradio/FmRadioWidgetProvider;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioWidgetProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030002

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f09000a

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    const v2, 0x7f090008

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Llge/android/fmradio/FmRadioWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 111
    invoke-direct {p0, p1, p2, v1}, Llge/android/fmradio/FmRadioWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 112
    return-void
.end method

.method static declared-synchronized getInstance()Llge/android/fmradio/FmRadioWidgetProvider;
    .registers 2

    .prologue
    .line 49
    const-class v0, Llge/android/fmradio/FmRadioWidgetProvider;

    monitor-enter v0

    :try_start_3
    sget-object v1, Llge/android/fmradio/FmRadioWidgetProvider;->sInstance:Llge/android/fmradio/FmRadioWidgetProvider;

    if-nez v1, :cond_e

    .line 50
    new-instance v1, Llge/android/fmradio/FmRadioWidgetProvider;

    invoke-direct {v1}, Llge/android/fmradio/FmRadioWidgetProvider;-><init>()V

    sput-object v1, Llge/android/fmradio/FmRadioWidgetProvider;->sInstance:Llge/android/fmradio/FmRadioWidgetProvider;

    .line 52
    :cond_e
    sget-object v1, Llge/android/fmradio/FmRadioWidgetProvider;->sInstance:Llge/android/fmradio/FmRadioWidgetProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 128
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 129
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Llge/android/fmradio/FmRadioWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 130
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
    .registers 9
    .parameter "context"
    .parameter "views"
    .parameter "playerActive"

    .prologue
    const/4 v4, 0x0

    .line 326
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Llge/android/fmradio/FmRadioControlService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v2, serviceName:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Llge/android/fmradio/FmRadioView;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 348
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const v3, 0x7f090007

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 350
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "lge.android.fmradio.fmradioservicecommand.controlpower"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 352
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 354
    const v3, 0x7f090006

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 356
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "lge.android.fmradio.fmradioservicecommand.frequencyup"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 358
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 360
    const v3, 0x7f09000c

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 362
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "lge.android.fmradio.fmradioservicecommand.frequencydown"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 364
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 366
    const v3, 0x7f09000b

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 367
    return-void
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 116
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 117
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_a

    .line 118
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 122
    :goto_9
    return-void

    .line 120
    :cond_a
    sget-object v1, Llge/android/fmradio/FmRadioWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_9
.end method


# virtual methods
.method UpdateDisplay(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;[I)V
    .registers 14
    .parameter "service"
    .parameter "what"
    .parameter "appWidgetIds"

    .prologue
    const/high16 v6, 0x1000

    const-class v9, Llge/android/fmradio/FmRadiowidgetsinglebtn;

    const-string v8, "state"

    const-string v7, "Launch SSP dialog immediately open dialog"

    const-string v5, "FM RADIO"

    .line 155
    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030002

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 158
    .local v2, views:Landroid/widget/RemoteViews;
    const-string v3, "lge.android.fmradio.power"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 160
    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_3b

    .line 161
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioWidgetProvider][UpdateDisplay] NOTIFY_UI_MSG_POWER_ON"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const v3, 0x7f090006

    const v4, 0x7f020098

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 226
    :cond_3a
    :goto_3a
    return-void

    .line 164
    :cond_3b
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioWidgetProvider][UpdateDisplay] NOTIFY_UI_MSG_POWER_OFF"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const v3, 0x7f090006

    const v4, 0x7f02000f

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3a

    .line 167
    :cond_4c
    const-string v3, "lge.android.fmradio.updatefreq"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 168
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioWidgetProvider][UpdateDisplay] NOTIFY_UI_MSG_UPDATE_FREQ"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const v3, 0x7f090008

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 171
    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_85

    .line 172
    const v3, 0x7f090008

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    :cond_85
    const v3, 0x7f090009

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    rem-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3a

    .line 176
    :cond_b9
    const-string v3, "lge.android.fmradio.warningwithoutearjack"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 177
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioWidgetProvider][UpdateDisplay] NOTIFY_UI_MSG_WARNING_WITHOUT_EARJACK"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Llge/android/fmradio/FmRadiowidgetsinglebtn;

    invoke-virtual {v0, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    const-string v3, "state"

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    const-string v3, "FM RADIO"

    const-string v3, "Launch SSP dialog immediately open dialog"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p1, v0}, Llge/android/fmradio/FmRadioControlService;->startActivity(Landroid/content/Intent;)V

    .line 188
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioWidgetProvider][UpdateDisplay] service.sendBroadcast(intent)"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 190
    .end local v0           #intent:Landroid/content/Intent;
    :cond_ee
    const-string v3, "lge.android.fmradio.airplainmode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Llge/android/fmradio/FmRadiowidgetsinglebtn;

    invoke-virtual {v0, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v3, "state"

    const/4 v3, 0x2

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    const-string v3, "FM RADIO"

    const-string v3, "Launch SSP dialog immediately open dialog"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1, v0}, Llge/android/fmradio/FmRadioControlService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a

    .line 201
    .end local v0           #intent:Landroid/content/Intent;
    :cond_115
    const-string v3, "lge.android.fmradio.bluetoothmode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Llge/android/fmradio/FmRadiowidgetsinglebtn;

    invoke-virtual {v0, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    const-string v3, "state"

    const/4 v3, 0x3

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    const-string v3, "FM RADIO"

    const-string v3, "Launch SSP dialog immediately open dialog"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p1, v0}, Llge/android/fmradio/FmRadioControlService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a

    .line 212
    .end local v0           #intent:Landroid/content/Intent;
    :cond_13c
    const-string v3, "lge.android.fmradio.headsetremoved"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 214
    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_3a

    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->getCurrentSoundDevice()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3a

    .line 215
    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Llge/android/fmradio/FmRadiowidgetsinglebtn;

    invoke-virtual {v0, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    const-string v3, "state"

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    const-string v3, "FM RADIO"

    const-string v3, "Launch SSP dialog immediately open dialog"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p1, v0}, Llge/android/fmradio/FmRadioControlService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3a
.end method

.method public haswidgetInstances(Llge/android/fmradio/FmRadioControlService;)Z
    .registers 3
    .parameter "service"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method notifyChange(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V
    .registers 6
    .parameter "service"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioWidgetProvider][notifyChange] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 146
    invoke-virtual {p0, p1, p2, v2}, Llge/android/fmradio/FmRadioWidgetProvider;->UpdateDisplay(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;[I)V

    .line 147
    invoke-virtual {p0, p1, v2}, Llge/android/fmradio/FmRadioWidgetProvider;->performUpdate(Llge/android/fmradio/FmRadioControlService;[I)V

    .line 149
    :cond_14
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    const-string v0, "FM RADIO"

    const-string v1, "[MediaAppWidgetProvider][onReceive] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 76
    invoke-direct {p0, p1, p3}, Llge/android/fmradio/FmRadioWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 78
    const-string v1, "FM RADIO"

    const-string v2, "[MediaAppWidgetProvider][onUpdate] "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, updateIntent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "appwidgetupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method performUpdate(Llge/android/fmradio/FmRadioControlService;[I)V
    .registers 12
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    const v8, 0x7f090006

    const v7, 0x7f090009

    const v6, 0x7f090008

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 251
    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030002

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 254
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f09000c

    const v3, 0x7f02000b

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 255
    const v2, 0x7f09000b

    const v3, 0x7f020004

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 291
    invoke-virtual {p1}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_a2

    .line 293
    const v2, 0x7f020098

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 294
    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_9e

    .line 295
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 298
    :goto_44
    const v2, 0x7f09000a

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 310
    :goto_97
    invoke-direct {p0, p1, v1, v4}, Llge/android/fmradio/FmRadioWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 311
    invoke-direct {p0, p1, p2, v1}, Llge/android/fmradio/FmRadioWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 312
    return-void

    .line 297
    :cond_9e
    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_44

    .line 304
    :cond_a2
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 305
    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    const v2, 0x7f09000a

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 307
    const v2, 0x7f02000c

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_97
.end method
