.class Lcom/android/mms/ui/MessageUtils$2$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$2;

.field final synthetic val$part:Lcom/google/android/mms/pdu/PduPart;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$2;Lcom/google/android/mms/pdu/PduPart;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$2$1;->this$0:Lcom/android/mms/ui/MessageUtils$2;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$2$1;->val$part:Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$2$1;->this$0:Lcom/android/mms/ui/MessageUtils$2;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$2;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$2$1;->val$part:Lcom/google/android/mms/pdu/PduPart;

    invoke-interface {v0, v1}, Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;->onResizeResult(Lcom/google/android/mms/pdu/PduPart;)V

    .line 816
    return-void
.end method
