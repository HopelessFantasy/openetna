.class public Lcom/android/internal/location/NmeaParser;
.super Ljava/lang/Object;
.source "NmeaParser.java"


# static fields
.field private static final KNOTS_TO_METERS_PER_SECOND:F = 0.5144445f

.field private static final TAG:Ljava/lang/String; = "NmeaParser"

.field private static final sUtcTimeZone:Ljava/util/TimeZone;


# instance fields
.field private mAltitude:D

.field private mBaseTime:J

.field private mBearing:F

.field private mDay:I

.field private mExtras:Landroid/os/Bundle;

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mLatitude:D

.field private mLocation:Landroid/location/Location;

.field private mLongitude:D

.field private mMonth:I

.field private final mName:Ljava/lang/String;

.field private mNewWaypoint:Z

.field private mSpeed:F

.field private mTime:J

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/NmeaParser;->sUtcTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/location/NmeaParser;->mYear:I

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/location/NmeaParser;->mTime:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/NmeaParser;->mNewWaypoint:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    .line 61
    iput-object p1, p0, Lcom/android/internal/location/NmeaParser;->mName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private convertFromHHMM(Ljava/lang/String;)D
    .registers 13
    .parameter "coord"

    .prologue
    .line 205
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 206
    .local v5, val:D
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    div-int/lit8 v2, v7, 0x64

    .line 207
    .local v2, degrees:I
    mul-int/lit8 v7, v2, 0x64

    int-to-double v7, v7

    sub-double v3, v5, v7

    .line 208
    .local v3, minutes:D
    int-to-double v7, v2

    const-wide/high16 v9, 0x404e

    div-double v9, v3, v9

    add-double v0, v7, v9

    .line 209
    .local v0, dcoord:D
    return-wide v0
.end method

.method private updateAltitude(Ljava/lang/String;)Z
    .registers 9
    .parameter "altitude"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    move v3, v6

    .line 261
    :goto_9
    return v3

    .line 252
    :cond_a
    :try_start_a
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_14

    move-result-wide v0

    .line 259
    .local v0, alt:D
    iput-boolean v4, p0, Lcom/android/internal/location/NmeaParser;->mHasAltitude:Z

    .line 260
    iput-wide v0, p0, Lcom/android/internal/location/NmeaParser;->mAltitude:D

    move v3, v4

    .line 261
    goto :goto_9

    .line 253
    .end local v0           #alt:D
    :catch_14
    move-exception v2

    .line 254
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v3, "NmeaParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception parsing altitude "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v6

    .line 256
    goto :goto_9
.end method

.method private updateBearing(Ljava/lang/String;)Z
    .registers 7
    .parameter "bearing"

    .prologue
    const/4 v2, 0x1

    .line 267
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_a

    move-result v0

    .line 274
    .local v0, brg:F
    iput-boolean v2, p0, Lcom/android/internal/location/NmeaParser;->mHasBearing:Z

    .line 275
    iput v0, p0, Lcom/android/internal/location/NmeaParser;->mBearing:F

    .line 276
    .end local v0           #brg:F
    :goto_9
    return v2

    .line 268
    :catch_a
    move-exception v1

    .line 269
    .local v1, nfe:Ljava/lang/NumberFormatException;
    const-string v2, "NmeaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing bearing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private updateDate(Ljava/lang/String;)Z
    .registers 10
    .parameter "date"

    .prologue
    const/4 v5, 0x6

    const/4 v7, 0x0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v5, :cond_a

    move v4, v7

    .line 149
    :goto_9
    return v4

    .line 138
    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_c
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, day:I
    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, month:I
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_27} :catch_32

    move-result v4

    add-int/lit16 v3, v4, 0x7d0

    .line 146
    .local v3, year:I
    iput v3, p0, Lcom/android/internal/location/NmeaParser;->mYear:I

    .line 147
    iput v1, p0, Lcom/android/internal/location/NmeaParser;->mMonth:I

    .line 148
    iput v0, p0, Lcom/android/internal/location/NmeaParser;->mDay:I

    .line 149
    const/4 v4, 0x1

    goto :goto_9

    .line 141
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v3           #year:I
    :catch_32
    move-exception v4

    move-object v2, v4

    .line 142
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v4, "NmeaParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing date "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 143
    goto :goto_9
