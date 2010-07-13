.class Lcom/android/server/status/StatusBarService$MyTicker;
.super Lcom/android/server/status/Ticker;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "sb"

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    .line 1567
    invoke-direct {p0, p2, p3}, Lcom/android/server/status/Ticker;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V

    .line 1568
    return-void
.end method


# virtual methods
.method tickerDone()V
    .registers 6

    .prologue
    const v4, 0x10a001b

    .line 1584
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1585
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1100(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1587
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1100(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const v2, 0x10a001c

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1589
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_46

    .line 1590
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1592
    :cond_46
    return-void
.end method

.method tickerHalting()V
    .registers 6

    .prologue
    const/high16 v4, 0x10a

    .line 1595
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1596
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1100(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1598
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1100(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const v2, 0x10a0001

    iget-object v3, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1600
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_45

    .line 1601
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1603
    :cond_45
    return-void
.end method

.method tickerStarting()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const v4, 0x10a001e

    const/4 v3, 0x0

    .line 1572
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$1002(Lcom/android/server/status/StatusBarService;Z)Z

    .line 1573
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1574
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1100(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->access$1100(Lcom/android/server/status/StatusBarService;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    const v2, 0x10a001d

    invoke-static {v1, v2, v5}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1576
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, v4, v5}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1577
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_47

    .line 1578
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$MyTicker;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1580
    :cond_47
    return-void
.end method
