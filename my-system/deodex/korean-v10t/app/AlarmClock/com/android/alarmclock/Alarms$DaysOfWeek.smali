.class Lcom/android/alarmclock/Alarms$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/Alarms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DaysOfWeek"
.end annotation


# instance fields
.field mDays:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/alarmclock/Alarms$DaysOfWeek;-><init>(I)V

    .line 106
    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .parameter "days"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    .line 110
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/alarmclock/Alarms$DaysOfWeek;)Z
    .registers 4
    .parameter "dow"

    .prologue
    .line 266
    iget v0, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    iget v1, p1, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getBooleanArray()[Z
    .registers 5

    .prologue
    const/4 v3, 0x7

    .line 271
    new-array v1, v3, [Z

    .line 272
    .local v1, ret:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v3, :cond_f

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 275
    :cond_f
    return-object v1
.end method

.method public getCoded()I
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .registers 8
    .parameter "c"

    .prologue
    const/4 v5, 0x7

    .line 304
    iget v3, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    if-nez v3, :cond_7

    const/4 v3, -0x1

    .line 319
    :goto_6
    return v3

    .line 305
    :cond_7
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 310
    .local v2, today:I
    const/4 v1, 0x0

    .local v1, dayCount:I
    :goto_10
    if-ge v1, v5, :cond_1d

    .line 312
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 314
    .local v0, day:I
    iget v3, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    if-lez v3, :cond_1f

    .end local v0           #day:I
    :cond_1d
    move v3, v1

    .line 319
    goto :goto_6

    .line 310
    .restart local v0       #day:I
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public isEveryDaySet()Z
    .registers 3

    .prologue
    .line 295
    iget v0, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRepeatSet()Z
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSet(I)Z
    .registers 9
    .parameter "day"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, retVal:Z
    const/4 v2, 0x0

    .line 196
    .local v2, which:I
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, operator:Ljava/lang/String;
    const-string v3, "Cellcom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 199
    add-int/lit8 v3, p1, 0x6

    rem-int/lit8 v2, v3, 0x7

    .line 200
    iget v3, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    shl-int v4, v5, v2

    and-int/2addr v3, v4

    if-lez v3, :cond_1d

    move v1, v5

    .line 209
    :goto_1c
    return v1

    :cond_1d
    move v1, v6

    .line 200
    goto :goto_1c

    .line 204
    :cond_1f
    iget v3, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    shl-int v4, v5, p1

    and-int/2addr v3, v4

    if-lez v3, :cond_28

    move v1, v5

    :goto_27
    goto :goto_1c

    :cond_28
    move v1, v6

    goto :goto_27
.end method

.method public set(IZ)V
    .registers 7
    .parameter "day"
    .parameter "set"

    .prologue
    const/4 v3, 0x1

    .line 216
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, operator:Ljava/lang/String;
    const-string v2, "Cellcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 219
    add-int/lit8 v2, p1, 0x6

    rem-int/lit8 v1, v2, 0x7

    .line 226
    .local v1, which:I
    :goto_11
    if-eqz p2, :cond_1c

    .line 228
    iget v2, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    .line 249
    :goto_19
    return-void

    .line 223
    .end local v1           #which:I
    :cond_1a
    move v1, p1

    .restart local v1       #which:I
    goto :goto_11

    .line 232
    :cond_1c
    iget v2, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    goto :goto_19
.end method

.method public set(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V
    .registers 3
    .parameter "dow"

    .prologue
    .line 255
    iget v0, p1, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    .line 259
    return-void
.end method

.method public setCoded(I)V
    .registers 2
    .parameter "days"

    .prologue
    .line 279
    iput p1, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    .line 280
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "showNever"

    .prologue
    const/4 v9, 0x1

    const-string v10, "Cellcom"

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v4, ret:Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    if-nez v7, :cond_1d

    if-eqz p2, :cond_1a

    const v7, 0x7f070027

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    :goto_19
    return-object v7

    .line 116
    :cond_1a
    const-string v7, ""

    goto :goto_19

    .line 120
    :cond_1d
    iget v7, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    const/16 v8, 0x7f

    if-ne v7, v8, :cond_2f

    .line 121
    const v7, 0x7f070026

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_19

    .line 125
    :cond_2f
    const/4 v0, 0x0

    .local v0, dayCount:I
    iget v1, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    .line 126
    .local v1, days:I
    :goto_32
    if-lez v1, :cond_3d

    .line 128
    and-int/lit8 v7, v1, 0x1

    if-ne v7, v9, :cond_3a

    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_3a
    shr-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 134
    :cond_3d
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, operator:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alarm Set day now operator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 137
    const-string v7, "Cellcom"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-le v0, v9, :cond_99

    const v8, 0x7f080003

    :goto_68
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 153
    .local v5, strings:[Ljava/lang/CharSequence;
    :goto_6c
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6d
    const/4 v7, 0x7

    if-ge v2, v7, :cond_b0

    .line 156
    const-string v7, "Cellcom"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 158
    add-int/lit8 v7, v2, 0x6

    rem-int/lit8 v6, v7, 0x7

    .line 165
    .local v6, which:I
    :goto_7c
    iget v7, p0, Lcom/android/alarmclock/Alarms$DaysOfWeek;->mDays:I

    shl-int v8, v9, v6

    and-int/2addr v7, v8

    if-eqz v7, :cond_96

    .line 167
    aget-object v7, v5, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v0, v0, -0x1

    .line 170
    if-lez v0, :cond_96

    .line 171
    const v7, 0x7f070028

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 153
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 139
    .end local v2           #i:I
    .end local v5           #strings:[Ljava/lang/CharSequence;
    .end local v6           #which:I
    :cond_99
    const v8, 0x7f080002

    goto :goto_68

    .line 146
    :cond_9d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-le v0, v9, :cond_ab

    const v8, 0x7f080001

    :goto_a6
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5       #strings:[Ljava/lang/CharSequence;
    goto :goto_6c

    .end local v5           #strings:[Ljava/lang/CharSequence;
    :cond_ab
    const/high16 v8, 0x7f08

    goto :goto_a6

    .line 162
    .restart local v2       #i:I
    .restart local v5       #strings:[Ljava/lang/CharSequence;
    :cond_ae
    move v6, v2

    .restart local v6       #which:I
    goto :goto_7c

    .line 184
    .end local v6           #which:I
    :cond_b0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_19
.end method
