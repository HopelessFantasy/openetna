.class public Lcom/android/providers/contacts/LgeContactsProvider;
.super Lcom/android/providers/contacts/ContactsProvider;
.source "LgeContactsProvider.java"


# static fields
.field private static final DRMPHOTOS:I = 0x1d75

.field private static final DRMPHOTOS_BASE:I = 0x1d74

.field private static final DRMPHOTOS_ID:I = 0x1d76

.field private static final GROUPMEMBERSHIP_NAME:I = 0x251c

.field private static final GROUPPHOTOS:I = 0x1d56

.field private static final GROUPPHOTOS_BASE:I = 0x1d56

.field private static final GROUPPHOTOS_ID:I = 0x1d57

.field private static final GROUPS_DRMPHOTO:I = 0x213f

.field private static final GROUPS_FILTER:I = 0x2136

.field private static final GROUPS_ID_MEMBERS:I = 0x2137

.field private static final GROUPS_ID_MEMBERS_FILTER:I = 0x2138

.field private static final GROUPS_ID_NO_MEMBERS:I = 0x213b

.field private static final GROUPS_ID_NO_MEMBERS_FILTER:I = 0x213c

.field private static final GROUPS_NAME_NO_MEMBERS:I = 0x2139

.field private static final GROUPS_NAME_NO_MEMBERS_FILTER:I = 0x213a

.field private static final GROUPS_NOGROUP_MEMBERS:I = 0x213d

.field private static final GROUPS_NOGROUP_MEMBERS_FILTER:I = 0x213e

.field private static final GROUPS_PHOTO:I = 0x2135

.field private static final GROUPS_PHOTOS_JOIN:Ljava/lang/String; = "groups LEFT OUTER JOIN groupphotos ON (groupphotos.group_id=groups._id) LEFT OUTER JOIN drmphotos ON (drmphotos.group_id=groups._id)"

.field private static final GROUPS_SEARCH_SUGGESTIONS:I = 0x1d4c

.field private static final GROUPS_STARRED:I = 0x2134

.field private static final PEOPLE_ALL_SNSIDS:I = 0x1fb

.field private static final PEOPLE_ALL_SNSIDS_FILTER:I = 0x1fc

.field private static final PEOPLE_DRMPHOTO:I = 0x1fd

.field private static final PEOPLE_GROUPS_ID_MEMBERSHIP:I = 0x1f6

.field private static final PEOPLE_GROUPS_NAME_MEMBERSHIP:I = 0x1f5

.field private static final PEOPLE_SNSIDS:I = 0x1f9

.field private static final PEOPLE_SNSIDS_ID:I = 0x1fa

.field private static final PEOPLE_STUFFS:I = 0x1f7

.field private static final PEOPLE_STUFFS_ID:I = 0x1f8

.field private static final PEOPLE_SYSTEM_CONTACT:I = 0x1f4

.field private static final SNSIDS:I = 0x1d6b

.field private static final SNSIDS_BASE:I = 0x1d6a

.field private static final SNSIDS_ID:I = 0x1d6c

.field private static final STUFFS:I = 0x1d61

.field private static final STUFFS_BASE:I = 0x1d60

.field private static final STUFFS_ID:I = 0x1d62

.field private static final TAG:Ljava/lang/String; = "LgeContactsProvider"

.field private static final sDrmPhotosProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sDrmPhotosTable:Ljava/lang/String;

.field private static final sGroupMembershipwithPhotoProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupPhotosProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sGroupPhotosTable:Ljava/lang/String;

.field protected static sGroupsLookupTable:Ljava/lang/String;

.field private static final sGroupsSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupsWithPhotoProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSnsIdsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sSnsIdsTable:Ljava/lang/String;

.field private static final sStuffsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sStuffsTable:Ljava/lang/String;


