.class public Lcom/android/mms/util/RateController;
.super Ljava/lang/Object;
.source "RateController.java"


# static fields
.field private static final ANSWER_NO:I = 0x2

.field public static final ANSWER_TIMEOUT:I = 0x4e20

.field private static final ANSWER_YES:I = 0x1

.field private static final DEBUG:Z = false

.field private static final NO_ANSWER:I = 0x0

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final RATE_LIMIT:I = 0x64

.field public static final RATE_LIMIT_CONFIRMED_ACTION:Ljava/lang/String; = "com.android.mms.RATE_LIMIT_CONFIRMED"

.field public static final RATE_LIMIT_SURPASSED_ACTION:Ljava/lang/String; = "com.android.mms.RATE_LIMIT_SURPASSED"

.field private static final TAG:Ljava/lang/String; = "RateController"

.field private static sInstance:Lcom/android/mms/util/RateController;

.field private static sMutexLock:Z


# instance fields
.field private mAnswer:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/mms/util/RateController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController$1;-><init>(Lcom/android/mms/util/RateController;)V

    iput-object v0, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/RateController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/mms/util/RateController;->mAnswer:I

    return p1
.end method

.method public static getInstance()Lcom/android/mms/util/RateController;
    .registers 2

    .prologue
    .line 85
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-nez v0, :cond_c

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_c
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const-string v1, "RateController"

    .line 76
    const-string v0, "RateController"

    const-string v0, "RateController.init()"

    invoke-static {v1, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-eqz v0, :cond_14

    .line 79
    const-string v0, "RateController"

    const-string v0, "Already initialized."

    invoke-static {v1, v0}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_14
    new-instance v0, Lcom/android/mms/util/RateController;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    .line 82
    return-void
.end method

.method private declared-synchronized waitForAnswer()I
    .registers 5

    .prologue
    .line 144
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, t:I
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_30

    if-nez v1, :cond_2c

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_2c

    .line 146
    :try_start_a
    const-string v1, "RateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for answer..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_29} :catch_33

    .line 144
    :goto_29
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_2

    .line 152
    :cond_2c
    :try_start_2c
    iget v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_30

    monitor-exit p0

    return v1

    .line 144
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1

    .line 148
    :catch_33
    move-exception v1

    goto :goto_29
.end method


# virtual methods
.method public declared-synchronized isAllowedByUser()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    monitor-enter p0

    :goto_3
    :try_start_3
    sget-boolean v1, Lcom/android/mms/util/RateController;->sMutexLock:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_59

    if-eqz v1, :cond_d

    .line 118
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_59
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_3

    .line 119
    :catch_b
    move-exception v1

    goto :goto_3

    .line 123
    :cond_d
    const/4 v1, 0x1

    :try_start_e
    sput-boolean v1, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 125
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_59

    .line 130
    :try_start_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.RATE_LIMIT_SURPASSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-direct {p0}, Lcom/android/mms/util/RateController;->waitForAnswer()I
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_4a

    move-result v1

    if-ne v1, v6, :cond_48

    move v1, v6

    .line 137
    :goto_39
    :try_start_39
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_59

    monitor-exit p0

    return v1

    :cond_48
    move v1, v5

    .line 135
    goto :goto_39

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_4a
    move-exception v1

    :try_start_4b
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_59

    .line 116
    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final isLimitSurpassed()Z
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long v8, v0, v2

    .line 100
    .local v8, oneHourAgo:J
    iget-object v0, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "COUNT(*) AS rate"

    aput-object v4, v3, v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent_time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 103
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4f

    .line 105
    :try_start_36
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 106
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_51

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4a

    move v0, v11

    .line 109
    :goto_46
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 112
    :goto_49
    return v0

    :cond_4a
    move v0, v10

    .line 106
    goto :goto_46

    .line 109
    :cond_4c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4f
    move v0, v10

    .line 112
    goto :goto_49

    .line 109
    :catchall_51
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final update()V
    .registers 5

    .prologue
    .line 92
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 93
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sent_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 96
    return-void
.end method
