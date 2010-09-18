.class Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;
.super Ljava/lang/Object;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/lge/homecube/LauncherAppWidgetHostView;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->access$300(Lcom/lge/homecube/LauncherAppWidgetHostView;)I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 89
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->access$000(Lcom/lge/homecube/LauncherAppWidgetHostView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    invoke-static {v1}, Lcom/lge/homecube/LauncherAppWidgetHostView;->access$100(Lcom/lge/homecube/LauncherAppWidgetHostView;)I

    move-result v1

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->access$200(Lcom/lge/homecube/LauncherAppWidgetHostView;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 81
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 82
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->this$0:Lcom/lge/homecube/LauncherAppWidgetHostView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/homecube/LauncherAppWidgetHostView;->access$202(Lcom/lge/homecube/LauncherAppWidgetHostView;Z)Z

    .line 85
    :cond_30
    return-void
.end method
