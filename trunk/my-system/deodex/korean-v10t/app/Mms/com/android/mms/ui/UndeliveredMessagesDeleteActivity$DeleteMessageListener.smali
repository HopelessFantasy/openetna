.class Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "UndeliveredMessagesDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->access$400(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)V

    .line 310
    return-void
.end method
