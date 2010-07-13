.class public Ljava/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Util;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "s"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x25

    const/16 v9, 0x10

    const/4 v8, -0x1

    .line 78
    if-nez p1, :cond_d

    .line 79
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 83
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_21

    .line 84
    new-instance v6, Ljava/io/UnsupportedEncodingException;

    const-string v7, "K00a5"

    const-string v8, "enc"

    invoke-static {v7, v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    :cond_21
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    .local v5, result:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_ae

    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    .local v0, c:C
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_46

    .line 93
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :goto_43
    add-int/lit8 v3, v3, 0x1

    .line 117
    goto :goto_30

    .line 94
    :cond_46
    if-ne v0, v10, :cond_aa

    .line 95
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 97
    :cond_4b
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_5f

    .line 98
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "K01fe"

    invoke-static {v7, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    :cond_5f
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 102
    .local v1, d1:I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 103
    .local v2, d2:I
    if-eq v1, v8, :cond_77

    if-ne v2, v8, :cond_8d

    .line 104
    :cond_77
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "K01ff"

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_8d
    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    add-int/lit8 v3, v3, 0x3

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_a2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_4b

    .line 111
    :cond_a2
    invoke-virtual {v4, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30

    .line 114
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_aa
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 118
    .end local v0           #c:C
    :cond_ae
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
