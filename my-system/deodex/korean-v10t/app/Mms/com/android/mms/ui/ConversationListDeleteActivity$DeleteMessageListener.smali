.class Lcom/android/mms/ui/ConversationListDeleteActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ConversationListDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationListDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationListDeleteActivity;Lcom/android/mms/ui/ConversationListDeleteActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListDeleteActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ConversationListDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$800(Lcom/android/mms/ui/ConversationListDeleteActivity;)V

    .line 434
    return-void
.end method
