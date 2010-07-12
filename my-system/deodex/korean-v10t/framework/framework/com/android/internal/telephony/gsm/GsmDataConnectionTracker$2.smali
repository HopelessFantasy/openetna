.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 1247
    const-wide/16 v5, -0x1

    .local v5, preTxPkts:J
    const-wide/16 v3, -0x1

    .line 1251
    .local v3, preRxPkts:J
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v5

    .line 1252
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v3

    .line 1255
    :try_start_10
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    invoke-interface {v12}, Landroid/os/INetStatService;->getMobileTxPackets()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1256
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    invoke-interface {v12}, Landroid/os/INetStatService;->getMobileRxPackets()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2a} :catch_206

    .line 1265
    :goto_2a
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_1bc

    const-wide/16 v11, 0x0

    cmp-long v11, v5, v11

    if-gtz v11, :cond_3e

    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-lez v11, :cond_1bc

    .line 1266
    :cond_3e
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v11

    sub-long v9, v11, v5

    .line 1267
    .local v9, sent:J
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v11

    sub-long v7, v11, v3

    .line 1269
    .local v7, received:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_218

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-lez v11, :cond_218

    .line 1270
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1271
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1272
    .local v2, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1291
    :goto_69
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v11

    if-eq v11, v2, :cond_87

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_87

    .line 1292
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1293
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1297
    :cond_87
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v1

    .line 1299
    .local v1, isUMTS:Z
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1bc

    .line 1321
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "state is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", DataInactivityCounter : ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/4 v11, 0x1

    if-ne v1, v11, :cond_336

    .line 1325
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_32a

    .line 1327
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v11, v12, :cond_1bc

    .line 1329
    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v2, v11, :cond_31c

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_31c

    .line 1332
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    if-lez v11, :cond_161

    .line 1334
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    div-int/lit8 v11, v11, 0x5

    const/4 v12, 0x5

    if-ge v11, v12, :cond_2a1

    .line 1336
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    rem-int/lit8 v11, v11, 0x5

    if-nez v11, :cond_27b

    .line 1338
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LGE_Fast_Dormancy) calling goFastDormancy, GoDormancyCounter is now ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), GO_DORMANCY_RETRY_MAX_COUNT="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->goFastDormancy(Landroid/os/Message;)I

    .line 1344
    :goto_15c
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3304(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    .line 1363
    :cond_161
    :goto_161
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v12

    if-lt v11, v12, :cond_2e9

    .line 1365
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LGE_Fast_Dormancy) calling goFastDormancy, DataInactivityCounter is now ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), DATA_INACTIVITY_MAX_COUNT="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->goFastDormancy(Landroid/os/Message;)I

    .line 1367
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1368
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1409
    .end local v1           #isUMTS:Z
    .end local v2           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_1bc
    :goto_1bc
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v1

    .line 1412
    .restart local v1       #isUMTS:Z
    if-eqz v1, :cond_1d2

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-nez v11, :cond_372

    .line 1414
    :cond_1d2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_35c

    .line 1415
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pdp_watchdog_poll_interval_ms"

    const/16 v14, 0x3e8

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1429
    :cond_1ed
    :goto_1ed
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_205

    .line 1430
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1432
    :cond_205
    return-void

    .line 1257
    .end local v1           #isUMTS:Z
    :catch_206
    move-exception v11

    move-object v0, v11

    .line 1258
    .local v0, e:Landroid/os/RemoteException;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1259
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto/16 :goto_2a

    .line 1273
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v7       #received:J
    .restart local v9       #sent:J
    :cond_218
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_243

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-nez v11, :cond_243

    .line 1274
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_23b

    .line 1275
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11, v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1814(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1279
    :goto_237
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v2       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_69

    .line 1277
    .end local v2           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_23b
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto :goto_237

    .line 1280
    :cond_243
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_260

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-lez v11, :cond_260

    .line 1281
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1282
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1283
    .restart local v2       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_69

    .line 1284
    .end local v2           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_260
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_270

    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-nez v11, :cond_270

    .line 1285
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v2       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_69

    .line 1287
    .end local v2           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_270
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 1288
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v2       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_69

    .line 1341
    .restart local v1       #isUMTS:Z
    :cond_27b
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LGE_Fast_Dormancy) Waiting for GoDormant result, GoDormancyCounter is now ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    .line 1346
    :cond_2a1
    const-string v11, "GSM"

    const-string v12, "LGE_Fast_Dormancy) Give Up trying FD"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v11, "GSM"

    const-string v12, "LGE_Fast_Dormancy) Set Timer to 600000"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pdp_watchdog_long_poll_interval_ms"

    const v14, 0x927c0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1352
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1353
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1355
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_161

    .line 1356
    const-string v11, "GSM"

    const-string v12, "release wake lock!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_161

    .line 1369
    :cond_2e9
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    if-nez v11, :cond_1bc

    .line 1370
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2804(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    .line 1371
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LGE_Fast_Dormancy) Waiting for DataInactivity Check, DataInactivityCounter is now ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1bc

    .line 1375
    :cond_31c
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1376
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_1bc

    .line 1381
    :cond_32a
    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-eq v2, v11, :cond_1bc

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z

    goto/16 :goto_1bc

    .line 1385
    :cond_336
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1386
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 1388
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_1bc

    .line 1389
    const-string v11, "GSM"

    const-string v12, "release wake lock!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1bc

    .line 1418
    .end local v2           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_35c
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pdp_watchdog_long_poll_interval_ms"

    const v14, 0x927c0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_1ed

    .line 1422
    :cond_372
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    const/16 v12, 0x3e8

    if-ge v11, v12, :cond_1ed

    .line 1424
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pdp_watchdog_poll_interval_ms"

    const v14, 0x927c0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_1ed
.end method
