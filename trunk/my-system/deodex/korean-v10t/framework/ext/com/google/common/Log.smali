.class public Lcom/google/common/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/Log$ThrowableListener;,
        Lcom/google/common/Log$StandardErrorPrinter;,
        Lcom/google/common/Log$Printer;,
        Lcom/google/common/Log$TestEventLogEntry;,
        Lcom/google/common/Log$LogSaver;
    }
.end annotation


# static fields
.field public static final EVENT_LOG_PREFERENCE:Ljava/lang/String; = "EVENT_LOG"

.field private static final EVENT_TUPLE_SEPARATOR:Ljava/lang/String; = "|"

.field private static final MAX_ENTRIES:I = 0x96

.field private static final MAX_EVENT_LOG_LENGTH:I = 0x258

.field private static final MAX_EVENT_TIME_DELTA_MS:J = 0x63ff9cL

.field private static final MAX_LAST_THROWABLE_STRING_LENGTH:I = 0x12c

.field private static final MAX_THROWABLES:I = 0xa

.field public static final SOURCE_BACKGROUND_FEATURE_SET_MANAGER:Ljava/lang/String; = "BACKGROUND_FEATURE_SET_MANAGER"

.field public static final SOURCE_CATEGORY:Ljava/lang/String; = "CATEGORY"

.field public static final SOURCE_ENGINE:Ljava/lang/String; = "ENGINE"

.field public static final SOURCE_FLASH:Ljava/lang/String; = "FLASH"

.field public static final SOURCE_FRIENDS_LAYER:Ljava/lang/String; = "FRIENDS_LAYER"

.field public static final SOURCE_GPS:Ljava/lang/String; = "GPS"

.field public static final SOURCE_LAYER:Ljava/lang/String; = "LAYER"

.field public static final SOURCE_LAYER_MANAGER:Ljava/lang/String; = "LAYER_MANAGER"

.field public static final SOURCE_MAP:Ljava/lang/String; = "MAP"

.field public static final SOURCE_MEDIA:Ljava/lang/String; = "MEDIA"

.field public static final SOURCE_MEMORY:Ljava/lang/String; = "MEMORY"

.field public static final SOURCE_MENU:Ljava/lang/String; = "MENU"

.field public static final SOURCE_PERMISSION:Ljava/lang/String; = "PERM"

.field public static final SOURCE_PROFILE_PHOTO_LOAD_FROM_DISK_TASK:Ljava/lang/String; = "PHOTO_LOAD"

.field public static final SOURCE_PROFILE_PHOTO_MANAGER_IMP:Ljava/lang/String; = "SOURCE_PROFILE_PHOTO_MANAGER_IMP"

.field public static final SOURCE_PROFILE_PHOTO_SAVE_TO_DISK_TASK:Ljava/lang/String; = "PHOTO_SAVE"

.field public static final SOURCE_REQUEST:Ljava/lang/String; = "REQUEST"

.field public static final SOURCE_SPEECH:Ljava/lang/String; = "SPEECH"

.field public static final SOURCE_STATS:Ljava/lang/String; = "STATS"

.field public static final SOURCE_STUN:Ljava/lang/String; = "STUN"

.field public static final SOURCE_UI:Ljava/lang/String; = "UI"

.field public static final SOURCE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

#the value of this static final field might be set in the static constructor
.field private static final START_TIME:J = 0x0L

.field private static final TARGET_ENTRIES:I = 0x32

.field private static entryBuffer:Ljava/lang/StringBuffer;

.field private static isEventLoggingEnabledForTest:Z

.field private static isExplicitClearForTest:Z

.field private static lastEventTimeMillis:J

.field private static final lastThrowableLock:Ljava/lang/Object;

.field private static lastThrowableString:Ljava/lang/String;

.field private static final logEntries:Ljava/util/Vector;

.field private static logMemory:Z

.field private static logSaver:Lcom/google/common/Log$LogSaver;

.field private static logThread:Z

.field private static logTime:Z

.field private static printer:Lcom/google/common/Log$Printer;

.field private static throwableCount:I

