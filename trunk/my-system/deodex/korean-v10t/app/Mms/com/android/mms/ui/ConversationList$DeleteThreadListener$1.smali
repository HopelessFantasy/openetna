.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .registers 2
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$700(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v0

    const/16 v1, 0x709

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 642
    return-void
.end method
