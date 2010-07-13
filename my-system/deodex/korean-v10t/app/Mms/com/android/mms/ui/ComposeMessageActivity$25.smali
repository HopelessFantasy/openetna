.class Lcom/android/mms/ui/ComposeMessageActivity$25;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->asyncUpdateTemporarySmsMessage([Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$dests:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3951
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->val$dests:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->val$contents:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->val$dests:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6400(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    .line 3953
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 3954
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5000(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->val$contents:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6500(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    .line 3955
    return-void
.end method
