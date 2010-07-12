.class public final Landroid/provider/Im$Contacts;
.super Ljava/lang/Object;
.source "Im.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Im$ContactsColumns;
.implements Landroid/provider/Im$PresenceColumns;
.implements Landroid/provider/Im$ChatsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation


# static fields
.field public static final AVATAR_DATA:Ljava/lang/String; = "avatars_data"

.field public static final AVATAR_HASH:Ljava/lang/String; = "avatars_hash"

.field public static final BULK_CONTENT_URI:Landroid/net/Uri; = null

.field public static final CHATS_CONTACT:Ljava/lang/String; = "chats_contact"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im-contacts"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/im-contacts"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CHAT_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_OFFLINE_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ONLINE_CONTACTS_BY:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ONLINE_COUNT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_WITH_PRESENCE:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "subscriptionType DESC, last_message_date DESC, mode DESC, nickname COLLATE UNICODE ASC"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-string v2, "content://im/contacts/chatting"

    const-string v1, "content://im/contacts"

    .line 523
    const-string v0, "content://im/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 529
    const-string v0, "content://im/contactsWithPresence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_WITH_PRESENCE:Landroid/net/Uri;

    .line 535
    const-string v0, "content://im/contactsBarebone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    .line 541
    const-string v0, "content://im/contacts/chatting"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    .line 547
    const-string v0, "content://im/contacts/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

    .line 553
    const-string v0, "content://im/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_CONTACTS_BY:Landroid/net/Uri;

    .line 560
    const-string v0, "content://im/contacts/chatting"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_CHAT_CONTACTS_BY:Landroid/net/Uri;

    .line 567
    const-string v0, "content://im/contacts/online"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_ONLINE_CONTACTS_BY:Landroid/net/Uri;

    .line 574
    const-string v0, "content://im/contacts/offline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_OFFLINE_CONTACTS_BY:Landroid/net/Uri;

    .line 580
    const-string v0, "content://im/bulk_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->BULK_CONTENT_URI:Landroid/net/Uri;

    .line 587
    const-string v0, "content://im/contacts/onlineCount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Im$Contacts;->CONTENT_URI_ONLINE_COUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
