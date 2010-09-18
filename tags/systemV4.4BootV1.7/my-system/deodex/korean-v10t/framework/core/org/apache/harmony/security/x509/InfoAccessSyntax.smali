.class public Lorg/apache/harmony/security/x509/InfoAccessSyntax;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InfoAccessSyntax.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final accessDescriptions:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 122
    new-instance v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;

    sget-object v1, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter "accessDescriptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[B)V

    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .registers 5
    .parameter "accessDescriptions"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 61
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "security.1A3"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_17
    iput-object p1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/InfoAccessSyntax$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/InfoAccessSyntax;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;
    .registers 2
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    return-object p0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "AccessDescriptions:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 108
    :cond_15
    const-string v1, "NULL\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_1a
    return-void

    .line 110
    :cond_1b
    iget-object v1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, itr:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21
.end method

.method public getAccessDescriptions()Ljava/util/List;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    if-nez v0, :cond_c

    .line 79
    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    .line 81
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v1, res:Ljava/lang/StringBuffer;
    const-string v2, "\n---- InfoAccessSyntax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 92
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 93
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 97
    .end local v0           #it:Ljava/util/Iterator;
    :cond_27
    const-string v2, "\n---- InfoAccessSyntax END\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
