.class Lcom/lge/orangephotowidget/WidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/orangephotowidget/WidgetService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/orangephotowidget/WidgetService;


# direct methods
.method constructor <init>(Lcom/lge/orangephotowidget/WidgetService;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/orangephotowidget/WidgetService$1;->this$0:Lcom/lge/orangephotowidget/WidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 118
    iget-object v1, p0, Lcom/lge/orangephotowidget/WidgetService$1;->this$0:Lcom/lge/orangephotowidget/WidgetService;

    const-string v2, "com.lge.orangephotowidget.eject"

    invoke-static {v1, v2}, Lcom/lge/orangephotowidget/WidgetService;->access$000(Lcom/lge/orangephotowidget/WidgetService;Ljava/lang/String;)V

    .line 145
    :cond_13
    :goto_13
    return-void

    .line 136
    :cond_14
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 137
    iget-object v1, p0, Lcom/lge/orangephotowidget/WidgetService$1;->this$0:Lcom/lge/orangephotowidget/WidgetService;

    const-string v2, "com.lge.orangephotowidget.mounted"

    invoke-static {v1, v2}, Lcom/lge/orangephotowidget/WidgetService;->access$000(Lcom/lge/orangephotowidget/WidgetService;Ljava/lang/String;)V

    goto :goto_13
.end method
