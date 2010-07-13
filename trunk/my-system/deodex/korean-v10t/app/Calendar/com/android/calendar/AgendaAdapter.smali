.class public Lcom/android/calendar/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static mNoTitleLabel:Ljava/lang/String;


# instance fields
.field private mDeclinedColor:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 47
    iget-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/AgendaAdapter;->mDeclinedColor:I

    .line 49
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 23
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 55
    .local v10, holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    if-nez v10, :cond_40

    .line 56
    new-instance v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .end local v10           #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    invoke-direct {v10}, Lcom/android/calendar/AgendaAdapter$ViewHolder;-><init>()V

    .line 57
    .restart local v10       #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    const v2, 0x7f0c0002

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 59
    const v2, 0x7f0c0003

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0c0004

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/android/calendar/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    .line 64
    :cond_40
    const/16 v2, 0xc

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 65
    .local v12, selfAttendeeStatus:I
    const/4 v2, 0x2

    if-ne v12, v2, :cond_ea

    .line 66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/AgendaAdapter;->mDeclinedColor:I

    move v2, v0

    iput v2, v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    .line 71
    :goto_53
    iget-object v13, v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 72
    .local v13, title:Landroid/widget/TextView;
    iget-object v15, v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 73
    .local v15, when:Landroid/widget/TextView;
    move-object v0, v10

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 76
    .local v17, where:Landroid/widget/TextView;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 77
    .local v9, color:I
    iput v9, v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendarColor:I

    .line 80
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 81
    .local v14, titleString:Ljava/lang/String;
    if-eqz v14, :cond_76

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_78

    .line 82
    :cond_76
    sget-object v14, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 84
    :cond_78
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    const/4 v2, 0x7

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 89
    .local v3, begin:J
    const/16 v2, 0x8

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 90
    .local v5, end:J
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_ef

    const/4 v2, 0x1

    move v8, v2

    .line 93
    .local v8, allDay:Z
    :goto_9b
    if-eqz v8, :cond_f2

    .line 94
    const/16 v7, 0x2000

    .line 98
    .local v7, flags:I
    :goto_9f
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 99
    or-int/lit16 v7, v7, 0x80

    :cond_a7
    move-object/from16 v2, p2

    .line 101
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v16

    .line 102
    .local v16, whenString:Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v2, 0x6

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, rrule:Ljava/lang/String;
    if-eqz v11, :cond_f4

    .line 106
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .end local v3           #begin:J
    move-result-object v4

    const v5, 0x7f020017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .end local v5           #end:J
    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    const/4 v2, 0x5

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 133
    :goto_cf
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, whereString:Ljava/lang/String;
    if-eqz v18, :cond_fc

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fc

    .line 135
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_e9
    return-void

    .line 68
    .end local v7           #flags:I
    .end local v8           #allDay:Z
    .end local v9           #color:I
    .end local v11           #rrule:Ljava/lang/String;
    .end local v13           #title:Landroid/widget/TextView;
    .end local v14           #titleString:Ljava/lang/String;
    .end local v15           #when:Landroid/widget/TextView;
    .end local v16           #whenString:Ljava/lang/String;
    .end local v17           #where:Landroid/widget/TextView;
    .end local v18           #whereString:Ljava/lang/String;
    :cond_ea
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    goto/16 :goto_53

    .line 90
    .restart local v3       #begin:J
    .restart local v5       #end:J
    .restart local v9       #color:I
    .restart local v13       #title:Landroid/widget/TextView;
    .restart local v14       #titleString:Ljava/lang/String;
    .restart local v15       #when:Landroid/widget/TextView;
    .restart local v17       #where:Landroid/widget/TextView;
    :cond_ef
    const/4 v2, 0x0

    move v8, v2

    goto :goto_9b

    .line 96
    .restart local v8       #allDay:Z
    :cond_f2
    const/4 v7, 0x1

    .restart local v7       #flags:I
    goto :goto_9f

    .line 110
    .restart local v11       #rrule:Ljava/lang/String;
    .restart local v16       #whenString:Ljava/lang/String;
    :cond_f4
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_cf

    .line 138
    .end local v3           #begin:J
    .end local v5           #end:J
    .restart local v18       #whereString:Ljava/lang/String;
    :cond_fc
    const/16 v2, 0x8

    move-object/from16 v0, v17

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e9
.end method
