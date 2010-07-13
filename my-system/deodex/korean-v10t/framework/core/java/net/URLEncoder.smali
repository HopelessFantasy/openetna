.class public Ljava/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field static final digits:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static convert(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7
    .parameter "s"
    .parameter "buf"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v3, "0123456789ABCDEF"

    .line 132
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 133
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, j:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_2e

    .line 134
    const/16 v2, 0x25

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    const-string v2, "0123456789ABCDEF"

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    const-string v2, "0123456789ABCDEF"

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 138
    :cond_2e
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "s"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v8, "0123456789ABCDEF"

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7a

    .line 58
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 59
    .local v2, ch:C
    const/16 v5, 0x61

    if-lt v2, v5, :cond_1a

    const/16 v5, 0x7a

    if-le v2, v5, :cond_33

    :cond_1a
    const/16 v5, 0x41

    if-lt v2, v5, :cond_22

    const/16 v5, 0x5a

    if-le v2, v5, :cond_33

    :cond_22
    const/16 v5, 0x30

    if-lt v2, v5, :cond_2a

    const/16 v5, 0x39

    if-le v2, v5, :cond_33

    :cond_2a
    const-string v5, ".-*_"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_39

    .line 61
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 62
    :cond_39
    const/16 v5, 0x20

    if-ne v2, v5, :cond_43

    .line 63
    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 65
    :cond_43
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    aput-char v2, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 66
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, j:I
    :goto_53
    array-length v5, v1

    if-ge v4, v5, :cond_36

    .line 67
    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const-string v5, "0123456789ABCDEF"

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    const-string v5, "0123456789ABCDEF"

    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 73
    .end local v1           #bytes:[B
    .end local v2           #ch:C
    .end local v4           #j:I
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "s"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 98
    :cond_4
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 101
    :cond_a
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, -0x1

    .line 105
    .local v3, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5f

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 107
    .local v1, ch:C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_28

    const/16 v4, 0x7a

    if-le v1, v4, :cond_41

    :cond_28
    const/16 v4, 0x41

    if-lt v1, v4, :cond_30

    const/16 v4, 0x5a

    if-le v1, v4, :cond_41

    :cond_30
    const/16 v4, 0x30

    if-lt v1, v4, :cond_38

    const/16 v4, 0x39

    if-le v1, v4, :cond_41

    :cond_38
    const-string v4, " .-*_"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_5b

    .line 109
    :cond_41
    if-ltz v3, :cond_4b

    .line 110
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, p1}, Ljava/net/URLEncoder;->convert(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 111
    const/4 v3, -0x1

    .line 113
    :cond_4b
    const/16 v4, 0x20

    if-eq v1, v4, :cond_55

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 116
    :cond_55
    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 119
    :cond_5b
    if-gez v3, :cond_52

    .line 120
    move v3, v2

    goto :goto_52

    .line 124
    .end local v1           #ch:C
    :cond_5f
    if-ltz v3, :cond_6c

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, p1}, Ljava/net/URLEncoder;->convert(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 127
    :cond_6c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
