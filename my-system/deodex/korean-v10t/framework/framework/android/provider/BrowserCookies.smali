.class public Landroid/provider/BrowserCookies;
.super Ljava/lang/Object;
.source "BrowserCookies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BrowserCookies$Cookie;
    }
.end annotation


# static fields
.field private static final COMMA:C = ','

.field public static final COOKIES_URI:Landroid/net/Uri; = null

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final EQUAL:C = '='

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_ONLY:Ljava/lang/String; = "httponly"

.field private static final LOGTAG:Ljava/lang/String; = "browserCookies"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'

.field private static final QUESTION_MARK:C = '?'

.field private static final QUOTATION:C = '\"'

.field private static final SECURE:Ljava/lang/String; = "secure"

.field private static final SEMICOLON:C = ';'

.field private static final WHITE_SPACE:C = ' '


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "content://browserCookies/cookies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserCookies;->COOKIES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "host"

    .prologue
    const/16 v3, 0x2e

    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, startIndex:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 339
    .local v1, nextIndex:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 340
    .local v0, lastIndex:I
    :goto_b
    if-ge v1, v0, :cond_14

    .line 341
    add-int/lit8 v2, v1, 0x1

    .line 342
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_b

    .line 344
    :cond_14
    if-lez v2, :cond_1b

    .line 345
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    :goto_1a
    return-object v3

    :cond_1b
    move-object v3, p0

    goto :goto_1a
.end method

