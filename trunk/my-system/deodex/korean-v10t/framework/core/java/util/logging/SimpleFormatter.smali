.class public Ljava/util/logging/SimpleFormatter;
.super Ljava/util/logging/Formatter;
.source "SimpleFormatter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 13
    .parameter "r"

    .prologue
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v5, "{0, date} {0, time} "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/logging/LogManager;->getSystemLineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0, p1}, Ljava/util/logging/SimpleFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/logging/LogManager;->getSystemLineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_82

    .line 60
    const-string v5, "Throwable occurred: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v4

    .line 62
    .local v4, t:Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 64
    .local v0, pw:Ljava/io/PrintWriter;
    :try_start_69
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 65
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_87

    .line 66
    .end local v0           #pw:Ljava/io/PrintWriter;
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_73
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 67
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_92

    .line 69
    if-eqz v1, :cond_82

    .line 71
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_8e

    .line 78
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v3           #sw:Ljava/io/StringWriter;
    .end local v4           #t:Ljava/lang/Throwable;
    :cond_82
    :goto_82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 69
    .restart local v0       #pw:Ljava/io/PrintWriter;
    .restart local v4       #t:Ljava/lang/Throwable;
    :catchall_87
    move-exception v5

    :goto_88
    if-eqz v0, :cond_8d

    .line 71
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_90

    .line 74
    :cond_8d
    :goto_8d
    throw v5

    .line 72
    .end local v0           #pw:Ljava/io/PrintWriter;
    .restart local v1       #pw:Ljava/io/PrintWriter;
    .restart local v3       #sw:Ljava/io/StringWriter;
    :catch_8e
    move-exception v5

    goto :goto_82

    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v3           #sw:Ljava/io/StringWriter;
    .restart local v0       #pw:Ljava/io/PrintWriter;
    :catch_90
    move-exception v6

    goto :goto_8d

    .line 69
    .end local v0           #pw:Ljava/io/PrintWriter;
    .restart local v1       #pw:Ljava/io/PrintWriter;
    .restart local v3       #sw:Ljava/io/StringWriter;
    :catchall_92
    move-exception v5

    move-object v0, v1

    .end local v1           #pw:Ljava/io/PrintWriter;
    .restart local v0       #pw:Ljava/io/PrintWriter;
    goto :goto_88
.end method
