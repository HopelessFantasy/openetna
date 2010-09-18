.class Lcom/android/internal/app/NetInitiatedActivity$2;
.super Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity$UpdateTimeTask;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    return-void
.end method


# virtual methods
.method public displayRemainTime(II)V
    .registers 9
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const-string v5, ")"

    .line 133
    const-string v2, "NetInitiatedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remaining time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v2}, Lcom/android/internal/app/NetInitiatedActivity;->access$500(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59

    .line 137
    const/4 v1, -0x1

    .line 138
    .local v1, whichButton:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, btnText:Ljava/lang/String;
    :goto_4d
    iget-object v2, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    iget-object v2, v2, Lcom/android/internal/app/NetInitiatedActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void

    .line 141
    .end local v0           #btnText:Ljava/lang/String;
    .end local v1           #whichButton:I
    :cond_59
    const/4 v1, -0x2

    .line 142
    .restart local v1       #whichButton:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deny ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #btnText:Ljava/lang/String;
    goto :goto_4d
.end method

.method public onTimeOut()V
    .registers 3

    .prologue
    .line 156
    const-string v0, "NetInitiatedActivity"

    const-string v1, "User response timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    iget-object v1, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v1}, Lcom/android/internal/app/NetInitiatedActivity;->access$500(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->access$600(Lcom/android/internal/app/NetInitiatedActivity;I)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$2;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v0}, Lcom/android/internal/app/NetInitiatedActivity;->access$700(Lcom/android/internal/app/NetInitiatedActivity;)V

    .line 163
    return-void
.end method
