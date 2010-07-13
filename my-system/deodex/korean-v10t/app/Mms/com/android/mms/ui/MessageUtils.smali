.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field public static final IMAGE_COMPRESSION_QUALITY:I = 0x50

.field public static final MINIMUM_MEMORY_SIZE:I = 0x5dc000

.field public static final READ_THREAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MessageUtils"

.field private static countryCode:Ljava/lang/String;

.field private static operatorCode:Ljava/lang/String;

.field private static sLocalNumber:Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-string v1, ""

    .line 98
    const-string v0, ""

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->operatorCode:Ljava/lang/String;

    .line 99
    const-string v0, ""

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->countryCode:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static KORformatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "when"
    .parameter "flags"

    .prologue
    .line 425
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    move v4, v0

    .line 426
    .local v4, showTime:Z
    :goto_6
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    move v5, v0

    .line 427
    .local v5, showYear:Z
    :goto_c
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    move v1, v0

    .line 428
    .local v1, noYear:Z
    :goto_12
    and-int/lit16 v0, p3, 0x2000

    if-eqz v0, :cond_76

    const/4 v0, 0x1

    move v6, v0

    .line 429
    .local v6, useUTC:Z
    :goto_18
    const/high16 v0, 0x9

    and-int/2addr v0, p3

    if-eqz v0, :cond_79

    const/4 v0, 0x1

    .line 430
    .local v0, abbrevMonth:Z
    :goto_1e
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_7b

    .end local v0           #abbrevMonth:Z
    const/4 v0, 0x1

    .line 431
    .local v0, noMonthDay:Z
    :goto_23
    const/high16 v2, 0x2

    and-int/2addr v2, p3

    if-eqz v2, :cond_7d

    const/4 v2, 0x1

    .line 432
    .local v2, numericDate:Z
    :goto_29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 434
    .local v3, res:Landroid/content/res/Resources;
    if-eqz v6, :cond_7f

    new-instance v6, Landroid/text/format/Time;

    .end local v6           #useUTC:Z
    const-string v7, "UTC"

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 435
    .local v6, startDate:Landroid/text/format/Time;
    :goto_36
    invoke-virtual {v6, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 437
    iget p1, v6, Landroid/text/format/Time;->month:I

    .line 438
    .local p1, startMonthNum:I
    iget v8, v6, Landroid/text/format/Time;->year:I

    .line 440
    .local v8, startYear:I
    const-string v7, ""

    .line 442
    .local v7, startWeekDayString:Ljava/lang/String;
    const-string p1, ""

    .line 444
    .local p1, startTimeString:Ljava/lang/String;
    if-eqz v4, :cond_13b

    .line 445
    const-string p1, ""

    .line 446
    .local p1, startTimeFormat:Ljava/lang/String;
    and-int/lit16 p1, p3, 0x80

    if-eqz p1, :cond_85

    .end local p1           #startTimeFormat:Ljava/lang/String;
    const/4 p1, 0x1

    move p2, p1

    .line 447
    .local p2, force24Hour:Z
    :goto_4b
    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_88

    const/4 p1, 0x1

    .line 449
    .local p1, force12Hour:Z
    :goto_50
    if-eqz p2, :cond_8a

    .line 450
    const/4 p0, 0x1

    .line 456
    .local p0, use24Hour:Z
    :goto_53
    if-eqz p0, :cond_93

    .line 457
    const-string p0, "%H:%M"

    .line 478
    .end local p1           #force12Hour:Z
    .end local p2           #force24Hour:Z
    .local p0, startTimeFormat:Ljava/lang/String;
    :goto_57
    invoke-virtual {v6, p0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .local p0, startTimeString:Ljava/lang/String;
    move-object p2, p0

    .line 481
    .end local p0           #startTimeString:Ljava/lang/String;
    .local p2, startTimeString:Ljava/lang/String;
    :goto_5c
    if-eqz v5, :cond_c2

    move p0, v5

    .line 494
    .end local v5           #showYear:Z
    :goto_5f
    if-eqz v2, :cond_da

    .line 495
    if-eqz p0, :cond_d6

    .line 496
    const-string p0, "%Y-%m-%d"

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object p1, p0

    .line 516
    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    :goto_66
    if-eqz v0, :cond_fd

    .line 518
    invoke-virtual {v6, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 553
    .end local v0           #noMonthDay:Z
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    .end local p2           #startTimeString:Ljava/lang/String;
    .end local p3
    :cond_6c
    :goto_6c
    return-object p0

    .line 425
    .end local v1           #noYear:Z
    .end local v2           #numericDate:Z
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #showTime:Z
    .end local v6           #startDate:Landroid/text/format/Time;
    .end local v7           #startWeekDayString:Ljava/lang/String;
    .end local v8           #startYear:I
    .local p0, context:Landroid/content/Context;
    .local p1, when:J
    .restart local p3
    :cond_6d
    const/4 v0, 0x0

    move v4, v0

    goto :goto_6

    .line 426
    .restart local v4       #showTime:Z
    :cond_70
    const/4 v0, 0x0

    move v5, v0

    goto :goto_c

    .line 427
    .restart local v5       #showYear:Z
    :cond_73
    const/4 v0, 0x0

    move v1, v0

    goto :goto_12

    .line 428
    .restart local v1       #noYear:Z
    :cond_76
    const/4 v0, 0x0

    move v6, v0

    goto :goto_18

    .line 429
    .local v6, useUTC:Z
    :cond_79
    const/4 v0, 0x0

    goto :goto_1e

    .line 430
    :cond_7b
    const/4 v0, 0x0

    goto :goto_23

    .line 431
    .restart local v0       #noMonthDay:Z
    :cond_7d
    const/4 v2, 0x0

    goto :goto_29

    .line 434
    .restart local v2       #numericDate:Z
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_7f
    new-instance v6, Landroid/text/format/Time;

    .end local v6           #useUTC:Z
    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    goto :goto_36

    .line 446
    .end local p1           #when:J
    .local v6, startDate:Landroid/text/format/Time;
    .restart local v7       #startWeekDayString:Ljava/lang/String;
    .restart local v8       #startYear:I
    :cond_85
    const/4 p1, 0x0

    move p2, p1

    goto :goto_4b

    .line 447
    .local p2, force24Hour:Z
    :cond_88
    const/4 p1, 0x0

    goto :goto_50

    .line 451
    .local p1, force12Hour:Z
    :cond_8a
    if-eqz p1, :cond_8e

    .line 452
    const/4 p0, 0x0

    .local p0, use24Hour:Z
    goto :goto_53

    .line 454
    .local p0, context:Landroid/content/Context;
    :cond_8e
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    .local p0, use24Hour:Z
    goto :goto_53

    .line 459
    :cond_93
    const p0, 0x84000

    and-int/2addr p0, p3

    if-eqz p0, :cond_b1

    .end local p0           #use24Hour:Z
    const/4 p0, 0x1

    .line 460
    .local p0, abbrevTime:Z
    :goto_9a
    and-int/lit16 p1, p3, 0x100

    if-eqz p1, :cond_b3

    .end local p1           #force12Hour:Z
    const/4 p1, 0x1

    .line 461
    .local p1, capAMPM:Z
    :goto_9f
    iget p2, v6, Landroid/text/format/Time;->minute:I

    .end local p2           #force24Hour:Z
    if-nez p2, :cond_b5

    iget p2, v6, Landroid/text/format/Time;->second:I

    if-nez p2, :cond_b5

    const/4 p2, 0x1

    .line 463
    .local p2, startOnTheHour:Z
    :goto_a8
    if-eqz p0, :cond_ba

    if-eqz p2, :cond_ba

    .line 464
    if-eqz p1, :cond_b7

    .line 465
    const-string p0, "%-l%p"

    .local p0, startTimeFormat:Ljava/lang/String;
    goto :goto_57

    .line 459
    .end local p0           #startTimeFormat:Ljava/lang/String;
    .local p1, force12Hour:Z
    .local p2, force24Hour:Z
    :cond_b1
    const/4 p0, 0x0

    goto :goto_9a

    .line 460
    .end local p1           #force12Hour:Z
    .local p0, abbrevTime:Z
    :cond_b3
    const/4 p1, 0x0

    goto :goto_9f

    .line 461
    .end local p2           #force24Hour:Z
    .local p1, capAMPM:Z
    :cond_b5
    const/4 p2, 0x0

    goto :goto_a8

    .line 467
    .local p2, startOnTheHour:Z
    :cond_b7
    const-string p0, "%-l%P"

    .local p0, startTimeFormat:Ljava/lang/String;
    goto :goto_57

    .line 470
    .local p0, abbrevTime:Z
    :cond_ba
    if-eqz p1, :cond_bf

    .line 471
    const-string p0, "%-l:%M%p"

    .local p0, startTimeFormat:Ljava/lang/String;
    goto :goto_57

    .line 473
    .local p0, abbrevTime:Z
    :cond_bf
    const-string p0, "%-l:%M%P"

    .local p0, startTimeFormat:Ljava/lang/String;
    goto :goto_57

    .line 483
    .end local p0           #startTimeFormat:Ljava/lang/String;
    .end local p1           #capAMPM:Z
    .local p2, startTimeString:Ljava/lang/String;
    :cond_c2
    if-eqz v1, :cond_c6

    .line 485
    const/4 p0, 0x0

    .end local v5           #showYear:Z
    .local p0, showYear:Z
    goto :goto_5f

    .line 488
    .end local p0           #showYear:Z
    .restart local v5       #showYear:Z
    :cond_c6
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 489
    .local p0, currentTime:Landroid/text/format/Time;
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    .line 490
    iget p0, p0, Landroid/text/format/Time;->year:I

    .end local p0           #currentTime:Landroid/text/format/Time;
    if-eq v8, p0, :cond_d4

    const/4 p0, 0x1

    .end local v5           #showYear:Z
    .local p0, showYear:Z
    :goto_d3
    goto :goto_5f

    .end local p0           #showYear:Z
    .restart local v5       #showYear:Z
    :cond_d4
    const/4 p0, 0x0

    goto :goto_d3

    .line 498
    .end local v5           #showYear:Z
    :cond_d6
    const-string p0, "%m-%d"

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    goto :goto_66

    .line 501
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_da
    if-eqz p0, :cond_ec

    .line 502
    if-eqz v0, :cond_e2

    .line 503
    const-string p0, "%b %Y"

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto :goto_66

    .line 505
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_e2
    const p0, 0x7f07015b

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_66

    .line 508
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_ec
    if-eqz v0, :cond_f3

    .line 509
    const-string p0, "%b"

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_66

    .line 511
    .end local p1           #defaultDateFormat:Ljava/lang/String;
    :cond_f3
    const p0, 0x7f07015c

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object p1, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p1       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_66

    .line 523
    :cond_fd
    and-int/lit8 p0, p3, 0x10

    if-eqz p0, :cond_12e

    const/4 p0, 0x1

    .line 526
    .local p0, showDate:Z
    :goto_102
    if-nez v4, :cond_139

    if-nez p0, :cond_139

    const/4 p0, 0x1

    move p3, p0

    .line 529
    .end local p0           #showDate:Z
    .local p3, showDate:I
    :goto_108
    const-string p0, ""

    .line 530
    .local p0, timeString:Ljava/lang/String;
    if-eqz v4, :cond_137

    .line 531
    move-object p0, p2

    move-object v0, p0

    .line 535
    .end local p0           #timeString:Ljava/lang/String;
    .local v0, timeString:Ljava/lang/String;
    :goto_10e
    const-string p2, ""

    .line 536
    .local p2, fullFormat:Ljava/lang/String;
    const-string p0, ""

    .line 537
    .local p0, dateString:Ljava/lang/String;
    if-eqz p3, :cond_130

    .line 538
    invoke-virtual {v6, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 539
    if-eqz v4, :cond_6c

    .line 541
    const-string p1, "%3$s, %1$s"

    .line 552
    .end local p2           #fullFormat:Ljava/lang/String;
    .local p1, fullFormat:Ljava/lang/String;
    :goto_11c
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    .end local p3           #showDate:I
    const/4 p3, 0x1

    aput-object v7, p2, p3

    const/4 p3, 0x2

    aput-object p0, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 553
    .local p0, dateRange:Ljava/lang/String;
    goto/16 :goto_6c

    .line 523
    .end local p0           #dateRange:Ljava/lang/String;
    .local v0, noMonthDay:Z
    .local p1, defaultDateFormat:Ljava/lang/String;
    .local p2, startTimeString:Ljava/lang/String;
    .local p3, flags:I
    :cond_12e
    const/4 p0, 0x0

    goto :goto_102

    .line 546
    .local v0, timeString:Ljava/lang/String;
    .local p0, dateString:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    .local p3, showDate:I
    :cond_130
    if-eqz v4, :cond_135

    move-object p0, v0

    .line 547
    goto/16 :goto_6c

    :cond_135
    move-object p1, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p1, fullFormat:Ljava/lang/String;
    goto :goto_11c

    .local v0, noMonthDay:Z
    .local p0, timeString:Ljava/lang/String;
    .local p1, defaultDateFormat:Ljava/lang/String;
    .local p2, startTimeString:Ljava/lang/String;
    :cond_137
    move-object v0, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local v0, timeString:Ljava/lang/String;
    goto :goto_10e

    .local v0, noMonthDay:Z
    .local p0, showDate:Z
    .local p3, flags:I
    :cond_139
    move p3, p0

    .local p3, showDate:I
    goto :goto_108

    .end local p2           #startTimeString:Ljava/lang/String;
    .restart local v5       #showYear:Z
    .local p0, context:Landroid/content/Context;
    .local p1, startTimeString:Ljava/lang/String;
    .local p3, flags:I
    :cond_13b
    move-object p2, p1

    .end local p1           #startTimeString:Ljava/lang/String;
    .restart local p2       #startTimeString:Ljava/lang/String;
    goto/16 :goto_5c
.end method

.method public static confirmReadReportDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 7
    .parameter "context"
    .parameter "msg"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 975
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 977
    const v1, 0x7f0700eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 978
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 979
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 980
    const v1, 0x7f070071

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 981
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 982
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 983
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1000
    if-eqz p1, :cond_7

    .line 1001
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .registers 7
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 987
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 988
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 990
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 991
    const-string v2, ""

    .line 995
    :goto_10
    return-object v2

    .line 992
    :cond_11
    if-nez v0, :cond_15

    move-object v2, v1

    .line 993
    goto :goto_10

    .line 995
    :cond_15
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method private static extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .registers 16
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"

    .prologue
    .line 582
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v7, addressBuf:Ljava/lang/StringBuilder;
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 584
    .local p1, recipientIds:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 585
    .local v0, firstItem:Z
    move-object p1, p1

    .local p1, arr$:[Ljava/lang/String;
    array-length v10, p1

    .local v10, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v9, v1

    .end local v1           #i$:I
    .local v9, i$:I
    move v8, v0

    .end local v0           #firstItem:Z
    .local v8, firstItem:Z
    :goto_11
    if-ge v9, v10, :cond_79

    aget-object v11, p1, v9

    .line 586
    .local v11, recipientId:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 588
    .local v12, value:Ljava/lang/String;
    if-nez v12, :cond_89

    .line 589
    if-nez p2, :cond_23

    .line 593
    const/4 p0, 0x0

    .line 621
    .end local v11           #recipientId:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    .end local p0
    :goto_22
    return-object p0

    .line 596
    .restart local v11       #recipientId:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    .restart local p0
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/canonical-address/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 597
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 599
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_89

    .line 601
    :try_start_49
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 602
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_64

    move-result-object v1

    .line 603
    .end local v12           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :try_start_54
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .end local v2           #uri:Landroid/net/Uri;
    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_83

    .line 606
    :goto_59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 610
    .end local v0           #c:Landroid/database/Cursor;
    :goto_5c
    if-nez v1, :cond_6b

    move v0, v8

    .line 585
    .end local v8           #firstItem:Z
    .local v0, firstItem:Z
    :goto_5f
    add-int/lit8 v1, v9, 0x1

    .end local v9           #i$:I
    .local v1, i$:I
    move v9, v1

    .end local v1           #i$:I
    .restart local v9       #i$:I
    move v8, v0

    .end local v0           #firstItem:Z
    .restart local v8       #firstItem:Z
    goto :goto_11

    .line 606
    .local v0, c:Landroid/database/Cursor;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v12       #value:Ljava/lang/String;
    :catchall_64
    move-exception p0

    move-object p1, p0

    move-object p0, v12

    .end local v2           #uri:Landroid/net/Uri;
    .end local v12           #value:Ljava/lang/String;
    .end local p1           #arr$:[Ljava/lang/String;
    .local p0, value:Ljava/lang/String;
    :goto_67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 613
    .end local v0           #c:Landroid/database/Cursor;
    .local v1, value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #arr$:[Ljava/lang/String;
    :cond_6b
    if-eqz v8, :cond_72

    .line 614
    const/4 v0, 0x0

    .line 618
    .end local v8           #firstItem:Z
    .local v0, firstItem:Z
    :goto_6e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 616
    .end local v0           #firstItem:Z
    .restart local v8       #firstItem:Z
    :cond_72
    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v8

    .end local v8           #firstItem:Z
    .restart local v0       #firstItem:Z
    goto :goto_6e

    .line 621
    .end local v0           #firstItem:Z
    .end local v1           #value:Ljava/lang/String;
    .end local v11           #recipientId:Ljava/lang/String;
    .restart local v8       #firstItem:Z
    :cond_79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .end local p0           #context:Landroid/content/Context;
    if-nez p0, :cond_81

    const/4 p0, 0x0

    goto :goto_22

    :cond_81
    move-object p0, v7

    goto :goto_22

    .line 606
    .local v0, c:Landroid/database/Cursor;
    .restart local v1       #value:Ljava/lang/String;
    .restart local v11       #recipientId:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    :catchall_83
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #value:Ljava/lang/String;
    .local p0, value:Ljava/lang/String;
    goto :goto_67

    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v12       #value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_87
    move-object v1, v12

    .end local v12           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_59

    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #value:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v12       #value:Ljava/lang/String;
    :cond_89
    move-object v1, v12

    .end local v12           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_5c
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .registers 5
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1008
    array-length v2, p0

    .line 1009
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_15

    .line 1012
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1014
    :cond_15
    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "when"

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 387
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 388
    .local v3, then:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 389
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 390
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 394
    .local v1, locale:Ljava/util/Locale;
    const v0, 0x80b00

    .line 399
    .local v0, format_flags:I
    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v2, Landroid/text/format/Time;->year:I

    if-eq v4, v5, :cond_3a

    .line 400
    or-int/lit8 v0, v0, 0x14

    .line 412
    :goto_25
    if-eqz p3, :cond_29

    .line 413
    or-int/lit8 v0, v0, 0x11

    .line 416
    :cond_29
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ko"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 417
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->KORformatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 419
    :goto_39
    return-object v4

    .line 401
    :cond_3a
    iget v4, v3, Landroid/text/format/Time;->yearDay:I

    iget v5, v2, Landroid/text/format/Time;->yearDay:I

    if-eq v4, v5, :cond_43

    .line 403
    or-int/lit8 v0, v0, 0x10

    goto :goto_25

    .line 406
    :cond_43
    or-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 419
    :cond_46
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    goto :goto_39
.end method

.method public static getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 625
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    .line 627
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 628
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 633
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5d

    .line 635
    :try_start_39
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_5a

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 636
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 638
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_5f

    move-result v0

    if-nez v0, :cond_5a

    .line 643
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 646
    .end local v7           #address:Ljava/lang/String;
    :goto_59
    return-object v0

    .line 643
    :cond_5a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5d
    move-object v0, v5

    .line 646
    goto :goto_59

    .line 643
    :catchall_5f
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .registers 8
    .parameter "model"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 348
    if-nez p0, :cond_8

    move v2, v4

    .line 379
    :goto_7
    return v2

    .line 352
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 353
    .local v0, numberOfSlides:I
    if-le v0, v3, :cond_10

    move v2, v6

    .line 354
    goto :goto_7

    .line 355
    :cond_10
    if-ne v0, v3, :cond_44

    .line 357
    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 358
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 359
    const/4 v2, 0x2

    goto :goto_7

    .line 362
    :cond_1e
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v6

    .line 363
    goto :goto_7

    .line 366
    :cond_2c
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 367
    const/4 v2, 0x3

    goto :goto_7

    .line 370
    :cond_34
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v3

    .line 371
    goto :goto_7

    .line 374
    :cond_3c
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v5

    .line 375
    goto :goto_7

    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_44
    move v2, v4

    .line 379
    goto :goto_7
.end method

.method public static getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1052
    const/4 v7, 0x0

    .line 1053
    .local v7, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1054
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1057
    .local v0, testProvider:Landroid/content/IContentProvider;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1058
    .local p0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1059
    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    .end local p0           #resolver:Landroid/content/ContentResolver;
    const/4 p0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_2f

    move-result-object p0

    .line 1064
    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_1b
    if-eqz p0, :cond_32

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 1065
    .local p1, count:I
    :goto_21
    const/4 v0, 0x1

    if-eq p1, v0, :cond_34

    .line 1069
    .end local v0           #testProvider:Landroid/content/IContentProvider;
    if-eqz p0, :cond_29

    .line 1071
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1074
    :cond_29
    if-nez p1, :cond_34

    .line 1076
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v7

    .line 1089
    .end local v7           #filepath:Ljava/lang/String;
    .end local p1           #count:I
    .local p0, filepath:Ljava/lang/String;
    :goto_2e
    return-object p1

    .line 1061
    .end local p0           #filepath:Ljava/lang/String;
    .restart local v0       #testProvider:Landroid/content/IContentProvider;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #filepath:Ljava/lang/String;
    .local p1, uri:Landroid/net/Uri;
    :catch_2f
    move-exception p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_1b

    .line 1064
    :cond_32
    const/4 p1, 0x0

    goto :goto_21

    .line 1079
    .end local v0           #testProvider:Landroid/content/IContentProvider;
    .local p1, count:I
    :cond_34
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1080
    const-string p1, "_data"

    .end local p1           #count:I
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1081
    .local p1, i:I
    if-ltz p1, :cond_4d

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1082
    .end local v7           #filepath:Ljava/lang/String;
    .local p1, filepath:Ljava/lang/String;
    :goto_43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1083
    if-nez p1, :cond_4f

    .line 1085
    const/4 p0, 0x0

    move-object v8, p1

    .end local p1           #filepath:Ljava/lang/String;
    .local v8, filepath:Ljava/lang/String;
    move-object p1, p0

    move-object p0, v8

    .end local v8           #filepath:Ljava/lang/String;
    .local p0, filepath:Ljava/lang/String;
    goto :goto_2e

    .line 1081
    .restart local v7       #filepath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p1, i:I
    :cond_4d
    const/4 p1, 0x0

    goto :goto_43

    .line 1088
    .end local v7           #filepath:Ljava/lang/String;
    .local p1, filepath:Ljava/lang/String;
    :cond_4f
    const-string p0, "MessageUtils"

    .end local p0           #c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilepathFromContentUri Media _data result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    .line 1089
    .end local p1           #filepath:Ljava/lang/String;
    .local p0, filepath:Ljava/lang/String;
    goto :goto_2e
.end method

.method public static getFreeMemSize()J
    .registers 6

    .prologue
    .line 1094
    const-string v0, "/data"

    .line 1095
    .local v0, DATA_PATH:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 1096
    .local v3, freeMem:J
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v2, fileStats:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 1100
    .local v1, blkSize:I
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    mul-int/2addr v5, v1

    int-to-long v3, v5

    .line 1102
    return-wide v3
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 845
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 846
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 848
    :cond_e
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "size"

    .prologue
    .line 125
    if-nez p1, :cond_4

    .line 126
    const/4 v1, 0x0

    .line 142
    :goto_3
    return-object v1

    .line 129
    :cond_4
    const-string v1, "mms"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 130
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 131
    .local v0, type:I
    packed-switch v0, :pswitch_data_34

    .line 138
    :pswitch_1a
    const-string v1, "MessageUtils"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, ""

    goto :goto_3

    .line 133
    :pswitch_24
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 136
    :pswitch_29
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 142
    .end local v0           #type:I
    :cond_2e
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 131
    nop

    :pswitch_data_34
    .packed-switch 0x80
        :pswitch_29
        :pswitch_1a
        :pswitch_24
        :pswitch_1a
        :pswitch_29
    .end packed-switch
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "cursor"
    .parameter "size"

    .prologue
    .line 205
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 206
    .local v1, type:I
    const/16 v2, 0x82

    if-ne v1, v2, :cond_f

    .line 207
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    .line 297
    .end local v1           #type:I
    .end local p0
    .end local p1
    :goto_e
    return-object p0

    .line 210
    .restart local v1       #type:I
    .restart local p0
    .restart local p1
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #type:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v1, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 213
    .local v4, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 214
    .local v2, id:J
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 218
    .local v2, uri:Landroid/net/Uri;
    :try_start_23
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_2d
    .catch Lcom/google/android/mms/MmsException; {:try_start_23 .. :try_end_2d} :catch_137

    .line 226
    .local v3, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v2, 0x7f0700ac

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v2           #uri:Landroid/net/Uri;
    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const v2, 0x7f0700ae

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    instance-of v2, v3, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_69

    .line 231
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, from:Ljava/lang/String;
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    const v5, 0x7f0700b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15d

    .end local v2           #from:Ljava/lang/String;
    :goto_66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_69
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    const v2, 0x7f0700b1

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 242
    .local v2, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_166

    .line 243
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :goto_85
    instance-of v2, v3, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v2, :cond_ac

    .line 252
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 253
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_ac

    array-length v5, v2

    if-lez v5, :cond_ac

    .line 254
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    const v5, 0x7f0700b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_ac
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 263
    .local p1, msgBox:I
    const/4 v2, 0x3

    if-ne p1, v2, :cond_16f

    .line 264
    const p1, 0x7f0700b5

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #msgBox:I
    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :goto_c4
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const/4 p1, 0x1

    invoke-static {p0, v5, v6, p1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    const p1, 0x7f0700b6

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 279
    .local p1, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p1, :cond_f4

    .line 280
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p1

    .line 282
    .local p1, subStr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    .line 283
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .end local p1           #subStr:Ljava/lang/String;
    :cond_f4
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    const p1, 0x7f0700b8

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    const p1, 0x7f0700b7

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/4 p1, 0x1

    sub-int p1, p2, p1

    div-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const p1, 0x7f07001b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_e

    .line 220
    .end local v3           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .local v2, uri:Landroid/net/Uri;
    .restart local p0
    .local p1, cursor:Landroid/database/Cursor;
    :catch_137
    move-exception p1

    .line 221
    .local p1, e:Lcom/google/android/mms/MmsException;
    const-string v1, "MessageUtils"

    .end local v1           #details:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load the message: "

    .end local v4           #res:Landroid/content/res/Resources;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #uri:Landroid/net/Uri;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const p1, 0x7f0700aa

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto/16 :goto_e

    .line 234
    .restart local v1       #details:Ljava/lang/StringBuilder;
    .local v2, from:Ljava/lang/String;
    .restart local v3       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local p0
    .local p1, cursor:Landroid/database/Cursor;
    :cond_15d
    const v2, 0x7f07006f

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v2           #from:Ljava/lang/String;
    move-result-object v2

    goto/16 :goto_66

    .line 246
    .local v2, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_166
    const-string v2, "MessageUtils"

    .end local v2           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v5, "recipient list is empty!"

    invoke-static {v2, v5}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 265
    .local p1, msgBox:I
    :cond_16f
    const/4 v2, 0x1

    if-ne p1, v2, :cond_17e

    .line 266
    const p1, 0x7f0700b4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #msgBox:I
    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 268
    .restart local p1       #msgBox:I
    :cond_17e
    const p1, 0x7f0700b3

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #msgBox:I
    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v1, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 150
    .local v4, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 151
    .local v2, id:J
    sget-object p1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .end local p1
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 155
    .local v2, uri:Landroid/net/Uri;
    :try_start_14
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v2, v0
    :try_end_20
    .catch Lcom/google/android/mms/MmsException; {:try_start_14 .. :try_end_20} :catch_db

    .line 163
    .local v2, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const p1, 0x7f0700ac

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const p1, 0x7f0700af

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object p1

    .line 168
    .local p1, from:Ljava/lang/String;
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    const v3, 0x7f0700b0

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_100

    .end local p1           #from:Ljava/lang/String;
    :goto_51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    const p1, 0x7f07001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v4, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    const p1, 0x7f0700b6

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 185
    .local p1, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p1, :cond_91

    .line 186
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p1

    .end local p1           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_91
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    const p1, 0x7f0700bc

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    const p1, 0x7f0700b7

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    .end local v2           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const-wide/16 v4, 0x3ff

    add-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .end local v4           #res:Landroid/content/res/Resources;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const p1, 0x7f07001b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v1           #details:Ljava/lang/StringBuilder;
    :goto_da
    return-object p0

    .line 157
    .restart local v1       #details:Ljava/lang/StringBuilder;
    .local v2, uri:Landroid/net/Uri;
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local p0
    :catch_db
    move-exception p1

    .line 158
    .local p1, e:Lcom/google/android/mms/MmsException;
    const-string v1, "MessageUtils"

    .end local v1           #details:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load the message: "

    .end local v4           #res:Landroid/content/res/Resources;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #uri:Landroid/net/Uri;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const p1, 0x7f0700aa

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto :goto_da

    .line 170
    .restart local v1       #details:Ljava/lang/StringBuilder;
    .local v2, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local p0
    .local p1, from:Ljava/lang/String;
    :cond_100
    const p1, 0x7f07006f

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #from:Ljava/lang/String;
    move-result-object p1

    goto/16 :goto_51
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_20

    .line 343
    :pswitch_7
    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    .line 338
    :pswitch_f
    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 340
    :pswitch_17
    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 336
    nop

    :pswitch_data_20
    .packed-switch 0x80
        :pswitch_17
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public static getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "recipientIds"
    .parameter "allowQuery"

    .prologue
    .line 561
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 562
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 577
    :goto_b
    return-object v2

    .line 565
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 566
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 568
    .local v0, addressBuf:Ljava/lang/StringBuilder;
    if-nez v0, :cond_1b

    .line 570
    const-string v2, ""

    goto :goto_b

    .line 572
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .end local v0           #addressBuf:Ljava/lang/StringBuilder;
    :goto_1f
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 577
    goto :goto_b

    .line 574
    :cond_26
    const-string v1, ""

    goto :goto_1f
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 305
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f0700ac

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const v5, 0x7f0700ad

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 311
    .local v4, smsType:I
    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 312
    const v5, 0x7f0700b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :goto_39
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    if-ne v4, v7, :cond_6b

    .line 321
    const v5, 0x7f0700b5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :goto_4f
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 329
    .local v0, date:J
    invoke-static {p0, v0, v1, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 314
    .end local v0           #date:J
    :cond_60
    const v5, 0x7f0700b0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 322
    :cond_6b
    if-ne v4, v6, :cond_78

    .line 323
    const v5, 0x7f0700b4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 325
    :cond_78
    const v5, 0x7f0700b3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f
.end method

.method public static handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
    .registers 12
    .parameter "context"
    .parameter "threadId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 904
    const-string v4, "m_type = 132 AND read = 0 AND rr = 128"

    .line 908
    .local v4, selection:Ljava/lang/String;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2b

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 912
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x2

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "_id"

    aput-object p2, v3, p1

    const/4 p1, 0x1

    const-string p2, "m_id"

    aput-object p2, v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 916
    .local p1, c:Landroid/database/Cursor;
    if-nez p1, :cond_48

    .line 970
    .end local p1           #c:Landroid/database/Cursor;
    .end local p3
    :goto_47
    return-void

    .line 920
    .restart local p1       #c:Landroid/database/Cursor;
    .restart local p3
    :cond_48
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 922
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_4d
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5c

    .line 923
    if-eqz p4, :cond_58

    .line 924
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_7a

    .line 934
    :cond_58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 929
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 930
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 931
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_7a

    goto :goto_5c

    .line 934
    :catchall_7a
    move-exception p0

    .end local p0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local p0
    :cond_7f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 937
    new-instance v0, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v0, p2, p0, p3, p4}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 950
    .local v0, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance p2, Lcom/android/mms/ui/MessageUtils$4;

    .end local p2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2, p4}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Ljava/lang/Runnable;)V

    .line 958
    .local p2, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance p1, Lcom/android/mms/ui/MessageUtils$5;

    .end local p1           #c:Landroid/database/Cursor;
    invoke-direct {p1, p4}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 966
    .local p1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    const p3, 0x7f0700ec

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p3
    move-result-object p3

    invoke-static {p0, p3, v0, p2, p1}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_47
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 120
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->operatorCode:Ljava/lang/String;

    .line 121
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->countryCode:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static isExpiredMMS(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z
    .registers 15
    .parameter "context"
    .parameter "msgItem"

    .prologue
    const-string v12, "MessageUtils"

    .line 1120
    const-wide/16 v4, 0x0

    .line 1121
    .local v4, notiTimestamp:J
    const/4 v6, 0x0

    .line 1122
    .local v6, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    .line 1125
    .local v7, p:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_9
    iget-object v8, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v6, v0
    :try_end_13
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_13} :catch_59

    .line 1130
    :goto_13
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v4, v8, v10

    .line 1131
    const-string v8, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 1135
    .local v1, currentTimestamp:J
    const-string v8, "MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    cmp-long v8, v1, v4

    if-lez v8, :cond_5f

    .line 1138
    const/4 v8, 0x1

    .line 1140
    :goto_58
    return v8

    .line 1126
    .end local v1           #currentTimestamp:J
    :catch_59
    move-exception v8

    move-object v3, v8

    .line 1128
    .local v3, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v3}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_13

    .line 1140
    .end local v3           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #currentTimestamp:J
    :cond_5f
    const/4 v8, 0x0

    goto :goto_58
.end method

.method public static isLatinAmerica()Z
    .registers 3

    .prologue
    .line 1107
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->operatorCode:Ljava/lang/String;

    const-string v1, "CLARO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->operatorCode:Ljava/lang/String;

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->operatorCode:Ljava/lang/String;

    const-string v1, "TIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->countryCode:Ljava/lang/String;

    const-string v2, "BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_30

    .line 1111
    :cond_27
    const-string v0, "MessageUtils"

    const-string v1, "LatinAmerica!!"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const/4 v0, 0x1

    .line 1114
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 854
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static recordSound(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 663
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_22

    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v1, "mms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    const-string v1, "com.android.soundrecorder"

    const-string v2, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 672
    .end local v0           #intent:Landroid/content/Intent;
    :cond_22
    return-void
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V
    .registers 12
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "cb"

    .prologue
    .line 782
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 783
    .local v5, progressDialog:Landroid/app/ProgressDialog;
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 784
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 785
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 786
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 790
    new-instance v4, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v4, v5}, Lcom/android/mms/ui/MessageUtils$1;-><init>(Landroid/app/ProgressDialog;)V

    .line 796
    .local v4, showProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 820
    return-void
.end method

.method public static saveBitmapAsPart(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .registers 9
    .parameter "context"
    .parameter "messageUri"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 759
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 760
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 762
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 764
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v3, "image/jpeg"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, contentId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 767
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 768
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 770
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static selectAudio(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "requestCode"

    .prologue
    const/4 v3, 0x0

    .line 650
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_34

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MessageUtils"

    const-string v2, "ACTION_RINGTONE_PICKER putExtra(attach_picker, 1)"

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "attach_picker"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    const-string v1, "android.intent.extra.ringtone.TITLE"

    const v2, 0x7f0700f8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 660
    .end local v0           #intent:Landroid/content/Intent;
    :cond_34
    return-void
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 679
    const-string v0, "image/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 680
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "requestCode"
    .parameter "contentType"

    .prologue
    .line 684
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_18

    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v0, innerIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 692
    .local v1, wrapperIntent:Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 694
    .end local v0           #innerIntent:Landroid/content/Intent;
    .end local v1           #wrapperIntent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 675
    const-string v0, "video/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 676
    return-void
.end method

.method public static sendReadReport(Landroid/content/Context;JI)V
    .registers 11
    .parameter "context"
    .parameter "threadId"
    .parameter "status"

    .prologue
    .line 861
    const-string v4, "m_type = 132 AND read = 0 AND rr = 128"

    .line 865
    .local v4, selection:Ljava/lang/String;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2b

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 869
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x2

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "_id"

    aput-object p2, v3, p1

    const/4 p1, 0x1

    const-string p2, "m_id"

    aput-object p2, v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 873
    .local p1, c:Landroid/database/Cursor;
    if-nez p1, :cond_4f

    .line 874
    const-string p0, "MessageUtils"

    .end local p0
    const-string p1, "sendReadReport c== null"

    .end local p1           #c:Landroid/database/Cursor;
    invoke-static {p0, p1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_4e
    :goto_4e
    return-void

    .line 878
    .restart local p0
    .restart local p1       #c:Landroid/database/Cursor;
    :cond_4f
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 880
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_54
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_65

    .line 881
    const-string p0, "MessageUtils"

    .end local p0
    const-string p2, "sendReadReport c.getCount() == 0"

    .end local p2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_83

    .line 890
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    .line 885
    .restart local p0
    .restart local p2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_65
    :goto_65
    :try_start_65
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 886
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 887
    .local v0, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catchall {:try_start_65 .. :try_end_82} :catchall_83

    goto :goto_65

    .line 890
    .end local p0
    .end local p2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_83
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local p0
    .restart local p2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_88
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 893
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .end local p1           #c:Landroid/database/Cursor;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .local p2, i$:Ljava/util/Iterator;
    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 894
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MessageUtils"

    const-string v1, "MmsMessageSender.sendReadRec !!!!!"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .end local p1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p1, p3}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_93
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 824
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 831
    return-void
.end method

.method public static showDiscardMessageConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 835
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 842
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 743
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 746
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 747
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 748
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 749
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 750
    return-void
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;)V
    .registers 8
    .parameter "context"
    .parameter "msgUri"
    .parameter "slideshow"
    .parameter "persister"

    .prologue
    .line 1031
    const/4 v1, 0x0

    .line 1032
    .local v1, isSimple:Z
    if-eqz v1, :cond_7

    .line 1034
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1047
    :goto_6
    return-void

    .line 1037
    :cond_7
    if-eqz p2, :cond_13

    if-eqz p3, :cond_13

    .line 1038
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1039
    .local v2, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {p1, p3, p2, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTemporaryMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1043
    .end local v2           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1044
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1045
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .registers 7
    .parameter "context"
    .parameter "slideshow"

    .prologue
    .line 697
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v3

    if-nez v3, :cond_e

    .line 698
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 701
    :cond_e
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 702
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    const/4 v1, 0x0

    .line 703
    .local v1, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 704
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    .line 709
    :cond_1e
    :goto_1e
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 712
    if-eqz v1, :cond_4a

    .line 714
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 717
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 719
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    packed-switch v3, :pswitch_data_72

    .line 738
    :cond_4a
    :goto_4a
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 739
    return-void

    .line 705
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4e
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 706
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    goto :goto_1e

    .line 722
    .restart local v0       #intent:Landroid/content/Intent;
    :pswitch_59
    const-string v3, "android.lge.lgdrm.IMAGE_CATEGORY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4a

    .line 725
    :pswitch_5f
    const-string v3, "android.lge.lgdrm.AUDIO_CATEGORY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4a

    .line 728
    :pswitch_65
    const-string v3, "android.lge.lgdrm.VIDEO_CATEGORY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4a

    .line 731
    :pswitch_6b
    const-string v3, "android.lge.lgdrm.GAME_CATEGORY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4a

    .line 719
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_59
        :pswitch_5f
        :pswitch_65
        :pswitch_6b
    .end packed-switch
.end method
