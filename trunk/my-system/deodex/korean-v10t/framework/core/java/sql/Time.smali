.class public Ljava/sql/Time;
.super Ljava/util/Date;
.source "Time.java"


# static fields
.field private static final serialVersionUID:J = 0x74894a0dd932c471L


# direct methods
.method public constructor <init>(III)V
    .registers 11
    .parameter "theHour"
    .parameter "theMinute"
    .parameter "theSecond"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    const/16 v1, 0x46

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 59
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "theTime"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Time;
    .registers 8
    .parameter "timeString"

    .prologue
    const/16 v6, 0x3a

    .line 221
    if-nez p0, :cond_a

    .line 222
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 224
    :cond_a
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 225
    .local v0, firstIndex:I
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 230
    .local v4, secondIndex:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    if-eqz v0, :cond_21

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_27

    .line 231
    :cond_21
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 234
    :cond_27
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, hour:I
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, minute:I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, second:I
    new-instance v5, Ljava/sql/Time;

    invoke-direct {v5, v1, v2, v3}, Ljava/sql/Time;-><init>(III)V

    return-object v5
.end method


# virtual methods
.method public getDate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getDay()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getMonth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getYear()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setDate(I)V
    .registers 3
    .parameter "i"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMonth(I)V
    .registers 3
    .parameter "i"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTime(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 188
    return-void
.end method

.method public setYear(I)V
    .registers 3
    .parameter "i"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
