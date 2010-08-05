.class public final Lorg/apache/http/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_SCHEME_NAME:Ljava/lang/String; = "http"


# instance fields
.field protected final hostname:Ljava/lang/String;

.field protected final lcHostname:Ljava/lang/String;

.field protected final port:I

.field protected final schemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "hostname"

    .prologue
    .line 112
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "hostname"
    .parameter "port"
    .parameter "scheme"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_d

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_d
    iput-object p1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    .line 86
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    .line 87
    if-eqz p3, :cond_24

    .line 88
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    .line 92
    :goto_21
    iput p2, p0, Lorg/apache/http/HttpHost;->port:I

    .line 93
    return-void

    .line 90
    :cond_24
    const-string v0, "http"

    iput-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    goto :goto_21
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .registers 5
    .parameter "httphost"

    .prologue
    .line 121
    iget-object v0, p1, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    iget v1, p1, Lorg/apache/http/HttpHost;->port:I

    iget-object v2, p1, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    if-nez p1, :cond_6

    move v2, v4

    .line 199
    :goto_5
    return v2

    .line 192
    :cond_6
    if-ne p0, p1, :cond_a

    move v2, v5

    goto :goto_5

    .line 193
    :cond_a
    instance-of v2, p1, Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_30

    .line 194
    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpHost;

    move-object v1, v0

    .line 195
    .local v1, that:Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, p0, Lorg/apache/http/HttpHost;->port:I

    iget v3, v1, Lorg/apache/http/HttpHost;->port:I

    if-ne v2, v3, :cond_2e

    iget-object v2, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v5

    goto :goto_5

    :cond_2e
    move v2, v4

    goto :goto_5

    .end local v1           #that:Lorg/apache/http/HttpHost;
    :cond_30
    move v2, v4

    .line 199
    goto :goto_5
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/http/HttpHost;->port:I

    return v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 207
    const/16 v0, 0x11

    .line 208
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/http/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 209
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 210
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 211
    return v0
.end method

.method public toHostString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 175
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 176
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 177
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 178
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 179
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 181
    :cond_1f
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .registers 4

    .prologue
    .line 157
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 158
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 159
    const-string v1, "://"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lorg/apache/http/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 161
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 162
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 163
    iget v1, p0, Lorg/apache/http/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 165
    :cond_29
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method