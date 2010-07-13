.class public Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;
.super Ljava/lang/Object;
.source "SelectCalendarsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeCalendarAction"
.end annotation


# instance fields
.field mCalendarIds:[J

.field private mCheckedCount:I

.field mContentResolver:Landroid/content/ContentResolver;

.field mIsChecked:[Z

.field mNumItems:I

.field private mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

.field mRemove:Z

.field final synthetic this$0:Lcom/android/calendar/SelectCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/SelectCalendarsActivity;Z)V
    .registers 4
    .parameter
    .parameter "remove"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Lcom/android/calendar/SelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    iput-boolean p2, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mRemove:Z

    .line 126
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    .line 149
    const/4 v7, -0x2

    if-ne p2, v7, :cond_5

    .line 178
    :cond_4
    :goto_4
    return-void

    .line 153
    :cond_5
    const/4 v0, 0x0

    .line 154
    .local v0, changesFound:Z
    const/4 v3, 0x0

    .local v3, position:I
    :goto_7
    iget v7, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mNumItems:I

    if-ge v3, v7, :cond_42

    .line 156
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mIsChecked:[Z

    aget-boolean v7, v7, v3

    if-nez v7, :cond_14

    .line 154
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 159
    :cond_14
    const/4 v0, 0x1

    .line 161
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCalendarIds:[J

    aget-wide v1, v7, v3

    .line 162
    .local v1, id:J
    sget-object v7, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 163
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v6, values:Landroid/content/ContentValues;
    const/4 v4, 0x1

    .line 165
    .local v4, selected:I
    iget-boolean v7, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mRemove:Z

    if-eqz v7, :cond_2a

    .line 166
    const/4 v4, 0x0

    .line 168
    :cond_2a
    const-string v7, "selected"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v7, "sync_events"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_11

    .line 175
    .end local v1           #id:J
    .end local v4           #selected:I
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_42
    if-eqz v0, :cond_4

    .line 176
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-static {v7}, Lcom/android/calendar/SelectCalendarsActivity;->access$000(Lcom/android/calendar/SelectCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->requery()Z

    goto :goto_4
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 7
    .parameter "dialog"
    .parameter "position"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mIsChecked:[Z

    aput-boolean p3, v0, p2

    .line 134
    if-eqz p3, :cond_18

    .line 135
    iget v0, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    .line 140
    :goto_d
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

    iget v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    if-lez v1, :cond_1e

    move v1, v2

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    return-void

    .line 137
    :cond_18
    iget v0, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    goto :goto_d

    .line 140
    :cond_1e
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter "item"

    .prologue
    .line 181
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mRemove:Z

    if-eqz v1, :cond_38

    .line 184
    const v1, 0x7f08001a

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 186
    const-string v3, "sync_events=1"

    .line 191
    .local v3, selection:Ljava/lang/String;
    :goto_1a
    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v1}, Lcom/android/calendar/SelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/calendar/SelectCalendarsActivity;->access$100()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 196
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_41

    .line 197
    const-string v1, "Calendar"

    const-string v2, "Cannot get cursor for calendars"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x1

    .line 225
    :goto_37
    return v1

    .line 188
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #selection:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_38
    const v1, 0x7f080019

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 189
    const-string v3, "sync_events=0"

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_1a

    .line 201
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_41
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 202
    .local v8, count:I
    iput v8, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mNumItems:I

    .line 203
    new-array v7, v8, [Ljava/lang/CharSequence;

    .line 204
    .local v7, calendarNames:[Ljava/lang/CharSequence;
    new-array v1, v8, [J

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCalendarIds:[J

    .line 205
    new-array v1, v8, [Z

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mIsChecked:[Z

    .line 206
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCheckedCount:I

    .line 208
    const/4 v11, 0x0

    .line 209
    .local v11, pos:I
    :goto_55
    :try_start_55
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 210
    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mCalendarIds:[J

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v1, v11

    .line 211
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_99

    .line 212
    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    .line 215
    :cond_6e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v6, v7, v1, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 221
    .local v10, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 222
    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

    .line 223
    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;->mOkButtonInAddDeleteCalendar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    const/4 v1, 0x1

    goto :goto_37

    .line 215
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :catchall_99
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method
