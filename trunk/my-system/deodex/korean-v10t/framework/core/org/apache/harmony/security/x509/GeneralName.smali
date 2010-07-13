.class public Lorg/apache/harmony/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice; = null

.field public static final DIR_NAME:I = 0x4

.field public static final DNS_NAME:I = 0x2

.field public static final EDIP_NAME:I = 0x5

.field public static final IP_ADDR:I = 0x7

.field public static final OTHER_NAME:I = 0x0

.field public static final REG_ID:I = 0x8

.field public static final RFC822_NAME:I = 0x1

.field public static final UR_ID:I = 0x6

.field public static final X400_ADDR:I = 0x3

.field private static nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private name:Ljava/lang/Object;

.field private name_encoding:[B

.field private tag:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 110
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v1, v0, v4

    .line 111
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v1, v0, v5

    .line 112
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v1, v0, v6

    .line 113
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    aput-object v2, v0, v1

    .line 114
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v1, v0, v7

    .line 115
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v1, v0, v8

    .line 116
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v0, v1

    .line 117
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 118
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    const/16 v1, 0x8

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v0, v1

    .line 845
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName$1;

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x5

    sget-object v5, Lorg/apache/harmony/security/x509/EDIPartyName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x6

    sget-object v5, Lorg/apache/harmony/security/asn1/ASN1StringType;->IA5STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/16 v4, 0x8

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    if-nez p2, :cond_11

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.28"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_11
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 153
    packed-switch p1, :pswitch_data_54

    .line 184
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.181"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.180"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_2e
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkDNS(Ljava/lang/String;)V

    .line 163
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 186
    :goto_33
    return-void

    .line 168
    :pswitch_34
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->checkURI(Ljava/lang/String;)V

    .line 169
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_33

    .line 172
    :pswitch_3a
    iput-object p2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_33

    .line 175
    :pswitch_3d
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->oidStrToInts(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_33

    .line 178
    :pswitch_44
    new-instance v0, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, p2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_33

    .line 181
    :pswitch_4c
    invoke-static {p2}, Lorg/apache/harmony/security/x509/GeneralName;->ipStrToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    goto :goto_33

    .line 153
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_22
        :pswitch_3a
        :pswitch_2e
        :pswitch_22
        :pswitch_44
        :pswitch_22
        :pswitch_34
        :pswitch_4c
        :pswitch_3d
    .end packed-switch
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    if-nez p2, :cond_12

    .line 253
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.28"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_12
    if-ltz p1, :cond_18

    const/16 v0, 0x8

    if-le p1, v0, :cond_24

    .line 256
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.183"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_24
    iput p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 259
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    .line 260
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 262
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x501/Name;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 212
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/EDIPartyName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 221
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/ORAddress;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 203
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/OtherName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 194
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    array-length v0, p1

    .line 235
    .local v0, length:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/16 v1, 0x8

    if-eq v0, v1, :cond_20

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_20

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.182"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_20
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    .line 240
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/GeneralName;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/GeneralName;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    return v0
.end method

.method static synthetic access$202(Lorg/apache/harmony/security/x509/GeneralName;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    return-object p1
.end method

.method public static checkDNS(Ljava/lang/String;)V
    .registers 10
    .parameter "dns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/16 v6, 0x2e

    const/16 v5, 0x2d

    .line 568
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 570
    .local v0, bytes:[B
    const/4 v2, 0x1

    .line 571
    .local v2, first_letter:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    array-length v4, v0

    if-ge v3, v4, :cond_64

    .line 572
    aget-byte v1, v0, v3

    .line 573
    .local v1, ch:B
    if-eqz v2, :cond_32

    .line 574
    if-gt v1, v8, :cond_1d

    if-ge v1, v7, :cond_2e

    .line 575
    :cond_1d
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.184"

    int-to-char v6, v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v5, v6, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 578
    :cond_2e
    const/4 v2, 0x0

    .line 571
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 581
    :cond_32
    if-lt v1, v7, :cond_36

    if-le v1, v8, :cond_4e

    :cond_36
    const/16 v4, 0x30

    if-lt v1, v4, :cond_3e

    const/16 v4, 0x39

    if-le v1, v4, :cond_4e

    :cond_3e
    if-eq v1, v5, :cond_4e

    if-eq v1, v6, :cond_4e

    .line 583
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.185"

    invoke-static {v5, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 585
    :cond_4e
    if-ne v1, v6, :cond_2f

    .line 588
    sub-int v4, v3, v3

    aget-byte v4, v0, v4

    if-ne v4, v5, :cond_62

    .line 589
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.186"

    invoke-static {v5, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 592
    :cond_62
    const/4 v2, 0x1

    goto :goto_2f

    .line 595
    .end local v1           #ch:B
    :cond_64
    return-void
.end method

.method public static checkURI(Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 604
    .local v1, ur:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_35

    .line 606
    :cond_15
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.187"

    invoke-static {v3, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_21
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_21} :catch_21

    .line 611
    .end local v1           #ur:Ljava/net/URI;
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 612
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.189"

    invoke-static {v3, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 608
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v1       #ur:Ljava/net/URI;
    .restart local p0
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_47

    .line 609
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.188"

    invoke-static {v3, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_47
    .catch Ljava/net/URISyntaxException; {:try_start_35 .. :try_end_47} :catch_21

    .line 616
    :cond_47
    return-void
.end method

.method private getBytesAsString([B)Ljava/lang/String;
    .registers 7
    .parameter "data"

    .prologue
    .line 485
    const-string v1, ""

    .line 486
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_42

    .line 487
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, tail:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 493
    .end local v2           #tail:Ljava/lang/String;
    :cond_42
    return-object v1
.end method

.method public static ipBytesToStr([B)Ljava/lang/String;
    .registers 7
    .parameter "ip"

    .prologue
    const/4 v4, 0x1

    const-string v5, "/"

    .line 826
    const-string v1, ""

    .line 827
    .local v1, result:Ljava/lang/String;
    array-length v2, p0

    const/16 v3, 0x9

    if-ge v2, v3, :cond_48

    .line 828
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_8b

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    array-length v2, p0

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_42

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_45

    const-string v3, "/"

    move-object v3, v5

    :goto_3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 831
    :cond_45
    const-string v3, "."

    goto :goto_3a

    .line 835
    .end local v0           #i:I
    :cond_48
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_49
    array-length v2, p0

    if-ge v0, v2, :cond_8b

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_85

    array-length v2, p0

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_85

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    if-ne v0, v3, :cond_88

    const-string v3, "/"

    move-object v3, v5

    :goto_7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 838
    :cond_88
    const-string v3, ":"

    goto :goto_7d

    .line 842
    :cond_8b
    return-object v1
.end method

.method public static ipStrToBytes(Ljava/lang/String;)[B
    .registers 12
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_49

    const/4 v0, 0x1

    move v1, v0

    .line 670
    .local v1, isIPv4:Z
    :goto_a
    if-eqz v1, :cond_4c

    const/4 v0, 0x4

    .line 671
    .local v0, num_components:I
    :goto_d
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1d1

    .line 672
    mul-int/lit8 v0, v0, 0x2

    move v3, v0

    .line 675
    .end local v0           #num_components:I
    .local v3, num_components:I
    :goto_18
    new-array v6, v3, [B

    .line 676
    .local v6, result:[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 678
    .local v4, ip_bytes:[B
    const/4 v0, 0x0

    .line 680
    .local v0, component:I
    const/4 v5, 0x0

    .line 681
    .local v5, reading_second_bound:Z
    if-eqz v1, :cond_d7

    .line 686
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .line 687
    .end local v1           #i:I
    .local v2, i:I
    :goto_24
    array-length v1, v4

    if-ge v2, v1, :cond_1ce

    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, digits:I
    const/4 v7, 0x0

    .line 692
    .local v7, value:I
    :goto_29
    array-length v8, v4

    if-ge v2, v8, :cond_5a

    aget-byte v8, v4, v2

    const/16 v9, 0x30

    if-lt v8, v9, :cond_5a

    aget-byte v8, v4, v2

    const/16 v9, 0x39

    if-gt v8, v9, :cond_5a

    .line 693
    add-int/lit8 v1, v1, 0x1

    .line 694
    const/4 v8, 0x3

    if-le v1, v8, :cond_4f

    .line 695
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18B"

    .end local v1           #digits:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    .end local v2           #i:I
    .end local v3           #num_components:I
    .end local v4           #ip_bytes:[B
    .end local v5           #reading_second_bound:Z
    .end local v6           #result:[B
    .end local v7           #value:I
    .restart local p0
    :cond_49
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    .line 670
    .local v1, isIPv4:Z
    :cond_4c
    const/16 v0, 0x10

    goto :goto_d

    .line 697
    .restart local v0       #component:I
    .local v1, digits:I
    .restart local v2       #i:I
    .restart local v3       #num_components:I
    .restart local v4       #ip_bytes:[B
    .restart local v5       #reading_second_bound:Z
    .restart local v6       #result:[B
    .restart local v7       #value:I
    :cond_4f
    mul-int/lit8 v7, v7, 0xa

    aget-byte v8, v4, v2

    .end local v7           #value:I
    const/16 v9, 0x30

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 698
    .restart local v7       #value:I
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 700
    :cond_5a
    if-nez v1, :cond_68

    .line 702
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18C"

    .end local v1           #digits:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    .restart local v0       #component:I
    .restart local v1       #digits:I
    .restart local p0
    :cond_68
    int-to-byte v1, v7

    aput-byte v1, v6, v0

    .line 705
    .end local v1           #digits:I
    add-int/lit8 v0, v0, 0x1

    .line 706
    array-length v1, v4

    if-lt v2, v1, :cond_7f

    move v1, v2

    .line 732
    .end local v2           #i:I
    .end local v7           #value:I
    .local v1, i:I
    :goto_71
    if-eq v0, v3, :cond_d4

    .line 733
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18D"

    .end local v1           #i:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    .restart local v0       #component:I
    .restart local v2       #i:I
    .restart local v7       #value:I
    .restart local p0
    :cond_7f
    aget-byte v1, v4, v2

    const/16 v7, 0x2e

    if-eq v1, v7, :cond_97

    .end local v7           #value:I
    aget-byte v1, v4, v2

    const/16 v7, 0x2f

    if-eq v1, v7, :cond_97

    .line 712
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18C"

    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    .restart local v0       #component:I
    .restart local p0
    :cond_97
    aget-byte v1, v4, v2

    const/16 v7, 0x2f

    if-ne v1, v7, :cond_bc

    .line 716
    if-eqz v5, :cond_ab

    .line 718
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18C"

    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    .restart local v0       #component:I
    .restart local p0
    :cond_ab
    const/4 v1, 0x4

    if-eq v0, v1, :cond_ba

    .line 721
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18D"

    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    .restart local v0       #component:I
    .restart local p0
    :cond_ba
    const/4 v1, 0x1

    .end local v5           #reading_second_bound:Z
    .local v1, reading_second_bound:Z
    move v5, v1

    .line 726
    .end local v1           #reading_second_bound:Z
    .restart local v5       #reading_second_bound:Z
    :cond_bc
    if-eqz v5, :cond_cd

    const/4 v1, 0x7

    :goto_bf
    if-le v0, v1, :cond_cf

    .line 727
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18D"

    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    .restart local v0       #component:I
    .restart local p0
    :cond_cd
    const/4 v1, 0x3

    goto :goto_bf

    .line 729
    :cond_cf
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .local v1, i:I
    move v2, v1

    .line 730
    .end local v1           #i:I
    .restart local v2       #i:I
    goto/16 :goto_24

    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_d4
    move p0, v0

    .end local v0           #component:I
    .local p0, component:I
    move v0, v5

    .line 807
    .end local v1           #i:I
    .end local v3           #num_components:I
    .end local v5           #reading_second_bound:Z
    .local v0, reading_second_bound:Z
    :goto_d6
    return-object v6

    .line 741
    .local v0, component:I
    .local v1, isIPv4:Z
    .restart local v3       #num_components:I
    .restart local v5       #reading_second_bound:Z
    .local p0, ip:Ljava/lang/String;
    :cond_d7
    array-length v1, v4

    .end local v1           #isIPv4:Z
    const/16 v2, 0x27

    if-eq v1, v2, :cond_ed

    array-length v1, v4

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_ed

    .line 743
    new-instance v0, Ljava/io/IOException;

    .end local v0           #component:I
    const-string v1, "security.18E"

    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    .restart local v0       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_ed
    const/4 v7, 0x0

    .line 747
    .restart local v7       #value:I
    const/4 v3, 0x0

    .line 749
    .local v3, second_hex:Z
    const/4 v1, 0x0

    .line 750
    .local v1, expect_delimiter:Z
    const/4 v2, 0x0

    .restart local v2       #i:I
    move v8, v7

    .end local v7           #value:I
    .local v8, value:I
    move v7, v3

    .end local v3           #second_hex:Z
    .local v7, second_hex:Z
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    move v2, v1

    .local v2, expect_delimiter:I
    move v1, v0

    .end local v0           #component:I
    .local v1, component:I
    :goto_f6
    array-length v0, v4

    if-ge v3, v0, :cond_1b5

    .line 751
    aget-byte v0, v4, v3

    .line 752
    .local v0, bytik:B
    const/16 v9, 0x30

    if-lt v0, v9, :cond_115

    const/16 v9, 0x39

    if-gt v0, v9, :cond_115

    .line 753
    const/16 v8, 0x30

    sub-int/2addr v0, v8

    .end local v8           #value:I
    .local v0, value:I
    move v8, v0

    .line 785
    .end local v0           #value:I
    .restart local v8       #value:I
    :goto_107
    if-eqz v2, :cond_192

    .line 786
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.18E"

    .end local v1           #component:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    .local v0, bytik:B
    .restart local v1       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_115
    const/16 v9, 0x41

    if-lt v0, v9, :cond_122

    const/16 v9, 0x46

    if-gt v0, v9, :cond_122

    .line 755
    const/16 v8, 0x37

    sub-int/2addr v0, v8

    .end local v8           #value:I
    .local v0, value:I
    move v8, v0

    .end local v0           #value:I
    .restart local v8       #value:I
    goto :goto_107

    .line 756
    .local v0, bytik:B
    :cond_122
    const/16 v9, 0x61

    if-lt v0, v9, :cond_12f

    const/16 v9, 0x66

    if-gt v0, v9, :cond_12f

    .line 757
    const/16 v8, 0x57

    sub-int/2addr v0, v8

    .end local v8           #value:I
    .local v0, value:I
    move v8, v0

    .end local v0           #value:I
    .restart local v8       #value:I
    goto :goto_107

    .line 758
    .local v0, bytik:B
    :cond_12f
    if-eqz v7, :cond_13d

    .line 761
    new-instance v0, Ljava/io/IOException;

    .end local v0           #bytik:B
    const-string v1, "security.18E"

    .end local v1           #component:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    .restart local v0       #bytik:B
    .restart local v1       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_13d
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_145

    .end local v2           #expect_delimiter:I
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_186

    .line 763
    :cond_145
    rem-int/lit8 v2, v1, 0x2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_156

    .line 766
    new-instance v0, Ljava/io/IOException;

    .end local v0           #bytik:B
    const-string v1, "security.18E"

    .end local v1           #component:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    .restart local v0       #bytik:B
    .restart local v1       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_156
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1cc

    .line 769
    if-eqz v5, :cond_168

    .line 771
    new-instance v0, Ljava/io/IOException;

    .end local v0           #bytik:B
    const-string v1, "security.18E"

    .end local v1           #component:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    .restart local v0       #bytik:B
    .restart local v1       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_168
    const/16 v0, 0x10

    if-eq v1, v0, :cond_178

    .line 776
    .end local v0           #bytik:B
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.18F"

    .end local v1           #component:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    .restart local v1       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_178
    const/4 v0, 0x1

    .end local v5           #reading_second_bound:Z
    .local v0, reading_second_bound:Z
    move v2, v0

    .line 780
    .end local v0           #reading_second_bound:Z
    .local v2, reading_second_bound:Z
    :goto_17a
    const/4 v0, 0x0

    .local v0, expect_delimiter:Z
    move v5, v2

    .end local v2           #reading_second_bound:Z
    .restart local v5       #reading_second_bound:Z
    move v10, v0

    .local v10, expect_delimiter:I
    move v0, v1

    .end local v1           #component:I
    .local v0, component:I
    move v1, v10

    .line 750
    .end local v10           #expect_delimiter:I
    .local v1, expect_delimiter:I
    :goto_17f
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    move v2, v1

    .end local v1           #expect_delimiter:I
    .local v2, expect_delimiter:I
    move v1, v0

    .end local v0           #component:I
    .local v1, component:I
    goto/16 :goto_f6

    .line 783
    .end local v2           #expect_delimiter:I
    .local v0, bytik:B
    :cond_186
    new-instance v0, Ljava/io/IOException;

    .end local v0           #bytik:B
    const-string v1, "security.18E"

    .end local v1           #component:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    .restart local v1       #component:I
    .restart local v2       #expect_delimiter:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_192
    if-nez v7, :cond_19e

    .line 790
    shl-int/lit8 v0, v8, 0x4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 791
    const/4 v0, 0x1

    .end local v7           #second_hex:Z
    .local v0, second_hex:Z
    move v7, v0

    .end local v0           #second_hex:Z
    .restart local v7       #second_hex:Z
    move v0, v1

    .end local v1           #component:I
    .local v0, component:I
    move v1, v2

    .end local v2           #expect_delimiter:I
    .local v1, expect_delimiter:I
    goto :goto_17f

    .line 794
    .end local v0           #component:I
    .local v1, component:I
    .restart local v2       #expect_delimiter:I
    :cond_19e
    aget-byte v0, v6, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v8

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 797
    rem-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b2

    .end local v2           #expect_delimiter:I
    const/4 v0, 0x1

    move v2, v0

    .line 798
    .local v2, expect_delimiter:Z
    :goto_1ad
    const/4 v7, 0x0

    .line 799
    add-int/lit8 v0, v1, 0x1

    .end local v1           #component:I
    .restart local v0       #component:I
    move v1, v2

    .local v1, expect_delimiter:I
    goto :goto_17f

    .line 797
    .end local v0           #component:I
    .end local v2           #expect_delimiter:Z
    .local v1, component:I
    :cond_1b2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1ad

    .line 803
    .local v2, expect_delimiter:I
    :cond_1b5
    if-nez v7, :cond_1bc

    rem-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c8

    .line 804
    .end local v2           #expect_delimiter:I
    :cond_1bc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.18E"

    .end local v1           #component:I
    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #ip:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1       #component:I
    .restart local p0       #ip:Ljava/lang/String;
    :cond_1c8
    move v0, v5

    .end local v5           #reading_second_bound:Z
    .local v0, reading_second_bound:Z
    move p0, v1

    .end local v1           #component:I
    .local p0, component:I
    goto/16 :goto_d6

    .local v0, bytik:B
    .restart local v1       #component:I
    .restart local v5       #reading_second_bound:Z
    .local p0, ip:Ljava/lang/String;
    :cond_1cc
    move v2, v5

    .end local v5           #reading_second_bound:Z
    .local v2, reading_second_bound:Z
    goto :goto_17a

    .end local v1           #component:I
    .end local v7           #second_hex:Z
    .end local v8           #value:I
    .local v0, component:I
    .local v2, i:I
    .local v3, num_components:I
    .restart local v5       #reading_second_bound:Z
    :cond_1ce
    move v1, v2

    .end local v2           #i:I
    .local v1, i:I
    goto/16 :goto_71

    .end local v3           #num_components:I
    .end local v4           #ip_bytes:[B
    .end local v5           #reading_second_bound:Z
    .end local v6           #result:[B
    .local v0, num_components:I
    .local v1, isIPv4:Z
    :cond_1d1
    move v3, v0

    .end local v0           #num_components:I
    .restart local v3       #num_components:I
    goto/16 :goto_18
.end method

.method public static oidStrToInts(Ljava/lang/String;)[I
    .registers 15
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x30

    const/16 v12, 0x2e

    const-string v11, "security.56"

    .line 622
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 623
    .local v0, bytes:[B
    array-length v9, v0

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-byte v9, v0, v9

    if-ne v9, v12, :cond_1d

    .line 624
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.56"

    invoke-static {v11, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 626
    :cond_1d
    array-length v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    new-array v7, v9, [I

    .line 627
    .local v7, result:[I
    const/4 v3, 0x0

    .line 628
    .local v3, number:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    array-length v9, v0

    if-ge v1, v9, :cond_59

    .line 629
    const/4 v8, 0x0

    .line 630
    .local v8, value:I
    move v5, v1

    .line 632
    .local v5, pos:I
    :goto_2b
    array-length v9, v0

    if-ge v1, v9, :cond_43

    aget-byte v9, v0, v1

    if-lt v9, v13, :cond_43

    aget-byte v9, v0, v1

    const/16 v10, 0x39

    if-gt v9, v10, :cond_43

    .line 633
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-byte v10, v0, v1

    sub-int/2addr v10, v13

    add-int v8, v9, v10

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2b

    .line 635
    :cond_43
    if-ne v1, v5, :cond_51

    .line 637
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.56"

    invoke-static {v11, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 639
    :cond_51
    add-int/lit8 v4, v3, 0x1

    .end local v3           #number:I
    .local v4, number:I
    aput v8, v7, v3

    .line 640
    array-length v9, v0

    if-lt v1, v9, :cond_68

    move v3, v4

    .line 647
    .end local v4           #number:I
    .end local v5           #pos:I
    .end local v8           #value:I
    .restart local v3       #number:I
    :cond_59
    const/4 v9, 0x2

    if-ge v3, v9, :cond_7c

    .line 648
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.18A"

    invoke-static {v10, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 643
    .end local v3           #number:I
    .restart local v4       #number:I
    .restart local v5       #pos:I
    .restart local v8       #value:I
    :cond_68
    aget-byte v9, v0, v1

    if-eq v9, v12, :cond_78

    .line 644
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.56"

    invoke-static {v11, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 628
    :cond_78
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #number:I
    .restart local v3       #number:I
    goto :goto_26

    .line 650
    .end local v5           #pos:I
    .end local v8           #value:I
    :cond_7c
    new-array v6, v3, [I

    .line 651
    .local v6, res:[I
    const/4 v1, 0x0

    :goto_7f
    if-ge v1, v3, :cond_88

    .line 652
    aget v9, v7, v1

    aput v9, v6, v1

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 654
    :cond_88
    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "_gname"

    .prologue
    const/4 v4, 0x0

    .line 301
    instance-of v2, p1, Lorg/apache/harmony/security/x509/GeneralName;

    if-nez v2, :cond_7

    move v2, v4

    .line 328
    .end local p0
    :goto_6
    return v2

    .line 304
    .restart local p0
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    move-object v1, v0

    .line 305
    .local v1, gname:Lorg/apache/harmony/security/x509/GeneralName;
    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    iget v3, v1, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    if-eq v2, v3, :cond_13

    move v2, v4

    .line 306
    goto :goto_6

    .line 308
    :cond_13
    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v2, :pswitch_data_58

    move v2, v4

    .line 328
    goto :goto_6

    .line 312
    :pswitch_1a
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    .line 315
    .restart local p0
    :pswitch_29
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    iget-object v2, v1, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_6

    .line 318
    .restart local p0
    :pswitch_3a
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    iget-object v2, v1, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_6

    .line 323
    .restart local p0
    :pswitch_4b
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_6

    .line 308
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_1a
        :pswitch_1a
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_1a
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method

.method public getAsList()Ljava/util/List;
    .registers 4

    .prologue
    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, result:Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_6e

    .line 476
    .end local p0
    :goto_14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 451
    .restart local p0
    :pswitch_19
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/OtherName;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/OtherName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 456
    .restart local p0
    :pswitch_25
    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 459
    :pswitch_2b
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 462
    .restart local p0
    :pswitch_39
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/ORAddress;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 465
    .restart local p0
    :pswitch_45
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x501/Name;

    const-string v1, "RFC2253"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 468
    .restart local p0
    :pswitch_53
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/EDIPartyName;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/EDIPartyName;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 471
    .restart local p0
    :pswitch_5f
    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 449
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_25
        :pswitch_25
        :pswitch_39
        :pswitch_45
        :pswitch_53
        :pswitch_25
        :pswitch_5f
        :pswitch_2b
    .end packed-switch
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    if-nez v0, :cond_c

    .line 546
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Choice;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    .line 548
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->encoding:[B

    return-object v0
.end method

.method public getEncodedName()[B
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    if-nez v0, :cond_12

    .line 558
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralName;->nameASN1:[Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    .line 560
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name_encoding:[B

    return-object v0
.end method

.method public getName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    return v0
.end method

.method public isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z
    .registers 18
    .parameter "gname"

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    move v13, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v14

    if-eq v13, v14, :cond_d

    .line 347
    const/4 v13, 0x0

    .line 426
    .end local p0
    .end local p1
    :goto_c
    return v13

    .line 349
    .restart local p0
    .restart local p1
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    move v13, v0

    packed-switch v13, :pswitch_data_11a

    .line 426
    const/4 v13, 0x1

    goto :goto_c

    .line 354
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    goto :goto_c

    .line 360
    .restart local p0
    .restart local p1
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 361
    .local v7, dns:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, _dns:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 363
    const/4 v13, 0x1

    goto :goto_c

    .line 365
    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    goto :goto_c

    .line 374
    .end local v2           #_dns:Ljava/lang/String;
    .end local v7           #dns:Ljava/lang/String;
    :pswitch_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 375
    .local v12, uri:Ljava/lang/String;
    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v6, v13, 0x3

    .line 376
    .local v6, begin:I
    const/16 v13, 0x2f

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 377
    .local v8, end:I
    const/4 v13, -0x1

    if-ne v8, v13, :cond_b6

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 380
    .local v9, host:Ljava/lang/String;
    :goto_84
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #uri:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 381
    .restart local v12       #uri:Ljava/lang/String;
    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v6, v13, 0x3

    .line 382
    const/16 v13, 0x2f

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 383
    const/4 v13, -0x1

    if-ne v8, v13, :cond_bc

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 386
    .local v3, _host:Ljava/lang/String;
    :goto_a0
    const-string v13, "."

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c2

    .line 387
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_c

    .line 377
    .end local v3           #_host:Ljava/lang/String;
    .end local v9           #host:Ljava/lang/String;
    :cond_b6
    invoke-virtual {v12, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    goto :goto_84

    .line 383
    .restart local v9       #host:Ljava/lang/String;
    :cond_bc
    invoke-virtual {v12, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    goto :goto_a0

    .line 389
    .restart local v3       #_host:Ljava/lang/String;
    :cond_c2
    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_c

    .line 393
    .end local v3           #_host:Ljava/lang/String;
    .end local v6           #begin:I
    .end local v8           #end:I
    .end local v9           #host:Ljava/lang/String;
    .end local v12           #uri:Ljava/lang/String;
    :pswitch_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v5, v0

    .line 394
    .local v5, address:[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v1, v0

    .line 395
    .local v1, _address:[B
    array-length v11, v5

    .line 396
    .local v11, length:I
    array-length v4, v1

    .line 397
    .local v4, _length:I
    if-ne v11, v4, :cond_ea

    .line 398
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    goto/16 :goto_c

    .line 399
    :cond_ea
    mul-int/lit8 v13, v4, 0x2

    if-ne v11, v13, :cond_109

    .line 400
    const/4 v10, 0x0

    .local v10, i:I
    :goto_ef
    array-length v13, v1

    if-ge v10, v13, :cond_106

    .line 401
    aget-byte v13, v1, v10

    aget-byte v14, v5, v10

    if-lt v13, v14, :cond_100

    aget-byte v13, v1, v10

    add-int v14, v10, v4

    aget-byte v14, v5, v14

    if-le v13, v14, :cond_103

    .line 403
    :cond_100
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 400
    :cond_103
    add-int/lit8 v10, v10, 0x1

    goto :goto_ef

    .line 406
    :cond_106
    const/4 v13, 0x1

    goto/16 :goto_c

    .line 408
    .end local v10           #i:I
    :cond_109
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 422
    .end local v1           #_address:[B
    .end local v4           #_length:I
    .end local v5           #address:[B
    .end local v11           #length:I
    .restart local p0
    :pswitch_10c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    goto/16 :goto_c

    .line 349
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_17
        :pswitch_32
        :pswitch_10c
        :pswitch_10c
        :pswitch_10c
        :pswitch_67
        :pswitch_c8
        :pswitch_10c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 501
    const-string v0, ""

    .line 502
    .local v0, result:Ljava/lang/String;
    iget v1, p0, Lorg/apache/harmony/security/x509/GeneralName;->tag:I

    packed-switch v1, :pswitch_data_fc

    .line 537
    .end local p0
    :goto_7
    return-object v0

    .line 504
    .restart local p0
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otherName[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    goto :goto_7

    .line 508
    :pswitch_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rfc822Name[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    goto :goto_7

    .line 511
    :pswitch_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dNSName[2]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    goto :goto_7

    .line 514
    :pswitch_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uniformResourceIdentifier[6]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    goto :goto_7

    .line 517
    :pswitch_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registeredID[8]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    goto :goto_7

    .line 520
    .restart local p0
    :pswitch_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x400Address[3]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    goto/16 :goto_7

    .line 524
    :pswitch_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directoryName[4]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x501/Name;

    const-string v2, "RFC2253"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    goto/16 :goto_7

    .line 528
    .restart local p0
    :pswitch_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ediPartyName[5]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/GeneralName;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x509/GeneralName;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    goto/16 :goto_7

    .line 532
    :pswitch_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iPAddress[7]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/harmony/security/x509/GeneralName;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/apache/harmony/security/x509/GeneralName;->ipBytesToStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    goto/16 :goto_7

    .line 502
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_8
        :pswitch_24
        :pswitch_3a
        :pswitch_84
        :pswitch_a1
        :pswitch_c0
        :pswitch_50
        :pswitch_dd
        :pswitch_66
    .end packed-switch
.end method
