.class Lcom/android/launcher/Search$1;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Search;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TIME_BEFORE_ANIMATION_END:J = 0x50L


# instance fields
.field private final mShowSearchDialogRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher/Search;


# direct methods
.method constructor <init>(Lcom/android/launcher/Search;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher/Search$1;->this$0:Lcom/android/launcher/Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/launcher/Search$1$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/Search$1$1;-><init>(Lcom/android/launcher/Search$1;)V

    iput-object v0, p0, Lcom/android/launcher/Search$1;->mShowSearchDialogRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 110
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 8
    .parameter "animation"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher/Search$1;->this$0:Lcom/android/launcher/Search;

    invoke-virtual {v0}, Lcom/android/launcher/Search;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/Search$1;->mShowSearchDialogRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher/Search$1;->this$0:Lcom/android/launcher/Search;

    invoke-static {v2}, Lcom/android/launcher/Search;->access$200(Lcom/android/launcher/Search;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x50

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method
