.class public Lcom/android/providers/contacts/ContactsSyncAdapter;
.super Lcom/google/android/providers/AbstractGDataSyncAdapter;
.source "ContactsSyncAdapter.java"


# static fields
.field private static final CONTACTS_FEED_URL:Ljava/lang/String; = "http://www.google.com/m8/feeds/contacts/"

.field private static final ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_FEED_URL:Ljava/lang/String; = "http://www.google.com/m8/feeds/groups/"

.field private static final IMAGE_MIME_TYPE:Ljava/lang/String; = "image/*"

.field private static final MAX_MEDIA_ENTRIES_PER_SYNC:I = 0xa

.field private static final PHOTO_FEED_URL:Ljava/lang/String; = "http://www.google.com/m8/feeds/photos/media/"

.field private static final PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_AGENT_APP_VERSION:Ljava/lang/String; = "Android-GData-Contacts/1.1"

.field private static final sSubscriptionProjection:[Ljava/lang/String;


# instance fields
.field private final mContactsClient:Lcom/google/wireless/gdata/contacts/client/ContactsClient;

.field private mPerformedGetServerDiffs:Z

.field private mPhotoDownloads:I

.field private mPhotoUploads:I

.field private mSyncForced:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 102
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "_sync_account"

    aput-object v2, v1, v6

    const-string v2, "feed"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->sSubscriptionProjection:[Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sput-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;

    .line 149
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sput-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;

    .line 157
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sput-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;

    .line 169
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sput-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;

    .line 177
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sput-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;

    .line 185
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sput-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;

    .line 192
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;

    .line 193
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V
    .registers 7
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;-><init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V

    .line 210
    new-instance v0, Lcom/google/wireless/gdata/contacts/client/ContactsClient;

    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient;

    const-string v2, "Android-GData-Contacts/1.1"

    invoke-direct {v1, p1, v2}, Lcom/google/android/gdata/client/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;

    new-instance v3, Lcom/google/android/gdata/client/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/gdata/client/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/contacts/client/ContactsClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata/contacts/client/ContactsClient;

    .line 213
    return-void
.end method

.method private static addContactMethodsToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .registers 10
    .parameter "cr"
    .parameter "personId"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 684
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 686
    .local p2, c:Landroid/database/Cursor;
    const-string p0, "kind"

    .end local p0
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 687
    .local v1, kindIndex:I
    const-string p0, "data"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 688
    .local v0, dataIndex:I
    const-string p0, "aux_data"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 690
    .local p1, auxDataIndex:I
    :goto_2f
    :try_start_2f
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_d0

    .line 691
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 692
    .local p0, kind:I
    packed-switch p0, :pswitch_data_d6

    goto :goto_2f

    .line 721
    :pswitch_3d
    new-instance p0, Lcom/google/wireless/gdata/contacts/data/EmailAddress;

    .end local p0           #kind:I
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;-><init>()V

    .line 722
    .local p0, address:Lcom/google/wireless/gdata/contacts/data/EmailAddress;
    sget-object v2, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;

    invoke-static {p0, p2, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Landroid/database/Cursor;Ljava/util/HashMap;)V

    .line 723
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p3, p0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata/contacts/data/EmailAddress;)V
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_52

    goto :goto_2f

    .line 730
    .end local p0           #address:Lcom/google/wireless/gdata/contacts/data/EmailAddress;
    .end local p1           #auxDataIndex:I
    .end local p3
    :catchall_52
    move-exception p0

    if-eqz p2, :cond_58

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_58
    throw p0

    .line 694
    .local p0, kind:I
    .restart local p1       #auxDataIndex:I
    .restart local p3
    :pswitch_59
    :try_start_59
    new-instance p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;

    .end local p0           #kind:I
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/ImAddress;-><init>()V

    .line 695
    .local p0, address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    sget-object v2, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;

    invoke-static {p0, p2, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Landroid/database/Cursor;Ljava/util/HashMap;)V

    .line 696
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 697
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 698
    .local v2, object:Ljava/lang/Object;
    if-nez v2, :cond_7d

    .line 699
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 710
    .end local v2           #object:Ljava/lang/Object;
    :goto_79
    invoke-virtual {p3, p0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata/contacts/data/ImAddress;)V

    goto :goto_2f

    .line 700
    .restart local v2       #object:Ljava/lang/Object;
    :cond_7d
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_93

    .line 701
    sget-object v3, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;

    check-cast v2, Ljava/lang/Integer;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolPredefined(B)V

    goto :goto_79

    .line 704
    .restart local v2       #object:Ljava/lang/Object;
    :cond_93
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_b0

    .line 705
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #auxDataIndex:I
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected an String, "

    .end local p3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 707
    .restart local p0       #address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    .restart local p1       #auxDataIndex:I
    .restart local p3
    :cond_b0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 708
    check-cast v2, Ljava/lang/String;

    .end local v2           #object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_79

    .line 714
    .local p0, kind:I
    :pswitch_ba
    new-instance p0, Lcom/google/wireless/gdata/contacts/data/PostalAddress;

    .end local p0           #kind:I
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;-><init>()V

    .line 715
    .local p0, address:Lcom/google/wireless/gdata/contacts/data/PostalAddress;
    sget-object v2, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;

    invoke-static {p0, p2, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Landroid/database/Cursor;Ljava/util/HashMap;)V

    .line 716
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->setValue(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p3, p0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata/contacts/data/PostalAddress;)V
    :try_end_ce
    .catchall {:try_start_59 .. :try_end_ce} :catchall_52

    goto/16 :goto_2f

    .line 730
    .end local p0           #address:Lcom/google/wireless/gdata/contacts/data/PostalAddress;
    :cond_d0
    if-eqz p2, :cond_d5

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 732
    :cond_d5
    return-void

    .line 692
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_ba
        :pswitch_59
    .end packed-switch
.end method

.method public static addContactsFeedsToSync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 11
    .parameter "cr"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, feedsToSync:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 286
    invoke-static {p0, p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getShouldSyncEverything(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    .line 287
    .local v7, shouldSyncEverything:Z
    if-eqz v7, :cond_10

    .line 288
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContactsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 301
    :goto_f
    return-void

    .line 292
    :cond_10
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_sync_id"

    aput-object v0, v2, v5

    const-string v3, "_sync_account=? AND should_sync>0"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    .local v6, cursor:Landroid/database/Cursor;
    :goto_24
    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 296
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContactsFeedForGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_37

    goto :goto_24

    .line 299
    :catchall_37
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_f
.end method

.method private static addExtensionsToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .registers 10
    .parameter "cr"
    .parameter "personId"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 794
    sget-object v1, Landroid/provider/Contacts$Extensions;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 796
    .local p0, c:Landroid/database/Cursor;
    :try_start_1d
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 797
    .local p2, jsonObject:Lorg/json/JSONObject;
    const-string p1, "name"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 798
    .local p1, nameIndex:I
    const-string v0, "value"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 799
    .local v0, valueIndex:I
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_55

    move-result v1

    if-nez v1, :cond_3a

    .line 817
    if-eqz p0, :cond_39

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 819
    .end local v0           #valueIndex:I
    .end local p1           #nameIndex:I
    .end local p2           #jsonObject:Lorg/json/JSONObject;
    :cond_39
    :goto_39
    return-void

    .line 800
    .restart local v0       #valueIndex:I
    .restart local p1       #nameIndex:I
    .restart local p2       #jsonObject:Lorg/json/JSONObject;
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_55

    move-result v1

    if-eqz v1, :cond_5c

    .line 802
    :try_start_40
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_55
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_4b} :catch_4c

    goto :goto_3a

    .line 803
    :catch_4c
    move-exception p1

    .line 804
    .local p1, e:Lorg/json/JSONException;
    :try_start_4d
    new-instance p2, Lcom/google/wireless/gdata/parser/ParseException;

    .end local p2           #jsonObject:Lorg/json/JSONObject;
    const-string p3, "bad key or value"

    .end local p3
    invoke-direct {p2, p3, p1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_55

    .line 817
    .end local v0           #valueIndex:I
    .end local p1           #e:Lorg/json/JSONException;
    :catchall_55
    move-exception p1

    if-eqz p0, :cond_5b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5b
    throw p1

    .line 807
    .restart local v0       #valueIndex:I
    .local p1, nameIndex:I
    .restart local p2       #jsonObject:Lorg/json/JSONObject;
    .restart local p3
    :cond_5c
    :try_start_5c
    new-instance p1, Lcom/google/wireless/gdata/data/ExtendedProperty;

    .end local p1           #nameIndex:I
    invoke-direct {p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;-><init>()V

    .line 808
    .local p1, extendedProperty:Lcom/google/wireless/gdata/data/ExtendedProperty;
    const-string v0, "android"

    .end local v0           #valueIndex:I
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 810
    .local p2, jsonString:Ljava/lang/String;
    if-nez p2, :cond_89

    .line 811
    new-instance p1, Lcom/google/wireless/gdata/parser/ParseException;

    .end local p1           #extendedProperty:Lcom/google/wireless/gdata/data/ExtendedProperty;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #jsonString:Ljava/lang/String;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unable to convert cursor into a JSON string, "

    .end local p3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 814
    .restart local p1       #extendedProperty:Lcom/google/wireless/gdata/data/ExtendedProperty;
    .restart local p2       #jsonString:Ljava/lang/String;
    .restart local p3
    :cond_89
    invoke-virtual {p1, p2}, Lcom/google/wireless/gdata/data/ExtendedProperty;->setXmlBlob(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p3, p1}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata/data/ExtendedProperty;)V
    :try_end_8f
    .catchall {:try_start_5c .. :try_end_8f} :catchall_55

    .line 817
    if-eqz p0, :cond_39

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_39
.end method

.method private static addGroupMembershipToContactEntry(Ljava/lang/String;Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .registers 14
    .parameter "account"
    .parameter "cr"
    .parameter "personId"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 755
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->RAW_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 758
    .local p2, c:Landroid/database/Cursor;
    :try_start_1d
    const-string p3, "group_sync_id"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 759
    .local v8, serverIdIndex:I
    const-string p3, "group_id"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 760
    .local v6, localIdIndex:I
    :goto_29
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_9f

    .line 761
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 762
    .local v7, serverId:Ljava/lang/String;
    if-nez v7, :cond_a7

    .line 763
    sget-object p3, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 765
    .local v1, groupUri:Landroid/net/Uri;
    const/4 p3, 0x1

    new-array v2, p3, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "_sync_id"

    aput-object v0, v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4e
    .catchall {:try_start_1d .. :try_end_4e} :catchall_68

    move-result-object p3

    .line 768
    .local p3, groupCursor:Landroid/database/Cursor;
    :try_start_4f
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 769
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_6f

    move-result-object v0

    .line 772
    .end local v7           #serverId:Ljava/lang/String;
    .local v0, serverId:Ljava/lang/String;
    :goto_5a
    :try_start_5a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    move-object p3, v0

    .line 775
    .end local v0           #serverId:Ljava/lang/String;
    .end local v1           #groupUri:Landroid/net/Uri;
    .local p3, serverId:Ljava/lang/String;
    :goto_5e
    if-nez p3, :cond_74

    .line 778
    new-instance p0, Lcom/google/wireless/gdata/parser/ParseException;

    .end local p0
    const-string p1, "unable to construct GroupMembershipInfo since the group _sync_id isn\'t known yet, will retry later"

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_68

    .line 788
    .end local v6           #localIdIndex:I
    .end local v8           #serverIdIndex:I
    .end local p3           #serverId:Ljava/lang/String;
    :catchall_68
    move-exception p0

    if-eqz p2, :cond_6e

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw p0

    .line 772
    .restart local v1       #groupUri:Landroid/net/Uri;
    .restart local v6       #localIdIndex:I
    .restart local v7       #serverId:Ljava/lang/String;
    .restart local v8       #serverIdIndex:I
    .restart local p0
    .restart local p1
    .local p3, groupCursor:Landroid/database/Cursor;
    :catchall_6f
    move-exception p0

    .end local p0
    :try_start_70
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw p0

    .line 781
    .end local v1           #groupUri:Landroid/net/Uri;
    .end local v7           #serverId:Ljava/lang/String;
    .restart local p0
    .local p3, serverId:Ljava/lang/String;
    :cond_74
    new-instance v0, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;

    invoke-direct {v0}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;-><init>()V

    .line 782
    .local v0, groupMembershipInfo:Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getCanonicalGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #serverId:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 783
    .local p3, groupId:Ljava/lang/String;
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 784
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->setDeleted(Z)V

    .line 785
    .end local p3           #groupId:Ljava/lang/String;
    invoke-virtual {p4, v0}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;)V
    :try_end_9e
    .catchall {:try_start_70 .. :try_end_9e} :catchall_68

    goto :goto_29

    .line 788
    .end local v0           #groupMembershipInfo:Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;
    :cond_9f
    if-eqz p2, :cond_a4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_a4
    return-void

    .restart local v1       #groupUri:Landroid/net/Uri;
    .restart local v7       #serverId:Ljava/lang/String;
    .local p3, groupCursor:Landroid/database/Cursor;
    :cond_a5
    move-object v0, v7

    .end local v7           #serverId:Ljava/lang/String;
    .local v0, serverId:Ljava/lang/String;
    goto :goto_5a

    .end local v0           #serverId:Ljava/lang/String;
    .end local v1           #groupUri:Landroid/net/Uri;
    .end local p3           #groupCursor:Landroid/database/Cursor;
    .restart local v7       #serverId:Ljava/lang/String;
    :cond_a7
    move-object p3, v7

    .end local v7           #serverId:Ljava/lang/String;
    .local p3, serverId:Ljava/lang/String;
    goto :goto_5e
.end method

.method private static addOrganizationsToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .registers 14
    .parameter "cr"
    .parameter "personId"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 736
    sget-object v1, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 739
    .local v6, c:Landroid/database/Cursor;
    :try_start_1d
    const-string v0, "company"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 740
    .local v7, companyIndex:I
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 741
    .local v9, titleIndex:I
    :goto_29
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 742
    new-instance v8, Lcom/google/wireless/gdata/contacts/data/Organization;

    invoke-direct {v8}, Lcom/google/wireless/gdata/contacts/data/Organization;-><init>()V

    .line 743
    .local v8, organization:Lcom/google/wireless/gdata/contacts/data/Organization;
    sget-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;

    invoke-static {v8, v6, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Landroid/database/Cursor;Ljava/util/HashMap;)V

    .line 744
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/wireless/gdata/contacts/data/Organization;->setName(Ljava/lang/String;)V

    .line 745
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/wireless/gdata/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p3, v8}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata/contacts/data/Organization;)V
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_4b

    goto :goto_29

    .line 749
    .end local v7           #companyIndex:I
    .end local v8           #organization:Lcom/google/wireless/gdata/contacts/data/Organization;
    .end local v9           #titleIndex:I
    :catchall_4b
    move-exception v0

    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0

    .restart local v7       #companyIndex:I
    .restart local v9       #titleIndex:I
    :cond_52
    if-eqz v6, :cond_57

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 751
    :cond_57
    return-void
.end method

.method private static addPhonesToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .registers 13
    .parameter "cr"
    .parameter "personId"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 667
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 668
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 670
    .local v7, numberIndex:I
    :goto_23
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 671
    new-instance v8, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;

    invoke-direct {v8}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;-><init>()V

    .line 672
    .local v8, phoneNumber:Lcom/google/wireless/gdata/contacts/data/PhoneNumber;
    sget-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;

    invoke-static {v8, v6, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Landroid/database/Cursor;Ljava/util/HashMap;)V

    .line 673
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p3, v8}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata/contacts/data/PhoneNumber;)V
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3e

    goto :goto_23

    .line 677
    .end local v8           #phoneNumber:Lcom/google/wireless/gdata/contacts/data/PhoneNumber;
    :catchall_3e
    move-exception v0

    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0

    :cond_45
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_4a
    return-void
