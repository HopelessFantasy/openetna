.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final DAY_COUNT:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NUM_DAYS_AGO:I = 0x5


# instance fields
.field private mBins:[J

.field mCal:Ljava/util/Calendar;

.field mDate:Ljava/util/Date;

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v4, v8, [J

    iput-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 42
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 46
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Landroid/webkit/DateSorter;->mDate:Ljava/util/Date;

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/DateSorter;->mCal:Ljava/util/Calendar;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 55
    .local v3, resources:Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    .local v0, c:Ljava/util/Calendar;
    invoke-direct {p0, v0}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 59
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    aput-wide v5, v4, v11

    .line 60
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v10}, Ljava/util/Calendar;->roll(II)V

    .line 61
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    aput-wide v5, v4, v12

    .line 62
    const/4 v4, 0x6

    const/4 v5, -0x4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->roll(II)V

    .line 63
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    aput-wide v5, v4, v9

    .line 64
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->roll(II)V

    .line 65
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->roll(II)V

    .line 66
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 67
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->roll(II)V

    .line 68
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    const/4 v5, 0x4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 71
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v5, 0x10401cf

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 72
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v5, 0x10401d0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    .line 74
    const v2, 0x10f0003

    .line 75
    .local v2, resId:I
    invoke-virtual {v3, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, format:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 78
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v5, 0x3

    const v6, 0x10401d2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 79
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v5, 0x4

    const v6, 0x10401d3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 81
    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 118
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 121
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 122
    return-object p1
.end method


# virtual methods
.method public getBoundary(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getIndex(J)I
    .registers 6
    .parameter "time"

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 92
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_e

    move v1, v0

    .line 94
    :goto_d
    return v1

    .line 91
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_11
    const/4 v1, 0x4

    goto :goto_d
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
