.class Lcom/android/settings/ConfirmLockPattern$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCleared()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern;->access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern;->access$100(Lcom/android/settings/ConfirmLockPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .registers 6
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
    .line 220
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$200(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 221
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 222
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v2}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    .line 233
    :goto_17
    return-void

    .line 224
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_38

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$304(Lcom/android/settings/ConfirmLockPattern;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_38

    .line 226
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$200(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 227
    .local v0, deadline:J
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v2, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->access$400(Lcom/android/settings/ConfirmLockPattern;J)V

    goto :goto_17

    .line 229
    .end local v0           #deadline:J
    :cond_38
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    sget-object v3, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-static {v2, v3}, Lcom/android/settings/ConfirmLockPattern;->access$500(Lcom/android/settings/ConfirmLockPattern;Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 230
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v2}, Lcom/android/settings/ConfirmLockPattern;->access$600(Lcom/android/settings/ConfirmLockPattern;)V

    goto :goto_17
.end method

.method public onPatternStart()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern;->access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$2;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern;->access$100(Lcom/android/settings/ConfirmLockPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method
