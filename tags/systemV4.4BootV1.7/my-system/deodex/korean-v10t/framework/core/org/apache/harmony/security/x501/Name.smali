.class public Lorg/apache/harmony/security/x501/Name;
.super Ljava/lang/Object;
.source "Name.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

.field public static final ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private canonicalString:Ljava/lang/String;

.field private volatile encoded:[B

.field private rdn:Ljava/util/List;

.field private rfc1779String:Ljava/lang/String;

.field private rfc2253String:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 252
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .line 255
    new-instance v0, Lorg/apache/harmony/security/x501/Name$1;

    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x501/Name$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lorg/apache/harmony/security/x509/DNParser;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/x509/DNParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/DNParser;->parse()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter "rdn"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 73
    .local v0, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/DerInputStream;->getEndOffset()I

    move-result v1

    array-length v2, p1

    if-eq v1, v2, :cond_1b

    .line 74
    new-instance v1, Ljava/io/IOException;

    const-string v2, "security.111"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1b
    sget-object v1, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 79
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/DerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    return-object v0
.end method

.method private getName0(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "format"

    .prologue
    const-string v10, "RFC1779"

    const-string v9, "CANONICAL"

    .line 183
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v4, name:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int v2, v7, v8

    .local v2, i:I
    :goto_12
    if-ltz v2, :cond_6a

    .line 187
    iget-object v7, p0, Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 189
    .local v1, atavList:Ljava/util/List;
    const-string v7, "CANONICAL"

    if-ne v9, p1, :cond_2e

    .line 190
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 191
    .local v6, sortedList:Ljava/util/List;
    new-instance v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;

    invoke-direct {v7}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    move-object v1, v6

    .line 197
    .end local v6           #sortedList:Ljava/util/List;
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 198
    .local v3, it:Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 200
    .local v0, _ava:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v0, p1, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->appendName(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 201
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 203
    const-string v7, "RFC1779"

    if-ne v10, p1, :cond_51

    .line 204
    const-string v7, " + "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 206
    :cond_51
    const/16 v7, 0x2b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 211
    .end local v0           #_ava:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    :cond_57
    if-eqz v2, :cond_67

    .line 212
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    const-string v7, "RFC1779"

    if-ne p1, v10, :cond_67

    .line 214
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :cond_67
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 219
    .end local v1           #atavList:Ljava/util/List;
    .end local v3           #it:Ljava/util/Iterator;
    :cond_6a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, sName:Ljava/lang/String;
    const-string v7, "CANONICAL"

    if-ne p1, v9, :cond_78

    .line 221
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 223
    :cond_78
    return-object v5
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    if-nez v0, :cond_c

    .line 233
    sget-object v0, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    .line 235
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->encoded:[B

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "format"

    .prologue
    const-string v3, "RFC2253"

    const-string v2, "RFC1779"

    const-string v1, "CANONICAL"

    .line 121
    const-string v0, "RFC1779"

    if-ne p1, v2, :cond_17

    .line 123
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 124
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 126
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 165
    :goto_16
    return-object v0

    .line 128
    :cond_17
    const-string v0, "RFC2253"

    if-ne p1, v3, :cond_28

    .line 130
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_25

    .line 131
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    .line 133
    :cond_25
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_16

    .line 135
    :cond_28
    const-string v0, "CANONICAL"

    if-ne p1, v1, :cond_39

    .line 137
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_36

    .line 138
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    .line 140
    :cond_36
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_16

    .line 146
    :cond_39
    const-string v0, "RFC1779"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 148
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    if-nez v0, :cond_4d

    .line 149
    const-string v0, "RFC1779"

    invoke-direct {p0, v2}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    .line 151
    :cond_4d
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc1779String:Ljava/lang/String;

    goto :goto_16

    .line 153
    :cond_50
    const-string v0, "RFC2253"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 155
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 156
    const-string v0, "RFC2253"

    invoke-direct {p0, v3}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    .line 158
    :cond_64
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->rfc2253String:Ljava/lang/String;

    goto :goto_16

    .line 160
    :cond_67
    const-string v0, "CANONICAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 162
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_7b

    .line 163
    const-string v0, "CANONICAL"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    .line 165
    :cond_7b
    iget-object v0, p0, Lorg/apache/harmony/security/x501/Name;->canonicalString:Ljava/lang/String;

    goto :goto_16

    .line 168
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.177"

    invoke-static {v1, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "RFC2253"

    invoke-direct {p0, v1}, Lorg/apache/harmony/security/x501/Name;->getName0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
