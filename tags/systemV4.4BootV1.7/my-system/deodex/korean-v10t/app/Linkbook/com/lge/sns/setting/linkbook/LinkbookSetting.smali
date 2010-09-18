.class public Lcom/lge/sns/setting/linkbook/LinkbookSetting;
.super Ljava/lang/Object;
.source "LinkbookSetting.java"

# interfaces
.implements Lcom/lge/sns/setting/ISettingFacade;


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "Linkbook"

.field static final A_DAY_MILLIS:J = 0x5265c00L

.field static final TAG:Ljava/lang/String; = "LinkbookSetting"

.field static feedUpdateIntent:Landroid/app/PendingIntent;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->feedUpdateIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    .line 43
    const-string v0, "Linkbook"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->pref:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method

.method private static getBaseDate(JI)J
    .registers 7
    .parameter "current"
    .parameter "timeMinute"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 139
    const/16 v1, 0xb

    div-int/lit8 v2, p2, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 140
    const/16 v1, 0xc

    rem-int/lit8 v2, p2, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 141
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 143
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private getFeedUpdatePendingIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 148
    sget-object v1, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->feedUpdateIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1b

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.intent.action.UPDATE_FEED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.intent.category.SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->feedUpdateIntent:Landroid/app/PendingIntent;

    .line 153
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1b
    sget-object v1, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->feedUpdateIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method private static getNextSchedule(IIIJI)J
    .registers 14
    .parameter "from"
    .parameter "to"
    .parameter "interval"
    .parameter "current"
    .parameter "startAfter"

    .prologue
    .line 113
    if-ge p1, p0, :cond_29

    add-int/lit16 v0, p1, 0x5a0

    :goto_4
    sub-int p0, v0, p0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 115
    .local v0, delta:J
    invoke-static {p3, p4, p1}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->getBaseDate(JI)J

    .end local p0
    move-result-wide v4

    .line 116
    .local v4, toLong:J
    sub-long p0, v4, v0

    .line 117
    .end local p1
    .local p0, fromLong:J
    int-to-long v0, p2

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    .line 118
    .local v0, intervalLong:J
    int-to-long v2, p5

    const-wide/32 v6, 0xea60

    mul-long/2addr v2, v6

    add-long/2addr v2, p3

    .line 120
    .end local p2
    .local v2, timeNext:J
    :goto_1c
    cmp-long p2, v4, v2

    if-gez p2, :cond_2b

    .line 121
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 122
    const-wide/32 v6, 0x5265c00

    add-long/2addr p0, v6

    goto :goto_1c

    .end local v0           #intervalLong:J
    .end local v2           #timeNext:J
    .end local v4           #toLong:J
    .local p0, from:I
    .restart local p1
    .restart local p2
    :cond_29
    move v0, p1

    .line 113
    goto :goto_4

    .line 124
    .end local p1
    .end local p2
    .restart local v0       #intervalLong:J
    .restart local v2       #timeNext:J
    .restart local v4       #toLong:J
    .local p0, fromLong:J
    :cond_2b
    :goto_2b
    const-wide/32 v6, 0x5265c00

    sub-long v6, v4, v6

    cmp-long p2, v6, v2

    if-lez p2, :cond_3d

    .line 125
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    .line 126
    const-wide/32 v6, 0x5265c00

    sub-long/2addr p0, v6

    goto :goto_2b

    .line 128
    :cond_3d
    cmp-long p2, v2, p0

    if-gez p2, :cond_4b

    .line 129
    sub-long/2addr p0, v2

    .line 130
    .local p0, diff:J
    add-long/2addr p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr p0, v4

    div-long/2addr p0, v0

    .end local v4           #toLong:J
    .end local p0           #diff:J
    mul-long/2addr p0, v0

    add-long/2addr p0, v2

    .line 133
    .end local v2           #timeNext:J
    .local p0, timeNext:J
    :goto_49
    sub-long/2addr p0, p3

    .end local p0           #timeNext:J
    return-wide p0

    .restart local v2       #timeNext:J
    .restart local v4       #toLong:J
    .local p0, fromLong:J
    :cond_4b
    move-wide p0, v2

    .end local v2           #timeNext:J
    .local p0, timeNext:J
    goto :goto_49
.end method

