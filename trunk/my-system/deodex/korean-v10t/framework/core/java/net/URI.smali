.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$1;,
        Ljava/net/URI$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final allLegal:Ljava/lang/String; = "_-!.~\'()*,;:$&+=?/[]@"

.field static final punct:Ljava/lang/String; = ",;:$&+="

.field static final reserved:Ljava/lang/String; = ",;:$&+=?/[]@"

.field private static final serialVersionUID:J = -0x53fe87d1bc61b655L

.field static final someLegal:Ljava/lang/String; = "_-!.~\'()*,;:$&+="

.field static final unreserved:Ljava/lang/String; = "_-!.~\'()*"


# instance fields
.field private transient absolute:Z

.field private transient authority:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient opaque:Z

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private transient schemespecificpart:Ljava/lang/String;

.field private transient serverAuthority:Z

.field private string:Ljava/lang/String;

.field private transient userinfo:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Ljava/net/URI;->port:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    .line 74
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Ljava/net/URI;->port:I

    .line 72
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 74
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 90
    new-instance v0, Ljava/net/URI$Helper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Helper;-><init>(Ljava/net/URI;Ljava/net/URI$1;)V

    invoke-static {v0, p1, v2}, Ljava/net/URI$Helper;->access$100(Ljava/net/URI$Helper;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "scheme"
    .parameter "ssp"
    .parameter "frag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const-string v2, "_-!.~\'()*,;:$&+=?/[]@"

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Ljava/net/URI;->port:I

    .line 72
    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    .line 74
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, uri:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1c

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    :cond_1c
    if-eqz p2, :cond_27

    .line 121
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p2, v2}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :cond_27
    if-eqz p3, :cond_37

    .line 124
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p3, v2}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_37
    new-instance v1, Ljava/net/URI$Helper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/net/URI$Helper;-><init>(Ljava/net/URI;Ljava/net/URI$1;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Ljava/net/URI$Helper;->access$100(Ljava/net/URI$Helper;Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "scheme"
    .parameter "userinfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3a

    const/4 v3, -0x1

    const-string v5, "_-!.~\'()*,;:$&+=?/[]@"

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v3, p0, Ljava/net/URI;->port:I

    .line 72
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 74
    iput v3, p0, Ljava/net/URI;->hash:I

    .line 165
    if-nez p1, :cond_20

    if-nez p2, :cond_20

    if-nez p3, :cond_20

    if-nez p5, :cond_20

    if-nez p6, :cond_20

    if-nez p7, :cond_20

    .line 167
    const-string v1, ""

    iput-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 225
    :goto_1f
    return-void

    .line 171
    :cond_20
    if-eqz p1, :cond_3e

    if-eqz p5, :cond_3e

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3e

    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3e

    .line 173
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0302"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p5, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_3e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v0, uri:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_4b

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_4b
    if-nez p2, :cond_51

    if-nez p3, :cond_51

    if-eq p4, v3, :cond_56

    .line 183
    :cond_51
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :cond_56
    if-eqz p2, :cond_66

    .line 188
    const-string v1, "_-!.~\'()*,;:$&+="

    invoke-direct {p0, p2, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    :cond_66
    if-eqz p3, :cond_9a

    .line 195
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_97

    const/16 v1, 0x5d

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_97

    const/16 v1, 0x5b

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_97

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 199
    :cond_97
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_9a
    if-eq p4, v3, :cond_a2

    .line 203
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 207
    :cond_a2
    if-eqz p5, :cond_ad

    .line 209
    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-direct {p0, p5, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_ad
    if-eqz p6, :cond_bd

    .line 213
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p6, v5}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_bd
    if-eqz p7, :cond_cd

    .line 220
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p7, v5}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_cd
    new-instance v1, Ljava/net/URI$Helper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/net/URI$Helper;-><init>(Ljava/net/URI;Ljava/net/URI$1;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/net/URI$Helper;->access$100(Ljava/net/URI$Helper;Ljava/lang/String;Z)V

    goto/16 :goto_1f
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "scheme"
    .parameter "host"
    .parameter "path"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 250
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "scheme"
    .parameter "authority"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const-string v4, "_-!.~\'()*,;:$&+=?/[]@"

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Ljava/net/URI;->port:I

    .line 72
    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    .line 74
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 279
    if-eqz p1, :cond_2b

    if-eqz p3, :cond_2b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2b

    .line 281
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "K0302"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_2b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v0, uri:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_3a

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    :cond_3a
    if-eqz p2, :cond_4a

    .line 290
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v1, "@[]_-!.~\'()*,;:$&+="

    invoke-direct {p0, p2, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :cond_4a
    if-eqz p3, :cond_55

    .line 297
    const-string v1, "/@_-!.~\'()*,;:$&+="

    invoke-direct {p0, p3, v1}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    :cond_55
    if-eqz p4, :cond_65

    .line 301
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p4, v4}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    :cond_65
    if-eqz p5, :cond_75

    .line 306
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    const-string v1, "_-!.~\'()*,;:$&+=?/[]@"

    invoke-direct {p0, p5, v4}, Ljava/net/URI;->quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    :cond_75
    new-instance v1, Ljava/net/URI$Helper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/net/URI$Helper;-><init>(Ljava/net/URI;Ljava/net/URI$1;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Ljava/net/URI$Helper;->access$100(Ljava/net/URI$Helper;Ljava/lang/String;Z)V

    .line 311
    return-void
.end method

.method static synthetic access$1000(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Ljava/net/URI;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Ljava/net/URI;->port:I

    return p1
.end method

.method static synthetic access$1402(Ljava/net/URI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Ljava/net/URI;->serverAuthority:Z

    return p1
.end method

.method static synthetic access$202(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Ljava/net/URI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Ljava/net/URI;->absolute:Z

    return p1
.end method

.method static synthetic access$500(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Ljava/net/URI;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Ljava/net/URI;->opaque:Z

    return p1
.end method

.method static synthetic access$800(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object p1
.end method

.method private convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "s"

    .prologue
    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 1010
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v2, result:Ljava/lang/StringBuffer;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_12

    move-object v3, p1

    .line 1022
    :goto_11
    return-object v3

    .line 1015
    :cond_12
    const/4 v0, 0x0

    .local v0, index:I
    const/4 v1, 0x0

    .line 1016
    .local v1, previndex:I
    :goto_14
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v5, :cond_36

    .line 1017
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1018
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1019
    add-int/lit8 v0, v0, 0x3

    .line 1020
    move v1, v0

    goto :goto_14

    .line 1022
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .registers 5
    .parameter "uri"

    .prologue
    .line 979
    const/4 v1, 0x0

    .line 981
    .local v1, result:Ljava/net/URI;
    :try_start_1
    new-instance v1, Ljava/net/URI;

    .end local v1           #result:Ljava/net/URI;
    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_7

    .line 985
    .restart local v1       #result:Ljava/net/URI;
    return-object v1

    .line 982
    .end local v1           #result:Ljava/net/URI;
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 983
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1641
    if-nez p1, :cond_4

    move-object v1, p1

    .line 1646
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-static {p1}, Ljava/net/URIEncoderDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 1647
    :catch_9
    move-exception v0

    .line 1648
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private duplicate()Ljava/net/URI;
    .registers 3

    .prologue
    .line 989
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 990
    .local v0, clone:Ljava/net/URI;
    iget-boolean v1, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v1, v0, Ljava/net/URI;->absolute:Z

    .line 991
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 992
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 993
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 994
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    iput-boolean v1, v0, Ljava/net/URI;->opaque:Z

    .line 995
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 996
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 997
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 998
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 999
    iget-object v1, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    .line 1000
    iget-object v1, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    .line 1001
    iget-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    iput-boolean v1, v0, Ljava/net/URI;->serverAuthority:Z

    .line 1002
    return-object v0
.end method

.method private encodeOthers(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1634
    :try_start_0
    invoke-static {p1}, Ljava/net/URIEncoderDecoder;->encodeOthers(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 1635
    :catch_5
    move-exception v0

    .line 1636
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private equalsHexCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x25

    .line 1031
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v3, v4, :cond_12

    .line 1032
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1053
    :goto_11
    return v3

    .line 1035
    :cond_12
    const/4 v0, 0x0

    .local v0, index:I
    const/4 v2, 0x0

    .line 1037
    .local v2, previndex:I
    :goto_14
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4d

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v0, :cond_4d

    .line 1038
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1040
    .local v1, match:Z
    if-nez v1, :cond_31

    move v3, v7

    .line 1041
    goto :goto_11

    .line 1044
    :cond_31
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1046
    if-nez v1, :cond_49

    move v3, v7

    .line 1047
    goto :goto_11

    .line 1050
    :cond_49
    add-int/lit8 v0, v0, 0x3

    .line 1051
    move v2, v0

    .line 1052
    goto :goto_14

    .line 1053
    .end local v1           #match:Z
    :cond_4d
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_11
.end method

.method private getHashString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1711
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1712
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1713
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1714
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1716
    :cond_17
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_37

    .line 1717
    iget-object v1, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1744
    :cond_20
    :goto_20
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 1745
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1746
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1749
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/URI;->convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1719
    :cond_37
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 1720
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1721
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v1, :cond_61

    .line 1722
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1734
    :cond_49
    :goto_49
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 1735
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1738
    :cond_52
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1739
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1740
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 1724
    :cond_61
    iget-object v1, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v1, :cond_7d

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1727
    :cond_7d
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1728
    iget v1, p0, Ljava/net/URI;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_49

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_49
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "path"

    .prologue
    .line 1341
    const/4 v4, -0x1

    .line 1342
    .local v4, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1343
    .local v7, pathlen:I
    const/4 v11, 0x0

    .line 1344
    .local v11, size:I
    if-lez v7, :cond_13

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-eq v12, v13, :cond_13

    .line 1345
    add-int/lit8 v11, v11, 0x1

    .line 1347
    :cond_13
    :goto_13
    const/16 v12, 0x2f

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v12, -0x1

    if-eq v4, v12, :cond_2f

    .line 1348
    add-int/lit8 v12, v4, 0x1

    if-ge v12, v7, :cond_13

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-eq v12, v13, :cond_13

    .line 1349
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 1353
    :cond_2f
    new-array v10, v11, [Ljava/lang/String;

    .line 1354
    .local v10, seglist:[Ljava/lang/String;
    new-array v3, v11, [Z

    .line 1357
    .local v3, include:[Z
    const/4 v0, 0x0

    .line 1358
    .local v0, current:I
    const/4 v5, 0x0

    .line 1359
    .local v5, index2:I
    if-lez v7, :cond_59

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_59

    const/4 v12, 0x1

    move v4, v12

    .line 1360
    :goto_42
    const/16 v12, 0x2f

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_5c

    .line 1361
    add-int/lit8 v1, v0, 0x1

    .end local v0           #current:I
    .local v1, current:I
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v0

    .line 1362
    add-int/lit8 v4, v5, 0x1

    move v0, v1

    .end local v1           #current:I
    .restart local v0       #current:I
    goto :goto_42

    .line 1359
    :cond_59
    const/4 v12, 0x0

    move v4, v12

    goto :goto_42

    .line 1367
    :cond_5c
    if-ge v0, v11, :cond_64

    .line 1368
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v0

    .line 1372
    :cond_64
    const/4 v2, 0x0

    .local v2, i:I
    :goto_65
    if-ge v2, v11, :cond_a5

    .line 1373
    const/4 v12, 0x1

    aput-boolean v12, v3, v2

    .line 1374
    aget-object v12, v10, v2

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_97

    .line 1375
    const/4 v12, 0x1

    sub-int v8, v2, v12

    .line 1377
    .local v8, remove:I
    :goto_77
    const/4 v12, -0x1

    if-le v8, v12, :cond_81

    aget-boolean v12, v3, v8

    if-nez v12, :cond_81

    .line 1378
    add-int/lit8 v8, v8, -0x1

    goto :goto_77

    .line 1382
    :cond_81
    const/4 v12, -0x1

    if-le v8, v12, :cond_94

    aget-object v12, v10, v8

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_94

    .line 1383
    const/4 v12, 0x0

    aput-boolean v12, v3, v8

    .line 1384
    const/4 v12, 0x0

    aput-boolean v12, v3, v2

    .line 1372
    .end local v8           #remove:I
    :cond_94
    :goto_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 1386
    :cond_97
    aget-object v12, v10, v2

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_94

    .line 1387
    const/4 v12, 0x0

    aput-boolean v12, v3, v2

    goto :goto_94

    .line 1392
    :cond_a5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1393
    .local v6, newpath:Ljava/lang/StringBuffer;
    const-string v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b7

    .line 1394
    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1397
    :cond_b7
    const/4 v2, 0x0

    :goto_b8
    array-length v12, v10

    if-ge v2, v12, :cond_cc

    .line 1398
    aget-boolean v12, v3, v2

    if-eqz v12, :cond_c9

    .line 1399
    aget-object v12, v10, v2

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1400
    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1397
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_b8

    .line 1407
    :cond_cc
    const-string v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e7

    array-length v12, v10

    if-lez v12, :cond_e7

    array-length v12, v10

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-boolean v12, v3, v12

    if-eqz v12, :cond_e7

    .line 1409
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1412
    :cond_e7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1416
    .local v9, result:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1417
    const/16 v12, 0x2f

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1418
    const/4 v12, -0x1

    if-eq v4, v12, :cond_109

    if-lt v4, v5, :cond_ff

    const/4 v12, -0x1

    if-ne v5, v12, :cond_109

    .line 1419
    :cond_ff
    const/4 v12, 0x0

    const-string v13, "./"

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1420
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1422
    :cond_109
    return-object v9
.end method

.method private quoteComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "component"
    .parameter "legalset"

    .prologue
    .line 843
    :try_start_0
    invoke-static {p1, p2}, Ljava/net/URIEncoderDecoder;->quoteIllegal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 844
    :catch_5
    move-exception v0

    .line 845
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1771
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1773
    :try_start_3
    new-instance v1, Ljava/net/URI$Helper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/net/URI$Helper;-><init>(Ljava/net/URI;Ljava/net/URI$1;)V

    iget-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/net/URI$Helper;->access$100(Ljava/net/URI$Helper;Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_f} :catch_10

    .line 1777
    return-void

    .line 1774
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 1775
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSchemeSpecificPart()V
    .registers 4

    .prologue
    .line 1586
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1587
    .local v0, ssp:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1590
    :cond_21
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 1591
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1593
    :cond_2a
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1596
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    .line 1598
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1599
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1782
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 1783
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1784
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Ljava/net/URI;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 866
    const/4 v0, 0x0

    .line 869
    .local v0, ret:I
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_d

    move v1, v3

    .line 966
    :goto_c
    return v1

    .line 871
    :cond_d
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_17

    move v1, v4

    .line 872
    goto :goto_c

    .line 873
    :cond_17
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 874
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 875
    if-eqz v0, :cond_2b

    move v1, v0

    .line 876
    goto :goto_c

    .line 881
    :cond_2b
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-nez v1, :cond_35

    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_35

    move v1, v3

    .line 882
    goto :goto_c

    .line 883
    :cond_35
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    if-nez v1, :cond_3f

    move v1, v4

    .line 884
    goto :goto_c

    .line 885
    :cond_3f
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_53

    iget-boolean v1, p1, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_53

    .line 886
    iget-object v1, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 887
    if-eqz v0, :cond_ff

    move v1, v0

    .line 888
    goto :goto_c

    .line 895
    :cond_53
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_5d

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_5d

    move v1, v4

    .line 896
    goto :goto_c

    .line 897
    :cond_5d
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_67

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_67

    move v1, v3

    .line 898
    goto :goto_c

    .line 899
    :cond_67
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_c7

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_c7

    .line 900
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_ba

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_ba

    .line 902
    iget-object v1, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v1, :cond_81

    iget-object v1, p1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-nez v1, :cond_81

    move v1, v4

    .line 903
    goto :goto_c

    .line 904
    :cond_81
    iget-object v1, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-nez v1, :cond_8b

    iget-object v1, p1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v1, :cond_8b

    move v1, v3

    .line 905
    goto :goto_c

    .line 906
    :cond_8b
    iget-object v1, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v1, :cond_a0

    iget-object v1, p1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 907
    iget-object v1, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 908
    if-eqz v0, :cond_a0

    move v1, v0

    .line 909
    goto/16 :goto_c

    .line 914
    :cond_a0
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 915
    if-eqz v0, :cond_ad

    move v1, v0

    .line 916
    goto/16 :goto_c

    .line 920
    :cond_ad
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    if-eq v1, v2, :cond_c7

    .line 921
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int/2addr v1, v2

    goto/16 :goto_c

    .line 925
    :cond_ba
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 926
    if-eqz v0, :cond_c7

    move v1, v0

    .line 927
    goto/16 :goto_c

    .line 934
    :cond_c7
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 935
    if-eqz v0, :cond_d4

    move v1, v0

    .line 936
    goto/16 :goto_c

    .line 941
    :cond_d4
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_df

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_df

    move v1, v4

    .line 942
    goto/16 :goto_c

    .line 943
    :cond_df
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_ea

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_ea

    move v1, v3

    .line 944
    goto/16 :goto_c

    .line 945
    :cond_ea
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_ff

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_ff

    .line 946
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 947
    if-eqz v0, :cond_ff

    move v1, v0

    .line 948
    goto/16 :goto_c

    .line 954
    :cond_ff
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_10a

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v1, :cond_10a

    move v1, v4

    .line 955
    goto/16 :goto_c

    .line 956
    :cond_10a
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v1, :cond_115

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_115

    move v1, v3

    .line 957
    goto/16 :goto_c

    .line 958
    :cond_115
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_12a

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_12a

    .line 959
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 960
    if-eqz v0, :cond_12a

    move v1, v0

    .line 961
    goto/16 :goto_c

    .line 966
    :cond_12a
    const/4 v1, 0x0

    goto/16 :goto_c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1069
    instance-of v2, p1, Ljava/net/URI;

    if-nez v2, :cond_8

    move v2, v4

    .line 1144
    :goto_7
    return v2

    .line 1072
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/net/URI;

    move-object v1, v0

    .line 1074
    .local v1, uri:Ljava/net/URI;
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_14

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_1c

    :cond_14
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_1e

    :cond_1c
    move v2, v4

    .line 1076
    goto :goto_7

    .line 1077
    :cond_1e
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 1078
    iget-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->equalsHexCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    move v2, v4

    .line 1079
    goto :goto_7

    .line 1083
    :cond_32
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_3a

    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_42

    :cond_3a
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_44

    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_44

    :cond_42
    move v2, v4

    .line 1085
    goto :goto_7

    .line 1086
    :cond_44
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_58

    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_58

    .line 1087
    iget-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    move v2, v4

    .line 1088
    goto :goto_7

    .line 1092
    :cond_58
    iget-boolean v2, v1, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_69

    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_69

    .line 1093
    iget-object v2, v1, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->equalsHexCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_7

    .line 1095
    :cond_69
    iget-boolean v2, v1, Ljava/net/URI;->opaque:Z

    if-nez v2, :cond_126

    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-nez v2, :cond_126

    .line 1096
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->equalsHexCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    move v2, v4

    .line 1097
    goto :goto_7

    .line 1100
    :cond_7d
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_85

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_8d

    :cond_85
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v2, :cond_90

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_90

    :cond_8d
    move v2, v4

    .line 1102
    goto/16 :goto_7

    .line 1103
    :cond_90
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_a5

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_a5

    .line 1104
    iget-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->equalsHexCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    move v2, v4

    .line 1105
    goto/16 :goto_7

    .line 1109
    :cond_a5
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_ad

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_b5

    :cond_ad
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v2, :cond_b8

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_b8

    :cond_b5
    move v2, v4

    .line 1111
    goto/16 :goto_7

    .line 1112
    :cond_b8
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_123

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_123

    .line 1113
    iget-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_c8

    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_d0

    :cond_c8
    iget-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v2, :cond_d3

    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_d3

    :cond_d0
    move v2, v4

    .line 1115
    goto/16 :goto_7

    .line 1116
    :cond_d3
    iget-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v2, :cond_e5

    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v2, :cond_e5

    .line 1118
    iget-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->equalsHexCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_7

    .line 1120
    :cond_e5
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f2

    move v2, v4

    .line 1121
    goto/16 :goto_7

    .line 1124
    :cond_f2
    iget v2, p0, Ljava/net/URI;->port:I

    iget v3, v1, Ljava/net/URI;->port:I

    if-eq v2, v3, :cond_fb

    move v2, v4

    .line 1125
    goto/16 :goto_7

    .line 1128
    :cond_fb
    iget-object v2, v1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v2, :cond_103

    iget-object v2, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v2, :cond_10b

    :cond_103
    iget-object v2, v1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-nez v2, :cond_10e

    iget-object v2, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v2, :cond_10e

    :cond_10b
    move v2, v4

    .line 1130
    goto/16 :goto_7

    .line 1131
    :cond_10e
    iget-object v2, v1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v2, :cond_120

    iget-object v2, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    if-eqz v2, :cond_120

    .line 1132
    iget-object v2, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/URI;->userinfo:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->equalsHexCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_7

    :cond_120
    move v2, v5

    .line 1134
    goto/16 :goto_7

    :cond_123
    move v2, v5

    .line 1139
    goto/16 :goto_7

    :cond_126
    move v2, v4

    .line 1144
    goto/16 :goto_7
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 1195
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1205
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1215
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1225
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1235
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1245
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1255
    iget-object v0, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1285
    iget-object v0, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1295
    iget-object v0, p0, Ljava/net/URI;->userinfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1306
    iget v0, p0, Ljava/net/URI;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1307
    invoke-direct {p0}, Ljava/net/URI;->getHashString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1309
    :cond_f
    iget v0, p0, Ljava/net/URI;->hash:I

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 1320
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 1333
    iget-boolean v0, p0, Ljava/net/URI;->opaque:Z

    return v0
.end method

.method public normalize()Ljava/net/URI;
    .registers 4

    .prologue
    .line 1433
    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_6

    move-object v2, p0

    .line 1446
    :goto_5
    return-object v2

    .line 1436
    :cond_6
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, normalizedPath:Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v2, p0

    .line 1439
    goto :goto_5

    .line 1443
    :cond_16
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1444
    .local v1, result:Ljava/net/URI;
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1445
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object v2, v1

    .line 1446
    goto :goto_5
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1461
    iget-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    if-nez v0, :cond_e

    .line 1462
    new-instance v0, Ljava/net/URI$Helper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Helper;-><init>(Ljava/net/URI;Ljava/net/URI$1;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/net/URI$Helper;->access$1500(Ljava/net/URI$Helper;Z)V

    .line 1464
    :cond_e
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .registers 7
    .parameter "relative"

    .prologue
    .line 1477
    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_a

    :cond_8
    move-object v3, p1

    .line 1519
    :goto_9
    return-object v3

    .line 1481
    :cond_a
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_14

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1e

    :cond_12
    move-object v3, p1

    .line 1483
    goto :goto_9

    .line 1481
    :cond_14
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1486
    :cond_1e
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_28

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_32

    :cond_26
    move-object v3, p1

    .line 1488
    goto :goto_9

    .line 1486
    :cond_28
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1492
    :cond_32
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    .local v2, thisPath:Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, relativePath:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 1501
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1509
    :cond_5f
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_67

    move-object v3, p1

    .line 1510
    goto :goto_9

    .line 1514
    :cond_67
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 1515
    .local v1, result:Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1516
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1518
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    move-object v3, v1

    .line 1519
    goto :goto_9
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .parameter "relative"

    .prologue
    .line 1613
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .registers 7
    .parameter "relative"

    .prologue
    .line 1532
    iget-boolean v2, p1, Ljava/net/URI;->absolute:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_a

    :cond_8
    move-object v2, p1

    .line 1577
    :goto_9
    return-object v2

    .line 1537
    :cond_a
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v2, :cond_2e

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v2, :cond_2e

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v2, :cond_2e

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 1543
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1544
    .local v1, result:Ljava/net/URI;
    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    move-object v2, v1

    .line 1547
    goto :goto_9

    .line 1550
    .end local v1           #result:Ljava/net/URI;
    :cond_2e
    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 1554
    invoke-direct {p1}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1555
    .restart local v1       #result:Ljava/net/URI;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 1556
    iget-boolean v2, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v2, v1, Ljava/net/URI;->absolute:Z

    :goto_3e
    move-object v2, v1

    .line 1577
    goto :goto_9

    .line 1562
    .end local v1           #result:Ljava/net/URI;
    :cond_40
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1563
    .restart local v1       #result:Ljava/net/URI;
    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1564
    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1565
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1566
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1575
    :goto_5a
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    goto :goto_3e

    .line 1569
    :cond_5e
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1570
    .local v0, endindex:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_5a
.end method

.method public toASCIIString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1660
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/URI;->encodeOthers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1671
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-nez v1, :cond_34

    .line 1672
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1673
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1674
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1675
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1677
    :cond_17
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_37

    .line 1678
    iget-object v1, p0, Ljava/net/URI;->schemespecificpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1695
    :cond_20
    :goto_20
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 1696
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1697
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1700
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1702
    .end local v0           #result:Ljava/lang/StringBuffer;
    :cond_34
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object v1

    .line 1680
    .restart local v0       #result:Ljava/lang/StringBuffer;
    :cond_37
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 1681
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1682
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1685
    :cond_45
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 1686
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1689
    :cond_4e
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1690
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1691
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20
.end method

.method public toURL()Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1762
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    if-nez v0, :cond_2b

    .line 1763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "K0312"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1766
    :cond_2b
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
