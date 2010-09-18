.class public Lcom/android/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final englishNthDay:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 140
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1st"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2nd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3rd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4th"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7th"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8th"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9th"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10th"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11th"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12th"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13th"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14th"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15th"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16th"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17th"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18th"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19th"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20th"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22nd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23rd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24th"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "25th"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "26th"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "27th"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "28th"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "29th"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "30th"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "31st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyAlphaAnimation(Landroid/widget/ViewFlipper;)V
    .registers 9
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 113
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 115
    .local v0, in:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 116
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 118
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 120
    .local v1, out:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 121
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 124
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 125
    return-void
.end method

.method public static formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;
    .registers 3
    .parameter "time"

    .prologue
    .line 135
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x104020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNth(I)Ljava/lang/String;
    .registers 3
    .parameter "nth"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 69
    const/4 v7, 0x0

    .line 70
    .local v7, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 71
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 73
    .local v0, testProvider:Landroid/content/IContentProvider;
    const-string v1, "vijay"

    const-string v2, "Utils.getFilepathFromContentUri()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 77
    .local p0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 78
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
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_21} :catch_36

    move-result-object p0

    .line 83
    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_22
    if-eqz p0, :cond_39

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 84
    .local p1, count:I
    :goto_28
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3b

    .line 88
    .end local v0           #testProvider:Landroid/content/IContentProvider;
    if-eqz p0, :cond_30

    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_30
    if-nez p1, :cond_3b

    .line 95
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v7

    .line 108
    .end local v7           #filepath:Ljava/lang/String;
    .end local p1           #count:I
    .local p0, filepath:Ljava/lang/String;
    :goto_35
    return-object p1

    .line 80
    .end local p0           #filepath:Ljava/lang/String;
    .restart local v0       #testProvider:Landroid/content/IContentProvider;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #filepath:Ljava/lang/String;
    .local p1, uri:Landroid/net/Uri;
    :catch_36
    move-exception p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_22

    .line 83
    :cond_39
    const/4 p1, 0x0

    goto :goto_28

    .line 98
    .end local v0           #testProvider:Landroid/content/IContentProvider;
    .local p1, count:I
    :cond_3b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    const-string p1, "_data"

    .end local p1           #count:I
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 100
    .local p1, i:I
    if-ltz p1, :cond_54

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    .end local v7           #filepath:Ljava/lang/String;
    .local p1, filepath:Ljava/lang/String;
    :goto_4a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 102
    if-nez p1, :cond_56

    .line 104
    const/4 p0, 0x0

    move-object v8, p1

    .end local p1           #filepath:Ljava/lang/String;
    .local v8, filepath:Ljava/lang/String;
    move-object p1, p0

    move-object p0, v8

    .end local v8           #filepath:Ljava/lang/String;
    .local p0, filepath:Ljava/lang/String;
    goto :goto_35

    .line 100
    .restart local v7       #filepath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p1, i:I
    :cond_54
    const/4 p1, 0x0

    goto :goto_4a

    .line 106
    .end local v7           #filepath:Ljava/lang/String;
    .local p1, filepath:Ljava/lang/String;
    :cond_56
    const-string p0, "vijay"

    .end local p0           #c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Utils.getFilepathFromContentUri Media _data result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    .line 108
    .end local p1           #filepath:Ljava/lang/String;
    .local p0, filepath:Ljava/lang/String;
    goto :goto_35
.end method

.method static setTimeToStartOfDay(Landroid/text/format/Time;)V
    .registers 2
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 156
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 157
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 158
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 159
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6
    .parameter "context"
    .parameter "className"
    .parameter "time"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public static final timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;
    .registers 4
    .parameter "intent"

    .prologue
    .line 48
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 49
    .local v0, time:Landroid/text/format/Time;
    invoke-static {p0}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 50
    return-object v0
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .registers 6
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 59
    const-string v2, "beginTime"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 60
    .local v0, millis:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_10

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    :cond_10
    return-wide v0
.end method
