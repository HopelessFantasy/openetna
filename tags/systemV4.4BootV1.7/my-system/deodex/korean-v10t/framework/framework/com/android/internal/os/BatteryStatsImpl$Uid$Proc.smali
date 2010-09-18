.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$Unpluggable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Proc"
.end annotation


# instance fields
.field mForegroundTime:J

.field mLastForegroundTime:J

.field mLastStarts:I

.field mLastSystemTime:J

.field mLastUserTime:J

.field mLoadedForegroundTime:J

.field mLoadedStarts:I

.field mLoadedSystemTime:J

.field mLoadedUserTime:J

.field mStarts:I

.field mSystemTime:J

.field mUnpluggedForegroundTime:J

.field mUnpluggedStarts:I

.field mUnpluggedSystemTime:J

.field mUnpluggedUserTime:J

.field mUserTime:J

.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .registers 3
    .parameter

    .prologue
    .line 1943
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 1944
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mUnpluggables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    return-void
.end method


# virtual methods
.method public addCpuTimeLocked(II)V
    .registers 7
    .parameter "utime"
    .parameter "stime"

    .prologue
    .line 2003
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 2004
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 2005
    return-void
.end method

.method public addForegroundTimeLocked(J)V
    .registers 5
    .parameter "ttime"

    .prologue
    .line 2008
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 2009
    return-void
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getForegroundTime(I)J
    .registers 6
    .parameter "which"

    .prologue
    .line 2050
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 2051
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 2060
    .local v0, val:J
    :cond_5
    :goto_5
    return-wide v0

    .line 2053
    .end local v0           #val:J
    :cond_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 2054
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_f

    .line 2055
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_5

    .line 2056
    :cond_f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 2057
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_5
.end method

.method public getStarts(I)I
    .registers 4
    .parameter "which"

    .prologue
    .line 2066
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 2067
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 2076
    .local v0, val:I
    :cond_5
    :goto_5
    return v0

    .line 2069
    .end local v0           #val:I
    :cond_6
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 2070
    .restart local v0       #val:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 2071
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    sub-int/2addr v0, v1

    goto :goto_5

    .line 2072
    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 2073
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    sub-int/2addr v0, v1

    goto :goto_5
.end method

.method public getSystemTime(I)J
    .registers 6
    .parameter "which"

    .prologue
    .line 2034
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 2035
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 2044
    .local v0, val:J
    :cond_5
    :goto_5
    return-wide v0

    .line 2037
    .end local v0           #val:J
    :cond_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 2038
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_f

    .line 2039
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_5

    .line 2040
    :cond_f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 2041
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    sub-long/2addr v0, v2

    goto :goto_5
.end method

.method public getUserTime(I)J
    .registers 6
    .parameter "which"

    .prologue
    .line 2018
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 2019
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 2028
    .local v0, val:J
    :cond_5
    :goto_5
    return-wide v0

    .line 2021
    .end local v0           #val:J
    :cond_6
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 2022
    .restart local v0       #val:J
    const/4 v2, 0x2

    if-ne p1, v2, :cond_f

    .line 2023
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_5

    .line 2024
    :cond_f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 2025
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    sub-long/2addr v0, v2

    goto :goto_5
.end method

.method public incStartsLocked()V
    .registers 2

    .prologue
    .line 2012
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 2013
    return-void
.end method

.method public plug(JJ)V
    .registers 5
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 1955
    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 1980
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    .line 1981
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    .line 1982
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    .line 1983
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 1984
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    .line 1985
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    .line 1986
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    .line 1987
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    .line 1988
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    .line 1989
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    .line 1990
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    .line 1991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    .line 1992
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 1993
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 1994
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 1995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 1996
    return-void
.end method

.method public unplug(JJ)V
    .registers 7
    .parameter "batteryUptime"
    .parameter "batteryRealtime"

    .prologue
    .line 1948
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    .line 1949
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    .line 1950
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    .line 1951
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    .line 1952
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .registers 10
    .parameter "out"

    .prologue
    .line 1958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 1959
    .local v2, uSecRealtime:J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryRealtimeLocked(J)J

    move-result-wide v0

    .line 1961
    .local v0, batteryRealtime:J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1962
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1963
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1964
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedUserTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1966
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedSystemTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1967
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedForegroundTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1968
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLoadedStarts:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastUserTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1970
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastSystemTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1971
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastForegroundTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1972
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mLastStarts:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedUserTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1974
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedSystemTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1975
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedForegroundTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1976
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUnpluggedStarts:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    return-void
.end method