.method private static getCookie(Landroid/content/ContentResolver;Landroid/net/WebAddress;)Ljava/lang/String;
    .registers 12
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 172
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 173
    :cond_4
    const/4 p0, 0x0

    .line 221
    .end local p0
    .end local p1
    :goto_5
    return-object p0

    .line 176
    .restart local p0
    .restart local p1
    :cond_6
    invoke-static {p1}, Landroid/provider/BrowserCookies;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, hostAndPath:[Ljava/lang/String;
    if-nez v1, :cond_e

    .line 178
    const/4 p0, 0x0

    goto :goto_5

    .line 181
    :cond_e
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/provider/BrowserCookies;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, baseDomain:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/provider/BrowserCookies;->getCookiesForDomain(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 183
    .local p0, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BrowserCookies$Cookie;>;"
    if-nez p0, :cond_1d

    .line 184
    const/4 p0, 0x0

    goto :goto_5

    .line 187
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    .local v2, now:J
    const-string v0, "https"

    .end local v0           #baseDomain:Ljava/lang/String;
    iget-object v4, p1, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 189
    .local v5, secure:Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/provider/BrowserCookies$Cookie;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 p0, 0x100

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .end local p0           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BrowserCookies$Cookie;>;"
    .local v4, ret:Ljava/lang/StringBuilder;
    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_8d

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/provider/BrowserCookies$Cookie;

    .line 194
    .local p0, cookie:Landroid/provider/BrowserCookies$Cookie;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {p0, v6}, Landroid/provider/BrowserCookies$Cookie;->domainMatch(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {p0, v6}, Landroid/provider/BrowserCookies$Cookie;->pathMatch(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-wide v6, p0, Landroid/provider/BrowserCookies$Cookie;->expires:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_60

    iget-wide v6, p0, Landroid/provider/BrowserCookies$Cookie;->expires:J

    cmp-long v6, v6, v2

    if-lez v6, :cond_34

    :cond_60
    iget-boolean v6, p0, Landroid/provider/BrowserCookies$Cookie;->secure:Z

    if-eqz v6, :cond_66

    if-eqz v5, :cond_34

    :cond_66
    iget-byte v6, p0, Landroid/provider/BrowserCookies$Cookie;->mode:B

    const/4 v7, 0x2

    if-eq v6, v7, :cond_34

    .line 201
    iput-wide v2, p0, Landroid/provider/BrowserCookies$Cookie;->lastAcessTime:J

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7d

    .line 204
    const/16 v6, 0x3b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_7d
    iget-object v6, p0, Landroid/provider/BrowserCookies$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    iget-object p0, p0, Landroid/provider/BrowserCookies$Cookie;->value:Ljava/lang/String;

    .end local p0           #cookie:Landroid/provider/BrowserCookies$Cookie;
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 215
    :cond_8d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_bb

    .line 216
    const-string p0, "browserCookies"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/provider/BrowserCookies$Cookie;>;"
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCookie: uri: "

    .end local v1           #hostAndPath:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v0, " value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    .line 219
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/provider/BrowserCookies$Cookie;>;"
    .restart local v1       #hostAndPath:[Ljava/lang/String;
    .restart local p1
    :cond_bb
    const-string p0, "browserCookies"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/provider/BrowserCookies$Cookie;>;"
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCookie: uri: "

    .end local v1           #hostAndPath:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v0, " But can\'t find cookie."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 p0, 0x0

    goto/16 :goto_5
.end method

.method public static final getCookie(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cr"
    .parameter "url"

    .prologue
    const-string v4, "browserCookies"

    .line 151
    const-string v2, "browserCookies"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_1a
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/net/ParseException; {:try_start_1a .. :try_end_1f} :catch_24

    .line 160
    .local v1, uri:Landroid/net/WebAddress;
    invoke-static {p0, v1}, Landroid/provider/BrowserCookies;->getCookie(Landroid/content/ContentResolver;Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #uri:Landroid/net/WebAddress;
    :goto_23
    return-object v2

    .line 156
    :catch_24
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, ex:Landroid/net/ParseException;
    const-string v2, "browserCookies"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private static getCookiesForDomain(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter "cr"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/provider/BrowserCookies$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BrowserCookies$Cookie;>;"
    if-eqz p1, :cond_9

    if-nez p0, :cond_b

    :cond_9
    move-object p0, v6

    .line 276
    .end local p0
    .end local p1
    :goto_a
    return-object p0

    .line 237
    .restart local p0
    .restart local p1
    :cond_b
    const-string v0, "(domain GLOB \'*\' || ?)"

    .line 240
    .local v0, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 241
    .end local v0           #selection:Ljava/lang/String;
    .local v4, SELECTION_ARGS:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 243
    sget-object v1, Landroid/provider/BrowserCookies;->COOKIES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(domain GLOB \'*\' || ?)"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 247
    .local p0, c:Landroid/database/Cursor;
    if-nez p0, :cond_22

    .line 248
    const/4 p0, 0x0

    goto :goto_a

    .line 251
    :cond_22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_88

    .line 252
    const-string p1, "domain"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, domainCol:I
    const-string p1, "path"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 254
    .local v3, pathCol:I
    const-string p1, "name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 255
    .local v2, nameCol:I
    const-string p1, "value"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 256
    .local v5, valueCol:I
    const-string p1, "expires"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, expiresCol:I
    const-string p1, "secure"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, secureCol:I
    :cond_4c
    new-instance p1, Landroid/provider/BrowserCookies$Cookie;

    invoke-direct {p1}, Landroid/provider/BrowserCookies$Cookie;-><init>()V

    .line 261
    .local p1, cookie:Landroid/provider/BrowserCookies$Cookie;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    .line 262
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    .line 263
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/provider/BrowserCookies$Cookie;->name:Ljava/lang/String;

    .line 264
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/provider/BrowserCookies$Cookie;->value:Ljava/lang/String;

    .line 265
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 266
    const-wide/16 v7, -0x1

    iput-wide v7, p1, Landroid/provider/BrowserCookies$Cookie;->expires:J

    .line 270
    :goto_73
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-eqz v7, :cond_95

    const/4 v7, 0x1

    :goto_7a
    iput-boolean v7, p1, Landroid/provider/BrowserCookies$Cookie;->secure:Z

    .line 271
    const/4 v7, 0x1

    iput-byte v7, p1, Landroid/provider/BrowserCookies$Cookie;->mode:B

    .line 272
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    .end local p1           #cookie:Landroid/provider/BrowserCookies$Cookie;
    if-nez p1, :cond_4c

    .line 275
    .end local v0           #domainCol:I
    .end local v1           #expiresCol:I
    .end local v2           #nameCol:I
    .end local v3           #pathCol:I
    .end local v4           #secureCol:I
    .end local v5           #valueCol:I
    :cond_88
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object p0, v6

    .line 276
    goto/16 :goto_a

    .line 268
    .restart local v0       #domainCol:I
    .restart local v1       #expiresCol:I
    .restart local v2       #nameCol:I
    .restart local v3       #pathCol:I
    .restart local v4       #secureCol:I
    .restart local v5       #valueCol:I
    .restart local p1       #cookie:Landroid/provider/BrowserCookies$Cookie;
    :cond_8e
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p1, Landroid/provider/BrowserCookies$Cookie;->expires:J

    goto :goto_73

    .line 270
    :cond_95
    const/4 v7, 0x0

    goto :goto_7a
.end method

.method private static getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;
    .registers 9
    .parameter "uri"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v3, 0x2e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 287
    iget-object v2, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_79

    iget-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    if-eqz v2, :cond_79

    .line 288
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 289
    .local v1, ret:[Ljava/lang/String;
    iget-object v2, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 290
    iget-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 292
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 293
    .local v0, index:I
    if-ne v0, v7, :cond_47

    .line 294
    iget-object v2, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 298
    const-string v2, "localhost"

    aput-object v2, v1, v4

    .line 307
    :cond_2f
    :goto_2f
    aget-object v2, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_65

    move-object v2, v6

    .line 327
    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :goto_3a
    return-object v2

    .line 299
    .restart local v0       #index:I
    .restart local v1       #ret:[Ljava/lang/String;
    :cond_3b
    aget-object v2, v1, v4

    const-string v3, "localhost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move-object v2, v6

    .line 300
    goto :goto_3a

    .line 302
    :cond_47
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v0, v2, :cond_2f

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_2f

    .line 321
    :cond_65
    aget-object v2, v1, v5

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 322
    if-eq v0, v7, :cond_77

    .line 323
    aget-object v2, v1, v5

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_77
    move-object v2, v1

    .line 325
    goto :goto_3a

    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_79
    move-object v2, v6

    .line 327
    goto :goto_3a
.end method
