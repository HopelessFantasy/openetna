.class Lcom/android/browser/HistoryItem$1;
.super Ljava/lang/Object;
.source "HistoryItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/HistoryItem;


# direct methods
.method constructor <init>(Lcom/android/browser/HistoryItem;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 15
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$000(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v6, v6, Lcom/android/browser/HistoryItem;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 66
    .local v8, first:Z
    if-nez v8, :cond_2d

    .line 67
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "URL is not in the database!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 69
    :cond_2d
    if-eqz p2, :cond_a3

    .line 72
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v9, map:Landroid/content/ContentValues;
    const-string v1, "created"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "bookmark"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    :try_start_5b
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_79} :catch_99

    .line 83
    :goto_79
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v2, v2, Lcom/android/browser/HistoryItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$100(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070004

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    .end local v9           #map:Landroid/content/ContentValues;
    :goto_95
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 107
    return-void

    .line 80
    .restart local v9       #map:Landroid/content/ContentValues;
    :catch_99
    move-exception v1

    move-object v7, v1

    .line 81
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v1, "HistoryItem"

    const-string v2, "no database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 91
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v9           #map:Landroid/content/ContentValues;
    :cond_a3
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v2, v2, Lcom/android/browser/HistoryItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 92
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 96
    .local v10, uri:Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "bookmark"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_cb
    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/IllegalStateException; {:try_start_cb .. :try_end_ce} :catch_e0

    .line 103
    :goto_ce
    iget-object v1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$200(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070005

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_95

    .line 100
    :catch_e0
    move-exception v7

    .line 101
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    const-string v1, "HistoryItem"

    const-string v2, "no database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce
.end method
