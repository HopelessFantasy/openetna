.class public Lcom/lge/android/memo/MemoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MemoAppWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoAppWidgetProvider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 10
    .parameter "context"
    .parameter "id"

    .prologue
    .line 111
    const-string v0, "MemoAppWidgetProvider"

    const-string v1, "Building medium widget update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, views:Landroid/widget/RemoteViews;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local v0           #views:Landroid/widget/RemoteViews;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIDGET ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/lge/android/memo/MemoList;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v6, detailIntent:Landroid/content/Intent;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/high16 v0, 0x1000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "memo"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "modified"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "style"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "textcolor"

    aput-object v1, v2, v0

    .line 127
    .local v2, PROJECTION:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 128
    .local v0, title1:Ljava/lang/String;
    const/4 v7, 0x0

    .line 129
    .local v7, title2:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .end local v0           #title1:Ljava/lang/String;
    const-string v1, "content://com.lge.provider.Memo/memos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memoId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    .local v0, cursor:Landroid/database/Cursor;
    const/high16 v1, -0x100

    .line 135
    .local v1, textColor:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .end local v2           #PROJECTION:[Ljava/lang/String;
    if-eqz v2, :cond_15b

    .line 136
    const-string v1, "textcolor"

    .end local v1           #textColor:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .restart local v1       #textColor:I
    move v3, v1

    .line 140
    .end local v1           #textColor:I
    .local v3, textColor:I
    :goto_88
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-direct {v4, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 145
    .local v4, views:Landroid/widget/RemoteViews;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_e2

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, title1:Ljava/lang/String;
    const v2, 0x7f080003

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 148
    const v2, 0x7f080005

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 149
    const v2, 0x7f080001

    const v5, 0x7f020018

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    move-object v2, v7

    .line 188
    .end local v7           #title2:Ljava/lang/String;
    .local v2, title2:Ljava/lang/String;
    :goto_bc
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    const/4 v0, 0x0

    invoke-static {p0, p1, v6, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .end local v0           #cursor:Landroid/database/Cursor;
    move-result-object p0

    .line 191
    .local p0, pending:Landroid/app/PendingIntent;
    const/high16 p1, 0x7f08

    invoke-virtual {v4, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 192
    .end local p1
    const p0, 0x7f080002

    invoke-virtual {v4, p0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    .end local p0           #pending:Landroid/app/PendingIntent;
    const p0, 0x7f080002

    invoke-virtual {v4, p0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 194
    const p0, 0x7f080004

    invoke-virtual {v4, p0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    const p0, 0x7f080004

    invoke-virtual {v4, p0, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 197
    return-object v4

    .line 151
    .end local v1           #title1:Ljava/lang/String;
    .end local v2           #title2:Ljava/lang/String;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v7       #title2:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_e2
    const-string v1, "memo"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, text:Ljava/lang/String;
    const-string v1, "style"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 156
    .local v1, styleID:I
    const/16 v5, 0x8

    if-ne v1, v5, :cond_124

    .line 157
    const v1, 0x7f080003

    const v5, 0x7f020017

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 158
    .end local v1           #styleID:I
    const v1, 0x7f080001

    const v5, 0x7f020015

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 159
    const v1, 0x7f080005

    const v5, 0x7f020017

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 176
    :goto_119
    invoke-static {p0, v2}, Lcom/lge/android/memo/MemoAppWidgetProvider;->getStringsForWidget(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, values:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 178
    .local v1, title1:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v2, v2, v5

    .end local v7           #title2:Ljava/lang/String;
    .local v2, title2:Ljava/lang/String;
    goto :goto_bc

    .line 160
    .local v1, styleID:I
    .local v2, text:Ljava/lang/String;
    .restart local v7       #title2:Ljava/lang/String;
    :cond_124
    const/4 v5, 0x6

    if-ne v1, v5, :cond_13f

    .line 161
    const v1, 0x7f080003

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 162
    .end local v1           #styleID:I
    const v1, 0x7f080001

    const v5, 0x7f020018

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 163
    const v1, 0x7f080005

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_119

    .line 165
    .restart local v1       #styleID:I
    :cond_13f
    const v1, 0x7f080003

    const v5, 0x7f020016

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 166
    .end local v1           #styleID:I
    const v1, 0x7f080001

    const v5, 0x7f020014

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 167
    const v1, 0x7f080005

    const v5, 0x7f020016

    invoke-virtual {v4, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_119

    .end local v2           #text:Ljava/lang/String;
    .end local v3           #textColor:I
    .end local v4           #views:Landroid/widget/RemoteViews;
    .local v1, textColor:I
    :cond_15b
    move v3, v1

    .end local v1           #textColor:I
    .restart local v3       #textColor:I
    goto/16 :goto_88
.end method

.method public static getStringsForWidget(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "srcString"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/high16 v9, 0x428c

    const/4 v8, 0x0

    const-string v7, ""

    .line 201
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    .line 202
    .local v2, retStrings:[Ljava/lang/String;
    const-string v6, ""

    aput-object v7, v2, v8

    .line 203
    const-string v6, ""

    aput-object v7, v2, v10

    .line 205
    const-string v6, "\n"

    const-string v7, " "

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    :cond_2b
    const/4 v4, 0x0

    .line 211
    .local v4, twoLine:Z
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 212
    .local v1, paint:Landroid/text/TextPaint;
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v9, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, widgetText:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, compareText:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 216
    const/high16 v6, 0x42ba

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 219
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 220
    const/4 v4, 0x1

    .line 228
    :goto_6f
    if-eqz v4, :cond_87

    .line 229
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v3, v6, v11

    .line 230
    .local v3, startIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 231
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v9, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    .line 233
    .end local v3           #startIndex:I
    :cond_87
    return-object v2

    .line 222
    :cond_88
    aput-object v5, v2, v8

    goto :goto_6f

    .line 225
    :cond_8b
    aput-object v5, v2, v8

    goto :goto_6f
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 14
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    const-string v10, "memoId="

    const-string v9, "content://com.lge.provider.Memo/memos"

    .line 60
    const-string v0, "MemoAppWidgetProvider"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    array-length v6, p2

    .line 63
    .local v6, N:I
    const/4 v8, 0x0

    .line 64
    .local v8, widgetID:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_f
    if-ge v7, v6, :cond_60

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.lge.provider.Memo/memos"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lge/android/memo/MemoList;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "memoId="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, p2, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.lge.provider.Memo/memos"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memoId="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 77
    :cond_60
    if-eqz v8, :cond_65

    .line 78
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_65
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "appWidgetId"

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 89
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 90
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 93
    .local v1, appWidgetId:I
    if-eqz v1, :cond_23

    .line 94
    new-array v3, v4, [I

    aput v1, v3, v5

    invoke-virtual {p0, p1, v3}, Lcom/lge/android/memo/MemoAppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 109
    .end local v1           #appWidgetId:I
    :cond_23
    :goto_23
    return-void

    .line 96
    :cond_24
    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 97
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .restart local v1       #appWidgetId:I
    if-eqz v1, :cond_40

    .line 100
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    new-array v4, v4, [I

    aput v1, v4, v5

    invoke-virtual {p0, p1, v3, v4}, Lcom/lge/android/memo/MemoAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_23

    .line 105
    :cond_40
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_23
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 46
    const-string v0, "MemoAppWidgetProvider"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez p3, :cond_14

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/lge/android/memo/MemoAppWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p3

    .line 53
    :cond_14
    invoke-static {p3}, Lcom/lge/android/memo/UpdateService;->requestUpdate([I)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lge/android/memo/UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method
