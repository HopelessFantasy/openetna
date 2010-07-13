.class Lcom/android/mms/ui/ConversationListDeleteActivity$2;
.super Ljava/lang/Object;
.source "ConversationListDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListDeleteActivity;->onDraftChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$2;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$2;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$000(Lcom/android/mms/ui/ConversationListDeleteActivity;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 219
    return-void
.end method
