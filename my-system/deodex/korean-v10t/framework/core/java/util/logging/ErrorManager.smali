.class public Ljava/util/logging/ErrorManager;
.super Ljava/lang/Object;
.source "ErrorManager.java"


# static fields
.field public static final CLOSE_FAILURE:I = 0x3

.field private static final FAILURES:[Ljava/lang/String; = null

.field public static final FLUSH_FAILURE:I = 0x2

.field public static final FORMAT_FAILURE:I = 0x5

.field public static final GENERIC_FAILURE:I = 0x0

.field public static final OPEN_FAILURE:I = 0x4

.field public static final WRITE_FAILURE:I = 0x1


# instance fields
.field private called:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GENERIC_FAILURE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WRITE_FAILURE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FLUSH_FAILURE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CLOSE_FAILURE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "OPEN_FAILURE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FORMAT_FAILURE"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/logging/ErrorManager;->FAILURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 7
    .parameter "message"
    .parameter "exception"
    .parameter "errorCode"

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-boolean v0, p0, Ljava/util/logging/ErrorManager;->called:Z

    if-eqz v0, :cond_7

    .line 117
    monitor-exit p0

    .line 131
    :cond_6
    :goto_6
    return-void

    .line 119
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/ErrorManager;->called:Z

    .line 120
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4e

    .line 121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/logging/ErrorManager;->FAILURES:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_40

    .line 125
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "logging.1E"

    invoke-static {v1, p1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    :cond_40
    if-eqz p2, :cond_6

    .line 129
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "logging.1F"

    invoke-static {v1, p2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 120
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method
