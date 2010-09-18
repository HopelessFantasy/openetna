.class public Ljava/util/logging/ConsoleHandler;
.super Ljava/util/logging/StreamHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/util/logging/StreamHandler;-><init>(Ljava/io/OutputStream;)V

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljava/util/logging/StreamHandler;->close(Z)V

    .line 67
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 2
    .parameter "record"

    .prologue
    .line 79
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 80
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 82
    return-void
.end method
