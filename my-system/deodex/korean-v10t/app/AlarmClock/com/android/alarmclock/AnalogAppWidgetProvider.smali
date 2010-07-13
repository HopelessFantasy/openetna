.class public Lcom/android/alarmclock/AnalogAppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AnalogAppWidgetProvider.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AnalogAppWidgetProvider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 56
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030003

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 59
    .local v3, views:Landroid/widget/RemoteViews;
    const-string v4, "appWidgetIds"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 61
    .local v1, appWidgetIds:[I
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 62
    .local v2, gm:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 64
    .end local v1           #appWidgetIds:[I
    .end local v2           #gm:Landroid/appwidget/AppWidgetManager;
    .end local v3           #views:Landroid/widget/RemoteViews;
    :cond_25
    return-void
.end method
