.class Lcom/android/mms/ui/ComposeMessageActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 2033
    const-string v3, "com.android.mms.PROGRESS_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2034
    const-string v3, "token"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2036
    .local v1, token:J
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_20

    .line 2053
    .end local v1           #token:J
    :cond_1f
    :goto_1f
    return-void

    .line 2040
    .restart local v1       #token:J
    :cond_20
    const-string v3, "progress"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2041
    .local v0, progress:I
    sparse-switch v0, :sswitch_data_3e

    .line 2050
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    mul-int/lit8 v4, v0, 0x64

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgress(I)V

    goto :goto_1f

    .line 2043
    :sswitch_31
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    goto :goto_1f

    .line 2047
    :sswitch_38
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    goto :goto_1f

    .line 2041
    :sswitch_data_3e
    .sparse-switch
        -0x2 -> :sswitch_38
        -0x1 -> :sswitch_31
        0x64 -> :sswitch_38
    .end sparse-switch
.end method
