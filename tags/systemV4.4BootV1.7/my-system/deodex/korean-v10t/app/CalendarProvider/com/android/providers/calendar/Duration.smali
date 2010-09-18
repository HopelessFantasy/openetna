.class public Lcom/android/providers/calendar/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public days:I

.field public hours:I

.field public minutes:I

.field public seconds:I

.field public sign:I

.field public weeks:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 44
    return-void
.end method


# virtual methods
.method public addTo(J)J
    .registers 5
    .parameter "dt"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public addTo(Ljava/util/Calendar;)V
    .registers 5
    .parameter "cal"

    .prologue
    const/4 v2, 0x5

    .line 130
    iget v0, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v1, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 131
    iget v0, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v1, p0, Lcom/android/providers/calendar/Duration;->days:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 132
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v2, p0, Lcom/android/providers/calendar/Duration;->hours:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 133
    const/16 v0, 0xc

    iget v1, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v2, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 134
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v2, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 135
    return-void
.end method

.method public getMillis()J
    .registers 6

    .prologue
    .line 142
    iget v2, p0, Lcom/android/providers/calendar/Duration;->sign:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 143
    .local v0, factor:J
    const v2, 0x93a80

    iget v3, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    mul-int/2addr v2, v3

    const v3, 0x15180

    iget v4, p0, Lcom/android/providers/calendar/Duration;->days:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/providers/calendar/Duration;->hours:I

    mul-int/lit16 v3, v3, 0xe10

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public parse(Ljava/lang/String;)V
    .registers 10
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "Duration.parse(str=\'"

    .line 52
    iput v5, p0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 53
    iput v4, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 54
    iput v4, p0, Lcom/android/providers/calendar/Duration;->days:I

    .line 55
    iput v4, p0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 56
    iput v4, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 57
    iput v4, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 60
    .local v2, len:I
    const/4 v1, 0x0

    .line 63
    .local v1, index:I
    if-ge v2, v5, :cond_1a

    .line 123
    :cond_19
    return-void

    .line 67
    :cond_1a
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 68
    .local v0, c:C
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_54

    .line 69
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_27
    :goto_27
    if-lt v2, v1, :cond_19

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 81
    const/16 v4, 0x50

    if-eq v0, v4, :cond_5b

    .line 82
    new-instance v4, Landroid/pim/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') expected \'P\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_54
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_27

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 86
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, n:I
    :goto_5e
    if-ge v1, v2, :cond_19

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 91
    if-lt v0, v6, :cond_72

    const/16 v4, 0x39

    if-gt v0, v4, :cond_72

    .line 92
    mul-int/lit8 v3, v3, 0xa

    .line 93
    sub-int v4, v0, v6

    add-int/2addr v3, v4

    .line 89
    :cond_6f
    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 95
    :cond_72
    const/16 v4, 0x57

    if-ne v0, v4, :cond_7a

    .line 96
    iput v3, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 97
    const/4 v3, 0x0

    goto :goto_6f

    .line 99
    :cond_7a
    const/16 v4, 0x48

    if-ne v0, v4, :cond_82

    .line 100
    iput v3, p0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 101
    const/4 v3, 0x0

    goto :goto_6f

    .line 103
    :cond_82
    const/16 v4, 0x4d

    if-ne v0, v4, :cond_8a

    .line 104
    iput v3, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 105
    const/4 v3, 0x0

    goto :goto_6f

    .line 107
    :cond_8a
    const/16 v4, 0x53

    if-ne v0, v4, :cond_92

    .line 108
    iput v3, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 109
    const/4 v3, 0x0

    goto :goto_6f

    .line 111
    :cond_92
    const/16 v4, 0x44

    if-ne v0, v4, :cond_9a

    .line 112
    iput v3, p0, Lcom/android/providers/calendar/Duration;->days:I

    .line 113
    const/4 v3, 0x0

    goto :goto_6f

    .line 115
    :cond_9a
    const/16 v4, 0x54

    if-eq v0, v4, :cond_6f

    .line 118
    new-instance v4, Landroid/pim/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') unexpected char \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/DateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
