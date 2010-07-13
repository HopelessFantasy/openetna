.class public Lcom/android/qualcomm/qcnvitems/QcNvItems;
.super Ljava/lang/Object;
.source "QcNvItems.java"

# interfaces
.implements Lcom/android/qualcomm/qcnvitems/IQcNvItems;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final SIZE_OF_INT:I = 0x4


# instance fields
.field private mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

.field private mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

.field private mMdn:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;

.field private mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

.field private mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

.field private mSidNid:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "QC_NV_ITEMS"

    sput-object v0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Lcom/android/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;-><init>()V

    iput-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    .line 46
    new-array v1, v3, [Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    iput-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v3, :cond_1e

    .line 48
    iget-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    new-instance v2, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    invoke-direct {v2}, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;-><init>()V

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 50
    :cond_1e
    new-instance v1, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    invoke-direct {v1}, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;-><init>()V

    iput-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    .line 51
    new-instance v1, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;

    invoke-direct {v1}, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;-><init>()V

    iput-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMdn:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;

    .line 52
    new-instance v1, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_type;

    invoke-direct {v1}, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_type;-><init>()V

    iput-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mSidNid:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_type;

    .line 53
    iget-object v2, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mSidNid:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_type;

    const/4 v1, 0x1

    filled-new-array {v3, v1}, [I

    move-result-object v1

    const-class v3, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_pair_type;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_pair_type;

    iput-object v1, v2, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_type;->pair:[[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_sid_nid_pair_type;

    .line 54
    new-instance v1, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    invoke-direct {v1}, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;-><init>()V

    iput-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    .line 55
    return-void
.end method

.method private getAutoAnswer()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 231
    iget-object v3, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    const v4, 0x80001

    const/16 v5, 0x4a

    invoke-virtual {v3, v4, v5}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v2

    .line 234
    .local v2, result:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_35

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_35

    .line 236
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v1, v0

    .line 238
    .local v1, responseData:[B
    iget-object v3, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    aget-byte v4, v1, v6

    if-nez v4, :cond_33

    move v4, v6

    :goto_2a
    iput-boolean v4, v3, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->enable:Z

    .line 239
    iget-object v3, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    aget-byte v4, v1, v7

    iput-byte v4, v3, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->rings:B

    .line 244
    return-void

    :cond_33
    move v4, v7

    .line 238
    goto :goto_2a

    .line 241
    .end local v1           #responseData:[B
    :cond_35
    sget-object v3, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Unable to read Auto Answer Value from NV Memory"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method

.method private getNvItemIdForMinId(I)I
    .registers 5
    .parameter "minId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_28

    .line 93
    sget-object v0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect MIN ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 89
    :pswitch_21
    const/16 v0, 0x20

    .line 91
    :goto_23
    return v0

    :pswitch_24
    const/16 v0, 0x21

    goto :goto_23

    .line 87
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method private setAutoAnswer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/16 v3, 0xa

    new-array v1, v3, [B

    .line 267
    .local v1, requestData:[B
    invoke-static {v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 269
    .local v0, buf:Ljava/nio/ByteBuffer;
    const/16 v3, 0x4a

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 270
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 273
    iget-object v3, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    iget-boolean v3, v3, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->enable:Z

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    :goto_18
    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 274
    iget-object v3, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    iget-byte v3, v3, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->rings:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 276
    iget-object v3, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    const v4, 0x80002

    invoke-virtual {v3, v4, v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    .line 279
    .local v2, result:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3f

    .line 280
    sget-object v3, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Unable to Set Auto Answer"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 273
    .end local v2           #result:Landroid/os/AsyncResult;
    :cond_3d
    const/4 v3, 0x0

    goto :goto_18

    .line 283
    .restart local v2       #result:Landroid/os/AsyncResult;
    :cond_3f
    return-void
.end method


# virtual methods
.method public disableAutoAnswer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    iput-boolean v1, v0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->enable:Z

    .line 291
    iget-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    iput-byte v1, v0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->rings:B

    .line 292
    invoke-direct {p0}, Lcom/android/qualcomm/qcnvitems/QcNvItems;->setAutoAnswer()V

    .line 293
    return-void
.end method

.method public getAkey()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoAnswerRings()Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/qualcomm/qcnvitems/QcNvItems;->getAutoAnswer()V

    .line 253
    new-instance v0, Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;

    invoke-direct {v0}, Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;-><init>()V

    .line 254
    .local v0, retval:Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;
    iget-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    iget-boolean v1, v1, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->enable:Z

    iput-boolean v1, v0, Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;->enable:Z

    .line 255
    iget-object v1, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    iget-byte v1, v1, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->rings:B

    iput-byte v1, v0, Lcom/android/qualcomm/qcnvitems/IQcNvItems$AutoAnswer;->rings:B

    .line 257
    return-object v0
.end method

.method public getImsi_11_12()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    const v5, 0x80001

    const/16 v6, 0xb1

    invoke-virtual {v4, v5, v6}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v3

    .line 143
    .local v3, result:Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_46

    .line 144
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 145
    .local v2, responseData:[B
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    const/4 v5, 0x0

    aget-byte v5, v2, v5

    iput-byte v5, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;->nam:B

    .line 146
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    iput-byte v5, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;->imsi_11_12:B

    .line 147
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    iget-byte v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;->imsi_11_12:B

    invoke-static {v4}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, imsi:Ljava/lang/String;
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI_11_12 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 150
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #responseData:[B
    :cond_46
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to read IMSI_11_12 from Nam"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
.end method

.method public getMdn()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    const v5, 0x80001

    const/16 v6, 0xb2

    invoke-virtual {v4, v5, v6}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v3

    .line 204
    .local v3, result:Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_60

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    array-length v4, v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_60

    .line 206
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 208
    .local v2, responseData:Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMdn:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    iput-byte v5, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;->nam:B

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    const/16 v4, 0xa

    if-ge v0, v4, :cond_3e

    .line 210
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMdn:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;

    iget-object v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;->dir_number:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v4, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 213
    :cond_3e
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMdn:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;

    iget-object v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_dir_number_type;->dir_number:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 214
    .local v1, mdn:Ljava/lang/String;
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MDN is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-object v1

    .line 216
    .end local v0           #i:I
    .end local v1           #mdn:Ljava/lang/String;
    .end local v2           #responseData:Ljava/nio/ByteBuffer;
    :cond_60
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to read MDN from Nam"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
.end method

.method public getMin(I)Ljava/lang/String;
    .registers 12
    .parameter "minId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/qualcomm/qcnvitems/QcNvItems;->getNvItemIdForMinId(I)I

    move-result v2

    .line 66
    .local v2, nvItemId:I
    iget-object v5, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    const v6, 0x80001

    invoke-virtual {v5, v6, v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v4

    .line 68
    .local v4, result:Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_a0

    .line 69
    sget-object v6, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incoming Response Data is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 72
    .local v3, responseData:Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v6, p1, v9

    aget-object v5, v5, v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    iput-byte v6, v5, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->nam:B

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4b
    const/4 v5, 0x2

    if-ge v0, v5, :cond_95

    .line 74
    iget-object v5, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v6, p1, v9

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v0

    .line 75
    sget-object v5, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v8, p1, v9

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 77
    :cond_95
    iget-object v5, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v6, p1, v9

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, min:Ljava/lang/String;
    return-object v1

    .line 79
    .end local v0           #i:I
    .end local v1           #min:Ljava/lang/String;
    .end local v3           #responseData:Ljava/nio/ByteBuffer;
    :cond_a0
    sget-object v5, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Unable to read IMSI_11_12 from Nam"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
.end method

.method public setAkey(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoAnswerRings(B)V
    .registers 4
    .parameter "rings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->enable:Z

    .line 301
    iget-object v0, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mAutoAnswer:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;

    iput-byte p1, v0, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_auto_answer_type;->rings:B

    .line 302
    invoke-direct {p0}, Lcom/android/qualcomm/qcnvitems/QcNvItems;->setAutoAnswer()V

    .line 303
    return-void
.end method

.method public setImsi_11_12(Ljava/lang/String;)Z
    .registers 8
    .parameter "imsi_11_12"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 162
    const/16 v4, 0xa

    new-array v2, v4, [B

    .line 163
    .local v2, requestData:[B
    invoke-static {v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/android/qualcomm/qcnvitems/QcNvItems;->getImsi_11_12()Ljava/lang/String;

    .line 166
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 168
    .local v1, imsi_11_12_val:B
    if-ltz v1, :cond_4e

    const/16 v4, 0x63

    if-ge v1, v4, :cond_4e

    .line 169
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    iput-byte v1, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;->imsi_11_12:B

    .line 175
    const/16 v4, 0xb1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 176
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    iget-byte v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;->nam:B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mImsi_11_12:Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;

    iget-byte v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_imsi_11_12_type;->imsi_11_12:B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    const v5, 0x80002

    invoke-virtual {v4, v5, v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 185
    .local v3, result:Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5b

    .line 186
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Unable to Set IMSI_11_12"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 171
    .end local v3           #result:Landroid/os/AsyncResult;
    :cond_4e
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    const-string v5, "IMSI_11_12 needs to be between 0 and 99"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v4, Ljava/security/InvalidParameterException;

    invoke-direct {v4}, Ljava/security/InvalidParameterException;-><init>()V

    throw v4

    .line 190
    .restart local v3       #result:Landroid/os/AsyncResult;
    :cond_5b
    const/4 v4, 0x1

    return v4
.end method

.method public setMdn(Ljava/lang/String;)Z
    .registers 3
    .parameter "mdn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public setMin(ILjava/lang/String;)Z
    .registers 13
    .parameter "minId"
    .parameter "minValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 103
    const/16 v4, 0x11

    new-array v2, v4, [B

    .line 104
    .local v2, requestData:[B
    invoke-static {v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1}, Lcom/android/qualcomm/qcnvitems/QcNvItems;->getMin(I)Ljava/lang/String;

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v9, :cond_47

    .line 108
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v5, p1, v8

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    .line 109
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New min is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v7, p1, v8

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 112
    :cond_47
    invoke-direct {p0, p1}, Lcom/android/qualcomm/qcnvitems/QcNvItems;->getNvItemIdForMinId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v5, p1, v8

    aget-object v4, v4, v5

    iget-byte v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->nam:B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 118
    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v9, :cond_71

    .line 119
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mMins:[Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;

    sub-int v5, p1, v8

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/qualcomm/qcnvitems/QcNvItemTypes$nv_min_type;->min:[I

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 122
    :cond_71
    iget-object v4, p0, Lcom/android/qualcomm/qcnvitems/QcNvItems;->mQcRilOemHook:Lcom/android/qualcomm/qcrilhook/QcRilHook;

    const v5, 0x80002

    invoke-virtual {v4, v5, v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v3

    .line 125
    .local v3, result:Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9c

    .line 126
    sget-object v4, Lcom/android/qualcomm/qcnvitems/QcNvItems;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to Set MIN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 130
    :cond_9c
    return v8
.end method
