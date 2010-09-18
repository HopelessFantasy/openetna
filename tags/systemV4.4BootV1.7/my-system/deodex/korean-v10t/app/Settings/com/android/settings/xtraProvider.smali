.class public Lcom/android/settings/xtraProvider;
.super Landroid/content/ContentProvider;
.source "xtraProvider.java"


# static fields
.field private static final ALLROWS:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final myURI:Ljava/lang/String; = "content://com.android.provider.xtra/xtra"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private lDbHelper:Lcom/android/settings/AJTDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 14
    const-string v0, "content://com.android.provider.xtra/xtra"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/xtraProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/xtraProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 40
    sget-object v0, Lcom/android/settings/xtraProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.provider.xtra"

    const-string v2, "xtra"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/xtraProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_22
    iget-object v0, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/AJTDbAdapter;->dataInsert(Landroid/content/ContentValues;)J

    .line 70
    return-object p1

    .line 67
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/xtraProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, context:Landroid/content/Context;
    new-instance v3, Lcom/android/settings/AJTDbAdapter;

    invoke-direct {v3, v0}, Lcom/android/settings/AJTDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    .line 22
    iget-object v3, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    invoke-virtual {v3}, Lcom/android/settings/AJTDbAdapter;->open()Lcom/android/settings/AJTDbAdapter;

    .line 24
    iget-object v3, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    iget-object v4, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    const-string v4, "XTRA"

    invoke-virtual {v3, v4}, Lcom/android/settings/AJTDbAdapter;->dataSearch(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 25
    .local v1, dbcursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_46

    .line 26
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "connect"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 28
    const-string v3, "time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string v3, "use_time"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-object v3, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings/AJTDbAdapter;->dataInsert(Landroid/content/ContentValues;)J

    .line 32
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_46
    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/xtraProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_22
    iget-object v0, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    iget-object v1, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    const-string v1, "XTRA"

    invoke-virtual {v0, v1}, Lcom/android/settings/AJTDbAdapter;->dataSearch(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 46
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 78
    sget-object v1, Lcom/android/settings/xtraProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :pswitch_22
    iget-object v1, p0, Lcom/android/settings/xtraProvider;->lDbHelper:Lcom/android/settings/AJTDbAdapter;

    invoke-virtual {v1, p2}, Lcom/android/settings/AJTDbAdapter;->dataUpdate(Landroid/content/ContentValues;)Z

    move-result v0

    .line 81
    .local v0, value:Z
    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    .line 82
    :goto_2b
    return v1

    :cond_2c
    const/4 v1, 0x0

    goto :goto_2b

    .line 78
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method
