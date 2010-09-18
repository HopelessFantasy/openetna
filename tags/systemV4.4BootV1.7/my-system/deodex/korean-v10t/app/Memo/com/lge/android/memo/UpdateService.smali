.class public Lcom/lge/android/memo/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# static fields
.field public static final ACTION_UPDATE_ALL:Ljava/lang/String; = "com.lge.android.memo.UPDATE_ALL"

.field private static sAppWidgetIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/lge/android/memo/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static getNextUpdate()I
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/lge/android/memo/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/lge/android/memo/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9
.end method

.method private static hasMoreUpdates()Z
    .registers 2

    .prologue
    .line 23
    sget-object v1, Lcom/lge/android/memo/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    move v0, v1

    .line 24
    .local v0, hasMore:Z
    :goto_a
    if-nez v0, :cond_c

    .line 26
    :cond_c
    return v0

    .line 23
    .end local v0           #hasMore:Z
    :cond_d
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method

.method public static requestUpdate([I)V
    .registers 7
    .parameter "appWidgetIds"

    .prologue
    .line 17
    move-object v1, p0

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_13

    aget v0, v1, v2

    .line 18
    .local v0, appWidgetId:I
    sget-object v4, Lcom/lge/android/memo/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 17
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 20
    .end local v0           #appWidgetId:I
    :cond_13
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 43
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_4
    :goto_4
    invoke-static {}, Lcom/lge/android/memo/UpdateService;->hasMoreUpdates()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 44
    invoke-static {}, Lcom/lge/android/memo/UpdateService;->getNextUpdate()I

    move-result v0

    .line 45
    .local v0, appWidgetId:I
    const/4 v2, 0x0

    .line 46
    .local v2, updateViews:Landroid/widget/RemoteViews;
    invoke-static {p0, v0}, Lcom/lge/android/memo/MemoAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_4

    .line 51
    .end local v0           #appWidgetId:I
    .end local v2           #updateViews:Landroid/widget/RemoteViews;
    :cond_19
    invoke-virtual {p0, p2}, Lcom/lge/android/memo/UpdateService;->stopSelf(I)V

    .line 52
    return-void
.end method
