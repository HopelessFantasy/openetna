.class public Lcom/android/settings/AJTDateUtil;
.super Ljava/lang/Object;
.source "AJTDateUtil.java"


# static fields
.field public static final DAY:I = 0x15180

.field public static final HOUR:I = 0xe10

.field public static final MIL_DAYS:J = 0x5265c00L

.field public static final MINUTE:I = 0x3c

.field public static final MODE_DD:I = 0x2

.field public static final MODE_HH:I = 0x3

.field public static final MODE_MI:I = 0x4

.field public static final MODE_MM:I = 0x1

.field public static final MODE_SS:I = 0x5

.field public static final MODE_YY:I

.field public static final NOW:I


# instance fields
.field private curDate:Ljava/util/Date;

.field private curTime:J

.field private mDday:J

.field private mSB:Ljava/lang/StringBuffer;

.field private mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .registers 8
    .parameter "curTime"
    .parameter "dday"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1d

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/AJTDateUtil;->getDownLoadTime()J

    .line 41
    :goto_c
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/settings/AJTDateUtil;->curDate:Ljava/util/Date;

    .line 42
    int-to-long v0, p3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/AJTDateUtil;->mDday:J

    .line 44
    return-void

    .line 38
    :cond_1d
    iput-wide p1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    goto :goto_c
.end method


# virtual methods
.method public addTimeString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "Mode"
    .parameter "value"
    .parameter "split"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    return-void
.end method

.method protected addZero(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 89
    const/16 v0, 0xa

    if-ge p1, v0, :cond_18

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public getBufferString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTime()Ljava/util/Date;
    .registers 3

    .prologue
    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 113
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDDays()Ljava/util/Date;
    .registers 6

    .prologue
    .line 126
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    iget-wide v3, p0, Lcom/android/settings/AJTDateUtil;->mDday:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDownLoadTime()J
    .registers 4

    .prologue
    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    .line 122
    iget-wide v1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    return-wide v1
.end method

.method public makeCheckTime(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "value"
    .parameter "split"

    .prologue
    .line 166
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    .line 167
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    .line 170
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 173
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 175
    .local v1, today:J
    iget-wide v5, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    sub-long v3, v1, v5

    .line 177
    .local v3, total:J
    iget-wide v5, p0, Lcom/android/settings/AJTDateUtil;->mDday:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_62

    .line 178
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v5, 0x0

    .line 191
    :goto_61
    return v5

    .line 184
    :cond_62
    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 186
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    div-long v7, v3, v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    rem-long v7, v3, v7

    const-wide/16 v9, 0xe10

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    rem-long v7, v3, v7

    const-wide/16 v9, 0xe10

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    rem-long v7, v3, v7

    const-wide/16 v9, 0xe10

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    rem-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    const/4 v5, 0x1

    goto/16 :goto_61
.end method

.method public makeDdayString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "value"
    .parameter "split"

    .prologue
    .line 73
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    iget-wide v3, p0, Lcom/android/settings/AJTDateUtil;->mDday:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 74
    .local v0, dday:Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    .line 75
    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    .line 77
    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public makeRemainTime(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "value"
    .parameter "split"

    .prologue
    .line 133
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    .line 134
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    .line 137
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 141
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 143
    .local v1, today:J
    iget-wide v5, p0, Lcom/android/settings/AJTDateUtil;->mDday:J

    iget-wide v7, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    add-long/2addr v5, v7

    sub-long v3, v5, v1

    .line 145
    .local v3, total:J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v3, v5

    if-gtz v5, :cond_65

    .line 146
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v5, 0x0

    .line 159
    :goto_64
    return v5

    .line 152
    :cond_65
    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 154
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    div-long v7, v3, v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    rem-long v7, v3, v7

    const-wide/16 v9, 0xe10

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    rem-long v7, v3, v7

    const-wide/16 v9, 0xe10

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v5, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v7, 0x15180

    rem-long v7, v3, v7

    const-wide/16 v9, 0xe10

    rem-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    rem-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v5, 0x1

    goto/16 :goto_64
.end method

.method public makeTimeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "value"
    .parameter "split"

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    .line 51
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mSB:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    .line 54
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AJTDateUtil;->curDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->curDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->curDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->curDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->curDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/android/settings/AJTDateUtil;->mTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/AJTDateUtil;->curDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/AJTDateUtil;->addZero(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public setTime(J)V
    .registers 3
    .parameter "curTime"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    .line 105
    return-void
.end method

.method public toDate()Ljava/util/Date;
    .registers 4

    .prologue
    .line 108
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/settings/AJTDateUtil;->curTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
