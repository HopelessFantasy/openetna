.class Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;
.super Ljava/util/TimeZone;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MinimalTimeZone"
.end annotation


# instance fields
.field private rawOffset:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 404
    iput p1, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->rawOffset:I

    .line 405
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->setID(Ljava/lang/String;)V

    .line 406
    return-void
.end method


# virtual methods
.method public getOffset(IIIIII)I
    .registers 8
    .parameter "era"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "dayOfWeek"
    .parameter "millis"

    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public getRawOffset()I
    .registers 2

    .prologue
    .line 416
    iget v0, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->rawOffset:I

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 3
    .parameter "when"

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public setRawOffset(I)V
    .registers 2
    .parameter "off"

    .prologue
    .line 421
    iput p1, p0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB$MinimalTimeZone;->rawOffset:I

    .line 422
    return-void
.end method

.method public useDaylightTime()Z
    .registers 2

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method
