.class public final Landroid/provider/Contacts$Stuffs;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$StuffsColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stuffs"
.end annotation


# static fields
.field public static final CONTENT_BIRTHDAY_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/birthday"

.field public static final CONTENT_BIRTHDAY_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/birthday"

.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "stuffs"

.field public static final CONTENT_NOTE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/note"

.field public static final CONTENT_NOTE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/note"

.field public static final CONTENT_NOTE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/stuffs"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final PERSON_ID:Ljava/lang/String; = "person"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1876
    const-string v0, "content://contacts/stuffs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Stuffs;->CONTENT_URI:Landroid/net/Uri;

    .line 1886
    const-string v0, "content://contacts/stuffs/note"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Stuffs;->CONTENT_NOTE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
