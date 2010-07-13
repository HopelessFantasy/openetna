.class public Lcom/android/calendar/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 32
    return-void
.end method

.method public static updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 15
    .parameter "context"
    .parameter "view"
    .parameter "eventName"
    .parameter "location"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "allDay"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 79
    :cond_c
    const p2, 0x7f080007

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2
    move-result-object p2

    .line 81
    .restart local p2
    :cond_13
    const v0, 0x7f0c000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local v0           #res:Landroid/content/res/Resources;
    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    if-eqz p8, :cond_55

    .line 88
    const/16 v5, 0x2012

    .line 93
    .local v5, flags:I
    :goto_23
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_2b

    .line 94
    or-int/lit16 v5, v5, 0x80

    :cond_2b
    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p6

    .line 96
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v0           #textView:Landroid/widget/TextView;
    move-result-object p2

    .line 97
    .local p2, when:Ljava/lang/String;
    const p0, 0x7f0c0003

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p0
    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 98
    .local p0, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const p0, 0x7f0c0004

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local p0           #textView:Landroid/widget/TextView;
    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 102
    .restart local p0       #textView:Landroid/widget/TextView;
    if-eqz p3, :cond_4f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1
    if-nez p1, :cond_58

    .line 103
    :cond_4f
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_54
    return-void

    .line 91
    .end local v5           #flags:I
    .restart local v0       #textView:Landroid/widget/TextView;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, eventName:Ljava/lang/String;
    :cond_55
    const/16 v5, 0x11

    .restart local v5       #flags:I
    goto :goto_23

    .line 105
    .end local v0           #textView:Landroid/widget/TextView;
    .end local p1
    .local p0, textView:Landroid/widget/TextView;
    .local p2, when:Ljava/lang/String;
    :cond_58
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 38
    const v2, 0x7f0c000a

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 39
    .local v14, stripe:Landroid/view/View;
    const/4 v2, 0x7

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 40
    .local v11, color:I
    invoke-virtual {v14, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    const v2, 0x7f0c000b

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 42
    .local v15, textView:Landroid/widget/TextView;
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    const v2, 0x7f0c000d

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 46
    .local v12, repeatContainer:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 47
    .local v13, rrule:Ljava/lang/String;
    if-eqz v13, :cond_71

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_3d
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, eventName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, location:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 65
    .local v6, startMillis:J
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 66
    .local v8, endMillis:J
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_77

    const/4 v2, 0x1

    move v10, v2

    .local v10, allDay:Z
    :goto_69
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 68
    invoke-static/range {v2 .. v10}, Lcom/android/calendar/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 69
    return-void

    .line 50
    .end local v4           #eventName:Ljava/lang/String;
    .end local v5           #location:Ljava/lang/String;
    .end local v6           #startMillis:J
    .end local v8           #endMillis:J
    .end local v10           #allDay:Z
    :cond_71
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 66
    .restart local v4       #eventName:Ljava/lang/String;
    .restart local v5       #location:Ljava/lang/String;
    .restart local v6       #startMillis:J
    .restart local v8       #endMillis:J
    :cond_77
    const/4 v2, 0x0

    move v10, v2

    goto :goto_69
.end method
