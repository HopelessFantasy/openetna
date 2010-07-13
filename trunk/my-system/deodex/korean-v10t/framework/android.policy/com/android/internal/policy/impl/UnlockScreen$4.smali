.class Lcom/android/internal/policy/impl/UnlockScreen$4;
.super Landroid/os/CountDownTimer;
.source "UnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockScreen;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockScreen;->access$500(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/UnlockScreen;->access$702(Lcom/android/internal/policy/impl/UnlockScreen;I)I

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$1000(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    .line 364
    return-void
.end method

.method public onTick(J)V
    .registers 10
    .parameter "millisUntilFinished"

    .prologue
    .line 351
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 352
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockScreen;->access$600(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/UnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104019f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method
