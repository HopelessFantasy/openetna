.class public final Landroid/provider/Calendar$BusyBits;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/Calendar$BusyBitsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BusyBits"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final INTERVALS_PER_DAY:I = 0x18

.field public static final MINUTES_PER_BUSY_INTERVAL:I = 0x3c

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 826
    const-string v0, "content://calendar/busybits/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$BusyBits;->CONTENT_URI:Landroid/net/Uri;

    .line 828
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "day"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "busyBits"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDayCount"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Calendar$BusyBits;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;II)Landroid/database/Cursor;
    .registers 11
    .parameter "cr"
    .parameter "startDay"
    .parameter "numDays"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 846
    if-ge p2, v1, :cond_6

    move-object v0, v3

    .line 853
    :goto_5
    return-object v0

    .line 849
    :cond_6
    add-int v0, p1, p2

    sub-int v7, v0, v1

    .line 850
    .local v7, endDay:I
    sget-object v0, Landroid/provider/Calendar$BusyBits;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 851
    .local v6, builder:Landroid/net/Uri$Builder;
    int-to-long v0, p1

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 852
    int-to-long v0, v7

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 853
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/provider/Calendar$BusyBits;->PROJECTION:[Ljava/lang/String;

    const-string v5, "day"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_5
.end method
