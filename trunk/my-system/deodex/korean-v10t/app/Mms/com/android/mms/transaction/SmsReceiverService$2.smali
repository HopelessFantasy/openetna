.class Lcom/android/mms/transaction/SmsReceiverService$2;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService;->handleGpsResultReceived(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;

.field final synthetic val$dests:[Ljava/lang/String;

.field final synthetic val$msgText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iput-object p2, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$dests:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$msgText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$dests:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->val$msgText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$600(Lcom/android/mms/transaction/SmsReceiverService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method
