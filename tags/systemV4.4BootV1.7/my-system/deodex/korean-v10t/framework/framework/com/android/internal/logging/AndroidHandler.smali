.class public Lcom/android/internal/logging/AndroidHandler;
.super Ljava/util/logging/Handler;
.source "AndroidHandler.java"


# static fields
.field private static final THE_FORMATTER:Ljava/util/logging/Formatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/internal/logging/AndroidHandler$1;

    invoke-direct {v0}, Lcom/android/internal/logging/AndroidHandler$1;-><init>()V

    sput-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 106
    sget-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/AndroidHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 107
    return-void
.end method

.method static getAndroidLevel(Ljava/util/logging/Level;)I
    .registers 3
    .parameter "level"

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 164
    .local v0, value:I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_a

    .line 165
    const/4 v1, 0x6

    .line 171
    :goto_9
    return v1

    .line 166
    :cond_a
    const/16 v1, 0x384

    if-lt v0, v1, :cond_10

    .line 167
    const/4 v1, 0x5

    goto :goto_9

    .line 168
    :cond_10
    const/16 v1, 0x320

    if-lt v0, v1, :cond_16

    .line 169
    const/4 v1, 0x4

    goto :goto_9

    .line 171
    :cond_16
    const/4 v1, 0x3

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 117
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 11
    .parameter "record"

    .prologue
    const/16 v8, 0x17

    .line 122
    :try_start_2
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result v3

    .line 123
    .local v3, level:I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, tag:Ljava/lang/String;
    if-nez v5, :cond_19

    .line 127
    const-string v5, "null"

    .line 144
    :cond_12
    :goto_12
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 153
    .end local v3           #level:I
    .end local v5           #tag:Ljava/lang/String;
    :goto_18
    return-void

    .line 130
    .restart local v3       #level:I
    .restart local v5       #tag:Ljava/lang/String;
    :cond_19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 131
    .local v2, length:I
    if-le v2, v8, :cond_12

    .line 134
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, lastPeriod:I
    sub-int v6, v2, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-gt v6, v8, :cond_32

    .line 136
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    .line 139
    :cond_32
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    .line 148
    .end local v1           #lastPeriod:I
    .end local v2           #length:I
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/logging/AndroidHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, message:Ljava/lang/String;
    invoke-static {v3, v5, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_47} :catch_48

    goto :goto_18

    .line 150
    .end local v3           #level:I
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    :catch_48
    move-exception v6

    move-object v0, v6

    .line 151
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "AndroidHandler"

    const-string v7, "Error logging message."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method