.field private static throwableListener:Lcom/google/common/Log$ThrowableListener;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/Log;->START_TIME:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/common/Log;->logEntries:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/common/Log;->timers:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    sput v2, Lcom/google/common/Log;->throwableCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/common/Log;->lastEventTimeMillis:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/common/Log;->logTime:Z

    sput-boolean v2, Lcom/google/common/Log;->logThread:Z

    sput-boolean v2, Lcom/google/common/Log;->logMemory:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/google/common/Log;->entryBuffer:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/google/common/Log$StandardErrorPrinter;

    invoke-direct {v0}, Lcom/google/common/Log$StandardErrorPrinter;-><init>()V

    sput-object v0, Lcom/google/common/Log;->printer:Lcom/google/common/Log$Printer;

    sput-boolean v2, Lcom/google/common/Log;->isExplicitClearForTest:Z

    sput-boolean v2, Lcom/google/common/Log;->isEventLoggingEnabledForTest:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(S)Z
    .registers 3

    const-string v1, ""

    const-string v0, ""

    const-string v0, ""

    invoke-static {p0, v1, v1}, Lcom/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static addEvent(SLjava/lang/String;)Z
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static addEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const-wide/32 v10, 0x63ff9c

    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v6, "EVENT_LOG"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/google/common/Log;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-interface {v2, v6}, Lcom/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_25

    array-length v4, v3

    const/16 v5, 0x258

    if-gt v4, v5, :cond_25

    sget-wide v4, Lcom/google/common/Log;->lastEventTimeMillis:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_8b

    :cond_25
    if-nez v3, :cond_81

    invoke-static {v0, v1}, Lcom/google/common/Log;->resetPersistentEventLog(J)V

    :goto_2a
    const-string v3, "EVENT_LOG"

    invoke-interface {v2, v6}, Lcom/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v2

    :goto_30
    array-length v3, v2

    if-le v3, v7, :cond_89

    aget-byte v3, v2, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, v2, v9

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_4c
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x2

    array-length v6, v2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v2, Lcom/google/common/Log;->lastEventTimeMillis:J

    sub-long v2, v0, v2

    const-wide/32 v6, 0x63ff9c

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/Log;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    sput-wide v0, Lcom/google/common/Log;->lastEventTimeMillis:J
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_7f} :catch_86

    move v0, v9

    :goto_80
    return v0

    :cond_81
    const/4 v3, 0x0

    invoke-static {v8, v3, v0, v1}, Lcom/google/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    goto :goto_2a

    :catch_86
    move-exception v0

    move v0, v8

    goto :goto_80

    :cond_89
    move v3, v8

    goto :goto_3f

    :cond_8b
    move-object v2, v3

    goto :goto_30
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .registers 5

    const/16 v3, 0x12c

    if-nez p0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    if-nez v1, :cond_26

    sput-object p0, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    :goto_e
    sget-object v1, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_21

    sget-object v1, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    :cond_21
    monitor-exit v0

    goto :goto_4

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v1

    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_23

    goto :goto_e
.end method

.method public static declared-synchronized clear()V
    .registers 1

    const-class v0, Lcom/google/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static clearEventLogForTest()V
    .registers 2

    invoke-static {}, Lcom/google/common/util/RuntimeCheck;->checkUnitTest()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/Log;->resetPersistentEventLog(J)V

    return-void
.end method

