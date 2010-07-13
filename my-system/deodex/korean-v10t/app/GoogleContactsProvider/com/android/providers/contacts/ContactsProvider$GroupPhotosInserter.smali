.class Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;
.super Ljava/lang/Object;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupPhotosInserter"
.end annotation


# static fields
.field private static final mDrmPhotosTable:Ljava/lang/String; = "drmphotos"

.field private static final mGroupPhotosTable:Ljava/lang/String; = "groupphotos"


# instance fields
.field private mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter
    .parameter "db"

    .prologue
    const/4 v0, 0x0

    .line 5024
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5021
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 5022
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 5026
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "groupphotos"

    invoke-direct {v0, p2, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 5029
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "drmphotos"

    invoke-direct {v0, p2, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 5031
    return-void
.end method


# virtual methods
.method public createPhoto(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 11
    .parameter "db"
    .parameter "groupId"

    .prologue
    const/4 v4, 0x0

    const-string v6, "group_id="

    const-string v5, "group_id"

    .line 5034
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5035
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v1, :cond_37

    .line 5036
    const-string v1, "groupphotos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5037
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 5038
    const-string v1, "group_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5039
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mGroupPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 5041
    :cond_37
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v1, :cond_64

    .line 5042
    const-string v1, "drmphotos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5043
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 5044
    const-string v1, "group_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5045
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$GroupPhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 5047
    :cond_64
    return-void
.end method
