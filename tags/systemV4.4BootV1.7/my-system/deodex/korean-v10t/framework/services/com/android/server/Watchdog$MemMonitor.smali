.class final Lcom/android/server/Watchdog$MemMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MemMonitor"
.end annotation


# static fields
.field static final STATE_HARD:I = 0x2

.field static final STATE_OK:I = 0x0

.field static final STATE_SOFT:I = 0x1


# instance fields
.field mEnabled:Z

.field final mEnabledSetting:Ljava/lang/String;

.field final mHardSetting:Ljava/lang/String;

.field mHardThreshold:I

.field mLastPss:J

.field final mProcessName:Ljava/lang/String;

.field final mSoftSetting:Ljava/lang/String;

.field mSoftThreshold:I

.field mState:I

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .parameter
    .parameter "processName"
    .parameter "enabledSetting"
    .parameter "softSetting"
    .parameter "defSoftThreshold"
    .parameter "hardSetting"
    .parameter "defHardThreshold"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/Watchdog$MemMonitor;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/android/server/Watchdog$MemMonitor;->mProcessName:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/android/server/Watchdog$MemMonitor;->mEnabledSetting:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/android/server/Watchdog$MemMonitor;->mSoftSetting:Ljava/lang/String;

    .line 168
    iput-object p6, p0, Lcom/android/server/Watchdog$MemMonitor;->mHardSetting:Ljava/lang/String;

    .line 169
    iput p5, p0, Lcom/android/server/Watchdog$MemMonitor;->mSoftThreshold:I

    .line 170
    iput p7, p0, Lcom/android/server/Watchdog$MemMonitor;->mHardThreshold:I

    .line 171
    return-void
.end method


# virtual methods
.method checkLocked(JII)Z
    .registers 15
    .parameter "curTime"
    .parameter "pid"
    .parameter "pss"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    int-to-long v1, p4

    iput-wide v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mLastPss:J

    .line 184
    iget-wide v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mLastPss:J

    iget v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mSoftThreshold:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_32

    .line 185
    iput v5, p0, Lcom/android/server/Watchdog$MemMonitor;->mState:I

    .line 191
    :goto_13
    const/16 v1, 0xaf3

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mProcessName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mLastPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 193
    iget v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mState:I

    if-nez v1, :cond_41

    move v1, v5

    .line 221
    :goto_31
    return v1

    .line 186
    :cond_32
    iget-wide v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mLastPss:J

    iget v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mHardThreshold:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_3e

    .line 187
    iput v6, p0, Lcom/android/server/Watchdog$MemMonitor;->mState:I

    goto :goto_13

    .line 189
    :cond_3e
    iput v7, p0, Lcom/android/server/Watchdog$MemMonitor;->mState:I

    goto :goto_13

    .line 198
    :cond_41
    iget v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mState:I

    if-ne v1, v7, :cond_69

    .line 200
    const/16 v1, 0xaf5

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mProcessName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mHardThreshold:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-wide v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mLastPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 202
    iget-boolean v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mEnabled:Z

    goto :goto_31

    .line 208
    :cond_69
    iget-object v1, p0, Lcom/android/server/Watchdog$MemMonitor;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/Watchdog;->computeMemcheckTimesLocked(J)V

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, skipReason:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/Watchdog$MemMonitor;->this$0:Lcom/android/server/Watchdog;

    iget-wide v1, v1, Lcom/android/server/Watchdog;->mMemcheckExecStartTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/Watchdog$MemMonitor;->this$0:Lcom/android/server/Watchdog;

    iget-wide v1, v1, Lcom/android/server/Watchdog;->mMemcheckExecEndTime:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_b0

    .line 211
    :cond_7f
    const-string v0, "time"

    .line 215
    :goto_81
    const/16 v1, 0xaf4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mProcessName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mSoftThreshold:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-wide v3, p0, Lcom/android/server/Watchdog$MemMonitor;->mLastPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    if-eqz v0, :cond_b7

    move-object v3, v0

    :goto_a3
    aput-object v3, v2, v9

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 217
    if-eqz v0, :cond_ba

    .line 218
    iget-object v1, p0, Lcom/android/server/Watchdog$MemMonitor;->this$0:Lcom/android/server/Watchdog;

    iput-boolean v6, v1, Lcom/android/server/Watchdog;->mNeedScheduledCheck:Z

    move v1, v5

    .line 219
    goto :goto_31

    .line 213
    :cond_b0
    iget-object v1, p0, Lcom/android/server/Watchdog$MemMonitor;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/Watchdog;->shouldWeBeBrutalLocked(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 215
    :cond_b7
    const-string v3, ""

    goto :goto_a3

    .line 221
    :cond_ba
    iget-boolean v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mEnabled:Z

    goto/16 :goto_31
.end method

.method clear()V
    .registers 3

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mLastPss:J

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mState:I

    .line 227
    return-void
.end method

.method retrieveSettings(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mSoftSetting:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mSoftThreshold:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mSoftThreshold:I

    .line 176
    iget-object v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mHardSetting:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/Watchdog$MemMonitor;->mHardThreshold:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mHardThreshold:I

    .line 178
    iget-object v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mEnabledSetting:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_1e
    iput-boolean v0, p0, Lcom/android/server/Watchdog$MemMonitor;->mEnabled:Z

    .line 180
    return-void

    :cond_21
    move v0, v2

    .line 178
    goto :goto_1e
.end method
