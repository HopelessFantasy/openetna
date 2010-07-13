.class public abstract Ljava/text/DateFormat;
.super Ljava/text/Format;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DateFormat$Field;
    }
.end annotation


# static fields
.field public static final AM_PM_FIELD:I = 0xe

.field public static final DATE_FIELD:I = 0x3

.field public static final DAY_OF_WEEK_FIELD:I = 0x9

.field public static final DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final DAY_OF_YEAR_FIELD:I = 0xa

.field public static final DEFAULT:I = 0x2

.field public static final ERA_FIELD:I = 0x0

.field public static final FULL:I = 0x0

.field public static final HOUR0_FIELD:I = 0x10

.field public static final HOUR1_FIELD:I = 0xf

.field public static final HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final MILLISECOND_FIELD:I = 0x8

.field public static final MINUTE_FIELD:I = 0x6

.field public static final MONTH_FIELD:I = 0x2

.field public static final SECOND_FIELD:I = 0x7

.field public static final SHORT:I = 0x3

.field public static final TIMEZONE_FIELD:I = 0x11

.field public static final WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final YEAR_FIELD:I = 0x1

.field private static final serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field protected calendar:Ljava/util/Calendar;

.field protected numberFormat:Ljava/text/NumberFormat;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 363
    return-void
.end method

.method private static checkDateStyle(I)V
    .registers 3
    .parameter "style"

    .prologue
    const/4 v1, 0x2

    .line 1111
    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    if-eq p0, v1, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_19

    if-eq p0, v1, :cond_19

    .line 1114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text.0E"

    invoke-static {v1, p0}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1117
    :cond_19
    return-void
.end method

.method private static checkTimeStyle(I)V
    .registers 3
    .parameter "style"

    .prologue
    const/4 v1, 0x2

    .line 1120
    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    if-eq p0, v1, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_19

    if-eq p0, v1, :cond_19

    .line 1123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text.0F"

    invoke-static {v1, p0}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_19
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 493
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance()Ljava/text/DateFormat;
    .registers 1

    .prologue
    .line 514
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(I)Ljava/text/DateFormat;
    .registers 2
    .parameter "style"

    .prologue
    .line 531
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    .line 532
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 6
    .parameter "style"
    .parameter "locale"

    .prologue
    .line 551
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    .line 552
    invoke-static {p1}, Ljava/text/DateFormat;->getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 553
    .local v0, bundle:Ljava/util/ResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/text/DateFormat;->getStyleName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, pattern:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v2
.end method

.method public static final getDateTimeInstance()Ljava/text/DateFormat;
    .registers 1

    .prologue
    const/4 v0, 0x2

    .line 565
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(II)Ljava/text/DateFormat;
    .registers 3
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 585
    invoke-static {p1}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    .line 586
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    .line 587
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 8
    .parameter "dateStyle"
    .parameter "timeStyle"
    .parameter "locale"

    .prologue
    .line 609
    invoke-static {p1}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    .line 610
    invoke-static {p0}, Ljava/text/DateFormat;->checkDateStyle(I)V

    .line 611
    invoke-static {p2}, Ljava/text/DateFormat;->getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 612
    .local v0, bundle:Ljava/util/ResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/text/DateFormat;->getStyleName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/text/DateFormat;->getStyleName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, pattern:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v2
.end method

.method public static final getInstance()Ljava/text/DateFormat;
    .registers 1

    .prologue
    const/4 v0, 0x3

    .line 626
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static getStyleName(I)Ljava/lang/String;
    .registers 2
    .parameter "style"

    .prologue
    .line 641
    packed-switch p0, :pswitch_data_12

    .line 655
    const-string v0, ""

    .line 657
    .local v0, styleName:Ljava/lang/String;
    :goto_5
    return-object v0

    .line 643
    .end local v0           #styleName:Ljava/lang/String;
    :pswitch_6
    const-string v0, "SHORT"

    .line 644
    .restart local v0       #styleName:Ljava/lang/String;
    goto :goto_5

    .line 646
    .end local v0           #styleName:Ljava/lang/String;
    :pswitch_9
    const-string v0, "MEDIUM"

    .line 647
    .restart local v0       #styleName:Ljava/lang/String;
    goto :goto_5

    .line 649
    .end local v0           #styleName:Ljava/lang/String;
    :pswitch_c
    const-string v0, "LONG"

    .line 650
    .restart local v0       #styleName:Ljava/lang/String;
    goto :goto_5

    .line 652
    .end local v0           #styleName:Ljava/lang/String;
    :pswitch_f
    const-string v0, "FULL"

    .line 653
    .restart local v0       #styleName:Ljava/lang/String;
    goto :goto_5

    .line 641
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static final getTimeInstance()Ljava/text/DateFormat;
    .registers 1

    .prologue
    .line 668
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(I)Ljava/text/DateFormat;
    .registers 2
    .parameter "style"

    .prologue
    .line 685
    invoke-static {p0}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    .line 686
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 6
    .parameter "style"
    .parameter "locale"

    .prologue
    .line 705
    invoke-static {p0}, Ljava/text/DateFormat;->checkTimeStyle(I)V

    .line 706
    invoke-static {p1}, Ljava/text/DateFormat;->getBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 707
    .local v0, bundle:Ljava/util/ResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/text/DateFormat;->getStyleName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, pattern:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 375
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 376
    .local v0, clone:Ljava/text/DateFormat;
    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 377
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/text/NumberFormat;

    iput-object p0, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 378
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 395
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 402
    :goto_5
    return v2

    .line 398
    :cond_6
    instance-of v2, p1, Ljava/text/DateFormat;

    if-nez v2, :cond_c

    move v2, v4

    .line 399
    goto :goto_5

    .line 401
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/text/DateFormat;

    move-object v1, v0

    .line 402
    .local v1, dateFormat:Ljava/text/DateFormat;
    iget-object v2, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v3, v1, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    iget-object v3, v1, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    iget-object v3, v1, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    if-ne v2, v3, :cond_58

    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    iget-object v3, v1, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_58

    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->isLenient()Z

    move-result v2

    iget-object v3, v1, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    if-ne v2, v3, :cond_58

    move v2, v5

    goto :goto_5

    :cond_58
    move v2, v4

    goto :goto_5
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .registers 5
    .parameter "date"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .parameter "object"
    .parameter "buffer"
    .parameter "field"

    .prologue
    .line 440
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 441
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 444
    :goto_a
    return-object v0

    .line 443
    .restart local p1
    :cond_b
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1f

    .line 444
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_a

    .line 447
    .restart local p1
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 723
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->isLenient()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x4cf

    :goto_22
    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_2b
    const/16 v1, 0x4d5

    goto :goto_22
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 752
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 753
    .local v1, position:Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 754
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_27

    .line 756
    :cond_17
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "text.19"

    invoke-static {v3, p1}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 759
    :cond_27
    return-object v0
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .parameter "string"
    .parameter "position"

    .prologue
    .line 816
    invoke-virtual {p0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .registers 2
    .parameter "cal"

    .prologue
    .line 827
    iput-object p1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 828
    return-void
.end method

.method public setLenient(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 842
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 843
    return-void
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .registers 2
    .parameter "format"

    .prologue
    .line 853
    iput-object p1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 854
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timezone"

    .prologue
    .line 864
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 865
    return-void
.end method
