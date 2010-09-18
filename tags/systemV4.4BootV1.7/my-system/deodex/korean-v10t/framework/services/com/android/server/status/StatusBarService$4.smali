.class Lcom/android/server/status/StatusBarService$4;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .registers 2
    .parameter

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1606
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$4;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$1002(Lcom/android/server/status/StatusBarService;Z)Z

    .line 1609
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1611
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1613
    return-void
.end method
