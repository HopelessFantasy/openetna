.class public Landroid/net/http/DomainNameChecker;
.super Ljava/lang/Object;
.source "DomainNameChecker.java"


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field private static QUICK_IP_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    :try_start_0
    const-string v0, "^[a-f0-9\\.:]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/http/DomainNameChecker;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;
    :try_end_8
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_8} :catch_9

    .line 44
    :goto_8
    return-void

    .line 43
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "thisDomainToken"
    .parameter "thatDomainToken"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 263
    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    .line 264
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 265
    .local v1, starIndex:I
    if-ltz v1, :cond_33

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_33

    .line 267
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, prefix:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, suffix:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    move v3, v6

    .line 275
    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #starIndex:I
    .end local v2           #suffix:Ljava/lang/String;
    :goto_30
    return v3

    .restart local v0       #prefix:Ljava/lang/String;
    .restart local v1       #starIndex:I
    .restart local v2       #suffix:Ljava/lang/String;
    :cond_31
    move v3, v5

    .line 270
    goto :goto_30

    .end local v0           #prefix:Ljava/lang/String;
    .end local v1           #starIndex:I
    .end local v2           #suffix:Ljava/lang/String;
    :cond_33
    move v3, v5

    .line 275
    goto :goto_30
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .registers 6
    .parameter "domain"

    .prologue
    .line 72
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    move v2, v3

    .line 73
    .local v2, rval:Z
    :goto_a
    if-eqz v2, :cond_24

    .line 76
    :try_start_c
    sget-object v3, Landroid/net/http/DomainNameChecker;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 77
    if-eqz v2, :cond_24

    .line 78
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_23} :catch_28

    move-result v2

    .line 95
    :cond_24
    :goto_24
    return v2

    .line 72
    .end local v2           #rval:Z
    :cond_25
    const/4 v3, 0x0

    move v2, v3

    goto :goto_a

    .line 81
    .restart local v2       #rval:Z
    :catch_28
    move-exception v3

    move-object v0, v3

    .line 82
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, errorMessage:Ljava/lang/String;
    if-nez v1, :cond_32

    .line 84
    const-string v1, "unknown host exception"

    .line 88
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DomainNameChecker.isIpAddress(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 91
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 3
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    .line 56
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 57
    :cond_a
    const/4 v0, 0x0

    .line 64
    :goto_b
    return v0

    .line 60
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/net/http/DomainNameChecker;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 62
    invoke-static {p0, p1}, Landroid/net/http/DomainNameChecker;->matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    .line 64
    :cond_1b
    invoke-static {p0, p1}, Landroid/net/http/DomainNameChecker;->matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method private static matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "thisDomain"
    .parameter "thatDomain"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "\\."

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DomainNameChecker.matchDns(): this domain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that domain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 212
    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_34

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_36

    :cond_34
    move v6, v8

    .line 252
    :goto_35
    return v6

    .line 217
    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 221
    .local v1, rval:Z
    if-nez v1, :cond_77

    .line 222
    const-string v6, "\\."

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, thisDomainTokens:[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, thatDomainTokens:[Ljava/lang/String;
    array-length v5, v4

    .line 226
    .local v5, thisDomainTokensNum:I
    array-length v3, v2

    .line 229
    .local v3, thatDomainTokensNum:I
    if-lt v5, v3, :cond_77

    .line 230
    sub-int v0, v3, v9

    .local v0, i:I
    :goto_52
    if-ltz v0, :cond_77

    .line 231
    aget-object v6, v4, v0

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 232
    if-nez v1, :cond_7b

    .line 235
    if-nez v0, :cond_79

    if-ne v5, v3, :cond_79

    move v1, v9

    .line 236
    :goto_63
    if-eqz v1, :cond_77

    .line 237
    aget-object v6, v2, v8

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 238
    if-nez v1, :cond_77

    .line 241
    aget-object v6, v4, v8

    aget-object v7, v2, v8

    invoke-static {v6, v7}, Landroid/net/http/DomainNameChecker;->domainTokenMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .end local v0           #i:I
    .end local v2           #thatDomainTokens:[Ljava/lang/String;
    .end local v3           #thatDomainTokensNum:I
    .end local v4           #thisDomainTokens:[Ljava/lang/String;
    .end local v5           #thisDomainTokensNum:I
    :cond_77
    move v6, v1

    .line 252
    goto :goto_35

    .restart local v0       #i:I
    .restart local v2       #thatDomainTokens:[Ljava/lang/String;
    .restart local v3       #thatDomainTokensNum:I
    .restart local v4       #thisDomainTokens:[Ljava/lang/String;
    .restart local v5       #thisDomainTokensNum:I
    :cond_79
    move v1, v8

    .line 235
    goto :goto_63

    .line 230
    :cond_7b
    add-int/lit8 v0, v0, -0x1

    goto :goto_52
.end method

.method private static matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 8
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, hasDns:Z
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    .line 148
    .local v1, subjectAltNames:Ljava/util/Collection;
    if-eqz v1, :cond_71

    .line 149
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_a
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_a} :catch_4e

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    move v2, v0

    .line 150
    .end local v0           #hasDns:Z
    .end local v1           #subjectAltNames:Ljava/util/Collection;
    .local v2, hasDns:Z
    :goto_c
    :try_start_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    .line 152
    .local v0, altNameEntry:Ljava/util/List;
    if-eqz v0, :cond_b6

    const/4 v1, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v1, v4, :cond_b6

    .line 153
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    .line 154
    .local v1, altNameType:Ljava/lang/Integer;
    if-eqz v1, :cond_b6

    .line 155
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_31
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_c .. :try_end_31} :catch_b1

    move-result v1

    .end local v1           #altNameType:Ljava/lang/Integer;
    const/4 v4, 0x2

    if-ne v1, v4, :cond_b6

    .line 156
    const/4 v1, 0x1

    .line 157
    .end local v2           #hasDns:Z
    .local v1, hasDns:Z
    const/4 v2, 0x1

    :try_start_37
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #altNameEntry:Ljava/util/List;
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, altName:Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 159
    invoke-static {p1, v0}, Landroid/net/http/DomainNameChecker;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_44
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_37 .. :try_end_44} :catch_b4

    move-result v0

    .end local v0           #altName:Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 160
    const/4 p0, 0x1

    .end local p0
    move p1, p0

    move p0, v1

    .line 197
    .end local v1           #hasDns:Z
    .end local v3           #i:Ljava/util/Iterator;
    .end local p1
    .local p0, hasDns:Z
    :goto_4a
    return p1

    .restart local v1       #hasDns:Z
    .restart local v3       #i:Ljava/util/Iterator;
    .local p0, certificate:Ljava/security/cert/X509Certificate;
    .restart local p1
    :cond_4b
    move v0, v1

    .end local v1           #hasDns:Z
    .local v0, hasDns:Z
    :goto_4c
    move v2, v0

    .line 166
    .end local v0           #hasDns:Z
    .restart local v2       #hasDns:Z
    goto :goto_c

    .line 168
    .end local v2           #hasDns:Z
    .end local v3           #i:Ljava/util/Iterator;
    .restart local v0       #hasDns:Z
    :catch_4e
    move-exception v1

    move-object v5, v1

    move v1, v0

    .end local v0           #hasDns:Z
    .restart local v1       #hasDns:Z
    move-object v0, v5

    .line 175
    .local v0, e:Ljava/security/cert/CertificateParsingException;
    :goto_52
    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, errorMessage:Ljava/lang/String;
    if-nez v0, :cond_5a

    .line 177
    const-string v0, "failed to parse certificate"

    .line 181
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomainNameChecker.matchDns(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #errorMessage:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    move v0, v1

    .line 186
    .end local v1           #hasDns:Z
    .local v0, hasDns:Z
    :cond_71
    :goto_71
    if-nez v0, :cond_ad

    .line 187
    new-instance v1, Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    .end local p0           #certificate:Ljava/security/cert/X509Certificate;
    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, xName:Lorg/bouncycastle/asn1/x509/X509Name;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Name;->getValues()Ljava/util/Vector;

    move-result-object v2

    .line 189
    .local v2, val:Ljava/util/Vector;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Name;->getOIDs()Ljava/util/Vector;

    move-result-object v1

    .line 190
    .local v1, oid:Ljava/util/Vector;
    const/4 p0, 0x0

    .local p0, i:I
    :goto_89
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p0, v3, :cond_ad

    .line 191
    invoke-virtual {v1, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/x509/X509Name;->CN:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 192
    invoke-virtual {v2, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #i:I
    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/net/http/DomainNameChecker;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    move p1, p0

    move p0, v0

    .end local v0           #hasDns:Z
    .local p0, hasDns:Z
    goto :goto_4a

    .line 190
    .restart local v0       #hasDns:Z
    .local p0, i:I
    :cond_aa
    add-int/lit8 p0, p0, 0x1

    goto :goto_89

    .line 197
    .end local v1           #oid:Ljava/util/Vector;
    .end local v2           #val:Ljava/util/Vector;
    .end local p0           #i:I
    :cond_ad
    const/4 p0, 0x0

    move p1, p0

    move p0, v0

    .end local v0           #hasDns:Z
    .local p0, hasDns:Z
    goto :goto_4a

    .line 168
    .local v2, hasDns:Z
    .restart local v3       #i:Ljava/util/Iterator;
    .local p0, certificate:Ljava/security/cert/X509Certificate;
    :catch_b1
    move-exception v0

    move v1, v2

    .end local v2           #hasDns:Z
    .local v1, hasDns:Z
    goto :goto_52

    :catch_b4
    move-exception v0

    goto :goto_52

    .end local v1           #hasDns:Z
    .local v0, altNameEntry:Ljava/util/List;
    .restart local v2       #hasDns:Z
    :cond_b6
    move v0, v2

    .end local v2           #hasDns:Z
    .local v0, hasDns:Z
    goto :goto_4c

    .end local v0           #hasDns:Z
    .restart local v2       #hasDns:Z
    :cond_b8
    move v0, v2

    .end local v2           #hasDns:Z
    .restart local v0       #hasDns:Z
    goto :goto_71
.end method

.method private static matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 12
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DomainNameChecker.matchIpAddress(): this domain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 110
    :try_start_18
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v5

    .line 111
    .local v5, subjectAltNames:Ljava/util/Collection;
    if-eqz v5, :cond_7b

    .line 112
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 113
    .end local p0
    .local v4, i:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 115
    .local v2, altNameEntry:Ljava/util/List;
    if-eqz v2, :cond_22

    const/4 v6, 0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_22

    .line 116
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 117
    .local v3, altNameType:Ljava/lang/Integer;
    if-eqz v3, :cond_22

    .line 118
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_22

    .line 119
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 120
    .local v1, altName:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alternative IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_75
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_18 .. :try_end_75} :catch_7a

    move-result v6

    if-eqz v6, :cond_22

    move v6, v9

    .line 135
    .end local v1           #altName:Ljava/lang/String;
    .end local v2           #altNameEntry:Ljava/util/List;
    .end local v3           #altNameType:Ljava/lang/Integer;
    .end local v4           #i:Ljava/util/Iterator;
    .end local v5           #subjectAltNames:Ljava/util/Collection;
    :goto_79
    return v6

    .line 133
    :catch_7a
    move-exception v6

    :cond_7b
    move v6, v8

    .line 135
    goto :goto_79
.end method