# instance fields
.field private mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mSnsIdsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mStuffsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const-string v8, "group_id"

    const-string v7, "person"

    const-string v6, "data"

    const-string v5, "_id"

    const-string v4, "contacts"

    .line 38
    const-string v2, "groupsLookup"

    sput-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsLookupTable:Ljava/lang/String;

    .line 39
    const-string v2, "groupphotos"

    sput-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosTable:Ljava/lang/String;

    .line 40
    const-string v2, "stuffs"

    sput-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    .line 41
    const-string v2, "sns_ids"

    sput-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    .line 42
    const-string v2, "drmphotos"

    sput-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    .line 1089
    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 1092
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "contacts"

    const-string v2, "people/system_id"

    const/16 v3, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1093
    const-string v2, "contacts"

    const-string v2, "people/#/groups/name/*/membership"

    const/16 v3, 0x1f5

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1094
    const-string v2, "contacts"

    const-string v2, "people/#/groups/#/membership"

    const/16 v3, 0x1f6

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1095
    const-string v2, "contacts"

    const-string v2, "people/#/stuffs"

    const/16 v3, 0x1f7

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1096
    const-string v2, "contacts"

    const-string v2, "people/#/stuffs/#"

    const/16 v3, 0x1f8

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1097
    const-string v2, "contacts"

    const-string v2, "people/#/sns_ids"

    const/16 v3, 0x1f9

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1098
    const-string v2, "contacts"

    const-string v2, "people/#/sns_ids/#"

    const/16 v3, 0x1fa

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1099
    const-string v2, "contacts"

    const-string v2, "people/all/sns_ids/*"

    const/16 v3, 0x1fb

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1100
    const-string v2, "contacts"

    const-string v2, "people/all/sns_ids/*/filter/*"

    const/16 v3, 0x1fc

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1102
    const-string v2, "contacts"

    const-string v2, "people/#/drmphotos"

    const/16 v3, 0x1fd

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1105
    const-string v2, "contacts"

    const-string v2, "groups/starred"

    const/16 v3, 0x2134

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1106
    const-string v2, "contacts"

    const-string v2, "groups/#/groupphotos"

    const/16 v3, 0x2135

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1107
    const-string v2, "contacts"

    const-string v2, "groups/filter/*"

    const/16 v3, 0x2136

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1108
    const-string v2, "contacts"

    const-string v2, "groups/#/members"

    const/16 v3, 0x2137

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1109
    const-string v2, "contacts"

    const-string v2, "groups/#/members/filter/*"

    const/16 v3, 0x2138

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1111
    const-string v2, "contacts"

    const-string v2, "groups/name/*/no_members"

    const/16 v3, 0x2139

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1112
    const-string v2, "contacts"

    const-string v2, "groups/name/*/no_members/filter/*"

    const/16 v3, 0x213a

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1114
    const-string v2, "contacts"

    const-string v2, "groups/#/no_members"

    const/16 v3, 0x213b

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    const-string v2, "contacts"

    const-string v2, "groups/#/no_members/filter/*"

    const/16 v3, 0x213c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1117
    const-string v2, "contacts"

    const-string v2, "groups/nogroup/members"

    const/16 v3, 0x213d

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1118
    const-string v2, "contacts"

    const-string v2, "groups/nogroup/members/filter/*"

    const/16 v3, 0x213e

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1120
    const-string v2, "contacts"

    const-string v2, "groups/search_suggest_query"

    const/16 v3, 0x1d4c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1122
    const-string v2, "contacts"

    const-string v2, "groups/search_suggest_query/*"

    const/16 v3, 0x1d4c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1124
    const-string v2, "contacts"

    const-string v2, "groups/#/drmphotos"

    const/16 v3, 0x213f

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1127
    const-string v2, "contacts"

    const-string v2, "groupmembership/groups/name/*"

    const/16 v3, 0x251c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1130
    const-string v2, "contacts"

    const-string v2, "stuffs"

    const/16 v3, 0x1d61

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1131
    const-string v2, "contacts"

    const-string v2, "stuffs/#"

    const/16 v3, 0x1d62

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1134
    const-string v2, "contacts"

    const-string v2, "sns_ids"

    const/16 v3, 0x1d6b

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1135
    const-string v2, "contacts"

    const-string v2, "sns_ids/#"

    const/16 v3, 0x1d6c

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1138
    const-string v2, "contacts"

    const-string v2, "groupphotos"

    const/16 v3, 0x1d56

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1139
    const-string v2, "contacts"

    const-string v2, "groupphotos/#"

    const/16 v3, 0x1d57

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1142
    const-string v2, "contacts"

    const-string v2, "drmphotos"

    const/16 v3, 0x1d75

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1143
    const-string v2, "contacts"

    const-string v2, "drmphotos/#"

    const/16 v3, 0x1d76

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1150
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1151
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "groupphoto_data"

    const-string v3, "groupphotos.data AS groupphoto_data"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string v2, "drmphoto_data"

    const-string v3, "drmphotos.data AS drmphoto_data"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sput-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsWithPhotoProjectionMap:Ljava/util/HashMap;

    .line 1156
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1157
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "groupphoto_data"

    const-string v3, "groupphotos.data AS groupphoto_data"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string v2, "drmphoto_data"

    const-string v3, "drmphotos.data AS drmphoto_data"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sput-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupMembershipwithPhotoProjectionMap:Ljava/util/HashMap;

    .line 1162
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1163
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "suggest_text_1"

    const-string v3, "name AS suggest_text_1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string v2, "suggest_intent_data_id"

    const-string v3, "_id AS suggest_intent_data_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string v2, "system_id"

    const-string v3, "system_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sput-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 1173
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1174
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string v2, "group_id"

    const-string v2, "group_id"

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string v2, "data"

    const-string v2, "data"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sput-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosProjectionMap:Ljava/util/HashMap;

    .line 1181
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1182
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v2, "stuffs._id AS _id"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string v2, "kind"

    const-string v3, "kind"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    const-string v2, "data"

    const-string v2, "data"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string v2, "int_data"

    const-string v3, "int_data"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    const-string v2, "person"

    const-string v2, "person"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    const-string v2, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sput-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsProjectionMap:Ljava/util/HashMap;

    .line 1192
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1193
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v2, "sns_ids._id AS _id"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v2, "person"

    const-string v2, "person"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string v2, "sns_id"

    const-string v3, "sns_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string v2, "user_id"

    const-string v3, "user_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v2, "sn_site_id"

    const-string v3, "sn_site_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v2, "sn_user_id"

    const-string v3, "sn_user_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v2, "isprimary"

    const-string v3, "isprimary"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sput-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsProjectionMap:Ljava/util/HashMap;

    .line 1205
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1206
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v2, "drmphotos._id AS _id"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string v2, "person"

    const-string v2, "person"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const-string v2, "group_id"

    const-string v2, "group_id"

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const-string v2, "filename"

    const-string v3, "filename"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v2, "data"

    const-string v2, "data"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sput-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosProjectionMap:Ljava/util/HashMap;

    .line 1212
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider;-><init>()V

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    return-void
.end method

