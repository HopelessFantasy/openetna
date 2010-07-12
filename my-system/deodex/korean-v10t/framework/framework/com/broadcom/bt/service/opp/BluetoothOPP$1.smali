.class Lcom/broadcom/bt/service/opp/BluetoothOPP$1;
.super Lcom/broadcom/bt/service/opp/IOppCallback$Stub;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/BluetoothOPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onOpCreateVcard(ILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 246
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpCreateVcard ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpCreateVcard(ILjava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 250
    :cond_3a
    monitor-exit p0

    return-void

    .line 245
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .registers 5
    .parameter "filePathName"

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 254
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpOwnerVcardNotSet ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 257
    :cond_30
    monitor-exit p0

    return-void

    .line 253
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpStoreVcard(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "status"
    .parameter "filePathName"
    .parameter "contactName"
    .parameter "storeId"

    .prologue
    const-string v0, ":"

    .line 261
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 262
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpStoreVcard ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpStoreVcard(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_52

    .line 267
    :cond_50
    monitor-exit p0

    return-void

    .line 261
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcClose(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcClose(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 208
    :cond_12
    monitor-exit p0

    return-void

    .line 206
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcEnable()V
    .registers 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 176
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcEnable()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 177
    :cond_12
    monitor-exit p0

    return-void

    .line 175
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .registers 5
    .parameter "status"
    .parameter "filePathName"

    .prologue
    const-string v0, "BluetoothOPP"

    .line 198
    monitor-enter p0

    :try_start_3
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpcObjectPushed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 200
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpcObjectPushed ... ()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 203
    :cond_22
    monitor-exit p0

    return-void

    .line 198
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .registers 4
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 194
    :cond_12
    monitor-exit p0

    return-void

    .line 192
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcOpen()V
    .registers 2

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcOpen()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 182
    :cond_12
    monitor-exit p0

    return-void

    .line 180
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpcProgress(II)V
    .registers 4
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 187
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpcProgress(II)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 188
    :cond_12
    monitor-exit p0

    return-void

    .line 186
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 14
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 231
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 234
    :cond_18
    monitor-exit p0

    return-void

    .line 230
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsClose()V
    .registers 3

    .prologue
    const-string v0, "BluetoothOPP"

    .line 237
    monitor-enter p0

    :try_start_3
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpsClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 239
    const-string v0, "BluetoothOPP"

    const-string v1, "onOpsClose ... ()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsClose()V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 242
    :cond_22
    monitor-exit p0

    return-void

    .line 237
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .registers 4
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 220
    :cond_12
    monitor-exit p0

    return-void

    .line 218
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsOpen()V
    .registers 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsOpen()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 225
    :cond_12
    monitor-exit p0

    return-void

    .line 223
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpsProgress(II)V
    .registers 4
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 213
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP$1;->this$0:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->access$000(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/opp/IOppEventHandler;->onOpsProgress(II)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 214
    :cond_12
    monitor-exit p0

    return-void

    .line 212
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
