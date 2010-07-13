.class Lcom/lge/homecube/DragLayer$ScrollTimerTask;
.super Ljava/util/TimerTask;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/DragLayer;


# direct methods
.method constructor <init>(Lcom/lge/homecube/DragLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 680
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0}, Lcom/lge/homecube/DragLayer;->access$000(Lcom/lge/homecube/DragLayer;)F

    move-result v0

    iget-object v1, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v1}, Lcom/lge/homecube/DragLayer;->access$100(Lcom/lge/homecube/DragLayer;)Lcom/lge/homecube/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    const/16 v2, 0x32

    sub-int/2addr v1, v2

    const/16 v2, 0x24

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3f

    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0}, Lcom/lge/homecube/DragLayer;->access$000(Lcom/lge/homecube/DragLayer;)F

    move-result v0

    iget-object v1, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v1}, Lcom/lge/homecube/DragLayer;->access$100(Lcom/lge/homecube/DragLayer;)Lcom/lge/homecube/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    const/16 v2, 0x1e

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    .line 681
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0, v3}, Lcom/lge/homecube/DragLayer;->access$202(Lcom/lge/homecube/DragLayer;Z)Z

    .line 691
    :goto_3e
    return-void

    .line 683
    :cond_3f
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0}, Lcom/lge/homecube/DragLayer;->access$000(Lcom/lge/homecube/DragLayer;)F

    move-result v0

    const/high16 v1, -0x3e10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5d

    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0}, Lcom/lge/homecube/DragLayer;->access$000(Lcom/lge/homecube/DragLayer;)F

    move-result v0

    const/high16 v1, 0x4270

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5d

    .line 684
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0, v3}, Lcom/lge/homecube/DragLayer;->access$202(Lcom/lge/homecube/DragLayer;Z)Z

    goto :goto_3e

    .line 687
    :cond_5d
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0, v4}, Lcom/lge/homecube/DragLayer;->access$302(Lcom/lge/homecube/DragLayer;Lcom/lge/homecube/DragLayer$ScrollTimerTask;)Lcom/lge/homecube/DragLayer$ScrollTimerTask;

    .line 688
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    invoke-static {v0, v4}, Lcom/lge/homecube/DragLayer;->access$402(Lcom/lge/homecube/DragLayer;Ljava/util/Timer;)Ljava/util/Timer;

    .line 689
    iget-object v0, p0, Lcom/lge/homecube/DragLayer$ScrollTimerTask;->this$0:Lcom/lge/homecube/DragLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/homecube/DragLayer;->access$202(Lcom/lge/homecube/DragLayer;Z)Z

    goto :goto_3e
.end method
