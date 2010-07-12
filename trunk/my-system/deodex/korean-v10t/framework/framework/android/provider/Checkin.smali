.class public final Landroid/provider/Checkin;
.super Ljava/lang/Object;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Checkin$TriggerIntent;,
        Landroid/provider/Checkin$Crashes;,
        Landroid/provider/Checkin$Properties;,
        Landroid/provider/Checkin$Stats;,
        Landroid/provider/Checkin$Events;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "android.server.checkin"

.field private static final MIN_CRASH_FAILURE_RETRY:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "Checkin"

.field private static volatile sLastCrashFailureRealtime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 267
    const-wide/16 v0, -0x2710

    sput-wide v0, Landroid/provider/Checkin;->sLastCrashFailureRealtime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method public static logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    .registers 10
    .parameter "resolver"
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const-string v6, "Checkin"

    const-string v5, "Can\'t log event "

    .line 224
    :try_start_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "tag"

    invoke-virtual {p1}, Landroid/provider/Checkin$Events$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-eqz p2, :cond_1a

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_1a
    sget-object v2, Landroid/provider/Checkin$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_1f} :catch_21
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_1f} :catch_47

    move-result-object v2

    .line 233
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_20
    return-object v2

    .line 228
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 229
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Checkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t log event "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 230
    goto :goto_20

    .line 231
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_47
    move-exception v2

    move-object v0, v2

    .line 232
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "Checkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t log event "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 233
    goto :goto_20
.end method

.method public static reportCrash(Landroid/content/ContentResolver;Landroid/server/data/CrashData;)Landroid/net/Uri;
    .registers 7
    .parameter "resolver"
    .parameter "crash"

    .prologue
    .line 314
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .local v0, data:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v2}, Landroid/server/data/CrashData;->write(Ljava/io/DataOutput;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/Checkin;->reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 320
    .end local v0           #data:Ljava/io/ByteArrayOutputStream;
    :goto_15
    return-object v2

    .line 317
    :catch_16
    move-exception v2

    move-object v1, v2

    .line 319
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "Checkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing crash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;
    .registers 14
    .parameter "resolver"
    .parameter "crash"

    .prologue
    const/4 v11, 0x0

    const-string v10, "Checkin"

    .line 281
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 282
    .local v1, realtime:J
    sget-wide v6, Landroid/provider/Checkin;->sLastCrashFailureRealtime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-gez v6, :cond_1a

    .line 283
    const-string v6, "Checkin"

    const-string v7, "Crash logging skipped, too soon after logging failure"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v11

    .line 301
    .end local v1           #realtime:J
    :goto_19
    return-object v6

    .line 288
    .restart local v1       #realtime:J
    :cond_1a
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 289
    .local v0, encoded:[B
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "data"

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v6, Landroid/provider/Checkin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 292
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_42

    .line 293
    const-string v6, "Checkin"

    const-string v7, "Error reporting crash"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Landroid/provider/Checkin;->sLastCrashFailureRealtime:J
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_42} :catch_44

    :cond_42
    move-object v6, v4

    .line 296
    goto :goto_19

    .line 297
    .end local v0           #encoded:[B
    .end local v1           #realtime:J
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_44
    move-exception v6

    move-object v3, v6

    .line 299
    .local v3, t:Ljava/lang/Throwable;
    const-string v6, "Checkin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reporting crash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Landroid/provider/Checkin;->sLastCrashFailureRealtime:J

    move-object v6, v11

    .line 301
    goto :goto_19
.end method

.method public static updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;
    .registers 12
    .parameter "resolver"
    .parameter "tag"
    .parameter "count"
    .parameter "sum"

    .prologue
    const/4 v4, 0x0

    const-string v6, "Checkin"

    const-string v5, "Can\'t update stat "

    .line 249
    :try_start_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "tag"

    invoke-virtual {p1}, Landroid/provider/Checkin$Stats$Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p2, :cond_1e

    const-string v2, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    :cond_1e
    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-eqz v2, :cond_2d

    const-string v2, "sum"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 253
    :cond_2d
    sget-object v2, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_32} :catch_34
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_32} :catch_5a

    move-result-object v2

    .line 259
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_33
    return-object v2

    .line 254
    :catch_34
    move-exception v2

    move-object v0, v2

    .line 255
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Checkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update stat "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 256
    goto :goto_33

    .line 257
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5a
    move-exception v2

    move-object v0, v2

    .line 258
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "Checkin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update stat "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 259
    goto :goto_33
.end method
