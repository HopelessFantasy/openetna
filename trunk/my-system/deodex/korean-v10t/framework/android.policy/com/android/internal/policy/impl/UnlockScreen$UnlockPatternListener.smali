.class Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "UnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCleared()V
    .registers 1

    .prologue
    .line 309
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    .line 312
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$200(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$500(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/UnlockScreen;->access$702(Lcom/android/internal/policy/impl/UnlockScreen;I)I

    .line 320
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 340
    :goto_3d
    return-void

    .line 322
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/16 v3, 0x1b58

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_6e

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$808(Lcom/android/internal/policy/impl/UnlockScreen;)I

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$708(Lcom/android/internal/policy/impl/UnlockScreen;)I

    .line 327
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedPatternAttempt()V

    .line 329
    :cond_6e
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$700(Lcom/android/internal/policy/impl/UnlockScreen;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_87

    .line 330
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$200(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 331
    .local v0, deadline:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2, v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$900(Lcom/android/internal/policy/impl/UnlockScreen;J)V

    goto :goto_3d

    .line 334
    .end local v0           #deadline:J
    :cond_87
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$500(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x1040184

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/UnlockScreen;->access$400(Lcom/android/internal/policy/impl/UnlockScreen;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3d
.end method

.method public onPatternStart()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$400(Lcom/android/internal/policy/impl/UnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method