.method private buildGroupsLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "filterParam"

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "groups._id IN (SELECT source FROM groupsLookup WHERE token GLOB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, filter:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 220
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private deleteFromGroupMembership(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 26
    .parameter "personId"
    .parameter "groupName"
    .parameter "groupId"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 742
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 743
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-wide/16 v13, 0x0

    .line 744
    .local v13, group_id:J
    if-eqz p2, :cond_8c

    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "groups, groupmembership,  (SELECT _sync_account AS sync_account, _sync_id AS sync_id FROM groups WHERE name\'="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') AS group_sync_info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 754
    :goto_28
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 755
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND groupmembership.person="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 757
    if-eqz p2, :cond_ae

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND (groups.name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 762
    :goto_6c
    const-string v5, " OR (groupmembership.group_sync_account=group_sync_info.sync_account AND groupmembership.group_sync_id=group_sync_info.sync_id))"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 769
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_c5

    .line 770
    const-string v5, "LgeContactsProvider"

    const-string v6, "can\'t find the group to delete!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v5, 0x0

    .line 789
    :goto_8b
    return v5

    .line 749
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_8c
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 750
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "groups, groupmembership, (SELECT _sync_account AS sync_account, _sync_id AS sync_id FROM groups WHERE _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AS group_sync_info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 760
    :cond_ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND (groups._id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 774
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_c5
    const-wide/16 v18, 0x0

    .line 776
    .local v18, rowId:J
    :try_start_c7
    const-string v5, "_id"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 777
    .local v17, indexRowId:I
    const-string v5, "person"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 778
    .local v16, indexPersonId:I
    const-string v5, "name"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 779
    .local v15, indexName:I
    :cond_d9
    :goto_d9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_107

    .line 780
    move-object v0, v12

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 781
    const-string v5, "Starred in Android"

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 782
    move-object v0, v12

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/LgeContactsProvider;->fixupPeopleStarred(JZ)I
    :try_end_101
    .catchall {:try_start_c7 .. :try_end_101} :catchall_102

    goto :goto_d9

    .line 786
    .end local v15           #indexName:I
    .end local v16           #indexPersonId:I
    .end local v17           #indexRowId:I
    :catchall_102
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v15       #indexName:I
    .restart local v16       #indexPersonId:I
    .restart local v17       #indexRowId:I
    :cond_107
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/LgeContactsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    sget-object v6, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/providers/contacts/LgeContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_8b
.end method

.method private fixupPrimaryAfterUpdateWithoutType(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .registers 17
    .parameter "table"
    .parameter "personId"
    .parameter "changedItemId"
    .parameter "isPrimaryValue"

    .prologue
    .line 855
    if-eqz p4, :cond_c0

    .line 856
    if-nez p2, :cond_10

    .line 857
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/LgeContactsProvider;->lookupPerson(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 860
    :cond_10
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x1

    move v9, v0

    .line 861
    .local v9, isPrimary:Z
    :goto_18
    move-object v10, p3

    .line 862
    .local v10, newPrimaryId:Ljava/lang/Long;
    if-nez v9, :cond_59

    .line 863
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sIdProjection:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND _id!="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 869
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_47
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 870
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_bb

    move-result-object v10

    .line 873
    :cond_56
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 877
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_59
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 878
    .local v11, value:Landroid/content/ContentValues;
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 879
    const-string v0, "isprimary"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c0

    .line 881
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    .end local v9           #isPrimary:Z
    .end local v10           #newPrimaryId:Ljava/lang/Long;
    .end local v11           #value:Landroid/content/ContentValues;
    :cond_b7
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_18

    .line 873
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #isPrimary:Z
    .restart local v10       #newPrimaryId:Ljava/lang/Long;
    :catchall_bb
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 885
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #isPrimary:Z
    .end local v10           #newPrimaryId:Ljava/lang/Long;
    :cond_c0
    return-void
.end method

.method private getStuffType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 548
    const/4 v8, 0x0

    .line 550
    .local v8, mime:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sKindProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/LgeContactsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    .line 554
    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 555
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    move-result v7

    .line 556
    .local v7, kind:I
    packed-switch v7, :pswitch_data_2c

    .line 567
    .end local v7           #kind:I
    :cond_1c
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_1f
    return-object v8

    .line 558
    .restart local v7       #kind:I
    :pswitch_20
    :try_start_20
    const-string v8, "vnd.android.cursor.item/note"

    .line 559
    goto :goto_1c

    .line 562
    :pswitch_23
    const-string v8, "vnd.android.cursor.item/birthday"
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    goto :goto_1c

    .line 567
    .end local v7           #kind:I
    :catchall_26
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 556
    nop

    :pswitch_data_2c
    .packed-switch 0x7
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method private handleGroupsSearchSuggestionsQuery(Landroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .registers 6
    .parameter "url"
    .parameter "qb"

    .prologue
    .line 508
    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsTable:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 509
    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 511
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_20

    .line 513
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, searchClause:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LgeContactsProvider;->buildGroupsLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 516
    .end local v0           #searchClause:Ljava/lang/String;
    :cond_20
    return-void
.end method

.method private updateGroupMembership(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 981
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 982
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 983
    .local v0, column:Ljava/lang/String;
    const-string v4, "member_position"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 984
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "you are not allowed to change column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 989
    .end local v0           #column:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3b
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 990
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    invoke-virtual {v1, v4, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method


# virtual methods
.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    const-string v0, "CREATE TABLE groupsLookup (token TEXT,source INTEGER REFERENCES groups(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE INDEX groupsLookupIndex ON groupsLookup (token,source);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "CREATE TABLE groupphotos (_id INTEGER PRIMARY KEY AUTOINCREMENT,group_id INTEGER REFERENCES groups(_id),data BLOB,UNIQUE(group_id) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "CREATE INDEX groupphotoPersonIndex ON groupphotos (group_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "CREATE TRIGGER groupDeleteAndPhotos DELETE ON groups BEGIN DELETE FROM groupphotos WHERE group_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "CREATE TABLE stuffs (_id INTEGER PRIMARY KEY AUTOINCREMENT,person INTEGER REFERENCES people(_id),kind INTEGER NOT NULL,data TEXT,int_data INTEGER,isprimary INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "CREATE INDEX stuffsPeopleIndex ON stuffs (person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "CREATE TABLE sns_ids (_id INTEGER PRIMARY KEY AUTOINCREMENT,person INTEGER REFERENCES people(_id),label TEXT,sns_id TEXT,user_id TEXT,sn_site_id TEXT,sn_user_id TEXT,isprimary INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v0, "CREATE INDEX sns_idsPeopleIndex ON sns_ids (person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "CREATE TABLE drmphotos (_id INTEGER PRIMARY KEY AUTOINCREMENT,person INTEGER REFERENCES people(_id),group_id INTEGER REFERENCES groups(_id),filename TEXT,data BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "CREATE INDEX drmphotoPersonIndex ON drmphotos (person);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "CREATE INDEX drmphotoGroupIndex ON drmphotos (group_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v0, "CREATE TRIGGER peopleDeleteAndDrmPhotos DELETE ON people BEGIN DELETE FROM drmphotos WHERE person = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "CREATE TRIGGER groupsDeleteAndDrmPhotos DELETE ON groups BEGIN DELETE FROM drmphotos WHERE group_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    const-string v0, "CREATE TRIGGER contact_cleanup_ext DELETE ON people BEGIN DELETE FROM stuffs WHERE person = old._id;DELETE FROM sns_ids WHERE person = old._id;DELETE FROM drmphotos WHERE person = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "CREATE TRIGGER groups_cleanup_ext DELETE ON groups BEGIN DELETE FROM groupsLookup WHERE source = old._id;DELETE FROM drmphotos WHERE group_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string v0, "CREATE TRIGGER groupsLookup_update UPDATE OF name ON groups BEGIN DELETE FROM groupsLookup WHERE source = new._id;SELECT _TOKENIZE(\'groupsLookup\', new._id, new.name, \' \');END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v0, "CREATE TRIGGER groupsLookup_insert AFTER INSERT ON groups BEGIN SELECT _TOKENIZE(\'groupsLookup\', new._id, new.name, \' \');END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 21
    .parameter "url"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 671
    sget-object v4, Lcom/android/providers/contacts/LgeContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 673
    .local v13, matchedUriId:I
    sparse-switch v13, :sswitch_data_ea

    .line 715
    invoke-super/range {p0 .. p3}, Lcom/android/providers/contacts/ContactsProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 737
    .end local p1
    :goto_10
    return v4

    .line 675
    .restart local p1
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/LgeContactsProvider;->deleteFromGroupMembership(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_10

    .line 680
    :sswitch_33
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/LgeContactsProvider;->deleteFromGroupMembership(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_10

    .line 686
    :sswitch_55
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p3}, Lcom/android/providers/contacts/LgeContactsProvider;->deleteFromGroupMembership(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_10

    .line 690
    .restart local p1
    :sswitch_65
    sget-object v15, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    .line 691
    .local v15, tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 718
    .local v10, changedItemId:Ljava/lang/String;
    :goto_72
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/providers/contacts/LgeContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 719
    .local v16, where:Ljava/lang/String;
    const/4 v14, 0x0

    .line 721
    .local v14, oldPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    sparse-switch v13, :sswitch_data_110

    .line 728
    :goto_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 729
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v0, v12

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 730
    .local v11, count:I
    if-lez v11, :cond_9f

    .line 731
    if-eqz v14, :cond_9f

    iget-boolean v4, v14, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->isPrimary:Z

    if-eqz v4, :cond_9f

    .line 732
    iget-object v4, v14, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->person:Ljava/lang/Long;

    iget-object v5, v14, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->id:Ljava/lang/Long;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/LgeContactsProvider;->fixupPrimaryAfterDeleteWithoutType(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_9f
    move v4, v11

    .line 737
    goto/16 :goto_10

    .line 694
    .end local v10           #changedItemId:Ljava/lang/String;
    .end local v11           #count:I
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #oldPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .end local v15           #tableToChange:Ljava/lang/String;
    .end local v16           #where:Ljava/lang/String;
    :sswitch_a2
    sget-object v15, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    .line 695
    .restart local v15       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 696
    .restart local v10       #changedItemId:Ljava/lang/String;
    goto :goto_72

    .line 698
    .end local v10           #changedItemId:Ljava/lang/String;
    .end local v15           #tableToChange:Ljava/lang/String;
    :sswitch_b0
    sget-object v15, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    .line 699
    .restart local v15       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 700
    .restart local v10       #changedItemId:Ljava/lang/String;
    goto :goto_72

    .line 702
    .end local v10           #changedItemId:Ljava/lang/String;
    .end local v15           #tableToChange:Ljava/lang/String;
    :sswitch_be
    sget-object v15, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    .line 703
    .restart local v15       #tableToChange:Ljava/lang/String;
    const/4 v10, 0x0

    .line 704
    .restart local v10       #changedItemId:Ljava/lang/String;
    goto :goto_72

    .line 706
    .end local v10           #changedItemId:Ljava/lang/String;
    .end local v15           #tableToChange:Ljava/lang/String;
    :sswitch_c2
    sget-object v15, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    .line 707
    .restart local v15       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 708
    .restart local v10       #changedItemId:Ljava/lang/String;
    goto :goto_72

    .line 710
    .end local v10           #changedItemId:Ljava/lang/String;
    .end local v15           #tableToChange:Ljava/lang/String;
    :sswitch_d0
    sget-object v15, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    .line 711
    .restart local v15       #tableToChange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 712
    .restart local v10       #changedItemId:Ljava/lang/String;
    goto :goto_72

    .line 724
    .restart local v14       #oldPrimaryInfo:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .restart local v16       #where:Ljava/lang/String;
    :sswitch_de
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/LgeContactsProvider;->lookupIsPrimaryInfoWithoutType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    move-result-object v14

    goto :goto_7d

    .line 673
    :sswitch_data_ea
    .sparse-switch
        0xe -> :sswitch_55
        0x1f5 -> :sswitch_11
        0x1f6 -> :sswitch_33
        0x1f8 -> :sswitch_65
        0x1fa -> :sswitch_b0
        0x1d62 -> :sswitch_a2
        0x1d6b -> :sswitch_be
        0x1d6c -> :sswitch_c2
        0x1d76 -> :sswitch_d0
    .end sparse-switch

    .line 721
    :sswitch_data_110
    .sparse-switch
        0x1fa -> :sswitch_de
        0x1d6c -> :sswitch_de
    .end sparse-switch
.end method

.method protected dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    const-string v2, "DROP TABLE IF EXISTS "

    .line 88
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsLookupTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected fixupPrimaryAfterDeleteWithoutType(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 16
    .parameter "table"
    .parameter "personId"
    .parameter "itemId"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 821
    const/4 v9, 0x0

    .line 823
    .local v9, newPrimaryId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sIdProjection:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND _id!="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 829
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_2e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 830
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_9d

    move-result-object v9

    .line 833
    :cond_3d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 837
    if-eqz v9, :cond_a2

    .line 838
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 839
    .local v10, value:Landroid/content/ContentValues;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 840
    const-string v0, "isprimary"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v10, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v11, :cond_a2

    .line 842
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    .end local v10           #value:Landroid/content/ContentValues;
    :catchall_9d
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 846
    :cond_a2
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 521
    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 523
    .local v0, match:I
    sparse-switch v0, :sswitch_data_20

    .line 542
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1

    .line 525
    :sswitch_e
    const-string v1, "vnd.android.cursor.dir/person"

    goto :goto_d

    .line 529
    :sswitch_11
    const-string v1, "vnd.android.cursor.dir/stuffs"

    goto :goto_d

    .line 532
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LgeContactsProvider;->getStuffType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 536
    :sswitch_19
    const-string v1, "vnd.android.cursor.dir/sns_ids"

    goto :goto_d

    .line 539
    :sswitch_1c
    const-string v1, "vnd.android.cursor.item/sns_ids"

    goto :goto_d

    .line 523
    nop

    :sswitch_data_20
    .sparse-switch
        0x1f4 -> :sswitch_e
        0x1f7 -> :sswitch_11
        0x1f8 -> :sswitch_14
        0x1f9 -> :sswitch_19
        0x1fa -> :sswitch_1c
        0x1d61 -> :sswitch_11
        0x1d62 -> :sswitch_14
        0x1d6b -> :sswitch_19
        0x1d6c -> :sswitch_1c
    .end sparse-switch
.end method

.method public insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const-string v10, "person"

    .line 576
    const/4 v2, 0x0

    .line 578
    .local v2, resultUri:Landroid/net/Uri;
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 580
    .local v1, match:I
    sparse-switch v1, :sswitch_data_b0

    .line 630
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 633
    :goto_13
    return-object v5

    .line 582
    :sswitch_14
    iget-object v5, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v5, p2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 583
    .local v3, rowID:J
    cmp-long v5, v3, v7

    if-lez v5, :cond_24

    .line 584
    sget-object v5, Landroid/provider/Contacts$GroupPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    :cond_24
    :goto_24
    move-object v5, v2

    .line 633
    goto :goto_13

    .line 591
    .end local v3           #rowID:J
    :sswitch_26
    iget-object v5, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 592
    iget-object v5, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 593
    const/16 v5, 0x1f7

    if-ne v1, v5, :cond_45

    .line 594
    iget-object v6, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    const-string v5, "person"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_45
    iget-object v5, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    const-string v6, "kind"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 597
    .local v0, kind:Ljava/lang/Integer;
    if-nez v0, :cond_57

    .line 598
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "you must specify the Stuffs.KIND"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 600
    :cond_57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/contacts/LgeContactsProvider;->insertAndFixupPrimary(ILandroid/content/ContentValues;)J

    move-result-wide v3

    .line 601
    .restart local v3       #rowID:J
    cmp-long v5, v3, v7

    if-lez v5, :cond_24

    .line 602
    sget-object v5, Landroid/provider/Contacts$Stuffs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_24

    .line 609
    .end local v0           #kind:Ljava/lang/Integer;
    .end local v3           #rowID:J
    :sswitch_6c
    iget-object v5, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 610
    iget-object v5, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 611
    const/16 v5, 0x1f9

    if-ne v1, v5, :cond_8b

    .line 612
    iget-object v6, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    const-string v5, "person"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_8b
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/contacts/LgeContactsProvider;->insertAndFixupPrimary(ILandroid/content/ContentValues;)J

    move-result-wide v3

    .line 615
    .restart local v3       #rowID:J
    cmp-long v5, v3, v7

    if-lez v5, :cond_24

    .line 616
    sget-object v5, Landroid/provider/Contacts$SnsIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_24

    .line 622
    .end local v3           #rowID:J
    :sswitch_9e
    iget-object v5, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v5, p2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 623
    .restart local v3       #rowID:J
    cmp-long v5, v3, v7

    if-lez v5, :cond_24

    .line 624
    sget-object v5, Landroid/provider/Contacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_24

    .line 580
    :sswitch_data_b0
    .sparse-switch
        0x1f7 -> :sswitch_26
        0x1f9 -> :sswitch_6c
        0x1d56 -> :sswitch_14
        0x1d61 -> :sswitch_26
        0x1d6b -> :sswitch_6c
        0x1d75 -> :sswitch_9e
    .end sparse-switch
.end method

.method protected kindToInserter(I)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 3
    .parameter "kind"

    .prologue
    .line 654
    packed-switch p1, :pswitch_data_12

    .line 662
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToInserter(I)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    :goto_7
    return-object v0

    .line 656
    :pswitch_8
    iget-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mStuffsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_7

    .line 658
    :pswitch_b
    iget-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mStuffsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_7

    .line 660
    :pswitch_e
    iget-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mSnsIdsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    goto :goto_7

    .line 654
    nop

    :pswitch_data_12
    .packed-switch 0x7
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method protected kindToTable(I)Ljava/lang/String;
    .registers 3
    .parameter "kind"

    .prologue
    .line 639
    packed-switch p1, :pswitch_data_12

    .line 647
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->kindToTable(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 641
    :pswitch_8
    sget-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    goto :goto_7

    .line 643
    :pswitch_b
    sget-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    goto :goto_7

    .line 645
    :pswitch_e
    sget-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    goto :goto_7

    .line 639
    nop

    :pswitch_data_12
    .packed-switch 0x7
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method protected lookupIsPrimaryInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .registers 15
    .parameter "table"
    .parameter "projection"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1007
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_38

    .line 1008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected only zero or one rows, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_33

    .line 1028
    :catchall_33
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1011
    :cond_38
    :try_start_38
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_33

    move-result v0

    if-nez v0, :cond_43

    .line 1012
    const/4 v0, 0x0

    .line 1028
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_42
    return-object v0

    .line 1013
    :cond_43
    :try_start_43
    new-instance v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    invoke-direct {v9, p0}, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;-><init>(Lcom/android/providers/contacts/ContactsProvider;)V

    .line 1014
    .local v9, info:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    :goto_50
    iput-boolean v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->isPrimary:Z

    .line 1015
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->person:Ljava/lang/Long;

    .line 1016
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->id:Ljava/lang/Long;

    .line 1017
    sget-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sIsPrimaryProjectionWithKind:[Ljava/lang/String;

    if-ne p2, v0, :cond_76

    .line 1018
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider;->lookupIsPrimaryInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_33

    move-result-object v0

    .line 1028
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 1014
    :cond_74
    const/4 v0, 0x0

    goto :goto_50

    .line 1020
    :cond_76
    :try_start_76
    sget-object v0, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1021
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->kind:Ljava/lang/Integer;
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_33

    .line 1028
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_42

    .line 1023
    :cond_8b
    :try_start_8b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider;->lookupIsPrimaryInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_33

    move-result-object v0

    .line 1028
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_42
.end method

.method protected lookupIsPrimaryInfoWithoutType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    .registers 16
    .parameter "table"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Lcom/android/providers/contacts/LgeContactsProvider;->sIsPrimaryProjectionWithoutKind:[Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 802
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_3a

    .line 803
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected only zero or one rows, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_35

    .line 815
    :catchall_35
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 806
    :cond_3a
    :try_start_3a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_35

    move-result v0

    if-nez v0, :cond_45

    .line 815
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    :goto_44
    return-object v0

    .line 808
    :cond_45
    :try_start_45
    new-instance v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    invoke-direct {v9, p0}, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;-><init>(Lcom/android/providers/contacts/ContactsProvider;)V

    .line 809
    .local v9, info:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    new-instance v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;

    .end local v9           #info:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    invoke-direct {v9, p0}, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;-><init>(Lcom/android/providers/contacts/ContactsProvider;)V

    .line 810
    .restart local v9       #info:Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_74

    move v0, v10

    :goto_57
    iput-boolean v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->isPrimary:Z

    .line 811
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->person:Ljava/lang/Long;

    .line 812
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->id:Ljava/lang/Long;
    :try_end_6f
    .catchall {:try_start_45 .. :try_end_6f} :catchall_35

    .line 815
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_44

    :cond_74
    move v0, v11

    .line 810
    goto :goto_57
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsProvider;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 79
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mStuffsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 81
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mSnsIdsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 83
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v1, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 84
    return-void
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 229
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 230
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v14, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 231
    .local v14, notificationUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 234
    .local v8, groupBy:Ljava/lang/String;
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 241
    .local v12, match:I
    sparse-switch v12, :sswitch_data_592

    .line 484
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 495
    .end local p1
    :goto_18
    return-object v5

    .line 245
    .restart local p1
    :sswitch_19
    const-string v5, "LgeContactsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "## LgeContactsProvider.query: url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", match is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v5, "groupmembership._id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 248
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 251
    :sswitch_57
    const-string v5, "LgeContactsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "## LgeContactsProvider.query: url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", match is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "groupmembership.person="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 254
    const-string v5, "groups LEFT OUTER JOIN groupphotos ON (groupphotos.group_id=groups._id) LEFT OUTER JOIN drmphotos ON (drmphotos.group_id=groups._id), groupmembership"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 255
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupMembershipwithPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 488
    :cond_c3
    :goto_c3
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 489
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 491
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_e7

    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->isTemporary()Z

    move-result v5

    if-nez v5, :cond_e7

    .line 492
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v11, v5, v14}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_e7
    move-object v5, v11

    .line 495
    goto/16 :goto_18

    .line 259
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #c:Landroid/database/Cursor;
    .restart local p1
    :sswitch_ea
    const-string v5, "LgeContactsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "## LgeContactsProvider.query: url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", match is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v5, "groups LEFT OUTER JOIN groupphotos ON (groupphotos.group_id=groups._id) LEFT OUTER JOIN drmphotos ON (drmphotos.group_id=groups._id)"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 261
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsWithPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_c3

    .line 267
    :sswitch_11b
    const-string v5, "groups LEFT OUTER JOIN groupphotos ON (groupphotos.group_id=groups._id) LEFT OUTER JOIN drmphotos ON (drmphotos.group_id=groups._id)"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 268
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsWithPhotoProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_c3

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/providers/contacts/LgeContactsProvider;->buildGroupsLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_c3

    .line 275
    :sswitch_13c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_157

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/LgeContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 277
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 281
    :cond_157
    :sswitch_157
    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/LgeContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "people._id IN (SELECT person FROM groupmembership JOIN groups ON (group_id=groups._id OR (group_sync_id = groups._sync_id AND group_sync_account = groups._sync_account)) WHERE groups._id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 290
    .restart local p1
    :sswitch_18a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_1a5

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/LgeContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 292
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 296
    :cond_1a5
    :sswitch_1a5
    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/LgeContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "people._id NOT IN (SELECT person FROM groupmembership JOIN groups ON (group_id=groups._id OR (group_sync_id = groups._sync_id AND group_sync_account = groups._sync_account)) WHERE groups.name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 306
    .restart local p1
    :sswitch_1d9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_1f4

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/LgeContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 308
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 312
    :cond_1f4
    :sswitch_1f4
    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/LgeContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "people._id NOT IN (SELECT person FROM groupmembership JOIN groups ON (group_id=groups._id OR (group_sync_id = groups._sync_id AND group_sync_account = groups._sync_account)) WHERE groups._id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 321
    .restart local p1
    :sswitch_227
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_242

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/LgeContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 323
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 327
    :cond_242
    :sswitch_242
    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/LgeContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 328
    const-string v5, "people._id NOT IN (SELECT person FROM groupmembership)"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 332
    :sswitch_250
    const-string v5, "groups.name="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 334
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 335
    const-string v5, "groups, groupmembership"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 336
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupMembershipProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 337
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsJoinString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 341
    .restart local p1
    :sswitch_27d
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsTable:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 342
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 343
    const-string v5, "starred=1"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 347
    :sswitch_28e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 350
    :sswitch_2b2
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosTable:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 351
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 355
    .restart local p1
    :sswitch_2be
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 356
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosTable:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 357
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 363
    .restart local p1
    :sswitch_2ee
    if-eqz p5, :cond_303

    const-string v5, "name ASC"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_303

    .line 364
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Sort ordering not allowed for this URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :cond_303
    const-string p5, "suggest_text_1 COLLATE LOCALIZED ASC"

    .line 369
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_318

    .line 370
    const-string v13, "(system_id IS NULL AND name!=\'Starred in Android\')"

    .line 377
    .local v13, newSelection:Ljava/lang/String;
    :goto_30d
    move-object/from16 p3, v13

    .line 381
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/LgeContactsProvider;->handleGroupsSearchSuggestionsQuery(Landroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto/16 :goto_c3

    .line 373
    .end local v13           #newSelection:Ljava/lang/String;
    :cond_318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "system_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NULL AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Starred in Android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #newSelection:Ljava/lang/String;
    goto :goto_30d

    .line 386
    .end local v13           #newSelection:Ljava/lang/String;
    :sswitch_359
    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/LgeContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "system_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "My profile"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 392
    :sswitch_37e
    const-string v5, "stuffs, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 393
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 394
    const-string v5, "people._id = stuffs.person AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 399
    .restart local p1
    :sswitch_3a0
    const-string v5, "stuffs, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 400
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 401
    const-string v5, "people._id = stuffs.person AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 403
    const-string v5, " AND stuffs._id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 408
    .restart local p1
    :sswitch_3d5
    const-string v5, "sns_ids, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 409
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 410
    const-string v5, "people._id = sns_ids.person AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 415
    .restart local p1
    :sswitch_3f7
    const-string v5, "sns_ids, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 416
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 417
    const-string v5, "people._id = sns_ids.person AND person="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 419
    const-string v5, " AND sns_ids._id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 424
    .restart local p1
    :sswitch_42c
    const-string v5, "stuffs, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 425
    const-string v5, "people._id = stuffs.person"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 426
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 430
    :sswitch_43d
    const-string v5, "stuffs, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "people._id = stuffs.person AND stuffs._id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 433
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 437
    .restart local p1
    :sswitch_46d
    const-string v5, "sns_ids, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 438
    const-string v5, "people._id = sns_ids.person"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 439
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 443
    :sswitch_47e
    const-string v5, "sns_ids, people"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "people._id = sns_ids.person AND sns_ids._id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 446
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 450
    .restart local p1
    :sswitch_4ae
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_4c9

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/LgeContactsProvider;->buildPeopleLookupWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 452
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 456
    :cond_4c9
    :sswitch_4c9
    move-object v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/LgeContactsProvider;->setTablesAndProjectionMapForPeople(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "people._id IN (SELECT person FROM sns_ids WHERE sns_ids.sn_site_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    .line 464
    .restart local p1
    :sswitch_502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 467
    :sswitch_526
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 468
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 472
    .restart local p1
    :sswitch_532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 473
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 474
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 478
    .restart local p1
    :sswitch_562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "person="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 479
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 480
    sget-object v5, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_c3

    .line 241
    :sswitch_data_592
    .sparse-switch
        0xd -> :sswitch_57
        0xe -> :sswitch_19
        0x1f4 -> :sswitch_359
        0x1f7 -> :sswitch_37e
        0x1f8 -> :sswitch_3a0
        0x1f9 -> :sswitch_3d5
        0x1fa -> :sswitch_3f7
        0x1fb -> :sswitch_4c9
        0x1fc -> :sswitch_4ae
        0x1fd -> :sswitch_562
        0x1d4c -> :sswitch_2ee
        0x1d56 -> :sswitch_2b2
        0x1d57 -> :sswitch_28e
        0x1d61 -> :sswitch_42c
        0x1d62 -> :sswitch_43d
        0x1d6b -> :sswitch_46d
        0x1d6c -> :sswitch_47e
        0x1d75 -> :sswitch_526
        0x1d76 -> :sswitch_502
        0x1f40 -> :sswitch_ea
        0x2134 -> :sswitch_27d
        0x2135 -> :sswitch_2be
        0x2136 -> :sswitch_11b
        0x2137 -> :sswitch_157
        0x2138 -> :sswitch_13c
        0x2139 -> :sswitch_1a5
        0x213a -> :sswitch_18a
        0x213b -> :sswitch_1f4
        0x213c -> :sswitch_1d9
        0x213d -> :sswitch_242
        0x213e -> :sswitch_227
        0x213f -> :sswitch_532
        0x251c -> :sswitch_250
    .end sparse-switch
.end method

.method public updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "url"
    .parameter "values"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 893
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v8, Lcom/android/providers/contacts/LgeContactsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 895
    .local v4, matchedUriId:I
    sparse-switch v4, :sswitch_data_1ae

    .line 955
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 976
    .end local p1
    :goto_11
    return v8

    .line 897
    .restart local p1
    :sswitch_12
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    .local v0, changedItemId:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/providers/contacts/LgeContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8, p4}, Lcom/android/providers/contacts/LgeContactsProvider;->updateGroupMembership(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    goto :goto_11

    .line 901
    .end local v0           #changedItemId:Ljava/lang/String;
    :sswitch_26
    sget-object v6, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    .line 902
    .local v6, tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 958
    .restart local v0       #changedItemId:Ljava/lang/String;
    :goto_33
    invoke-static {v0, p3}, Lcom/android/providers/contacts/LgeContactsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 959
    .local v7, where:Ljava/lang/String;
    invoke-virtual {v1, v6, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 961
    .local v5, numRowsUpdated:I
    if-lez v5, :cond_46

    if-eqz v0, :cond_46

    .line 962
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 964
    .local v2, itemId:J
    sparse-switch v4, :sswitch_data_1d8

    .end local v2           #itemId:J
    .end local p1
    :cond_46
    :goto_46
    move v8, v5

    .line 976
    goto :goto_11

    .line 905
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v5           #numRowsUpdated:I
    .end local v6           #tableToChange:Ljava/lang/String;
    .end local v7           #where:Ljava/lang/String;
    .restart local p1
    :sswitch_48
    sget-object v6, Lcom/android/providers/contacts/LgeContactsProvider;->sStuffsTable:Ljava/lang/String;

    .line 906
    .restart local v6       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 907
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_33

    .line 909
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v6           #tableToChange:Ljava/lang/String;
    :sswitch_56
    sget-object v6, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    .line 910
    .restart local v6       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 911
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_33

    .line 913
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v6           #tableToChange:Ljava/lang/String;
    :sswitch_64
    sget-object v6, Lcom/android/providers/contacts/LgeContactsProvider;->sSnsIdsTable:Ljava/lang/String;

    .line 914
    .restart local v6       #tableToChange:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 915
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_33

    .line 918
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v6           #tableToChange:Ljava/lang/String;
    :sswitch_72
    iget-object v8, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 919
    iget-object v8, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 921
    const/16 v8, 0x2135

    if-ne v4, v8, :cond_c4

    .line 922
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "group_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .local v7, where:Ljava/lang/StringBuilder;
    :goto_a3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b6

    .line 927
    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 931
    :cond_b6
    sget-object v8, Lcom/android/providers/contacts/LgeContactsProvider;->sGroupPhotosTable:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v9, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_11

    .line 924
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_c4
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v7       #where:Ljava/lang/StringBuilder;
    goto :goto_a3

    .line 936
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local p1
    :sswitch_e8
    iget-object v8, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 937
    iget-object v8, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 939
    const/16 v8, 0x1fd

    if-ne v4, v8, :cond_13a

    .line 940
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "person="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    .restart local v7       #where:Ljava/lang/StringBuilder;
    :goto_119
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12c

    .line 947
    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 951
    :cond_12c
    sget-object v8, Lcom/android/providers/contacts/LgeContactsProvider;->sDrmPhotosTable:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/providers/contacts/LgeContactsProvider;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v9, v10, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_11

    .line 941
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_13a
    const/16 v8, 0x213f

    if-ne v4, v8, :cond_162

    .line 942
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "group_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v7       #where:Ljava/lang/StringBuilder;
    goto :goto_119

    .line 944
    .end local v7           #where:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_162
    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v7       #where:Ljava/lang/StringBuilder;
    goto :goto_119

    .line 967
    .restart local v0       #changedItemId:Ljava/lang/String;
    .restart local v2       #itemId:J
    .restart local v5       #numRowsUpdated:I
    .restart local v6       #tableToChange:Ljava/lang/String;
    .local v7, where:Ljava/lang/String;
    .restart local p1
    :sswitch_186
    const/16 v8, 0x1fa

    if-ne v4, v8, :cond_1ac

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_19d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "isprimary"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v6, v8, v9, v10}, Lcom/android/providers/contacts/LgeContactsProvider;->fixupPrimaryAfterUpdateWithoutType(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    goto/16 :goto_46

    .restart local p1
    :cond_1ac
    const/4 v8, 0x0

    goto :goto_19d

    .line 895
    :sswitch_data_1ae
    .sparse-switch
        0xe -> :sswitch_12
        0x1f8 -> :sswitch_26
        0x1fa -> :sswitch_56
        0x1fd -> :sswitch_e8
        0x1d57 -> :sswitch_72
        0x1d62 -> :sswitch_48
        0x1d6c -> :sswitch_64
        0x1d76 -> :sswitch_e8
        0x2135 -> :sswitch_72
        0x213f -> :sswitch_e8
    .end sparse-switch

    .line 964
    :sswitch_data_1d8
    .sparse-switch
        0x1fa -> :sswitch_186
        0x1d6c -> :sswitch_186
    .end sparse-switch
.end method