.end method

.method private updateDoubleExtra(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "name"
    .parameter "value"

    .prologue
    .line 192
    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_16

    move-result-wide v1

    .line 197
    .local v1, val:D
    iget-object v3, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_f

    .line 198
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    .line 200
    :cond_f
    iget-object v3, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 201
    const/4 v3, 0x1

    .end local v1           #val:D
    :goto_15
    return v3

    .line 193
    :catch_16
    move-exception v0

    .line 194
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v3, "NmeaParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception parsing double "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private updateFloatExtra(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "name"
    .parameter "value"

    .prologue
    .line 177
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_16

    move-result v1

    .line 182
    .local v1, val:F
    iget-object v2, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    if-nez v2, :cond_f

    .line 183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    .line 185
    :cond_f
    iget-object v2, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 186
    const/4 v2, 0x1

    .end local v1           #val:F
    :goto_15
    return v2

    .line 178
    :catch_16
    move-exception v0

    .line 179
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v2, "NmeaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing float "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private updateIntExtra(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "name"
    .parameter "value"

    .prologue
    .line 162
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_16

    move-result v1

    .line 167
    .local v1, val:I
    iget-object v2, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    if-nez v2, :cond_f

    .line 168
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    .line 170
    :cond_f
    iget-object v2, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const/4 v2, 0x1

    .end local v1           #val:I
    :goto_15
    return v2

    .line 163
    :catch_16
    move-exception v0

    .line 164
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v2, "NmeaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing int "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private updateLatLon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "latitude"
    .parameter "latitudeHemi"
    .parameter "longitude"
    .parameter "longitudeHemi"

    .prologue
    const/4 v8, 0x0

    const-string v10, "NmeaParser"

    const-string v9, "Exception parsing lat/long: "

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_13

    :cond_11
    move v6, v8

    .line 243
    :goto_12
    return v6

    .line 221
    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/internal/location/NmeaParser;->convertFromHHMM(Ljava/lang/String;)D

    move-result-wide v0

    .line 222
    .local v0, lat:D
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1b} :catch_35

    move-result v6

    const/16 v7, 0x53

    if-ne v6, v7, :cond_21

    .line 223
    neg-double v0, v0

    .line 231
    :cond_21
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/internal/location/NmeaParser;->convertFromHHMM(Ljava/lang/String;)D

    move-result-wide v2

    .line 232
    .local v2, lon:D
    const/4 v6, 0x0

    invoke-virtual {p4, v6}, Ljava/lang/String;->charAt(I)C
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_29} :catch_51

    move-result v6

    const/16 v7, 0x57

    if-ne v6, v7, :cond_2f

    .line 233
    neg-double v2, v2

    .line 241
    :cond_2f
    iput-wide v0, p0, Lcom/android/internal/location/NmeaParser;->mLatitude:D

    .line 242
    iput-wide v2, p0, Lcom/android/internal/location/NmeaParser;->mLongitude:D

    .line 243
    const/4 v6, 0x1

    goto :goto_12

    .line 225
    .end local v0           #lat:D
    .end local v2           #lon:D
    :catch_35
    move-exception v6

    move-object v4, v6

    .line 226
    .local v4, nfe1:Ljava/lang/NumberFormatException;
    const-string v6, "NmeaParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception parsing lat/long: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v8

    .line 227
    goto :goto_12

    .line 235
    .end local v4           #nfe1:Ljava/lang/NumberFormatException;
    .restart local v0       #lat:D
    :catch_51
    move-exception v6

    move-object v5, v6

    .line 236
    .local v5, nfe2:Ljava/lang/NumberFormatException;
    const-string v6, "NmeaParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception parsing lat/long: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v8

    .line 237
    goto :goto_12
.end method

.method private updateSpeed(Ljava/lang/String;)Z
    .registers 7
    .parameter "speed"

    .prologue
    const/4 v4, 0x1

    .line 282
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_10

    move-result v2

    const v3, 0x3f03b2a2

    mul-float v1, v2, v3

    .line 288
    .local v1, spd:F
    iput-boolean v4, p0, Lcom/android/internal/location/NmeaParser;->mHasSpeed:Z

    .line 289
    iput v1, p0, Lcom/android/internal/location/NmeaParser;->mSpeed:F

    move v2, v4

    .line 290
    .end local v1           #spd:F
    :goto_f
    return v2

    .line 283
    :catch_10
    move-exception v0

    .line 284
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v2, "NmeaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing speed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private updateTime(Ljava/lang/String;)Z
    .registers 14
    .parameter "time"

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_9

    .line 66
    const/4 v1, 0x0

    .line 129
    :goto_8
    return v1

    .line 68
    :cond_9
    iget v1, p0, Lcom/android/internal/location/NmeaParser;->mYear:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 72
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/location/NmeaParser;->mLatitude:D

    .line 73
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/location/NmeaParser;->mLongitude:D

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasAltitude:Z

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasBearing:Z

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasSpeed:Z

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    .line 78
    const/4 v1, 0x0

    goto :goto_8

    .line 84
    :cond_24
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_26
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 85
    .local v4, hour:I
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, minute:I
    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_44} :catch_d5

    move-result v11

    .line 92
    .local v11, second:F
    float-to-int v6, v11

    .line 93
    .local v6, isecond:I
    int-to-float v1, v6

    sub-float v1, v11, v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 94
    .local v7, millis:I
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/android/internal/location/NmeaParser;->sUtcTimeZone:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 95
    .local v0, c:Ljava/util/Calendar;
    iget v1, p0, Lcom/android/internal/location/NmeaParser;->mYear:I

    iget v2, p0, Lcom/android/internal/location/NmeaParser;->mMonth:I

    iget v3, p0, Lcom/android/internal/location/NmeaParser;->mDay:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 96
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    int-to-long v3, v7

    add-long v8, v1, v3

    .line 98
    .local v8, newTime:J
    iget-wide v1, p0, Lcom/android/internal/location/NmeaParser;->mTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_72

    .line 99
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/location/NmeaParser;->mTime:J

    .line 100
    iput-wide v8, p0, Lcom/android/internal/location/NmeaParser;->mBaseTime:J

    .line 102
    :cond_72
    iget-wide v1, p0, Lcom/android/internal/location/NmeaParser;->mBaseTime:J

    sub-long/2addr v8, v1

    .line 106
    iget-wide v1, p0, Lcom/android/internal/location/NmeaParser;->mTime:J

    cmp-long v1, v8, v1

    if-eqz v1, :cond_d2

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mNewWaypoint:Z

    .line 108
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/android/internal/location/NmeaParser;->mName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    .line 109
    iget-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    iget-wide v2, p0, Lcom/android/internal/location/NmeaParser;->mTime:J

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    iget-wide v2, p0, Lcom/android/internal/location/NmeaParser;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 111
    iget-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    iget-wide v2, p0, Lcom/android/internal/location/NmeaParser;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 112
    iget-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasAltitude:Z

    if-eqz v1, :cond_a7

    .line 113
    iget-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    iget-wide v2, p0, Lcom/android/internal/location/NmeaParser;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 115
    :cond_a7
    iget-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasBearing:Z

    if-eqz v1, :cond_b2

    .line 116
    iget-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    iget v2, p0, Lcom/android/internal/location/NmeaParser;->mBearing:F

    invoke-virtual {v1, v2}, Landroid/location/Location;->setBearing(F)V

    .line 118
    :cond_b2
    iget-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasSpeed:Z

    if-eqz v1, :cond_bd

    .line 119
    iget-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    iget v2, p0, Lcom/android/internal/location/NmeaParser;->mSpeed:F

    invoke-virtual {v1, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 121
    :cond_bd
    iget-object v1, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/location/NmeaParser;->mExtras:Landroid/os/Bundle;

    .line 124
    iput-wide v8, p0, Lcom/android/internal/location/NmeaParser;->mTime:J

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasAltitude:Z

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasBearing:Z

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/location/NmeaParser;->mHasSpeed:Z

    .line 129
    :cond_d2
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 87
    .end local v0           #c:Ljava/util/Calendar;
    .end local v4           #hour:I
    .end local v5           #minute:I
    .end local v6           #isecond:I
    .end local v7           #millis:I
    .end local v8           #newTime:J
    .end local v11           #second:F
    :catch_d5
    move-exception v1

    move-object v10, v1

    .line 88
    .local v10, nfe:Ljava/lang/NumberFormatException;
    const-string v1, "NmeaParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    goto/16 :goto_8
.end method

.method private updateTime(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "time"
    .parameter "date"

    .prologue
    .line 153
    invoke-direct {p0, p2}, Lcom/android/internal/location/NmeaParser;->updateDate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/location/NmeaParser;->updateTime(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/location/NmeaParser;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public parseSentence(Ljava/lang/String;)Z
    .registers 47
    .parameter "s"

    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    .line 295
    .local v22, len:I
    const/16 v42, 0x9

    move/from16 v0, v22

    move/from16 v1, v42

    if-ge v0, v1, :cond_f

    .line 296
    const/16 v42, 0x0

    .line 403
    :goto_e
    return v42

    .line 298
    :cond_f
    const/16 v42, 0x3

    sub-int v42, v22, v42

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v42

    const/16 v43, 0x2a

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_33

    .line 300
    const/16 v42, 0x0

    const/16 v43, 0x3

    sub-int v43, v22, v43

    move-object/from16 v0, p1

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 302
    :cond_33
    const-string v42, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 303
    .local v39, tokens:[Ljava/lang/String;
    const/16 v42, 0x0

    aget-object v42, v39, v42

    const/16 v43, 0x3

    const/16 v44, 0x6

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 305
    .local v34, sentenceId:Ljava/lang/String;
    const/16 v18, 0x1

    .line 307
    .local v18, idx:I
    :try_start_4b
    const-string v42, "GGA"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4b .. :try_end_54} :catch_12b

    move-result v42

    if-eqz v42, :cond_d5

    .line 308
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .local v19, idx:I
    :try_start_59
    aget-object v37, v39, v18
    :try_end_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_5b} :catch_261

    .line 309
    .local v37, time:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_5d
    aget-object v20, v39, v19
    :try_end_5f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5d .. :try_end_5f} :catch_12b

    .line 310
    .local v20, latitude:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_61
    aget-object v21, v39, v18
    :try_end_63
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_61 .. :try_end_63} :catch_261

    .line 311
    .local v21, latitudeHemi:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_65
    aget-object v23, v39, v19
    :try_end_67
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_65 .. :try_end_67} :catch_12b

    .line 312
    .local v23, longitude:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_69
    aget-object v24, v39, v18
    :try_end_6b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_69 .. :try_end_6b} :catch_261

    .line 313
    .local v24, longitudeHemi:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_6d
    aget-object v11, v39, v19
    :try_end_6f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6d .. :try_end_6f} :catch_12b

    .line 314
    .local v11, fixQuality:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_71
    aget-object v30, v39, v18
    :try_end_73
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_71 .. :try_end_73} :catch_261

    .line 315
    .local v30, numSatellites:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_75
    aget-object v16, v39, v19
    :try_end_77
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_75 .. :try_end_77} :catch_12b

    .line 316
    .local v16, horizontalDilutionOfPrecision:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_79
    aget-object v5, v39, v18
    :try_end_7b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_79 .. :try_end_7b} :catch_261

    .line 317
    .local v5, altitude:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_7d
    aget-object v6, v39, v19
    :try_end_7f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7d .. :try_end_7f} :catch_12b

    .line 318
    .local v6, altitudeUnits:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_81
    aget-object v14, v39, v18
    :try_end_83
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_81 .. :try_end_83} :catch_261

    .line 319
    .local v14, heightOfGeoid:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_85
    aget-object v15, v39, v19
    :try_end_87
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_85 .. :try_end_87} :catch_12b

    .line 320
    .local v15, heightOfGeoidUnits:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_89
    aget-object v38, v39, v18

    .line 322
    .local v38, timeSinceLastDgpsUpdate:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/location/NmeaParser;->updateTime(Ljava/lang/String;)Z

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/location/NmeaParser;->updateLatLon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/location/NmeaParser;->updateAltitude(Ljava/lang/String;)Z

    .line 327
    const-string v42, "numSatellites"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/NmeaParser;->updateIntExtra(Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    const-string v42, "hdop"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/NmeaParser;->updateFloatExtra(Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/NmeaParser;->mNewWaypoint:Z

    move/from16 v42, v0

    if-eqz v42, :cond_cf

    .line 331
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/location/NmeaParser;->mNewWaypoint:Z
    :try_end_cb
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_89 .. :try_end_cb} :catch_261

    .line 332
    const/16 v42, 0x1

    goto/16 :goto_e

    :cond_cf
    move/from16 v18, v19

    .line 403
    .end local v5           #altitude:Ljava/lang/String;
    .end local v6           #altitudeUnits:Ljava/lang/String;
    .end local v11           #fixQuality:Ljava/lang/String;
    .end local v14           #heightOfGeoid:Ljava/lang/String;
    .end local v15           #heightOfGeoidUnits:Ljava/lang/String;
    .end local v16           #horizontalDilutionOfPrecision:Ljava/lang/String;
    .end local v19           #idx:I
    .end local v20           #latitude:Ljava/lang/String;
    .end local v21           #latitudeHemi:Ljava/lang/String;
    .end local v23           #longitude:Ljava/lang/String;
    .end local v24           #longitudeHemi:Ljava/lang/String;
    .end local v30           #numSatellites:Ljava/lang/String;
    .end local v37           #time:Ljava/lang/String;
    .end local v38           #timeSinceLastDgpsUpdate:Ljava/lang/String;
    .restart local v18       #idx:I
    :cond_d1
    :goto_d1
    const/16 v42, 0x0

    goto/16 :goto_e

    .line 334
    :cond_d5
    :try_start_d5
    const-string v42, "GSA"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_de
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d5 .. :try_end_de} :catch_12b

    move-result v42

    if-eqz v42, :cond_172

    .line 336
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_e3
    aget-object v33, v39, v18
    :try_end_e5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e3 .. :try_end_e5} :catch_261

    .line 337
    .local v33, selectionMode:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_e7
    aget-object v28, v39, v19

    .line 338
    .local v28, mode:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, i:I
    move/from16 v19, v18

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :goto_ed
    const/16 v42, 0xc

    move/from16 v0, v17

    move/from16 v1, v42

    if-ge v0, v1, :cond_fe

    .line 339
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    aget-object v42, v39, v19

    .line 338
    add-int/lit8 v17, v17, 0x1

    move/from16 v19, v18

    .end local v18           #idx:I
    .restart local v19       #idx:I
    goto :goto_ed

    .line 341
    :cond_fe
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    aget-object v31, v39, v19
    :try_end_102
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e7 .. :try_end_102} :catch_12b

    .line 342
    .local v31, pdop:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_104
    aget-object v13, v39, v18
    :try_end_106
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_104 .. :try_end_106} :catch_261

    .line 343
    .local v13, hdop:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_108
    aget-object v41, v39, v19

    .line 346
    .local v41, vdop:Ljava/lang/String;
    const-string v42, "pdop"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/NmeaParser;->updateFloatExtra(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    const-string v42, "hdop"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/NmeaParser;->updateFloatExtra(Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    const-string v42, "vdop"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/NmeaParser;->updateFloatExtra(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_12a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_108 .. :try_end_12a} :catch_12b

    goto :goto_d1

    .line 394
    .end local v13           #hdop:Ljava/lang/String;
    .end local v17           #i:I
    .end local v28           #mode:Ljava/lang/String;
    .end local v31           #pdop:Ljava/lang/String;
    .end local v33           #selectionMode:Ljava/lang/String;
    .end local v41           #vdop:Ljava/lang/String;
    :catch_12b
    move-exception v42

    move-object/from16 v9, v42

    .line 396
    .local v9, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_12e
    const-string v42, "NmeaParser"

    const-string v43, "AIOOBE"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_13c
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v17

    move/from16 v1, v42

    if-ge v0, v1, :cond_d1

    .line 399
    const-string v42, "NmeaParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Got token #"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    aget-object v44, v39, v17

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    add-int/lit8 v17, v17, 0x1

    goto :goto_13c

    .line 349
    .end local v9           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v17           #i:I
    :cond_172
    :try_start_172
    const-string v42, "GSV"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_172 .. :try_end_17b} :catch_12b

    move-result v42

    if-eqz v42, :cond_1c7

    .line 351
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_180
    aget-object v29, v39, v18
    :try_end_182
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_180 .. :try_end_182} :catch_261

    .line 352
    .local v29, numMessages:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_184
    aget-object v27, v39, v19
    :try_end_186
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_184 .. :try_end_186} :catch_12b

    .line 353
    .local v27, messageNum:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_188
    aget-object v36, v39, v18

    .line 354
    .local v36, svsInView:Ljava/lang/String;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_18c
    const/16 v42, 0x4

    move/from16 v0, v17

    move/from16 v1, v42

    if-ge v0, v1, :cond_1c3

    .line 355
    add-int/lit8 v42, v19, 0x2

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v43, v0
    :try_end_19b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_188 .. :try_end_19b} :catch_261

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_268

    .line 356
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_1a3
    aget-object v32, v39, v19
    :try_end_1a5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a3 .. :try_end_1a5} :catch_12b

    .line 357
    .local v32, prnNumber:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1a7
    aget-object v10, v39, v18
    :try_end_1a9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a7 .. :try_end_1a9} :catch_261

    .line 358
    .local v10, elevation:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_1ab
    aget-object v7, v39, v19

    .line 359
    .local v7, azimuth:Ljava/lang/String;
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v42, v0
    :try_end_1b2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1ab .. :try_end_1b2} :catch_12b

    move/from16 v0, v18

    move/from16 v1, v42

    if-ge v0, v1, :cond_1be

    .line 360
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1ba
    aget-object v42, v39, v18
    :try_end_1bc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1ba .. :try_end_1bc} :catch_261

    move/from16 v18, v19

    .line 354
    .end local v7           #azimuth:Ljava/lang/String;
    .end local v10           #elevation:Ljava/lang/String;
    .end local v19           #idx:I
    .end local v32           #prnNumber:Ljava/lang/String;
    .restart local v18       #idx:I
    :cond_1be
    :goto_1be
    add-int/lit8 v17, v17, 0x1

    move/from16 v19, v18

    .end local v18           #idx:I
    .restart local v19       #idx:I
    goto :goto_18c

    :cond_1c3
    move/from16 v18, v19

    .line 365
    .end local v19           #idx:I
    .restart local v18       #idx:I
    goto/16 :goto_d1

    .end local v17           #i:I
    .end local v27           #messageNum:Ljava/lang/String;
    .end local v29           #numMessages:Ljava/lang/String;
    .end local v36           #svsInView:Ljava/lang/String;
    :cond_1c7
    :try_start_1c7
    const-string v42, "RMC"

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c7 .. :try_end_1d0} :catch_12b

    move-result v42

    if-eqz v42, :cond_243

    .line 367
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1d5
    aget-object v37, v39, v18
    :try_end_1d7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d5 .. :try_end_1d7} :catch_261

    .line 368
    .restart local v37       #time:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_1d9
    aget-object v12, v39, v19
    :try_end_1db
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d9 .. :try_end_1db} :catch_12b

    .line 369
    .local v12, fixStatus:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1dd
    aget-object v20, v39, v18
    :try_end_1df
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1dd .. :try_end_1df} :catch_261

    .line 370
    .restart local v20       #latitude:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_1e1
    aget-object v21, v39, v19
    :try_end_1e3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e1 .. :try_end_1e3} :catch_12b

    .line 371
    .restart local v21       #latitudeHemi:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1e5
    aget-object v23, v39, v18
    :try_end_1e7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e5 .. :try_end_1e7} :catch_261

    .line 372
    .restart local v23       #longitude:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_1e9
    aget-object v24, v39, v19
    :try_end_1eb
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e9 .. :try_end_1eb} :catch_12b

    .line 373
    .restart local v24       #longitudeHemi:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1ed
    aget-object v35, v39, v18
    :try_end_1ef
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1ed .. :try_end_1ef} :catch_261

    .line 374
    .local v35, speed:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_1f1
    aget-object v8, v39, v19
    :try_end_1f3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f1 .. :try_end_1f3} :catch_12b

    .line 375
    .local v8, bearing:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1f5
    aget-object v40, v39, v18
    :try_end_1f7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f5 .. :try_end_1f7} :catch_261

    .line 376
    .local v40, utcDate:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_1f9
    aget-object v25, v39, v19
    :try_end_1fb
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f9 .. :try_end_1fb} :catch_12b

    .line 377
    .local v25, magneticVariation:Ljava/lang/String;
    add-int/lit8 v19, v18, 0x1

    .end local v18           #idx:I
    .restart local v19       #idx:I
    :try_start_1fd
    aget-object v26, v39, v18
    :try_end_1ff
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1fd .. :try_end_1ff} :catch_261

    .line 378
    .local v26, magneticVariationDir:Ljava/lang/String;
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    :try_start_201
    aget-object v28, v39, v19

    .line 380
    .restart local v28       #mode:Ljava/lang/String;
    const/16 v42, 0x0

    move-object v0, v12

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v42

    const/16 v43, 0x41

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_237

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/NmeaParser;->updateTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/location/NmeaParser;->updateLatLon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 384
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/internal/location/NmeaParser;->updateBearing(Ljava/lang/String;)Z

    .line 385
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/internal/location/NmeaParser;->updateSpeed(Ljava/lang/String;)Z

    .line 388
    :cond_237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/location/NmeaParser;->mNewWaypoint:Z

    move/from16 v42, v0

    if-eqz v42, :cond_d1

    .line 389
    const/16 v42, 0x1

    goto/16 :goto_e

    .line 392
    .end local v8           #bearing:Ljava/lang/String;
    .end local v12           #fixStatus:Ljava/lang/String;
    .end local v20           #latitude:Ljava/lang/String;
    .end local v21           #latitudeHemi:Ljava/lang/String;
    .end local v23           #longitude:Ljava/lang/String;
    .end local v24           #longitudeHemi:Ljava/lang/String;
    .end local v25           #magneticVariation:Ljava/lang/String;
    .end local v26           #magneticVariationDir:Ljava/lang/String;
    .end local v28           #mode:Ljava/lang/String;
    .end local v35           #speed:Ljava/lang/String;
    .end local v37           #time:Ljava/lang/String;
    .end local v40           #utcDate:Ljava/lang/String;
    :cond_243
    const-string v42, "NmeaParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Unknown sentence: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_201 .. :try_end_25f} :catch_12b

    goto/16 :goto_d1

    .line 394
    .end local v18           #idx:I
    .restart local v19       #idx:I
    :catch_261
    move-exception v42

    move-object/from16 v9, v42

    move/from16 v18, v19

    .end local v19           #idx:I
    .restart local v18       #idx:I
    goto/16 :goto_12e

    .end local v18           #idx:I
    .restart local v17       #i:I
    .restart local v19       #idx:I
    .restart local v27       #messageNum:Ljava/lang/String;
    .restart local v29       #numMessages:Ljava/lang/String;
    .restart local v36       #svsInView:Ljava/lang/String;
    :cond_268
    move/from16 v18, v19

    .end local v19           #idx:I
    .restart local v18       #idx:I
    goto/16 :goto_1be
.end method
