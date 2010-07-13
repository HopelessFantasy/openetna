.class public Ljava/sql/Date;
.super Ljava/util/Date;
.source "Date.java"


# static fields
.field private static final serialVersionUID:J = 0x14fa46683f356697L


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter "theYear"
    .parameter "theMonth"
    .parameter "theDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Date;-><init>(III)V

    .line 63
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter "theDate"

    .prologue
    .line 78
    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 79
    return-void
.end method

.method private static normalizeTime(J)J
    .registers 2
    .parameter "theTime"

    .prologue
    .line 248
    return-wide p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Date;
    .registers 9
    .parameter "dateString"

    .prologue
    const/16 v6, 0x2d

    .line 218
    if-nez p0, :cond_a

    .line 219
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 221
    :cond_a
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 222
    .local v1, firstIndex:I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 228
    .local v3, secondIndex:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_21

    if-eqz v1, :cond_21

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_27

    .line 230
    :cond_21
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 233
    :cond_27
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 234
    .local v4, year:I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, month:I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, day:I
    new-instance v5, Ljava/sql/Date;

    const/16 v6, 0x76c

    sub-int v6, v4, v6

    const/4 v7, 0x1

    sub-int v7, v2, v7

    invoke-direct {v5, v6, v7, v0}, Ljava/sql/Date;-><init>(III)V

    return-object v5
.end method


# virtual methods
.method public getHours()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getMinutes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getSeconds()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setHours(I)V
    .registers 3
    .parameter "theHours"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMinutes(I)V
    .registers 3
    .parameter "theMinutes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSeconds(I)V
    .registers 3
    .parameter "theSeconds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTime(J)V
    .registers 5
    .parameter "theTime"

    .prologue
    .line 188
    invoke-static {p1, p2}, Ljava/sql/Date;->normalizeTime(J)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
