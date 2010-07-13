.class public Ljava/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field private e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 5
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    if-nez p1, :cond_b

    .line 59
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 61
    :cond_b
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 62
    .local v0, inVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/InputStream;>;"
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 64
    iput-object p1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Enumeration;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 79
    iput-object p1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 80
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 81
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 82
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_1d

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_1d
    return-void
.end method

.method private nextStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 129
    :cond_9
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 130
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 131
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_28

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 137
    :cond_28
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    .line 100
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 102
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :goto_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    .line 115
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    goto :goto_0

    .line 117
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 118
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    :goto_0
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_12

    .line 157
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 158
    .local v0, result:I
    if-ltz v0, :cond_e

    move v1, v0

    .line 163
    .end local v0           #result:I
    :goto_d
    return v1

    .line 161
    .restart local v0       #result:I
    :cond_e
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    goto :goto_0

    .line 163
    .end local v0           #result:I
    :cond_12
    const/4 v1, -0x1

    goto :goto_d
.end method

.method public read([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 204
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_7

    move v1, v2

    .line 227
    :goto_6
    return v1

    .line 208
    :cond_7
    if-nez p1, :cond_15

    .line 209
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_15
    or-int v1, p2, p3

    if-ltz v1, :cond_1d

    array-length v1, p1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_2c

    .line 217
    :cond_1d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .local v0, result:I
    :cond_29
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 220
    .end local v0           #result:I
    :cond_2c
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_3a

    .line 221
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 222
    .restart local v0       #result:I
    if-ltz v0, :cond_29

    move v1, v0

    .line 223
    goto :goto_6

    .end local v0           #result:I
    :cond_3a
    move v1, v2

    .line 227
    goto :goto_6
.end method
