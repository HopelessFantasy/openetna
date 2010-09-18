.class Lcom/lge/orangephotowidget/WidgetService$2;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/orangephotowidget/WidgetService;
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
    .line 187
    iput-object p1, p0, Lcom/lge/orangephotowidget/WidgetService$2;->this$0:Lcom/lge/orangephotowidget/WidgetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, re_notify:I
    iget-object v1, p0, Lcom/lge/orangephotowidget/WidgetService$2;->this$0:Lcom/lge/orangephotowidget/WidgetService;

    invoke-static {v1}, Lcom/lge/orangephotowidget/WidgetService;->access$100(Lcom/lge/orangephotowidget/WidgetService;)Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/orangephotowidget/WidgetService$2;->this$0:Lcom/lge/orangephotowidget/WidgetService;

    iget-object v2, v2, Lcom/lge/orangephotowidget/WidgetService;->mService:Lcom/lge/orangephotowidget/WidgetService;

    const-string v3, "com.lge.orangephotowidget.mounted"

    invoke-virtual {v1, v2, v3}, Lcom/lge/orangephotowidget/OrangePhotoWidgetProvider;->notifyChange(Lcom/lge/orangephotowidget/WidgetService;Ljava/lang/String;)I

    move-result v0

    .line 191
    return-void
.end method
