.class public Lcom/android/calendar/IcsImportActivity;
.super Landroid/app/Activity;
.source "IcsImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/IcsImportActivity$CalendarInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mCalendar:Landroid/pim/ICalendar$Component;

.field private mCalendarIcon:Landroid/widget/ImageView;

.field private mCalendars:Landroid/widget/Spinner;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mImportButton:Landroid/widget/Button;

.field private mImportListener:Landroid/view/View$OnClickListener;

.field private mNumEvents:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/IcsImportActivity;->mCalendar:Landroid/pim/ICalendar$Component;

    .line 72
    new-instance v0, Lcom/android/calendar/IcsImportActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/IcsImportActivity$1;-><init>(Lcom/android/calendar/IcsImportActivity;)V

    iput-object v0, p0, Lcom/android/calendar/IcsImportActivity;->mImportListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/android/calendar/IcsImportActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/IcsImportActivity$2;-><init>(Lcom/android/calendar/IcsImportActivity;)V

    iput-object v0, p0, Lcom/android/calendar/IcsImportActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/IcsImportActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/calendar/IcsImportActivity;->importCalendar()V

    return-void
.end method

.method private importCalendar()V
    .registers 10

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/calendar/IcsImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 213
    .local v8, numImported:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v5, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/calendar/IcsImportActivity;->mCalendar:Landroid/pim/ICalendar$Component;

    invoke-virtual {v2}, Landroid/pim/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/ICalendar$Component;

    .line 216
    .local v1, component:Landroid/pim/ICalendar$Component;
    const-string v2, "VEVENT"

    invoke-virtual {v1}, Landroid/pim/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 217
    iget-object v2, p0, Lcom/android/calendar/IcsImportActivity;->mCalendars:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/IcsImportActivity$CalendarInfo;

    .line 219
    .local v6, calInfo:Lcom/android/calendar/IcsImportActivity$CalendarInfo;
    iget-wide v2, v6, Lcom/android/calendar/IcsImportActivity$CalendarInfo;->id:J

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Calendar$Events;->insertVEvent(Landroid/content/ContentResolver;Landroid/pim/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 226
    .end local v1           #component:Landroid/pim/ICalendar$Component;
    .end local v6           #calInfo:Lcom/android/calendar/IcsImportActivity$CalendarInfo;
    :cond_40
    return-void
.end method

.method private parseCalendar(Ljava/lang/String;)V
    .registers 8
    .parameter "data"

    .prologue
    const-string v5, "Calendar"

    .line 173
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/calendar/IcsImportActivity;->mCalendar:Landroid/pim/ICalendar$Component;

    .line 175
    :try_start_5
    invoke-static {p1}, Landroid/pim/ICalendar;->parseCalendar(Ljava/lang/String;)Landroid/pim/ICalendar$Component;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/IcsImportActivity;->mCalendar:Landroid/pim/ICalendar$Component;
    :try_end_b
    .catch Landroid/pim/ICalendar$FormatException; {:try_start_5 .. :try_end_b} :catch_1e

    .line 184
    iget-object v4, p0, Lcom/android/calendar/IcsImportActivity;->mCalendar:Landroid/pim/ICalendar$Component;

    invoke-virtual {v4}, Landroid/pim/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 185
    const-string v4, "Calendar"

    const-string v4, "No events in iCalendar."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/calendar/IcsImportActivity;->finish()V

    .line 206
    :goto_1d
    return-void

    .line 176
    :catch_1e
    move-exception v4

    move-object v1, v4

    .line 178
    .local v1, fe:Landroid/pim/ICalendar$FormatException;
    const-string v4, "Calendar"

    const-string v4, "Could not parse iCalendar."

    invoke-static {v5, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/IcsImportActivity;->finish()V

    goto :goto_1d

    .line 189
    .end local v1           #fe:Landroid/pim/ICalendar$FormatException;
    :cond_2b
    const/4 v3, 0x0

    .line 190
    .local v3, numEvents:I
    iget-object v4, p0, Lcom/android/calendar/IcsImportActivity;->mCalendar:Landroid/pim/ICalendar$Component;

    invoke-virtual {v4}, Landroid/pim/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/ICalendar$Component;

    .line 191
    .local v0, component:Landroid/pim/ICalendar$Component;
    const-string v4, "VEVENT"

    invoke-virtual {v0}, Landroid/pim/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 205
    .end local v0           #component:Landroid/pim/ICalendar$Component;
    :cond_51
    iget-object v4, p0, Lcom/android/calendar/IcsImportActivity;->mNumEvents:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d
.end method

.method private populateCalendars()V
    .registers 16

    .prologue
    const/4 v4, 0x0

    const-string v14, "displayName"

    const-string v13, "_id"

    .line 143
    invoke-virtual {p0}, Lcom/android/calendar/IcsImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v13, v2, v3

    const/4 v3, 0x1

    const-string v5, "displayName"

    aput-object v14, v2, v3

    const/4 v3, 0x2

    const-string v5, "selected"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "access_level"

    aput-object v5, v2, v3

    const-string v3, "selected=1 AND access_level>=500"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, c:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v10, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/IcsImportActivity$CalendarInfo;>;"
    :try_start_2e
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 158
    .local v9, idColumn:I
    const-string v1, "displayName"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 159
    .local v12, nameColumn:I
    :goto_3a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 160
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 161
    .local v7, id:J
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, name:Ljava/lang/String;
    new-instance v1, Lcom/android/calendar/IcsImportActivity$CalendarInfo;

    invoke-direct {v1, v7, v8, v11}, Lcom/android/calendar/IcsImportActivity$CalendarInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_2e .. :try_end_50} :catchall_51

    goto :goto_3a

    .line 165
    .end local v7           #id:J
    .end local v9           #idColumn:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #nameColumn:I
    :catchall_51
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    throw v1

    .restart local v9       #idColumn:I
    .restart local v12       #nameColumn:I
    :cond_56
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 168
    iget-object v1, p0, Lcom/android/calendar/IcsImportActivity;->mCalendars:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "icicle"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v11, 0x7f030010

    invoke-virtual {p0, v11}, Lcom/android/calendar/IcsImportActivity;->setContentView(I)V

    .line 89
    const v11, 0x7f0c0047

    invoke-virtual {p0, v11}, Lcom/android/calendar/IcsImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/calendar/IcsImportActivity;->mView:Landroid/view/View;

    .line 91
    const v11, 0x7f0c004b

    invoke-virtual {p0, v11}, Lcom/android/calendar/IcsImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/calendar/IcsImportActivity;->mCalendarIcon:Landroid/widget/ImageView;

    .line 92
    const v11, 0x7f0c0016

    invoke-virtual {p0, v11}, Lcom/android/calendar/IcsImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/calendar/IcsImportActivity;->mCalendars:Landroid/widget/Spinner;

    .line 93
    invoke-direct {p0}, Lcom/android/calendar/IcsImportActivity;->populateCalendars()V

    .line 95
    const v11, 0x7f0c004c

    invoke-virtual {p0, v11}, Lcom/android/calendar/IcsImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/calendar/IcsImportActivity;->mImportButton:Landroid/widget/Button;

    .line 96
    iget-object v11, p0, Lcom/android/calendar/IcsImportActivity;->mImportButton:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/calendar/IcsImportActivity;->mImportListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v11, 0x7f0c004d

    invoke-virtual {p0, v11}, Lcom/android/calendar/IcsImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/calendar/IcsImportActivity;->mCancelButton:Landroid/widget/Button;

    .line 98
    iget-object v11, p0, Lcom/android/calendar/IcsImportActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/calendar/IcsImportActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v11, 0x7f0c0049

    invoke-virtual {p0, v11}, Lcom/android/calendar/IcsImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/calendar/IcsImportActivity;->mNumEvents:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/IcsImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 103
    .local v7, intent:Landroid/content/Intent;
    const-string v11, "ics"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, data:Ljava/lang/String;
    if-nez v4, :cond_9d

    .line 105
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 106
    .local v3, content:Landroid/net/Uri;
    if-eqz v3, :cond_9d

    .line 107
    const/4 v9, 0x0

    .line 109
    .local v9, is:Ljava/io/InputStream;
    :try_start_6d
    invoke-virtual {p0}, Lcom/android/calendar/IcsImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x1fa0

    new-array v1, v11, [B

    .line 112
    .local v1, buf:[B
    const/4 v2, -0x1

    .line 113
    .local v2, bytesRead:I
    const/4 v10, 0x0

    .line 114
    .local v10, pos:I
    :goto_80
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_8c

    .line 115
    invoke-virtual {v0, v1, v10, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 116
    add-int/2addr v10, v2

    goto :goto_80

    .line 118
    :cond_8c
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v5, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_97
    .catchall {:try_start_6d .. :try_end_97} :catchall_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_97} :catch_b4
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_97} :catch_cc

    .line 124
    .end local v4           #data:Ljava/lang/String;
    .local v5, data:Ljava/lang/String;
    if-eqz v9, :cond_f8

    .line 126
    :try_start_99
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_aa

    move-object v4, v5

    .line 134
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v2           #bytesRead:I
    .end local v3           #content:Landroid/net/Uri;
    .end local v5           #data:Ljava/lang/String;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #pos:I
    .restart local v4       #data:Ljava/lang/String;
    :cond_9d
    :goto_9d
    if-nez v4, :cond_f4

    .line 135
    const-string v11, "Calendar"

    const-string v12, "No iCalendar data to parse."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/calendar/IcsImportActivity;->finish()V

    .line 140
    :goto_a9
    return-void

    .line 127
    .end local v4           #data:Ljava/lang/String;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v2       #bytesRead:I
    .restart local v3       #content:Landroid/net/Uri;
    .restart local v5       #data:Ljava/lang/String;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #pos:I
    :catch_aa
    move-exception v8

    .line 128
    .local v8, ioe:Ljava/io/IOException;
    const-string v11, "Calendar"

    const-string v12, "Could not close InputStream."

    invoke-static {v11, v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 129
    .end local v5           #data:Ljava/lang/String;
    .restart local v4       #data:Ljava/lang/String;
    goto :goto_9d

    .line 119
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v2           #bytesRead:I
    .end local v8           #ioe:Ljava/io/IOException;
    .end local v10           #pos:I
    :catch_b4
    move-exception v11

    move-object v6, v11

    .line 120
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    :try_start_b6
    const-string v11, "Calendar"

    const-string v12, "Could not open data."

    invoke-static {v11, v12, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_e4

    .line 124
    if-eqz v9, :cond_9d

    .line 126
    :try_start_bf
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_9d

    .line 127
    :catch_c3
    move-exception v8

    .line 128
    .restart local v8       #ioe:Ljava/io/IOException;
    const-string v11, "Calendar"

    const-string v12, "Could not close InputStream."

    invoke-static {v11, v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d

    .line 121
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    .end local v8           #ioe:Ljava/io/IOException;
    :catch_cc
    move-exception v11

    move-object v8, v11

    .line 122
    .restart local v8       #ioe:Ljava/io/IOException;
    :try_start_ce
    const-string v11, "Calendar"

    const-string v12, "Could not read data."

    invoke-static {v11, v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_e4

    .line 124
    if-eqz v9, :cond_9d

    .line 126
    :try_start_d7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_9d

    .line 127
    :catch_db
    move-exception v8

    .line 128
    const-string v11, "Calendar"

    const-string v12, "Could not close InputStream."

    invoke-static {v11, v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d

    .line 124
    .end local v8           #ioe:Ljava/io/IOException;
    :catchall_e4
    move-exception v11

    if-eqz v9, :cond_ea

    .line 126
    :try_start_e7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    .line 129
    :cond_ea
    :goto_ea
    throw v11

    .line 127
    :catch_eb
    move-exception v8

    .line 128
    .restart local v8       #ioe:Ljava/io/IOException;
    const-string v12, "Calendar"

    const-string v13, "Could not close InputStream."

    invoke-static {v12, v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ea

    .line 139
    .end local v3           #content:Landroid/net/Uri;
    .end local v8           #ioe:Ljava/io/IOException;
    .end local v9           #is:Ljava/io/InputStream;
    :cond_f4
    invoke-direct {p0, v4}, Lcom/android/calendar/IcsImportActivity;->parseCalendar(Ljava/lang/String;)V

    goto :goto_a9

    .end local v4           #data:Ljava/lang/String;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v2       #bytesRead:I
    .restart local v3       #content:Landroid/net/Uri;
    .restart local v5       #data:Ljava/lang/String;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #pos:I
    :cond_f8
    move-object v4, v5

    .end local v5           #data:Ljava/lang/String;
    .restart local v4       #data:Ljava/lang/String;
    goto :goto_9d
.end method
