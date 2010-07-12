.class Landroid/provider/BrowserCookies$Cookie;
.super Ljava/lang/Object;
.source "BrowserCookies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserCookies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cookie"
.end annotation


# static fields
.field static final MODE_DELETED:B = 0x2t

.field static final MODE_NEW:B = 0x0t

.field static final MODE_NORMAL:B = 0x1t

.field static final MODE_REPLACED:B = 0x3t


# instance fields
.field domain:Ljava/lang/String;

.field expires:J

.field lastAcessTime:J

.field lastUpdateTime:J

.field mode:B

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "defaultDomain"
    .parameter "defaultPath"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/BrowserCookies$Cookie;->expires:J

    .line 97
    return-void
.end method


# virtual methods
.method domainMatch(Ljava/lang/String;)Z
    .registers 8
    .parameter "urlHost"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 105
    iget-object v2, p0, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 106
    iget-object v2, p0, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 107
    iget-object v2, p0, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 108
    .local v0, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 109
    .local v1, urlLen:I
    sub-int v2, v0, v4

    if-le v1, v2, :cond_34

    .line 111
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_32

    move v2, v4

    .line 118
    .end local v0           #len:I
    .end local v1           #urlLen:I
    :goto_31
    return v2

    .restart local v0       #len:I
    .restart local v1       #urlLen:I
    :cond_32
    move v2, v5

    .line 111
    goto :goto_31

    :cond_34
    move v2, v4

    .line 113
    goto :goto_31

    .end local v0           #len:I
    .end local v1           #urlLen:I
    :cond_36
    move v2, v5

    .line 115
    goto :goto_31

    .line 118
    :cond_38
    iget-object v2, p0, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_31
.end method

.method exactMatch(Landroid/provider/BrowserCookies$Cookie;)Z
    .registers 4
    .parameter "in"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    iget-object v1, p1, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    iget-object v1, p1, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/provider/BrowserCookies$Cookie;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/provider/BrowserCookies$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method pathMatch(Ljava/lang/String;)Z
    .registers 9
    .parameter "urlPath"

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 124
    iget-object v2, p0, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 125
    .local v0, len:I
    if-nez v0, :cond_1d

    .line 126
    const-string v2, "browserCookies"

    const-string v3, "Empty cookie path"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 136
    .end local v0           #len:I
    :goto_1c
    return v2

    .line 129
    .restart local v0       #len:I
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 130
    .local v1, urlLen:I
    iget-object v2, p0, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    sub-int v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_37

    if-le v1, v0, :cond_37

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_35

    move v2, v5

    goto :goto_1c

    :cond_35
    move v2, v4

    goto :goto_1c

    :cond_37
    move v2, v5

    .line 134
    goto :goto_1c

    .end local v0           #len:I
    .end local v1           #urlLen:I
    :cond_39
    move v2, v4

    .line 136
    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/BrowserCookies$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/BrowserCookies$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/BrowserCookies$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/BrowserCookies$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
