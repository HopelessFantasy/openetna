.class public abstract Ljava/io/Writer;
.super Ljava/lang/Object;
.source "Writer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field static final TOKEN_NULL:Ljava/lang/String; = "null"


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_b

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_b
    iput-object p1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 2
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 214
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .parameter "csq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    if-nez p1, :cond_8

    .line 232
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 236
    :goto_7
    return-object p0

    .line 234
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .parameter "csq"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_c

    .line 266
    const-string v0, "null"

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    :goto_b
    return-object p0

    .line 268
    :cond_c
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .registers 6
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    const/4 v2, 0x1

    :try_start_4
    new-array v0, v2, [C

    .line 150
    .local v0, oneCharArray:[C
    const/4 v2, 0x0

    int-to-char v3, p1

    aput-char v3, v0, v2

    .line 151
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    .end local v0           #oneCharArray:[C
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 166
    .local v0, buf:[C
    array-length v1, v0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 167
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_e
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw v2
.end method

.method public write(Ljava/lang/String;II)V
    .registers 7
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    if-gez p3, :cond_8

    .line 191
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 193
    :cond_8
    new-array v0, p3, [C

    .line 194
    .local v0, buf:[C
    add-int v1, p2, p3

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 196
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_13
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    .line 198
    monitor-exit v1

    .line 199
    return-void

    .line 198
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public write([C)V
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Writer;->write([CII)V

    .line 112
    return-void
.end method

.method public abstract write([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
