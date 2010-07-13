.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mDeleteUri:Landroid/net/Uri;

.field private final mThreadId:J

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;J)V
    .registers 6
    .parameter
    .parameter "threadId"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-wide p2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    .line 628
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_16

    .line 629
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 634
    :goto_15
    return-void

    .line 632
    :cond_16
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_15
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    const/16 v3, 0x81

    new-instance v4, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V

    .line 644
    return-void
.end method