.method private scheduleNextAlarm(Lcom/lge/sns/setting/UpdateTime;JI)V
    .registers 16
    .parameter "updateTime"
    .parameter "current"
    .parameter "startAfter"

    .prologue
    const-string v10, "LinkbookSetting"

    .line 93
    const-string v0, "LinkbookSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule Next Alarm. startAfter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 101
    .local v6, alarmManager:Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->getFeedUpdatePendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    .line 102
    .local v7, pi:Landroid/app/PendingIntent;
    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->getFromTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->getToTime()I

    move-result v1

    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->getIntervalValue()I

    move-result v2

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->getNextSchedule(IIIJI)J

    move-result-wide v0

    add-long v8, p2, v0

    .line 105
    .local v8, triggerAtTime:J
    const-string v0, "LinkbookSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerAtTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "LinkbookSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule trigger at = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    invoke-virtual {v6, v0, v8, v9, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 109
    return-void
.end method


# virtual methods
.method public cancelAlarm()V
    .registers 5

    .prologue
    .line 74
    const-string v2, "LinkbookSetting"

    const-string v3, "The alarm is canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 77
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->getFeedUpdatePendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 79
    return-void
.end method

.method public clearUpdateTime()V
    .registers 6

    .prologue
    .line 224
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method

.method public getFeedNum()I
    .registers 6

    .prologue
    .line 166
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "feed_num"

    const/16 v3, 0x32

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, fNum:I
    return v0
.end method

.method public getFeedPer()I
    .registers 6

    .prologue
    .line 172
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "feed_period"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, fPer:I
    return v0
.end method

.method public getMsgNum()I
    .registers 6

    .prologue
    .line 178
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 179
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "message_num"

    const/16 v3, 0x14

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, mNum:I
    return v0
.end method

.method public getMsgPer()I
    .registers 6

    .prologue
    .line 184
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "message_period"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, mPer:I
    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getUpdateTime()Lcom/lge/sns/setting/UpdateTime;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "setting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, pref:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/lge/sns/setting/UpdateTime;

    invoke-direct {v1}, Lcom/lge/sns/setting/UpdateTime;-><init>()V

    .line 49
    .local v1, setting:Lcom/lge/sns/setting/UpdateTime;
    const-string v2, "update"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/UpdateTime;->setAutoUpdate(Z)V

    .line 50
    const-string v2, "fromTime"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/UpdateTime;->setFromTime(I)V

    .line 51
    const-string v2, "toTime"

    const/16 v3, 0x5a0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/UpdateTime;->setToTime(I)V

    .line 52
    const-string v2, "interval"

    const/16 v3, 0x1e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/setting/UpdateTime;->setIntervalValue(I)V

    .line 53
    return-object v1
.end method

.method public isInitialized()Z
    .registers 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->pref:Landroid/content/SharedPreferences;

    const-string v1, "SessionToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public scheduleNextAlarm(J)V
    .registers 5
    .parameter "current"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->getUpdateTime()Lcom/lge/sns/setting/UpdateTime;

    move-result-object v0

    .line 83
    .local v0, updateTime:Lcom/lge/sns/setting/UpdateTime;
    invoke-virtual {v0}, Lcom/lge/sns/setting/UpdateTime;->getIntervalValue()I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->scheduleNextAlarm(Lcom/lge/sns/setting/UpdateTime;JI)V

    .line 84
    return-void
.end method

.method public scheduleNextAlarm(JI)V
    .registers 5
    .parameter "current"
    .parameter "startAfter"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->getUpdateTime()Lcom/lge/sns/setting/UpdateTime;

    move-result-object v0

    .line 88
    .local v0, updateTime:Lcom/lge/sns/setting/UpdateTime;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->scheduleNextAlarm(Lcom/lge/sns/setting/UpdateTime;JI)V

    .line 89
    return-void
.end method

.method public setFeedNum(I)V
    .registers 7
    .parameter "feedNum"

    .prologue
    .line 190
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 191
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "feed_num"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method

.method public setFeedPer(I)V
    .registers 7
    .parameter "feedPer"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "feed_period"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method public setMsgNum(I)V
    .registers 7
    .parameter "msgNum"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 207
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "message_num"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    return-void
.end method

.method public setMsgPer(I)V
    .registers 7
    .parameter "msgPer"

    .prologue
    .line 214
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "feed_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 215
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "message_period"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method public setUpdateTime(Lcom/lge/sns/setting/UpdateTime;)V
    .registers 7
    .parameter "time"

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v2, p0, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->ctx:Landroid/content/Context;

    const-string v3, "setting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "update"

    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->isAutoUpdate()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v2, "fromTime"

    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->getFromTime()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    const-string v2, "toTime"

    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->getToTime()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string v2, "interval"

    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->getIntervalValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    invoke-virtual {p1}, Lcom/lge/sns/setting/UpdateTime;->isAutoUpdate()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->scheduleNextAlarm(JI)V

    .line 70
    :goto_41
    return-void

    .line 68
    :cond_42
    invoke-virtual {p0}, Lcom/lge/sns/setting/linkbook/LinkbookSetting;->cancelAlarm()V

    goto :goto_41
.end method
