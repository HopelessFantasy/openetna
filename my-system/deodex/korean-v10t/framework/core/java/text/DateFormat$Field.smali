.class public Ljava/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_MONTH:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_WEEK:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_YEAR:Ljava/text/DateFormat$Field; = null

.field public static final ERA:Ljava/text/DateFormat$Field; = null

.field public static final HOUR0:Ljava/text/DateFormat$Field; = null

.field public static final HOUR1:Ljava/text/DateFormat$Field; = null

.field public static final HOUR_OF_DAY0:Ljava/text/DateFormat$Field; = null

.field public static final HOUR_OF_DAY1:Ljava/text/DateFormat$Field; = null

.field public static final MILLISECOND:Ljava/text/DateFormat$Field; = null

.field public static final MINUTE:Ljava/text/DateFormat$Field; = null

.field public static final MONTH:Ljava/text/DateFormat$Field; = null

.field public static final SECOND:Ljava/text/DateFormat$Field; = null

.field public static final TIME_ZONE:Ljava/text/DateFormat$Field; = null

.field public static final WEEK_OF_MONTH:Ljava/text/DateFormat$Field; = null

.field public static final WEEK_OF_YEAR:Ljava/text/DateFormat$Field; = null

.field public static final YEAR:Ljava/text/DateFormat$Field; = null

.field private static final serialVersionUID:J = 0x6744fc81f123e710L

.field private static table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calendarField:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    .line 881
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    .line 888
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 895
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "year"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 902
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "month"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 909
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour of day"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 917
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour of day 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 924
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "minute"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 931
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "second"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 938
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "millisecond"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 946
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of week"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 954
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 962
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of year"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 970
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of week in month"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 978
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "week of year"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 986
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "week of month"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 994
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "am pm"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 1001
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 1008
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 1015
    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "time zone"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "fieldName"
    .parameter "calendarField"

    .prologue
    const/4 v0, -0x1

    .line 1033
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 1020
    iput v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    .line 1034
    iput p2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    .line 1035
    if-eq p2, v0, :cond_21

    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1037
    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    :cond_21
    return-void
.end method

.method public static ofCalendarField(I)Ljava/text/DateFormat$Field;
    .registers 3
    .parameter "calendarField"

    .prologue
    .line 1065
    if-ltz p0, :cond_6

    const/16 v0, 0x11

    if-lt p0, v0, :cond_c

    .line 1066
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1069
    :cond_c
    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/DateFormat$Field;

    return-object p0
.end method


# virtual methods
.method public getCalendarField()I
    .registers 2

    .prologue
    .line 1048
    iget v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    const-string v4, "text.02"

    .line 1083
    iget v2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 1085
    :try_start_7
    iget v2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    invoke-static {v2}, Ljava/text/DateFormat$Field;->ofCalendarField(I)Ljava/text/DateFormat$Field;

    move-result-object v1

    .line 1086
    .local v1, result:Ljava/text/DateFormat$Field;
    if-eqz v1, :cond_46

    invoke-virtual {p0, v1}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_12} :catch_17

    move-result v2

    if-eqz v2, :cond_46

    move-object v2, v1

    .line 1102
    .end local v1           #result:Ljava/text/DateFormat$Field;
    :goto_16
    return-object v2

    .line 1089
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 1091
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "text.02"

    invoke-static {v4}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1095
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_25
    sget-object v2, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    invoke-virtual {p0, v2}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1096
    sget-object v2, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    goto :goto_16

    .line 1098
    :cond_30
    sget-object v2, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    invoke-virtual {p0, v2}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1099
    sget-object v2, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    goto :goto_16

    .line 1101
    :cond_3b
    sget-object v2, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    invoke-virtual {p0, v2}, Ljava/text/DateFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1102
    sget-object v2, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    goto :goto_16

    .line 1106
    :cond_46
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "text.02"

    invoke-static {v4}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
