.class public Landroid/provider/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$Intents;,
        Landroid/provider/Contacts$DrmPhotoManager;,
        Landroid/provider/Contacts$DrmPhotos;,
        Landroid/provider/Contacts$DrmPhotosColumns;,
        Landroid/provider/Contacts$SnsIds;,
        Landroid/provider/Contacts$SnsIdsColumns;,
        Landroid/provider/Contacts$GroupPhotos;,
        Landroid/provider/Contacts$GroupPhotosColumns;,
        Landroid/provider/Contacts$Extensions;,
        Landroid/provider/Contacts$ExtensionsColumns;,
        Landroid/provider/Contacts$Photos;,
        Landroid/provider/Contacts$PhotosColumns;,
        Landroid/provider/Contacts$Stuffs;,
        Landroid/provider/Contacts$StuffsColumns;,
        Landroid/provider/Contacts$Organizations;,
        Landroid/provider/Contacts$OrganizationColumns;,
        Landroid/provider/Contacts$Presence;,
        Landroid/provider/Contacts$PresenceColumns;,
        Landroid/provider/Contacts$ContactMethods;,
        Landroid/provider/Contacts$ContactMethodsColumns;,
        Landroid/provider/Contacts$GroupMembership;,
        Landroid/provider/Contacts$Phones;,
        Landroid/provider/Contacts$PhonesColumns;,
        Landroid/provider/Contacts$Groups;,
        Landroid/provider/Contacts$GroupsColumns;,
        Landroid/provider/Contacts$People;,
        Landroid/provider/Contacts$PeopleColumns;,
        Landroid/provider/Contacts$Settings;,
        Landroid/provider/Contacts$SettingsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "contacts"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KIND_BIRTHDAY:I = 0x8

.field public static final KIND_EMAIL:I = 0x1

.field public static final KIND_IM:I = 0x3

.field public static final KIND_NOTE:I = 0x7

.field public static final KIND_ORGANIZATION:I = 0x4

.field public static final KIND_PHONE:I = 0x5

.field public static final KIND_POSTAL:I = 0x2

.field public static final KIND_SNSID:I = 0x9

.field public static final KIND_WEBSITE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Contacts"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "content://contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
