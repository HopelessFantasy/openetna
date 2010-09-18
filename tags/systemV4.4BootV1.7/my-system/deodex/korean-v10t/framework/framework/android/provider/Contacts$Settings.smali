.class public final Landroid/provider/Contacts$Settings;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "settings"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "key ASC"

.field public static final NON_SYNCABLE_ACCOUNT:Ljava/lang/String; = "non_syncable"

.field public static final SYNC_EVERYTHING:Ljava/lang/String; = "syncEverything"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    const-string v0, "content://contacts/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "cr"
    .parameter "account"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 169
    const-string v3, "key=?"

    .line 170
    .local v3, selectString:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v7

    .line 172
    .local v4, selectArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2a

    move-result v0

    if-nez v0, :cond_21

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 176
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2a

    move-result-object v0

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_20

    :catchall_2a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "cr"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v1, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    return-void
.end method
