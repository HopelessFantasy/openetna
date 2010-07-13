.class public final Lcom/ibm/icu4jni/charset/CharsetICU;
.super Ljava/nio/charset/Charset;
.source "CharsetICU.java"


# static fields
.field private static final subByteMap:Ljava/util/Map;


# instance fields
.field private icuCanonicalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu4jni/charset/CharsetICU;->subByteMap:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/ibm/icu4jni/charset/CharsetICU;->subByteMap:Ljava/util/Map;

    const-string v1, "UTF-32"

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_2e

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/ibm/icu4jni/charset/CharsetICU;->subByteMap:Ljava/util/Map;

    const-string v1, "ibm-16684_P110-2003"

    new-array v2, v3, [B

    fill-array-data v2, :array_34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/ibm/icu4jni/charset/CharsetICU;->subByteMap:Ljava/util/Map;

    const-string v1, "ibm-971_P100-1995"

    new-array v2, v3, [B

    fill-array-data v2, :array_3a

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void

    .line 54
    :array_2e
    .array-data 0x1
        0x0t
        0x0t
        0xfet
        0xfft
    .end array-data

    .line 55
    :array_34
    .array-data 0x1
        0x40t
        0x40t
    .end array-data

    .line 56
    nop

    :array_3a
    .array-data 0x1
        0xa1t
        0xa1t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .parameter "canonicalName"
    .parameter "icuCanonName"
    .parameter "aliases"

    .prologue
    .line 33
    invoke-direct {p0, p1, p3}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lcom/ibm/icu4jni/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .registers 10
    .parameter "cs"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 99
    if-nez p1, :cond_7

    move v4, v5

    .line 122
    :cond_6
    :goto_6
    return v4

    .line 101
    :cond_7
    invoke-virtual {p0, p1}, Lcom/ibm/icu4jni/charset/CharsetICU;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 102
    const/4 v4, 0x1

    goto :goto_6

    .line 105
    :cond_f
    const-wide/16 v0, 0x0

    .line 106
    .local v0, converterHandle1:J
    const-wide/16 v2, 0x0

    .line 109
    .local v2, converterHandle2:J
    :try_start_13
    invoke-virtual {p0}, Lcom/ibm/icu4jni/charset/CharsetICU;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ibm/icu4jni/charset/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v0

    .line 110
    cmp-long v4, v0, v6

    if-lez v4, :cond_3e

    .line 111
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ibm/icu4jni/charset/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v2

    .line 112
    cmp-long v4, v2, v6

    if-lez v4, :cond_3e

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu4jni/charset/NativeConverter;->contains(JJ)Z
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_4e

    move-result v4

    .line 119
    cmp-long v5, v6, v0

    if-eqz v5, :cond_6

    .line 120
    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    .line 121
    cmp-long v5, v6, v2

    if-eqz v5, :cond_6

    .line 122
    invoke-static {v2, v3}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    goto :goto_6

    .line 119
    :cond_3e
    cmp-long v4, v6, v0

    if-eqz v4, :cond_4c

    .line 120
    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    .line 121
    cmp-long v4, v6, v2

    if-eqz v4, :cond_4c

    .line 122
    invoke-static {v2, v3}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    :cond_4c
    move v4, v5

    goto :goto_6

    .line 119
    :catchall_4e
    move-exception v4

    cmp-long v5, v6, v0

    if-eqz v5, :cond_5d

    .line 120
    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    .line 121
    cmp-long v5, v6, v2

    if-eqz v5, :cond_5d

    .line 122
    invoke-static {v2, v3}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V

    :cond_5d
    throw v4
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 4

    .prologue
    .line 47
    iget-object v2, p0, Lcom/ibm/icu4jni/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {v2}, Lcom/ibm/icu4jni/charset/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v0

    .line 48
    .local v0, converterHandle:J
    new-instance v2, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;

    invoke-direct {v2, p0, v0, v1}, Lcom/ibm/icu4jni/charset/CharsetDecoderICU;-><init>(Ljava/nio/charset/Charset;J)V

    return-object v2
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 9

    .prologue
    .line 68
    iget-object v6, p0, Lcom/ibm/icu4jni/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-static {v6}, Lcom/ibm/icu4jni/charset/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v1

    .line 71
    .local v1, converterHandle:J
    invoke-static {v1, v2}, Lcom/ibm/icu4jni/charset/NativeConverter;->getSubstitutionBytes(J)[B

    move-result-object v5

    .line 74
    .local v5, replacement:[B
    :try_start_a
    new-instance v6, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;

    invoke-direct {v6, p0, v1, v2, v5}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;J[B)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_f} :catch_10

    .line 86
    :goto_f
    return-object v6

    .line 75
    :catch_10
    move-exception v6

    move-object v3, v6

    .line 78
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/ibm/icu4jni/charset/CharsetICU;->subByteMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/ibm/icu4jni/charset/CharsetICU;->icuCanonicalName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 79
    if-nez v5, :cond_33

    .line 80
    invoke-static {v1, v2}, Lcom/ibm/icu4jni/charset/NativeConverter;->getMinBytesPerChar(J)I

    move-result v6

    new-array v5, v6, [B

    .line 81
    const/4 v4, 0x0

    .local v4, i:I
    :goto_29
    array-length v6, v5

    if-ge v4, v6, :cond_33

    .line 82
    const/16 v6, 0x3f

    aput-byte v6, v5, v4

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 85
    .end local v4           #i:I
    :cond_33
    array-length v6, v5

    invoke-static {v1, v2, v5, v6}, Lcom/ibm/icu4jni/charset/NativeConverter;->setSubstitutionBytes(J[BI)I

    .line 86
    new-instance v6, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;

    invoke-direct {v6, p0, v1, v2, v5}, Lcom/ibm/icu4jni/charset/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;J[B)V

    goto :goto_f
.end method
