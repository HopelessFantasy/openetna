.class Lcom/android/qualcomm/qcrilhook/QcRilHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/android/qualcomm/qcrilhook/QcRilHook;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v9, "QUALCOMM"

    const-string v8, "QC_RIL_OEM_HOOK"

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 79
    const/4 v5, 0x0

    .line 80
    .local v5, response_id:I
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v6, "Received Broadcast Intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v6, "payload"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 86
    .local v3, payload:[B
    array-length v6, v3

    iget-object v7, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v7}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->access$000(Lcom/android/qualcomm/qcrilhook/QcRilHook;)I

    move-result v7

    if-ge v6, v7, :cond_5e

    .line 87
    const-string v6, "QC_RIL_OEM_HOOK"

    const-string v6, "UNSOL_RESPONSE_OEM_HOOK_RAW incomplete header"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v7}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->access$000(Lcom/android/qualcomm/qcrilhook/QcRilHook;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes. Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v3           #payload:[B
    .end local v5           #response_id:I
    :goto_5d
    return-void

    .line 92
    .restart local v3       #payload:[B
    .restart local v5       #response_id:I
    :cond_5e
    invoke-static {v3}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 93
    .local v4, response:Ljava/nio/ByteBuffer;
    const-string v6, "QUALCOMM"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    new-array v1, v6, [B

    .line 94
    .local v1, oem_id_bytes:[B
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 95
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 96
    .local v2, oem_id_str:Ljava/lang/String;
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Oem ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v6, "QUALCOMM"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ab

    .line 98
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect Oem ID in QCRILHOOK UNSOL RESP. Expected QUALCOMM. Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 102
    :cond_ab
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 103
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Response ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 113
    .end local v1           #oem_id_bytes:[B
    .end local v2           #oem_id_str:Ljava/lang/String;
    .end local v3           #payload:[B
    .end local v4           #response:Ljava/nio/ByteBuffer;
    .end local v5           #response_id:I
    :cond_e1
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received Unknown Intent: action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d
.end method