.method public static config(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "CONFIG"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createEventTuple([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v5, ""

    const-string v4, "|"

    array-length v0, p0

    if-nez v0, :cond_b

    const-string v0, ""

    move-object v0, v5

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_16
    array-length v2, p0

    if-ge v1, v2, :cond_36

    aget-object v2, p0, v1

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    const-string v3, ""

    invoke-static {v4, v5, v2}, Lcom/google/common/util/text/TextUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static endTimer(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static endTimerAndLog(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static endTimerAndLogConditionally(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 6

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static fine(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "FINE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static finer(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "FINER"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static finest(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "FINEST"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getEventLogForTest()Ljava/util/Vector;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/common/util/RuntimeCheck;->checkUnitTest()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/google/common/Log;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "EVENT_LOG"

    invoke-interface {v0, v1}, Lcom/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_16

    move-object v0, v6

    :goto_15
    return-object v0

    :cond_16
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    const/4 v2, 0x0

    move v9, v2

    move-wide v2, v0

    :goto_2b
    if-ge v9, v8, :cond_4e

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v0, v0, 0x64

    int-to-long v10, v0

    add-long/2addr v2, v10

    new-instance v0, Lcom/google/common/Log$TestEventLogEntry;

    invoke-direct/range {v0 .. v5}, Lcom/google/common/Log$TestEventLogEntry;-><init>(SJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v9, 0x1

    int-to-short v0, v0

    move v9, v0

    goto :goto_2b

    :cond_4e
    move-object v0, v6

    goto :goto_15
.end method

.method public static getLastThrowableString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/google/common/Log;->lastThrowableString:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static declared-synchronized getLog()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/google/common/Log;

    monitor-enter v0

    const v1, 0x7fffffff

    :try_start_6
    invoke-static {v1}, Lcom/google/common/Log;->getLog(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLog(I)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/google/common/Log;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLogEntries()Ljava/util/Vector;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPersistentStore()Lcom/google/common/io/PersistentStore;
    .registers 1

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "INFO"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/google/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/google/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/Log;->addThrowableString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static declared-synchronized print()V
    .registers 1

    const-class v0, Lcom/google/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static resetPersistentEventLog(J)V
    .registers 7

    const-string v4, "EVENT_LOG"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Lcom/google/common/Log;->lastEventTimeMillis:J
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_23

    invoke-static {}, Lcom/google/common/Log;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :goto_22
    return-void

    :catch_23
    move-exception v1

    invoke-static {}, Lcom/google/common/Log;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    goto :goto_22

    :catchall_32
    move-exception v1

    invoke-static {}, Lcom/google/common/Log;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    throw v1
.end method

.method private static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 4

    sget-object v0, Lcom/google/common/Log;->throwableListener:Lcom/google/common/Log$ThrowableListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/common/Log;->throwableListener:Lcom/google/common/Log$ThrowableListener;

    invoke-interface {v0, p0, p1}, Lcom/google/common/Log$ThrowableListener;->onThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public static setEventLoggingForTest(Z)Z
    .registers 2

    invoke-static {}, Lcom/google/common/util/RuntimeCheck;->checkUnitTest()V

    sget-boolean v0, Lcom/google/common/Log;->isEventLoggingEnabledForTest:Z

    sput-boolean p0, Lcom/google/common/Log;->isEventLoggingEnabledForTest:Z

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/google/common/Log;->clearEventLogForTest()V

    :cond_c
    return v0
.end method

.method public static setExplicitClearForTest(Z)Z
    .registers 2

    invoke-static {}, Lcom/google/common/util/RuntimeCheck;->checkUnitTest()V

    sget-boolean v0, Lcom/google/common/Log;->isExplicitClearForTest:Z

    sput-boolean p0, Lcom/google/common/Log;->isExplicitClearForTest:Z

    return v0
.end method

.method public static setLogSaver(Lcom/google/common/Log$LogSaver;)V
    .registers 1

    sput-object p0, Lcom/google/common/Log;->logSaver:Lcom/google/common/Log$LogSaver;

    return-void
.end method

.method public static setOptions(ZZZ)V
    .registers 3

    sput-boolean p0, Lcom/google/common/Log;->logTime:Z

    sput-boolean p1, Lcom/google/common/Log;->logThread:Z

    sput-boolean p2, Lcom/google/common/Log;->logMemory:Z

    return-void
.end method

.method public static setPrinter(Lcom/google/common/Log$Printer;)V
    .registers 1

    sput-object p0, Lcom/google/common/Log;->printer:Lcom/google/common/Log$Printer;

    return-void
.end method

.method public static setThrowableListener(Lcom/google/common/Log$ThrowableListener;)V
    .registers 1

    sput-object p0, Lcom/google/common/Log;->throwableListener:Lcom/google/common/Log$ThrowableListener;

    return-void
.end method

.method public static severe(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "SEVERE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startTimer(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static uploadEventLog(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lcom/google/common/Log;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "EVENT_LOG"

    invoke-interface {v0, v1}, Lcom/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/google/common/Log;->logSaver:Lcom/google/common/Log$LogSaver;

    invoke-interface {v1, p0, p1, v0}, Lcom/google/common/Log$LogSaver;->uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/google/common/Log;->resetPersistentEventLog(J)V

    return-object v0
.end method

.method public static warning(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "WARNING"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
