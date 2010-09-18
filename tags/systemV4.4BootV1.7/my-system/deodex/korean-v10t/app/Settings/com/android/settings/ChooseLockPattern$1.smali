.class Lcom/android/settings/ChooseLockPattern$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPattern;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f08027f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern;->access$200(Lcom/android/settings/ChooseLockPattern;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern;->access$300(Lcom/android/settings/ChooseLockPattern;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    return-void
.end method


# virtual methods
.method public onPatternCleared()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern;->access$000(Lcom/android/settings/ChooseLockPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .registers 5
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
    .line 107
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern;->access$100(Lcom/android/settings/ChooseLockPattern;)Lcom/android/settings/ChooseLockPattern$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern;->access$100(Lcom/android/settings/ChooseLockPattern;)Lcom/android/settings/ChooseLockPattern$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne v0, v1, :cond_3c

    .line 108
    :cond_14
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_22
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 110
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 125
    :goto_33
    return-void

    .line 112
    :cond_34
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_33

    .line 114
    :cond_3c
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern;->access$100(Lcom/android/settings/ChooseLockPattern;)Lcom/android/settings/ChooseLockPattern$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    if-eq v0, v1, :cond_50

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern;->access$100(Lcom/android/settings/ChooseLockPattern;)Lcom/android/settings/ChooseLockPattern$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$Stage;

    if-ne v0, v1, :cond_70

    .line 115
    :cond_50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5f

    .line 116
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_33

    .line 118
    :cond_5f
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    goto :goto_33

    .line 122
    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v2}, Lcom/android/settings/ChooseLockPattern;->access$100(Lcom/android/settings/ChooseLockPattern;)Lcom/android/settings/ChooseLockPattern$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$1;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern;->access$000(Lcom/android/settings/ChooseLockPattern;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$1;->patternInProgress()V

    .line 100
    return-void
.end method