.end method

.method private static contactsElementToValues(Landroid/content/ContentValues;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/HashMap;)V
    .registers 5
    .parameter "values"
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Lcom/google/wireless/gdata/contacts/data/ContactsElement;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 834
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Integer;>;"
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getType()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    const-string v0, "label"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "isprimary"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    return-void

    .line 836
    :cond_2d
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private static cursorToBaseEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 9
    .parameter "entry"
    .parameter "account"
    .parameter "c"

    .prologue
    const-string v5, "/"

    .line 647
    instance-of v3, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-eqz v3, :cond_59

    .line 648
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContactsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, feedUrl:Ljava/lang/String;
    :goto_a
    const-string v3, "_sync_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, syncId:Ljava/lang/String;
    if-eqz v1, :cond_58

    .line 659
    const-string v3, "_sync_version"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, syncVersion:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    .line 663
    .end local v2           #syncVersion:Ljava/lang/String;
    :cond_58
    return-void

    .line 649
    .end local v0           #feedUrl:Ljava/lang/String;
    .end local v1           #syncId:Ljava/lang/String;
    :cond_59
    instance-of v3, p0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-eqz v3, :cond_62

    .line 650
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #feedUrl:Ljava/lang/String;
    goto :goto_a

    .line 651
    .end local v0           #feedUrl:Ljava/lang/String;
    :cond_62
    instance-of v3, p0, Lcom/google/wireless/gdata/data/MediaEntry;

    if-eqz v3, :cond_6b

    .line 652
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getPhotosFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #feedUrl:Ljava/lang/String;
    goto :goto_a

    .line 654
    .end local v0           #feedUrl:Ljava/lang/String;
    :cond_6b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad entry type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static cursorToContactEntry(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/google/wireless/gdata/contacts/data/ContactEntry;)V
    .registers 7
    .parameter "account"
    .parameter "cr"
    .parameter "c"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 617
    const-string v2, "name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->setTitle(Ljava/lang/String;)V

    .line 618
    const-string v2, "notes"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->setContent(Ljava/lang/String;)V

    .line 619
    const-string v2, "phonetic_name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->setYomiName(Ljava/lang/String;)V

    .line 621
    const-string v2, "_sync_local_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 622
    .local v0, syncLocalId:J
    invoke-static {p1, v0, v1, p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addContactMethodsToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 623
    invoke-static {p1, v0, v1, p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addPhonesToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 624
    invoke-static {p1, v0, v1, p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addOrganizationsToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 625
    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addGroupMembershipToContactEntry(Ljava/lang/String;Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 626
    invoke-static {p1, v0, v1, p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addExtensionsToContactEntry(Landroid/content/ContentResolver;JLcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 627
    return-void
.end method

.method private static cursorToContactsElement(Lcom/google/wireless/gdata/contacts/data/ContactsElement;Landroid/database/Cursor;Ljava/util/HashMap;)V
    .registers 7
    .parameter "element"
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/gdata/contacts/data/ContactsElement;",
            "Landroid/database/Cursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Byte;>;"
    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 824
    .local v2, typeIndex:I
    const-string v3, "label"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 825
    .local v1, labelIndex:I
    const-string v3, "isprimary"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 827
    .local v0, isPrimaryIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->setLabel(Ljava/lang/String;)V

    .line 828
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->setType(B)V

    .line 829
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    :goto_35
    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->setIsPrimary(Z)V

    .line 830
    return-void

    .line 829
    :cond_39
    const/4 v3, 0x0

    goto :goto_35
.end method

.method protected static cursorToEntryImpl(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cr"
    .parameter "c"
    .parameter "entry"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-static {p2, p3, p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToBaseEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 585
    const/4 v1, 0x0

    .line 586
    .local v1, createUrl:Ljava/lang/String;
    instance-of v2, p2, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-eqz v2, :cond_1a

    .line 587
    move-object v0, p2

    check-cast v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    move-object v2, v0

    invoke-static {p3, p0, p1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToContactEntry(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/google/wireless/gdata/contacts/data/ContactEntry;)V

    .line 588
    invoke-virtual {p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    .line 589
    invoke-static {p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContactsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    :cond_19
    :goto_19
    return-object v1

    .line 591
    :cond_1a
    instance-of v2, p2, Lcom/google/wireless/gdata/data/MediaEntry;

    if-eqz v2, :cond_29

    .line 592
    invoke-virtual {p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    .line 593
    invoke-static {p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getPhotosFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 596
    :cond_29
    move-object v0, p2

    check-cast v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    move-object v2, v0

    invoke-static {p1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToGroupEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/contacts/data/GroupEntry;)V

    .line 597
    invoke-virtual {p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    .line 598
    invoke-static {p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method

.method private static cursorToGroupEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/contacts/data/GroupEntry;)V
    .registers 4
    .parameter "c"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 606
    const-string v0, "system_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 607
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "unable to modify system groups"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_18
    const-string v0, "name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->setTitle(Ljava/lang/String;)V

    .line 610
    const-string v0, "notes"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->setContent(Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->setSystemGroup(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method protected static deletedCursorToEntryImpl(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)V
    .registers 3
    .parameter "c"
    .parameter "entry"
    .parameter "account"

    .prologue
    .line 642
    invoke-static {p1, p2, p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToBaseEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 643
    return-void
.end method

.method public static getCanonicalGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "account"

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/m8/feeds/groups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/base"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "account"

    .prologue
    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/m8/feeds/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base2_property-android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, url:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getContactsFeedForGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "account"
    .parameter "groupSyncId"

    .prologue
    .line 1152
    invoke-static {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getCanonicalGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, groupId:Ljava/lang/String;
    :try_start_4
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_30

    move-result-object v1

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContactsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?group="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1155
    :catch_30
    move-exception v2

    move-object v0, v2

    .line 1156
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to url encode group: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static getCursorForDeletedTableImpl(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 8
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    const/4 v2, 0x0

    .line 567
    const-class v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-ne p1, v0, :cond_10

    .line 568
    sget-object v1, Landroid/provider/Contacts$People;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 571
    :goto_f
    return-object v0

    .line 570
    :cond_10
    const-class v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-ne p1, v0, :cond_1f

    .line 571
    sget-object v1, Landroid/provider/Contacts$Groups;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_f

    .line 573
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getCursorForTableImpl(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 8
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    const/4 v2, 0x0

    .line 552
    const-class v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-ne p1, v0, :cond_10

    .line 553
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 556
    :goto_f
    return-object v0

    .line 555
    :cond_10
    const-class v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-ne p1, v0, :cond_1f

    .line 556
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_f

    .line 558
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getFeedReturnsPartialDiffs()Z
    .registers 1

    .prologue
    .line 1195
    const/4 v0, 0x1

    return v0
.end method

.method public static getGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "account"

    .prologue
    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/m8/feeds/groups/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base2_property-android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, url:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhotosFeedForAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "account"

    .prologue
    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/m8/feeds/photos/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, url:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getServerPhotos(Landroid/content/SyncContext;Ljava/lang/String;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    .registers 34
    .parameter "context"
    .parameter "feedUrl"
    .parameter "maxDownloads"
    .parameter "syncData"
    .parameter "syncResult"

    .prologue
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 311
    .local v5, cr:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_sync_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "_sync_version"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "person"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "download_required"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "_id"

    aput-object v9, v7, v8

    const-string v8, "_sync_account=? AND download_required != 0"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 318
    .local v14, cursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 319
    .local v18, numFetched:I
    :goto_39
    :try_start_39
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 320
    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_6d

    .line 374
    :cond_45
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    move/from16 v0, v18

    move v1, v7

    if-ge v0, v1, :cond_1ed

    const/4 v7, 0x1

    move v11, v7

    .line 375
    .local v11, hasMoreToSync:Z
    :goto_50
    new-instance v6, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    const-wide/16 v7, 0x0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v9, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;-><init>(JJZLjava/lang/String;I)V

    .line 379
    .local v6, feedData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_1e8

    .line 381
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 383
    .end local v6           #feedData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v11           #hasMoreToSync:Z
    :goto_6c
    return-void

    .line 323
    :cond_6d
    const/4 v7, 0x0

    :try_start_6e
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 324
    .local v23, photoSyncId:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 325
    .local v26, photoVersion:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 326
    .local v19, person:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 327
    .local v25, photoUrl:Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9d
    .catchall {:try_start_6e .. :try_end_9d} :catchall_1e8

    move-result-wide v21

    .line 330
    .local v21, photoId:J
    :try_start_9e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downloading photo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 331
    add-int/lit8 v18, v18, 0x1

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata/contacts/client/ContactsClient;

    move-object v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAuthToken()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/gdata/contacts/client/ContactsClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 335
    .local v17, inputStream:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-object/from16 v3, v17

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsSyncAdapter;->savePhoto(JLjava/io/InputStream;Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v8, v7, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numUpdates:J
    :try_end_f0
    .catchall {:try_start_9e .. :try_end_f0} :catchall_1e8
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_f0} :catch_f2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_9e .. :try_end_f0} :catch_129

    goto/16 :goto_39

    .line 337
    .end local v17           #inputStream:Ljava/io/InputStream;
    :catch_f2
    move-exception v7

    move-object v15, v7

    .line 338
    .local v15, e:Ljava/io/IOException;
    :try_start_f4
    const-string v7, "Sync"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 339
    const-string v7, "Sync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error downloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_118
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_124
    .catchall {:try_start_f4 .. :try_end_124} :catchall_1e8

    .line 381
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6c

    .line 343
    .end local v15           #e:Ljava/io/IOException;
    :catch_129
    move-exception v7

    move-object v15, v7

    .line 344
    .local v15, e:Lcom/google/wireless/gdata/client/HttpException;
    :try_start_12b
    invoke-virtual {v15}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v7

    packed-switch v7, :pswitch_data_1f2

    .line 367
    :pswitch_132
    const-string v7, "Sync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error downloading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_159
    .catchall {:try_start_12b .. :try_end_159} :catchall_1e8

    .line 381
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6c

    .line 347
    :pswitch_15e
    :try_start_15e
    const-string v7, "Sync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not authorized to download "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v7, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_185
    .catchall {:try_start_15e .. :try_end_185} :catchall_1e8

    .line 381
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6c

    .line 353
    :pswitch_18a
    :try_start_18a
    invoke-virtual {v15}, Lcom/google/wireless/gdata/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, exceptionMessage:Ljava/lang/String;
    const-string v7, "Sync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to download photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v27, values:Landroid/content/ContentValues;
    const-string v7, "sync_error"

    move-object/from16 v0, v27

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v7

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "photo"

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 363
    .local v24, photoUri:Landroid/net/Uri;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e6
    .catchall {:try_start_18a .. :try_end_1e6} :catchall_1e8

    goto/16 :goto_39

    .line 381
    .end local v15           #e:Lcom/google/wireless/gdata/client/HttpException;
    .end local v16           #exceptionMessage:Ljava/lang/String;
    .end local v19           #person:J
    .end local v21           #photoId:J
    .end local v23           #photoSyncId:Ljava/lang/String;
    .end local v24           #photoUri:Landroid/net/Uri;
    .end local v25           #photoUrl:Ljava/lang/String;
    .end local v26           #photoVersion:Ljava/lang/String;
    .end local v27           #values:Landroid/content/ContentValues;
    :catchall_1e8
    move-exception v7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v7

    .line 374
    :cond_1ed
    const/4 v7, 0x0

    move v11, v7

    goto/16 :goto_50

    .line 344
    nop

    :pswitch_data_1f2
    .packed-switch 0x191
        :pswitch_15e
        :pswitch_132
        :pswitch_18a
        :pswitch_18a
    .end packed-switch
.end method

.method private static getShouldSyncEverything(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 4
    .parameter "cr"
    .parameter "account"

    .prologue
    .line 304
    const-string v1, "syncEverything"

    invoke-static {p0, p1, v1}, Landroid/provider/Contacts$Settings;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "url"

    .prologue
    .line 1074
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TA;TB;>;)",
            "Ljava/util/HashMap",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, originalMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TA;TB;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v2, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TB;TA;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 199
    .local v3, originalValue:Ljava/lang/Object;,"TB;"
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 200
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    :cond_42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 205
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    .end local v3           #originalValue:Ljava/lang/Object;,"TB;"
    :cond_4a
    return-object v2
.end method

.method protected static updateProviderImpl(Ljava/lang/String;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;)V
    .registers 10
    .parameter "account"
    .parameter "syncLocalId"
    .parameter "entry"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, deletedValues:Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 868
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #deletedValues:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 869
    .restart local v0       #deletedValues:Landroid/content/ContentValues;
    const-string v3, "_sync_local_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 870
    invoke-virtual {p2}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, editUri:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 873
    const-string v3, "_sync_id"

    invoke-static {v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 876
    const-string v3, "_sync_version"

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_37
    const-string v3, "_sync_account"

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .end local v1           #editUri:Ljava/lang/String;
    .end local v2           #id:Ljava/lang/String;
    :cond_3c
    instance-of v3, p2, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-eqz v3, :cond_4e

    .line 882
    if-eqz v0, :cond_48

    .line 883
    sget-object v3, Landroid/provider/Contacts$People;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 895
    .end local p2
    :goto_47
    return-void

    .line 886
    .restart local p2
    :cond_48
    check-cast p2, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    .end local p2
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->updateProviderWithContactEntry(Ljava/lang/String;Ljava/lang/Long;Lcom/google/wireless/gdata/contacts/data/ContactEntry;Landroid/content/ContentProvider;)V

    goto :goto_47

    .line 889
    .restart local p2
    :cond_4e
    instance-of v3, p2, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    if-eqz v3, :cond_60

    .line 890
    if-eqz v0, :cond_5a

    .line 891
    sget-object v3, Landroid/provider/Contacts$Groups;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_47

    .line 894
    :cond_5a
    check-cast p2, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    .end local p2
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->updateProviderWithGroupEntry(Ljava/lang/String;Ljava/lang/Long;Lcom/google/wireless/gdata/contacts/data/GroupEntry;Landroid/content/ContentProvider;)V

    goto :goto_47

    .line 897
    .restart local p2
    :cond_60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown entry type, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static updateProviderWithContactEntry(Ljava/lang/String;Ljava/lang/Long;Lcom/google/wireless/gdata/contacts/data/ContactEntry;Landroid/content/ContentProvider;)V
    .registers 12
    .parameter "account"
    .parameter "syncLocalId"
    .parameter "entry"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, notes:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getYomiName()Ljava/lang/String;

    move-result-object v5

    .line 905
    .local v5, yomiName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, personSyncId:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getEditUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, personSyncVersion:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 910
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v0, "notes"

    .end local v0           #name:Ljava/lang/String;
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v0, "phonetic_name"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v0, "_sync_account"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v0, "_sync_id"

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v0, "_sync_dirty"

    const-string v1, "0"

    .end local v1           #notes:Ljava/lang/String;
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v0, "_sync_local_id"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 917
    const-string v0, "_sync_time"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v0, "_sync_version"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 922
    .local v1, personUri:Landroid/net/Uri;
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_101

    const/4 v0, 0x1

    .line 923
    .local v0, photoExistsOnServer:Z
    :goto_61
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getLinkEditPhotoHref()Ljava/lang/String;

    move-result-object v3

    .end local v3           #personSyncVersion:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, photoVersion:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 925
    const-string v5, "person"

    .end local v5           #yomiName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 926
    const-string v5, "exists_on_server"

    if-eqz v0, :cond_104

    const/4 v0, 0x1

    .end local v0           #photoExistsOnServer:Z
    :goto_7e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    const-string v0, "_sync_account"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v0, "_sync_id"

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v0, "_sync_dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #personSyncId:Ljava/lang/String;
    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    const-string v0, "_sync_local_id"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    const-string p1, "_sync_time"

    .end local p1
    invoke-virtual {v4, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string p1, "_sync_version"

    invoke-virtual {v4, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    sget-object p1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_c8

    .line 934
    const-string p1, "Sync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error inserting photo row, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_c8
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_107

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 939
    .local p1, object:Ljava/lang/Object;
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/EmailAddress;

    .line 940
    .local p1, email:Lcom/google/wireless/gdata/contacts/data/EmailAddress;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 941
    sget-object v2, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;

    invoke-static {v4, p1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->contactsElementToValues(Landroid/content/ContentValues;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/HashMap;)V

    .line 942
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object p1

    .end local p1           #email:Lcom/google/wireless/gdata/contacts/data/EmailAddress;
    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string p1, "kind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    const-string p1, "contact_methods"

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 945
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_d0

    .line 922
    .end local v0           #i$:Ljava/util/Iterator;
    .restart local v2       #personSyncId:Ljava/lang/String;
    .local v3, personSyncVersion:Ljava/lang/String;
    .restart local v5       #yomiName:Ljava/lang/String;
    .local p1, syncLocalId:Ljava/lang/Long;
    :cond_101
    const/4 v0, 0x0

    goto/16 :goto_61

    .line 926
    .end local v5           #yomiName:Ljava/lang/String;
    .local v0, photoExistsOnServer:Z
    .local v3, photoVersion:Ljava/lang/String;
    :cond_104
    const/4 v0, 0x0

    goto/16 :goto_7e

    .line 949
    .end local v2           #personSyncId:Ljava/lang/String;
    .end local p1           #syncLocalId:Ljava/lang/Long;
    .local v0, i$:Ljava/util/Iterator;
    :cond_107
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_140

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 950
    .local p1, object:Ljava/lang/Object;
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/PostalAddress;

    .line 951
    .local p1, address:Lcom/google/wireless/gdata/contacts/data/PostalAddress;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 952
    sget-object v2, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;

    invoke-static {v4, p1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->contactsElementToValues(Landroid/content/ContentValues;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/HashMap;)V

    .line 953
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object p1

    .end local p1           #address:Lcom/google/wireless/gdata/contacts/data/PostalAddress;
    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string p1, "kind"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    const-string p1, "contact_methods"

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 956
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_10f

    .line 960
    .end local p1           #uri:Landroid/net/Uri;
    :cond_140
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v3           #photoVersion:Ljava/lang/String;
    :goto_148
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 961
    .local p1, object:Ljava/lang/Object;
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/ImAddress;

    .line 962
    .local p1, address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 963
    sget-object v2, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;

    invoke-static {v4, p1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->contactsElementToValues(Landroid/content/ContentValues;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/HashMap;)V

    .line 964
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v2, "kind"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 966
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v2

    .line 967
    .local v2, protocolType:B
    const/16 v3, 0xa

    if-ne v2, v3, :cond_181

    .line 981
    .end local v2           #protocolType:B
    .end local p1           #address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    :goto_177
    const-string p1, "contact_methods"

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 982
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_148

    .line 969
    .restart local v2       #protocolType:B
    .local p1, address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    :cond_181
    const/4 v3, 0x1

    if-ne v2, v3, :cond_192

    .line 970
    const-string v2, "aux_data"

    .end local v2           #protocolType:B
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->getProtocolCustom()Ljava/lang/String;

    move-result-object p1

    .end local p1           #address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    invoke-static {p1}, Landroid/provider/Contacts$ContactMethods;->encodeCustomImProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_177

    .line 973
    .restart local v2       #protocolType:B
    .restart local p1       #address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    :cond_192
    sget-object p1, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;

    .end local p1           #address:Lcom/google/wireless/gdata/contacts/data/ImAddress;
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 975
    .local p1, providerProtocolType:Ljava/lang/Integer;
    if-nez p1, :cond_1b9

    .line 976
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #providerProtocolType:Ljava/lang/Integer;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown protocol type, "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 978
    .restart local p0
    .restart local p1       #providerProtocolType:Ljava/lang/Integer;
    .restart local p2
    :cond_1b9
    const-string v2, "aux_data"

    .end local v2           #protocolType:B
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1           #providerProtocolType:Ljava/lang/Integer;
    invoke-static {p1}, Landroid/provider/Contacts$ContactMethods;->encodePredefinedImProtocol(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_177

    .line 986
    :cond_1c7
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .end local v0           #i$:Ljava/util/Iterator;
    .local p1, i$:Ljava/util/Iterator;
    :goto_1cf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_208

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 987
    .local v0, object:Ljava/lang/Object;
    check-cast v0, Lcom/google/wireless/gdata/contacts/data/Organization;

    .line 988
    .local v0, organization:Lcom/google/wireless/gdata/contacts/data/Organization;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 989
    sget-object v2, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;

    invoke-static {v4, v0, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->contactsElementToValues(Landroid/content/ContentValues;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/HashMap;)V

    .line 990
    const-string v2, "company"

    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v2, "title"

    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/Organization;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v2, "company"

    invoke-virtual {v0}, Lcom/google/wireless/gdata/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    .end local v0           #organization:Lcom/google/wireless/gdata/contacts/data/Organization;
    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v0, "organizations"

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 994
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p3, v0, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1cf

    .line 998
    .end local v0           #uri:Landroid/net/Uri;
    :cond_208
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object p1

    .end local p1           #i$:Ljava/util/Iterator;
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_210
    :goto_210
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_241

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 999
    .local p1, object:Ljava/lang/Object;
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;

    .line 1000
    .local p1, groupMembershipInfo:Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;
    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_210

    .line 1003
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1004
    const-string v2, "group_sync_account"

    invoke-virtual {v4, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v2, "group_sync_id"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object p1

    .end local p1           #groupMembershipInfo:Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string p1, "groupmembership"

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1008
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_210

    .line 1012
    .end local p1           #uri:Landroid/net/Uri;
    :cond_241
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .end local v0           #i$:Ljava/util/Iterator;
    .local p0, i$:Ljava/util/Iterator;
    :goto_249
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_279

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1013
    .local p1, object:Ljava/lang/Object;
    check-cast p1, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;

    .line 1014
    .local p1, phone:Lcom/google/wireless/gdata/contacts/data/PhoneNumber;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1015
    sget-object v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;

    invoke-static {v4, p1, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->contactsElementToValues(Landroid/content/ContentValues;Lcom/google/wireless/gdata/contacts/data/ContactsElement;Ljava/util/HashMap;)V

    .line 1016
    const-string v0, "number"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v0, "label"

    invoke-virtual {p1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->getLabel()Ljava/lang/String;

    move-result-object p1

    .end local p1           #phone:Lcom/google/wireless/gdata/contacts/data/PhoneNumber;
    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string p1, "phones"

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1019
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_249

    .line 1023
    .end local p1           #uri:Landroid/net/Uri;
    :cond_279
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object p0

    .end local p0           #i$:Ljava/util/Iterator;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :cond_281
    :goto_281
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_312

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 1024
    .local p0, object:Ljava/lang/Object;
    check-cast p0, Lcom/google/wireless/gdata/data/ExtendedProperty;

    .line 1025
    .local p0, extendedProperty:Lcom/google/wireless/gdata/data/ExtendedProperty;
    const-string v0, "android"

    invoke-virtual {p0}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 1028
    const/4 v0, 0x0

    .line 1030
    .local v0, jsonObject:Lorg/json/JSONObject;
    :try_start_29a
    new-instance v0, Lorg/json/JSONObject;

    .end local v0           #jsonObject:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/google/wireless/gdata/data/ExtendedProperty;->getXmlBlob()Ljava/lang/String;

    move-result-object p0

    .end local p0           #extendedProperty:Lcom/google/wireless/gdata/data/ExtendedProperty;
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a3
    .catch Lorg/json/JSONException; {:try_start_29a .. :try_end_2a3} :catch_2f3

    .line 1036
    .restart local v0       #jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 1037
    .end local p1           #i$:Ljava/util/Iterator;
    .end local p2
    .local p0, jsonIterator:Ljava/util/Iterator;
    :cond_2a7
    :goto_2a7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_312

    .line 1038
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1039
    .local p1, key:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1040
    const-string p2, "name"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :try_start_2bb
    const-string p2, "value"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #key:Ljava/lang/String;
    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c4
    .catch Lorg/json/JSONException; {:try_start_2bb .. :try_end_2c4} :catch_313

    .line 1046
    :goto_2c4
    const-string p1, "extensions"

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1047
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_2a7

    .line 1048
    const-string p2, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting extension into provider, uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #uri:Landroid/net/Uri;
    const-string v2, ", values "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a7

    .line 1031
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    .end local p0           #jsonIterator:Ljava/util/Iterator;
    .local p1, i$:Ljava/util/Iterator;
    .restart local p2
    :catch_2f3
    move-exception p0

    .line 1032
    .local p0, e:Lorg/json/JSONException;
    const-string p0, "Sync"

    .end local p0           #e:Lorg/json/JSONException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing the android extended property, dropping, entry is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_281

    .line 1054
    .end local p1           #i$:Ljava/util/Iterator;
    .end local p2
    :cond_312
    return-void

    .line 1043
    .restart local v0       #jsonObject:Lorg/json/JSONObject;
    .local p0, jsonIterator:Ljava/util/Iterator;
    :catch_313
    move-exception p1

    goto :goto_2c4
.end method

.method protected static updateProviderWithGroupEntry(Ljava/lang/String;Ljava/lang/Long;Lcom/google/wireless/gdata/contacts/data/GroupEntry;Landroid/content/ContentProvider;)V
    .registers 9
    .parameter "account"
    .parameter "syncLocalId"
    .parameter "entry"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 1058
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1059
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v3, "notes"

    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v3, "system_id"

    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v3, "_sync_account"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v3, "_sync_id"

    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v3, "_sync_dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    const-string v3, "_sync_local_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1066
    invoke-virtual {p2}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, editUri:Ljava/lang/String;
    if-nez v0, :cond_59

    const/4 v3, 0x0

    move-object v1, v3

    .line 1068
    .local v1, syncVersion:Ljava/lang/String;
    :goto_49
    const-string v3, "_sync_time"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v3, "_sync_version"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    sget-object v3, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1071
    return-void

    .line 1067
    .end local v1           #syncVersion:Ljava/lang/String;
    :cond_59
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_49
.end method

.method public static updateSubscribedFeeds(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 15
    .parameter "cr"
    .parameter "account"

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const-string v12, "contacts"

    const-string v6, "Sync"

    .line 1251
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 1252
    .local v4, feedsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-static {p0, p1, v4}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addContactsFeedsToSync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1255
    sget-object v6, Lcom/android/providers/contacts/ContactsSyncAdapter;->sSubscriptionProjection:[Ljava/lang/String;

    const-string v7, "authority=? AND _sync_account=?"

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "contacts"

    aput-object v12, v8, v9

    aput-object p1, v8, v11

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Landroid/provider/SubscribedFeeds$Feeds;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1260
    .local v0, c:Landroid/database/Cursor;
    :try_start_26
    const-string v6, "Sync"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1261
    const-string v6, "Sync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scanning over subscriptions with authority contacts and account "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1265
    :goto_4a
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 1266
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1267
    .local v3, feedInCursor:Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1268
    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1269
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_61
    .catchall {:try_start_26 .. :try_end_61} :catchall_62

    goto :goto_4a

    .line 1276
    .end local v3           #feedInCursor:Ljava/lang/String;
    :catchall_62
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1271
    .restart local v3       #feedInCursor:Ljava/lang/String;
    :cond_67
    :try_start_67
    invoke-interface {v0}, Landroid/database/Cursor;->deleteRow()Z

    goto :goto_4a

    .line 1274
    .end local v3           #feedInCursor:Ljava/lang/String;
    :cond_6b
    invoke-interface {v0}, Landroid/database/Cursor;->commitUpdates()Z
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_62

    .line 1276
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1280
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1281
    .local v2, feed:Ljava/lang/String;
    const-string v6, "contacts"

    const-string v6, "cp"

    invoke-static {p0, v2, p1, v12, v6}, Landroid/provider/SubscribedFeeds;->addFeed(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 1284
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1285
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "account"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v6, "feed"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    sget-object v6, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v1}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_75

    .line 1289
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #feed:Ljava/lang/String;
    :cond_9d
    return-void
.end method


# virtual methods
.method protected cursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "c"
    .parameter "baseEntry"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, p3, v1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToEntryImpl(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected deletedCursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 5
    .parameter "context"
    .parameter "c"
    .parameter "entry"

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->deletedCursorToEntryImpl(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method protected getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 4
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    .line 563
    invoke-static {p1, p2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getCursorForDeletedTableImpl(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 4
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    .line 548
    invoke-static {p1, p2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getCursorForTableImpl(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getFeedEntryClass()Ljava/lang/Class;
    .registers 3

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this should never be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getFeedEntryClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "feed"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.google.com/m8/feeds/groups/"

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 234
    const-class v0, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    .line 239
    :goto_12
    return-object v0

    .line 236
    :cond_13
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.google.com/m8/feeds/contacts/"

    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 237
    const-class v0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    goto :goto_12

    .line 239
    :cond_26
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected getFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "account"

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this should never be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mContactsClient:Lcom/google/wireless/gdata/contacts/client/ContactsClient;

    return-object v0
.end method

.method public getServerDiffs(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 26
    .parameter "context"
    .parameter "baseSyncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 246
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPerformedGetServerDiffs:Z

    .line 247
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v7, v0

    .line 249
    .local v7, syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v17, feedsToSync:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_67

    const-string v3, "feed"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 252
    const-string v3, "feed"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_2f
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_33
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 260
    .local v5, feed:Ljava/lang/String;
    const-string v3, "Downloading\u2026"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getPhotosFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 262
    const/16 v6, 0xa

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getServerPhotos(Landroid/content/SyncContext;Ljava/lang/String;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 274
    :goto_60
    invoke-virtual/range {p6 .. p6}, Landroid/content/SyncResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 278
    .end local v5           #feed:Ljava/lang/String;
    :cond_66
    return-void

    .line 254
    .end local v18           #i$:Ljava/util/Iterator;
    .restart local p2
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addContactsFeedsToSync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getPhotosFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 264
    .end local p2
    .restart local v5       #feed:Ljava/lang/String;
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_97
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getFeedEntryClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 265
    .local v11, feedEntryClass:Ljava/lang/Class;
    if-eqz v11, :cond_b3

    .line 266
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getMaxEntriesPerSync()I

    move-result v14

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object v12, v5

    move-object v15, v7

    move-object/from16 v16, p6

    invoke-virtual/range {v8 .. v16}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getServerDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    goto :goto_60

    .line 270
    :cond_b3
    const-string v3, "Sync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignoring sync request for unknown feed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .registers 5
    .parameter "sb"
    .parameter "result"

    .prologue
    .line 387
    invoke-super {p0, p1, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 388
    iget v0, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    if-lez v0, :cond_12

    .line 389
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 391
    :cond_12
    iget v0, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    if-lez v0, :cond_21

    .line 392
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 394
    :cond_21
    return-void
.end method

.method protected handleAllDeletedUnavailable(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
    .registers 4
    .parameter "syncData"
    .parameter "feed"

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method protected newEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 3

    .prologue
    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "this should never be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAccountsChanged([Ljava/lang/String;)V
    .registers 11
    .parameter "accountsArray"

    .prologue
    const-string v8, "syncEverything"

    .line 1120
    const-string v6, "yes"

    const-string v7, "ro.config.sync"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1133
    :cond_10
    return-void

    .line 1124
    :cond_11
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1125
    .local v2, cr:Landroid/content/ContentResolver;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1c
    if-ge v3, v4, :cond_10

    aget-object v0, v1, v3

    .line 1126
    .local v0, account:Ljava/lang/String;
    const-string v6, "syncEverything"

    invoke-static {v2, v0, v8}, Landroid/provider/Contacts$Settings;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1128
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_2f

    .line 1129
    const-string v6, "syncEverything"

    const-string v6, "1"

    invoke-static {v2, v0, v8, v6}, Landroid/provider/Contacts$Settings;->setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :cond_2f
    invoke-static {v2, v0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->updateSubscribedFeeds(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1125
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c
.end method

.method public onSyncEnding(Landroid/content/SyncContext;Z)V
    .registers 12
    .parameter "context"
    .parameter "success"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1224
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1226
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p2, :cond_72

    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPerformedGetServerDiffs:Z

    if-eqz v1, :cond_72

    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mSyncCanceled:Z

    if-nez v1, :cond_72

    .line 1227
    sget-object v1, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_sync_id"

    aput-object v3, v2, v8

    const-string v3, "_sync_version"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "person"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "download_required"

    aput-object v4, v2, v3

    const-string v3, "_sync_account=? AND download_required != 0"

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1234
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3a
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_6f

    .line 1235
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1236
    .local v7, extras:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v1, "force"

    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mSyncForced:Z

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1238
    const-string v1, "feed"

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getPhotosFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_6f
    .catchall {:try_start_3a .. :try_end_6f} :catchall_76

    .line 1243
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_6f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1247
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_72
    invoke-super {p0, p1, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->onSyncEnding(Landroid/content/SyncContext;Z)V

    .line 1248
    return-void

    .line 1243
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_76
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onSyncStarting(Landroid/content/SyncContext;Ljava/lang/String;ZLandroid/content/SyncResult;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "forced"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 1215
    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPerformedGetServerDiffs:Z

    .line 1216
    iput-boolean p3, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mSyncForced:Z

    .line 1217
    iput v0, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoDownloads:I

    .line 1218
    iput v0, p0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    .line 1219
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->onSyncStarting(Landroid/content/SyncContext;Ljava/lang/String;ZLandroid/content/SyncResult;)V

    .line 1220
    return-void
.end method

.method protected savePhoto(JLjava/io/InputStream;Ljava/lang/String;)V
    .registers 13
    .parameter "person"
    .parameter "photoInput"
    .parameter "photoVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, " with values "

    const-string v5, "Sync"

    .line 1080
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1081
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v2, v5, [B

    .line 1083
    .local v2, data:[B
    :goto_d
    invoke-virtual {p3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1084
    .local v1, bytesRead:I
    if-gez v1, :cond_97

    .line 1088
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1090
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "_sync_dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    const-string v5, "local_version"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v5, "data"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1093
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1095
    .local v3, photoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "_sync_dirty=0"

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_a4

    .line 1097
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 1098
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "savePhoto: updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with values "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_4 .. :try_end_91} :catchall_9d

    .line 1106
    :cond_91
    :goto_91
    if-eqz p3, :cond_96

    :try_start_93
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_cd

    .line 1111
    :cond_96
    :goto_96
    return-void

    .line 1085
    .end local v3           #photoUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_97
    const/4 v5, 0x0

    :try_start_98
    invoke-virtual {v0, v2, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9d

    goto/16 :goto_d

    .line 1105
    .end local v0           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytesRead:I
    .end local v2           #data:[B
    :catchall_9d
    move-exception v5

    .line 1106
    if-eqz p3, :cond_a3

    :try_start_a0
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_cf

    .line 1109
    :cond_a3
    :goto_a3
    throw v5

    .line 1101
    .restart local v0       #byteStream:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bytesRead:I
    .restart local v2       #data:[B
    .restart local v3       #photoUri:Landroid/net/Uri;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_a4
    :try_start_a4
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "savePhoto: update of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with values "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " affected no rows"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_a4 .. :try_end_cc} :catchall_9d

    goto :goto_91

    .line 1107
    :catch_cd
    move-exception v5

    goto :goto_96

    .end local v0           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytesRead:I
    .end local v2           #data:[B
    .end local v3           #photoUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_cf
    move-exception v6

    goto :goto_a3
.end method

.method public sendClientDiffs(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .registers 14
    .parameter "context"
    .parameter "clientDiffs"
    .parameter "serverDiffs"
    .parameter "syncResult"
    .parameter "dontSendDeletes"

    .prologue
    const/4 v4, 0x0

    .line 400
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->initTempProvider(Landroid/content/SyncableContentProvider;)V

    .line 402
    new-instance v3, Lcom/google/wireless/gdata/contacts/data/GroupEntry;

    invoke-direct {v3}, Lcom/google/wireless/gdata/contacts/data/GroupEntry;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsSyncAdapter;->sendClientDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 406
    invoke-virtual {p4}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 419
    :cond_18
    :goto_18
    return-void

    .line 410
    :cond_19
    invoke-virtual {p0, p1, p2, v4, p4}, Lcom/android/providers/contacts/ContactsSyncAdapter;->sendClientPhotos(Landroid/content/SyncContext;Landroid/content/ContentProvider;Ljava/lang/Object;Landroid/content/SyncResult;)V

    .line 413
    invoke-virtual {p4}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v0

    if-nez v0, :cond_18

    .line 417
    new-instance v3, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    invoke-direct {v3}, Lcom/google/wireless/gdata/contacts/data/ContactEntry;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsSyncAdapter;->sendClientDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    goto :goto_18
.end method

.method protected sendClientPhotos(Landroid/content/SyncContext;Landroid/content/ContentProvider;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 32
    .parameter "context"
    .parameter "clientDiffs"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 423
    new-instance v20, Lcom/google/wireless/gdata/data/MediaEntry;

    invoke-direct/range {v20 .. v20}, Lcom/google/wireless/gdata/data/MediaEntry;-><init>()V

    .line 425
    .local v20, entry:Lcom/google/wireless/gdata/data/Entry;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v14

    .line 426
    .local v14, client:Lcom/google/wireless/gdata/client/GDataServiceClient;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAuthToken()Ljava/lang/String;

    move-result-object v12

    .line 427
    .local v12, authToken:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 428
    .local v15, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v11

    .line 430
    .local v11, account:Ljava/lang/String;
    sget-object v6, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 433
    .local v13, c:Landroid/database/Cursor;
    :try_start_25
    const-string v5, "person"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 434
    .local v24, personColumn:I
    const-string v5, "data"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 435
    .local v16, dataColumn:I
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 436
    .local v23, numRows:I
    :goto_35
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mSyncCanceled:Z

    move v5, v0

    if-eqz v5, :cond_4d

    .line 438
    const-string v5, "Sync"

    const-string v6, "stopping since the sync was canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_8b

    .line 542
    :cond_49
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 544
    :goto_4c
    return-void

    .line 442
    :cond_4d
    :try_start_4d
    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v23, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to go"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, v20

    move-object v1, v11

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->cursorToBaseEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 446
    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v19

    .line 448
    .local v19, editUrl:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 450
    const-string v5, "Sync"

    const-string v6, "skipping photo edit for unsynced contact"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_4d .. :try_end_8a} :catchall_8b

    goto :goto_35

    .line 542
    .end local v16           #dataColumn:I
    .end local v19           #editUrl:Ljava/lang/String;
    .end local v23           #numRows:I
    .end local v24           #personColumn:I
    :catchall_8b
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 456
    .restart local v16       #dataColumn:I
    .restart local v19       #editUrl:Ljava/lang/String;
    .restart local v23       #numRows:I
    .restart local v24       #personColumn:I
    :cond_90
    const/16 v22, 0x0

    .line 457
    .local v22, inputStream:Ljava/io/InputStream;
    :try_start_92
    move-object v0, v13

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 458
    .local v21, imageData:[B
    if-eqz v21, :cond_a4

    .line 459
    new-instance v22, Ljava/io/ByteArrayInputStream;

    .end local v22           #inputStream:Ljava/io/InputStream;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 461
    .restart local v22       #inputStream:Ljava/io/InputStream;
    :cond_a4
    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_c9
    .catchall {:try_start_92 .. :try_end_c9} :catchall_8b

    move-result-object v25

    .line 464
    .local v25, photoUri:Landroid/net/Uri;
    if-eqz v22, :cond_18a

    .line 465
    :try_start_cc
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 466
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating photo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/data/Entry;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_f1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/contacts/ContactsSyncAdapter;->mPhotoUploads:I

    .line 469
    const-string v5, "image/*"

    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object v3, v5

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/wireless/gdata/client/GDataServiceClient;->updateMediaEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/MediaEntry;

    .line 481
    :goto_109
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v26, values:Landroid/content/ContentValues;
    const-string v5, "exists_on_server"

    if-nez v22, :cond_1eb

    const/4 v6, 0x0

    :goto_113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    const-string v5, "_sync_dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1ee

    .line 486
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error updating photo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with values "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_170
    .catchall {:try_start_cc .. :try_end_170} :catchall_8b
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_cc .. :try_end_170} :catch_172
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_170} :catch_1b8
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_cc .. :try_end_170} :catch_1fc

    goto/16 :goto_35

    .line 492
    .end local v26           #values:Landroid/content/ContentValues;
    :catch_172
    move-exception v5

    move-object/from16 v17, v5

    .line 493
    .local v17, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_175
    const-string v5, "Sync"

    const-string v6, "parse error during update of , skipping"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_188
    .catchall {:try_start_175 .. :try_end_188} :catchall_8b

    goto/16 :goto_35

    .line 471
    .end local v17           #e:Lcom/google/wireless/gdata/parser/ParseException;
    :cond_18a
    :try_start_18a
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1af

    .line 472
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting photo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/data/Entry;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1af
    move-object v0, v14

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b6
    .catchall {:try_start_18a .. :try_end_1b6} :catchall_8b
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_18a .. :try_end_1b6} :catch_172
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_1b6} :catch_1b8
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_18a .. :try_end_1b6} :catch_1fc

    goto/16 :goto_109

    .line 495
    :catch_1b8
    move-exception v5

    move-object/from16 v17, v5

    .line 497
    .local v17, e:Ljava/io/IOException;
    :try_start_1bb
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "io error during update of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/data/Entry;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_1e9
    .catchall {:try_start_1bb .. :try_end_1e9} :catchall_8b

    goto/16 :goto_35

    .line 482
    .end local v17           #e:Ljava/io/IOException;
    .restart local v26       #values:Landroid/content/ContentValues;
    :cond_1eb
    const/4 v6, 0x1

    goto/16 :goto_113

    .line 489
    :cond_1ee
    :try_start_1ee
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J
    :try_end_1fa
    .catchall {:try_start_1ee .. :try_end_1fa} :catchall_8b
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1ee .. :try_end_1fa} :catch_172
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1fa} :catch_1b8
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1ee .. :try_end_1fa} :catch_1fc

    goto/16 :goto_35

    .line 501
    .end local v26           #values:Landroid/content/ContentValues;
    :catch_1fc
    move-exception v5

    move-object/from16 v17, v5

    .line 502
    .local v17, e:Lcom/google/wireless/gdata/client/HttpException;
    :try_start_1ff
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2c8

    .line 534
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during update of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/gdata/data/Entry;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_35

    .line 504
    :sswitch_244
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v5, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_272

    .line 506
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth error during update of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_272
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_27e
    .catchall {:try_start_1ff .. :try_end_27e} :catchall_8b

    .line 512
    :try_start_27e
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_285
    .catchall {:try_start_27e .. :try_end_285} :catchall_8b
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_27e .. :try_end_285} :catch_28a

    .line 542
    :goto_285
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4c

    .line 514
    :catch_28a
    move-exception v5

    move-object/from16 v18, v5

    .line 516
    .local v18, e1:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :try_start_28d
    const-string v5, "Sync"

    const-string v6, "could not invalidate auth token"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_285

    .line 523
    .end local v18           #e1:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :sswitch_299
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conflict detected during update of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numConflictDetectedExceptions:J
    :try_end_2c6
    .catchall {:try_start_28d .. :try_end_2c6} :catchall_8b

    goto/16 :goto_35

    .line 502
    :sswitch_data_2c8
    .sparse-switch
        0x191 -> :sswitch_244
        0x199 -> :sswitch_299
    .end sparse-switch
.end method

.method protected updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;)V
    .registers 12
    .parameter "feed"
    .parameter "syncLocalId"
    .parameter "baseEntry"
    .parameter "provider"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const-string v5, "  exception while deleting contact: "

    const-string v4, "Sync"

    .line 847
    instance-of v2, p3, Lcom/google/wireless/gdata/contacts/data/ContactEntry;

    if-eqz v2, :cond_3b

    const-string v2, "Starred in Android"

    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 849
    const-string v2, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting incorrectly created contact from the server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    .line 852
    .local v0, client:Lcom/google/wireless/gdata/client/GDataServiceClient;
    :try_start_30
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_43
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_30 .. :try_end_3b} :catch_5e

    .line 860
    .end local v0           #client:Lcom/google/wireless/gdata/client/GDataServiceClient;
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3, p4}, Lcom/android/providers/contacts/ContactsSyncAdapter;->updateProviderImpl(Ljava/lang/String;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;)V

    .line 861
    return-void

    .line 853
    .restart local v0       #client:Lcom/google/wireless/gdata/client/GDataServiceClient;
    :catch_43
    move-exception v2

    move-object v1, v2

    .line 854
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  exception while deleting contact: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 855
    .end local v1           #e:Ljava/io/IOException;
    :catch_5e
    move-exception v2

    move-object v1, v2

    .line 856
    .local v1, e:Lcom/google/wireless/gdata/client/HttpException;
    const-string v2, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  exception while deleting contact: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 1202
    const-string v0, "orderby"

    const-string v1, "lastmodified"

    invoke-virtual {p1, v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v0, "sortorder"

    const-string v1, "ascending"

    invoke-virtual {p1, v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p1}, Lcom/google/wireless/gdata/client/QueryParams;->getUpdatedMin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1208
    const-string v0, "showdeleted"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_1b
    return-void
.end method
