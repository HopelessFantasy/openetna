.class public Lcom/android/providers/contacts/ContactsProvider$PersonMerger;
.super Landroid/content/AbstractTableMerger;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PersonMerger"
.end annotation


# instance fields
.field mCursorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider;)V
    .registers 8
    .parameter

    .prologue
    .line 3525
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    .line 3526
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider;->sPeopleTable:Ljava/lang/String;

    sget-object v3, Lcom/android/providers/contacts/ContactsProvider;->sPeopleRawURL:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sDeletedPeopleTable:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sDeletedPeopleURL:Landroid/net/Uri;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 3523
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    .line 3524
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mCursorMap:Ljava/util/Map;

    .line 3528
    return-void
.end method

.method private doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "db"
    .parameter "table"
    .parameter "projection"
    .parameter "personId"
    .parameter "orderBy"

    .prologue
    .line 4179
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 4180
    .local v4, selectArgs:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-ne p1, v1, :cond_50

    const-string v1, "local_"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4181
    .local v9, key:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mCursorMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteCursor;

    .line 4184
    .local v8, cursor:Landroid/database/sqlite/SQLiteCursor;
    if-eqz v8, :cond_39

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteCursor;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eq v0, p1, :cond_39

    .line 4185
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 4186
    const/4 v8, 0x0

    .line 4191
    :cond_39
    if-nez v8, :cond_53

    .line 4192
    const-string v3, "person=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .end local v8           #cursor:Landroid/database/sqlite/SQLiteCursor;
    check-cast v8, Landroid/database/sqlite/SQLiteCursor;

    .line 4194
    .restart local v8       #cursor:Landroid/database/sqlite/SQLiteCursor;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mCursorMap:Ljava/util/Map;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4199
    :goto_4f
    return-object v8

    .line 4180
    .end local v8           #cursor:Landroid/database/sqlite/SQLiteCursor;
    .end local v9           #key:Ljava/lang/String;
    :cond_50
    const-string v1, "remote_"

    goto :goto_19

    .line 4196
    .restart local v8       #cursor:Landroid/database/sqlite/SQLiteCursor;
    .restart local v9       #key:Ljava/lang/String;
    :cond_53
    invoke-virtual {v8, v4}, Landroid/database/sqlite/SQLiteCursor;->setSelectionArguments([Ljava/lang/String;)V

    .line 4197
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteCursor;->requery()Z

    goto :goto_4f
.end method

.method private savePrimaryId(Ljava/util/Map;Ljava/lang/Integer;J)V
    .registers 8
    .parameter
    .parameter "kind"
    .parameter "localId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 4143
    .local p1, primaryDiffs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "more than one of kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was marked as primary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4147
    :cond_25
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    return-void
.end method

.method private setSinglePrimary(Ljava/util/Map;Ljava/util/Map;JI)Ljava/lang/Long;
    .registers 10
    .parameter
    .parameter
    .parameter "localPersonID"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;JI)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .local p1, diffsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p2, localMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 4154
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v0, v1

    .line 4155
    .local v0, primaryId:Ljava/lang/Long;
    :goto_16
    if-nez v0, :cond_2d

    .line 4156
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v0, v1

    .line 4158
    :cond_2d
    :goto_2d
    if-nez v0, :cond_39

    .line 4159
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, p5, v2, v3}, Lcom/android/providers/contacts/ContactsProvider;->access$5900(Lcom/android/providers/contacts/ContactsProvider;ILjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 4161
    :cond_39
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, p5, v2, v0}, Lcom/android/providers/contacts/ContactsProvider;->access$6000(Lcom/android/providers/contacts/ContactsProvider;ILjava/lang/Long;Ljava/lang/Long;)V

    .line 4162
    return-object v0

    .end local v0           #primaryId:Ljava/lang/Long;
    :cond_43
    move-object v0, v3

    .line 4154
    goto :goto_16

    .restart local v0       #primaryId:Ljava/lang/Long;
    :cond_45
    move-object v0, v3

    .line 4156
    goto :goto_2d
.end method


# virtual methods
.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 45
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 3539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    .line 3541
    .local v18, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v30, 0x0

    .line 3542
    .local v30, localPrimaryPhoneId:Ljava/lang/Long;
    const/16 v28, 0x0

    .line 3543
    .local v28, localPrimaryEmailId:Ljava/lang/Long;
    const/16 v29, 0x0

    .line 3546
    .local v29, localPrimaryOrganizationId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3547
    const-string v5, "_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$100(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3548
    const-string v5, "_sync_time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$200(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3549
    const-string v5, "_sync_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$300(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3550
    const-string v5, "_sync_dirty"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$400(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3551
    const-string v5, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$500(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3552
    const-string v5, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$600(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3553
    const-string v5, "phonetic_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$700(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3554
    const-string v5, "notes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$800(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$000(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move-result-wide v26

    .line 3558
    .local v26, localPersonID:J
    check-cast p1, Lcom/android/providers/contacts/ContactsProvider;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 3559
    .local v6, diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3562
    .local v9, diffsPersonID:J
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3564
    .local v15, c:Landroid/database/Cursor;
    :try_start_128
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_226

    .line 3565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "person="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v5, v7, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3567
    const-string v5, "_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v8, v0

    invoke-static {v8}, Lcom/android/providers/contacts/ContactsProvider;->access$1000(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v8

    invoke-static {v15, v5, v7, v8}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3569
    const-string v5, "_sync_time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v8, v0

    invoke-static {v8}, Lcom/android/providers/contacts/ContactsProvider;->access$1100(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v8

    invoke-static {v15, v5, v7, v8}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3571
    const-string v5, "_sync_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v8, v0

    invoke-static {v8}, Lcom/android/providers/contacts/ContactsProvider;->access$1200(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v8

    invoke-static {v15, v5, v7, v8}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3573
    const-string v5, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v8, v0

    invoke-static {v8}, Lcom/android/providers/contacts/ContactsProvider;->access$1300(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v8

    invoke-static {v15, v5, v7, v8}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3575
    const-string v5, "exists_on_server"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v8, v0

    invoke-static {v8}, Lcom/android/providers/contacts/ContactsProvider;->access$1400(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v8

    invoke-static {v15, v5, v7, v8}, Landroid/database/DatabaseUtils;->cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V

    .line 3577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$1500(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    const/16 p1, 0x0

    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$1600(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$1700(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$900(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_226
    .catchall {:try_start_128 .. :try_end_226} :catchall_357

    .line 3583
    :cond_226
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3587
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "._id"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3588
    if-eqz v15, :cond_388

    .line 3589
    const/16 v32, 0x0

    .line 3590
    .local v32, newPrimaryId:Ljava/lang/Long;
    const/4 v14, -0x1

    .line 3591
    .local v14, bestRank:I
    const-string v5, "label"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 3592
    .local v25, labelIndex:I
    const-string v5, "type"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 3593
    .local v40, typeIndex:I
    const-string v5, "number"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 3594
    .local v33, numberIndex:I
    const-string v5, "number_key"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 3595
    .local v22, keyIndex:I
    const-string v5, "isprimary"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 3596
    .local v34, primaryIndex:I
    :cond_26a
    :goto_26a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_381

    .line 3597
    move-object v0, v15

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 3598
    .local v39, type:I
    move-object v0, v15

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3599
    .local v20, isPrimaryValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$1900(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2000(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2100(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2200(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2300(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2400(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move-result-wide v36

    .line 3608
    .local v36, rowId:J
    if-eqz v20, :cond_360

    .line 3609
    if-eqz v30, :cond_35c

    .line 3610
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more than one phone was marked as primary, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v15}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3583
    .end local v14           #bestRank:I
    .end local v20           #isPrimaryValue:I
    .end local v22           #keyIndex:I
    .end local v25           #labelIndex:I
    .end local v32           #newPrimaryId:Ljava/lang/Long;
    .end local v33           #numberIndex:I
    .end local v34           #primaryIndex:I
    .end local v36           #rowId:J
    .end local v39           #type:I
    .end local v40           #typeIndex:I
    .restart local v6       #diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_357
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v5

    .line 3614
    .restart local v14       #bestRank:I
    .restart local v20       #isPrimaryValue:I
    .restart local v22       #keyIndex:I
    .restart local v25       #labelIndex:I
    .restart local v32       #newPrimaryId:Ljava/lang/Long;
    .restart local v33       #numberIndex:I
    .restart local v34       #primaryIndex:I
    .restart local v36       #rowId:J
    .restart local v39       #type:I
    .restart local v40       #typeIndex:I
    :cond_35c
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 3617
    :cond_360
    if-nez v30, :cond_26a

    .line 3618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->access$2500(Lcom/android/providers/contacts/ContactsProvider;Ljava/lang/String;I)I

    move-result v35

    .line 3619
    .local v35, rank:I
    const/4 v5, -0x1

    if-eq v14, v5, :cond_379

    move/from16 v0, v35

    move v1, v14

    if-ge v0, v1, :cond_26a

    .line 3620
    :cond_379
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 3621
    move/from16 v14, v35

    goto/16 :goto_26a

    .line 3625
    .end local v20           #isPrimaryValue:I
    .end local v35           #rank:I
    .end local v36           #rowId:J
    .end local v39           #type:I
    :cond_381
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3627
    if-nez v30, :cond_388

    .line 3628
    move-object/from16 v30, v32

    .line 3633
    .end local v14           #bestRank:I
    .end local v22           #keyIndex:I
    .end local v25           #labelIndex:I
    .end local v32           #newPrimaryId:Ljava/lang/Long;
    .end local v33           #numberIndex:I
    .end local v34           #primaryIndex:I
    .end local v40           #typeIndex:I
    :cond_388
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "._id"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3635
    if-eqz v15, :cond_50b

    .line 3636
    const/16 v32, 0x0

    .line 3637
    .restart local v32       #newPrimaryId:Ljava/lang/Long;
    const/4 v14, -0x1

    .line 3638
    .restart local v14       #bestRank:I
    const-string v5, "label"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 3639
    .restart local v25       #labelIndex:I
    const-string v5, "kind"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 3640
    .local v24, kindIndex:I
    const-string v5, "type"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 3641
    .restart local v40       #typeIndex:I
    const-string v5, "data"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 3642
    .local v17, dataIndex:I
    const-string v5, "aux_data"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 3643
    .local v13, auxDataIndex:I
    const-string v5, "isprimary"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 3644
    .restart local v34       #primaryIndex:I
    :cond_3cf
    :goto_3cf
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_504

    .line 3645
    move-object v0, v15

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 3646
    .restart local v39       #type:I
    move-object v0, v15

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 3647
    .local v23, kind:I
    move-object v0, v15

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3648
    .restart local v20       #isPrimaryValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2700(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2800(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$2900(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3000(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3100(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3200(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3300(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move-result-wide v36

    .line 3657
    .restart local v36       #rowId:J
    const/4 v5, 0x1

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_4e3

    if-eqz v20, :cond_4e3

    .line 3658
    if-eqz v28, :cond_4df

    .line 3659
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more than one email was marked as primary, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v15}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3663
    .restart local v6       #diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4df
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 3666
    :cond_4e3
    if-nez v28, :cond_3cf

    .line 3667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->access$2500(Lcom/android/providers/contacts/ContactsProvider;Ljava/lang/String;I)I

    move-result v35

    .line 3668
    .restart local v35       #rank:I
    const/4 v5, -0x1

    if-eq v14, v5, :cond_4fc

    move/from16 v0, v35

    move v1, v14

    if-ge v0, v1, :cond_3cf

    .line 3669
    :cond_4fc
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 3670
    move/from16 v14, v35

    goto/16 :goto_3cf

    .line 3674
    .end local v20           #isPrimaryValue:I
    .end local v23           #kind:I
    .end local v35           #rank:I
    .end local v36           #rowId:J
    .end local v39           #type:I
    :cond_504
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3676
    if-nez v28, :cond_50b

    .line 3677
    move-object/from16 v28, v32

    .line 3682
    .end local v13           #auxDataIndex:I
    .end local v14           #bestRank:I
    .end local v17           #dataIndex:I
    .end local v24           #kindIndex:I
    .end local v25           #labelIndex:I
    .end local v32           #newPrimaryId:Ljava/lang/Long;
    .end local v34           #primaryIndex:I
    .end local v40           #typeIndex:I
    :cond_50b
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "._id"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3685
    const/16 v32, 0x0

    .line 3686
    .restart local v32       #newPrimaryId:Ljava/lang/Long;
    const/4 v14, -0x1

    .line 3687
    .restart local v14       #bestRank:I
    :try_start_52c
    const-string v5, "label"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 3688
    .restart local v25       #labelIndex:I
    const-string v5, "type"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 3689
    .restart local v40       #typeIndex:I
    const-string v5, "company"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 3690
    .local v16, companyIndex:I
    const-string v5, "title"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 3691
    .local v38, titleIndex:I
    const-string v5, "isprimary"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 3692
    .restart local v34       #primaryIndex:I
    :cond_54a
    :goto_54a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_65e

    .line 3693
    move-object v0, v15

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 3694
    .restart local v39       #type:I
    move-object v0, v15

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3695
    .restart local v20       #isPrimaryValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3500(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3600(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3700(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3800(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$3900(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$4000(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 3702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move-result-wide v36

    .line 3703
    .restart local v36       #rowId:J
    if-eqz v20, :cond_63d

    .line 3704
    if-eqz v29, :cond_639

    .line 3705
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more than one organization was marked as primary, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v15}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_634
    .catchall {:try_start_52c .. :try_end_634} :catchall_634

    .line 3725
    .end local v16           #companyIndex:I
    .end local v20           #isPrimaryValue:I
    .end local v25           #labelIndex:I
    .end local v34           #primaryIndex:I
    .end local v36           #rowId:J
    .end local v38           #titleIndex:I
    .end local v39           #type:I
    .end local v40           #typeIndex:I
    :catchall_634
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v5

    .line 3709
    .restart local v6       #diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16       #companyIndex:I
    .restart local v20       #isPrimaryValue:I
    .restart local v25       #labelIndex:I
    .restart local v34       #primaryIndex:I
    .restart local v36       #rowId:J
    .restart local v38       #titleIndex:I
    .restart local v39       #type:I
    .restart local v40       #typeIndex:I
    :cond_639
    :try_start_639
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 3712
    :cond_63d
    if-nez v29, :cond_54a

    .line 3713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->access$2500(Lcom/android/providers/contacts/ContactsProvider;Ljava/lang/String;I)I

    move-result v35

    .line 3714
    .restart local v35       #rank:I
    const/4 v5, -0x1

    if-eq v14, v5, :cond_656

    move/from16 v0, v35

    move v1, v14

    if-ge v0, v1, :cond_54a

    .line 3715
    :cond_656
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_659
    .catchall {:try_start_639 .. :try_end_659} :catchall_634

    move-result-object v32

    .line 3716
    move/from16 v14, v35

    goto/16 :goto_54a

    .line 3721
    .end local v20           #isPrimaryValue:I
    .end local v35           #rank:I
    .end local v36           #rowId:J
    .end local v39           #type:I
    :cond_65e
    if-nez v29, :cond_662

    .line 3722
    move-object/from16 v29, v32

    .line 3725
    :cond_662
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3729
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "._id"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3732
    :try_start_683
    const-string v5, "group_sync_account"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 3734
    .local v12, accountIndex:I
    const-string v5, "group_sync_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 3735
    .local v19, idIndex:I
    :goto_68f
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_701

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$4200(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v5

    move v1, v7

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$4300(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/providers/contacts/ContactsProvider;->access$4400(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v7

    move-object v0, v15

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_6fb
    .catchall {:try_start_683 .. :try_end_6fb} :catchall_6fc

    goto :goto_68f

    .line 3743
    .end local v12           #accountIndex:I
    .end local v19           #idIndex:I
    :catchall_6fc
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v5

    .restart local v12       #accountIndex:I
    .restart local v19       #idIndex:I
    :cond_701
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3747
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "._id"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3749
    :try_start_722
    const-string v5, "name"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 3750
    .local v31, nameIndex:I
    const-string v5, "value"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 3751
    .end local v6           #diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    .local v41, valueIndex:I
    :goto_72e
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7a3

    .line 3752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4500(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 3753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4500(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$4600(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v6

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 3754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4500(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$4700(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v6

    move-object v0, v15

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4500(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/contacts/ContactsProvider;->access$4800(Lcom/android/providers/contacts/ContactsProvider;)I

    move-result v6

    move-object v0, v15

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 3756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4500(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_79d
    .catchall {:try_start_722 .. :try_end_79d} :catchall_79e

    goto :goto_72e

    .line 3759
    .end local v31           #nameIndex:I
    .end local v41           #valueIndex:I
    :catchall_79e
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v5

    .restart local v31       #nameIndex:I
    .restart local v41       #valueIndex:I
    :cond_7a3
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "_sync_dirty"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "primary_phone"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "primary_email"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "primary_organization"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->access$4900(Lcom/android/providers/contacts/ContactsProvider;J)Z

    move-result v21

    .line 3772
    .local v21, isStarred:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v6, "starred"

    if-eqz v21, :cond_82f

    const/4 v7, 0x1

    :goto_7fd
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mTable:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3774
    return-void

    .line 3772
    :cond_82f
    const/4 v7, 0x0

    goto :goto_7fd
.end method

.method protected notifyChanges()V
    .registers 5

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 3535
    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 13
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 3784
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 3785
    return-void
.end method

.method protected updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V
    .registers 43
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"
    .parameter "conflicts"

    .prologue
    .line 3789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 3802
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "_id"

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p5

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 3810
    .local v17, diffsPersonID:J
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 3811
    .local v33, primaryLocal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 3817
    .local v31, primaryDiffs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 3818
    .local v15, cRemote:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 3819
    .local v14, cLocal:Landroid/database/Cursor;
    check-cast p4, Lcom/android/providers/contacts/ContactsProvider;

    .end local p4
    invoke-virtual/range {p4 .. p4}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 3821
    .local v16, diffsDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2b
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5000()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3822
    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5000()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-wide/from16 v11, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3825
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 3826
    .local v20, idColLocal:I
    const-string v5, "isprimary"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 3827
    .local v21, isPrimaryColLocal:I
    const-string v5, "isprimary"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 3829
    .local v22, isPrimaryColRemote:I
    new-instance v25, Landroid/database/CursorJoiner;

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5100()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5100()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    move-object v1, v14

    move-object v2, v5

    move-object v3, v15

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 3831
    .local v25, joiner:Landroid/database/CursorJoiner;
    invoke-virtual/range {v25 .. v25}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_74
    :goto_74
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_186

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/database/CursorJoiner$Result;

    .line 3832
    .local v24, joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v24 .. v24}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_806

    goto :goto_74

    .line 3834
    :pswitch_8c
    if-nez p6, :cond_bb

    .line 3835
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_2b .. :try_end_ae} :catchall_af

    goto :goto_74

    .line 3874
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #idColLocal:I
    .end local v21           #isPrimaryColLocal:I
    .end local v22           #isPrimaryColRemote:I
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v25           #joiner:Landroid/database/CursorJoiner;
    :catchall_af
    move-exception v5

    if-eqz v15, :cond_b5

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3875
    :cond_b5
    if-eqz v14, :cond_ba

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    :cond_ba
    throw v5

    .line 3838
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v20       #idColLocal:I
    .restart local v21       #isPrimaryColLocal:I
    .restart local v22       #isPrimaryColRemote:I
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    :cond_bb
    :try_start_bb
    move-object v0, v14

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_74

    .line 3839
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->savePrimaryId(Ljava/util/Map;Ljava/lang/Integer;J)V

    goto :goto_74

    .line 3847
    :pswitch_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 3848
    const-string v5, "type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3850
    const-string v5, "label"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3852
    const-string v5, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3854
    const-string v5, "number_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3856
    const-string v5, "isprimary"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3860
    sget-object v5, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    move-object/from16 v0, v24

    move-object v1, v5

    if-ne v0, v1, :cond_15d

    .line 3861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "person"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$1800(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-virtual {v5, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v29

    .line 3867
    .local v29, localId:J
    :goto_13f
    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_74

    .line 3868
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->savePrimaryId(Ljava/util/Map;Ljava/lang/Integer;J)V

    goto/16 :goto_74

    .line 3864
    .end local v29           #localId:J
    :cond_15d
    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3865
    .restart local v29       #localId:J
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPhonesTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_bb .. :try_end_185} :catchall_af

    goto :goto_13f

    .line 3874
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v29           #localId:J
    :cond_186
    if-eqz v15, :cond_18b

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3875
    :cond_18b
    if-eqz v14, :cond_190

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 3879
    :cond_190
    const/4 v15, 0x0

    .line 3880
    const/4 v14, 0x0

    .line 3882
    :try_start_192
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5200()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3884
    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5200()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-wide/from16 v11, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3887
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 3888
    const-string v5, "kind"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 3889
    .local v27, kindColLocal:I
    const-string v5, "kind"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 3890
    .local v28, kindColRemote:I
    const-string v5, "isprimary"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 3892
    const-string v5, "isprimary"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 3895
    new-instance v25, Landroid/database/CursorJoiner;

    .end local v25           #joiner:Landroid/database/CursorJoiner;
    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5300()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5300()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    move-object v1, v14

    move-object v2, v5

    move-object v3, v15

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 3897
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    invoke-virtual/range {v25 .. v25}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1e7
    :goto_1e7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/database/CursorJoiner$Result;

    .line 3898
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v24 .. v24}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_810

    goto :goto_1e7

    .line 3900
    :pswitch_1ff
    if-nez p6, :cond_22e

    .line 3901
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_221
    .catchall {:try_start_192 .. :try_end_221} :catchall_222

    goto :goto_1e7

    .line 3942
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v25           #joiner:Landroid/database/CursorJoiner;
    .end local v27           #kindColLocal:I
    .end local v28           #kindColRemote:I
    :catchall_222
    move-exception v5

    if-eqz v15, :cond_228

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3943
    :cond_228
    if-eqz v14, :cond_22d

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    :cond_22d
    throw v5

    .line 3904
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    .restart local v27       #kindColLocal:I
    .restart local v28       #kindColRemote:I
    :cond_22e
    :try_start_22e
    move-object v0, v14

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_1e7

    .line 3905
    move-object v0, v14

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->savePrimaryId(Ljava/util/Map;Ljava/lang/Integer;J)V

    goto :goto_1e7

    .line 3913
    :pswitch_257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 3914
    const-string v5, "label"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3916
    const-string v5, "type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3918
    const-string v5, "kind"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3920
    const-string v5, "data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3922
    const-string v5, "aux_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3924
    const-string v5, "isprimary"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3928
    sget-object v5, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    move-object/from16 v0, v24

    move-object v1, v5

    if-ne v0, v1, :cond_2e6

    .line 3929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "person"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$2600(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-virtual {v5, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v29

    .line 3935
    .restart local v29       #localId:J
    :goto_2c2
    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_1e7

    .line 3936
    move-object v0, v15

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->savePrimaryId(Ljava/util/Map;Ljava/lang/Integer;J)V

    goto/16 :goto_1e7

    .line 3932
    .end local v29           #localId:J
    :cond_2e6
    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3933
    .restart local v29       #localId:J
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sContactMethodsTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30e
    .catchall {:try_start_22e .. :try_end_30e} :catchall_222

    goto :goto_2c2

    .line 3942
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v29           #localId:J
    :cond_30f
    if-eqz v15, :cond_314

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 3943
    :cond_314
    if-eqz v14, :cond_319

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 3947
    :cond_319
    const/4 v15, 0x0

    .line 3948
    const/4 v14, 0x0

    .line 3950
    :try_start_31b
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5400()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3952
    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5400()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-wide/from16 v11, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3955
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 3956
    const-string v5, "isprimary"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 3958
    const-string v5, "isprimary"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 3960
    new-instance v25, Landroid/database/CursorJoiner;

    .end local v25           #joiner:Landroid/database/CursorJoiner;
    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5500()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5500()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    move-object v1, v14

    move-object v2, v5

    move-object v3, v15

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 3962
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    invoke-virtual/range {v25 .. v25}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_364
    :goto_364
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_476

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/database/CursorJoiner$Result;

    .line 3963
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v24 .. v24}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_81a

    goto :goto_364

    .line 3965
    :pswitch_37c
    if-nez p6, :cond_3ab

    .line 3966
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_39e
    .catchall {:try_start_31b .. :try_end_39e} :catchall_39f

    goto :goto_364

    .line 4005
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v25           #joiner:Landroid/database/CursorJoiner;
    :catchall_39f
    move-exception v5

    if-eqz v15, :cond_3a5

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 4006
    :cond_3a5
    if-eqz v14, :cond_3aa

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    :cond_3aa
    throw v5

    .line 3969
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    :cond_3ab
    :try_start_3ab
    move-object v0, v14

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_364

    .line 3970
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object v2, v5

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->savePrimaryId(Ljava/util/Map;Ljava/lang/Integer;J)V

    goto :goto_364

    .line 3978
    :pswitch_3ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 3979
    const-string v5, "label"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3981
    const-string v5, "type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3983
    const-string v5, "company"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3985
    const-string v5, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3987
    const-string v5, "isprimary"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 3990
    sget-object v5, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    move-object/from16 v0, v24

    move-object v1, v5

    if-ne v0, v1, :cond_44d

    .line 3991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "person"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$3400(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-virtual {v5, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v29

    .line 3998
    .restart local v29       #localId:J
    :goto_42f
    move-object v0, v15

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_364

    .line 3999
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v5

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->savePrimaryId(Ljava/util/Map;Ljava/lang/Integer;J)V

    goto/16 :goto_364

    .line 3994
    .end local v29           #localId:J
    :cond_44d
    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3995
    .restart local v29       #localId:J
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sOrganizationsTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_475
    .catchall {:try_start_3ab .. :try_end_475} :catchall_39f

    goto :goto_42f

    .line 4005
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v29           #localId:J
    :cond_476
    if-eqz v15, :cond_47b

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 4006
    :cond_47b
    if-eqz v14, :cond_480

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 4010
    :cond_480
    const/4 v15, 0x0

    .line 4011
    const/4 v14, 0x0

    .line 4013
    :try_start_482
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5600()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4015
    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5600()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-wide/from16 v11, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4018
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 4019
    new-instance v25, Landroid/database/CursorJoiner;

    .end local v25           #joiner:Landroid/database/CursorJoiner;
    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5700()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5700()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    move-object v1, v14

    move-object v2, v5

    move-object v3, v15

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 4021
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    invoke-virtual/range {v25 .. v25}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4bf
    :goto_4bf
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_571

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/database/CursorJoiner$Result;

    .line 4022
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v24 .. v24}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_824

    goto :goto_4bf

    .line 4024
    :pswitch_4d7
    if-nez p6, :cond_4bf

    .line 4025
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4f9
    .catchall {:try_start_482 .. :try_end_4f9} :catchall_4fa

    goto :goto_4bf

    .line 4048
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v25           #joiner:Landroid/database/CursorJoiner;
    :catchall_4fa
    move-exception v5

    if-eqz v15, :cond_500

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 4049
    :cond_500
    if-eqz v14, :cond_505

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    :cond_505
    throw v5

    .line 4032
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    :pswitch_506
    :try_start_506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 4033
    const-string v5, "group_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4035
    const-string v5, "group_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4037
    sget-object v5, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    move-object/from16 v0, v24

    move-object v1, v5

    if-ne v0, v1, :cond_54a

    .line 4038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "person"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-virtual {v5, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    goto/16 :goto_4bf

    .line 4041
    :cond_54a
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sGroupmembershipTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_56f
    .catchall {:try_start_506 .. :try_end_56f} :catchall_4fa

    goto/16 :goto_4bf

    .line 4048
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    :cond_571
    if-eqz v15, :cond_576

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 4049
    :cond_576
    if-eqz v14, :cond_57b

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 4053
    :cond_57b
    const/4 v15, 0x0

    .line 4054
    const/4 v14, 0x0

    .line 4056
    :try_start_57d
    sget-object v7, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "name"

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4058
    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v13, "name"

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-wide/from16 v11, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4061
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 4062
    new-instance v26, Landroid/database/CursorJoiner;

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5800()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/providers/contacts/ContactsProvider;->access$5800()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    move-object v1, v14

    move-object v2, v5

    move-object v3, v15

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    :try_end_5b2
    .catchall {:try_start_57d .. :try_end_5b2} :catchall_803

    .line 4064
    .end local v25           #joiner:Landroid/database/CursorJoiner;
    .local v26, joiner:Landroid/database/CursorJoiner;
    :try_start_5b2
    invoke-virtual/range {v26 .. v26}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5b6
    :goto_5b6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/database/CursorJoiner$Result;

    .line 4065
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v24 .. v24}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_82e

    goto :goto_5b6

    .line 4067
    :pswitch_5ce
    if-nez p6, :cond_5b6

    .line 4068
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5f0
    .catchall {:try_start_5b2 .. :try_end_5f0} :catchall_5f1

    goto :goto_5b6

    .line 4091
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    :catchall_5f1
    move-exception v5

    move-object/from16 v25, v26

    .end local v26           #joiner:Landroid/database/CursorJoiner;
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    :goto_5f4
    if-eqz v15, :cond_5f9

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 4092
    :cond_5f9
    if-eqz v14, :cond_5fe

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    :cond_5fe
    throw v5

    .line 4075
    .end local v25           #joiner:Landroid/database/CursorJoiner;
    .restart local v24       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v26       #joiner:Landroid/database/CursorJoiner;
    :pswitch_5ff
    :try_start_5ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 4076
    const-string v5, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4078
    const-string v5, "value"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4080
    sget-object v5, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    move-object/from16 v0, v24

    move-object v1, v5

    if-ne v0, v1, :cond_643

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "person"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsProvider;->access$4500(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-virtual {v5, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    goto/16 :goto_5b6

    .line 4084
    :cond_643
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sExtensionsTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v14

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_668
    .catchall {:try_start_5ff .. :try_end_668} :catchall_5f1

    goto/16 :goto_5b6

    .line 4091
    .end local v24           #joinResult:Landroid/database/CursorJoiner$Result;
    :cond_66a
    if-eqz v15, :cond_66f

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 4092
    :cond_66f
    if-eqz v14, :cond_674

    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 4096
    :cond_674
    sget-object v9, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-wide/from16 v11, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->doSubQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4098
    :try_start_682
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6c5

    .line 4099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 4100
    const-string v5, "_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4101
    const-string v5, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    invoke-static {v15, v5, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4102
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "person="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6c5
    .catchall {:try_start_682 .. :try_end_6c5} :catchall_7fa

    .line 4105
    :cond_6c5
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 4109
    const/4 v12, 0x5

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v33

    move-wide/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->setSinglePrimary(Ljava/util/Map;Ljava/util/Map;JI)Ljava/lang/Long;

    move-result-object v35

    .line 4112
    .local v35, primaryPhoneId:Ljava/lang/Long;
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v33

    move-wide/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->setSinglePrimary(Ljava/util/Map;Ljava/util/Map;JI)Ljava/lang/Long;

    move-result-object v32

    .line 4115
    .local v32, primaryEmailId:Ljava/lang/Long;
    const/4 v12, 0x4

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v33

    move-wide/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->setSinglePrimary(Ljava/util/Map;Ljava/util/Map;JI)Ljava/lang/Long;

    move-result-object v34

    .line 4118
    .local v34, primaryOrganizationId:Ljava/lang/Long;
    const/4 v12, 0x3

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v33

    move-wide/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->setSinglePrimary(Ljava/util/Map;Ljava/util/Map;JI)Ljava/lang/Long;

    .line 4120
    const/4 v12, 0x2

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v33

    move-wide/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->setSinglePrimary(Ljava/util/Map;Ljava/util/Map;JI)Ljava/lang/Long;

    .line 4122
    const/4 v12, 0x6

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v33

    move-wide/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->setSinglePrimary(Ljava/util/Map;Ljava/util/Map;JI)Ljava/lang/Long;

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 4126
    const-string v5, "_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4127
    const-string v5, "_sync_time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4128
    const-string v5, "_sync_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4129
    const-string v5, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4130
    const-string v5, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4131
    const-string v5, "phonetic_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4132
    const-string v5, "notes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "primary_phone"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "primary_email"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "primary_organization"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider;->access$4900(Lcom/android/providers/contacts/ContactsProvider;J)Z

    move-result v23

    .line 4137
    .local v23, isStarred:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "starred"

    if-eqz v23, :cond_7ff

    const/4 v8, 0x1

    :goto_7bd
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    const-string v7, "_sync_dirty"

    if-eqz p6, :cond_801

    const/4 v8, 0x1

    :goto_7ce
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mTable:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->mValues:Landroid/content/ContentValues;

    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4140
    return-void

    .line 4105
    .end local v23           #isStarred:Z
    .end local v32           #primaryEmailId:Ljava/lang/Long;
    .end local v34           #primaryOrganizationId:Ljava/lang/Long;
    .end local v35           #primaryPhoneId:Ljava/lang/Long;
    :catchall_7fa
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v5

    .line 4137
    .restart local v23       #isStarred:Z
    .restart local v32       #primaryEmailId:Ljava/lang/Long;
    .restart local v34       #primaryOrganizationId:Ljava/lang/Long;
    .restart local v35       #primaryPhoneId:Ljava/lang/Long;
    :cond_7ff
    const/4 v8, 0x0

    goto :goto_7bd

    .line 4138
    :cond_801
    const/4 v8, 0x0

    goto :goto_7ce

    .line 4091
    .end local v23           #isStarred:Z
    .end local v26           #joiner:Landroid/database/CursorJoiner;
    .end local v32           #primaryEmailId:Ljava/lang/Long;
    .end local v34           #primaryOrganizationId:Ljava/lang/Long;
    .end local v35           #primaryPhoneId:Ljava/lang/Long;
    .restart local v25       #joiner:Landroid/database/CursorJoiner;
    :catchall_803
    move-exception v5

    goto/16 :goto_5f4

    .line 3832
    :pswitch_data_806
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_de
        :pswitch_de
    .end packed-switch

    .line 3898
    :pswitch_data_810
    .packed-switch 0x1
        :pswitch_1ff
        :pswitch_257
        :pswitch_257
    .end packed-switch

    .line 3963
    :pswitch_data_81a
    .packed-switch 0x1
        :pswitch_37c
        :pswitch_3ce
        :pswitch_3ce
    .end packed-switch

    .line 4022
    :pswitch_data_824
    .packed-switch 0x1
        :pswitch_4d7
        :pswitch_506
        :pswitch_506
    .end packed-switch

    .line 4065
    :pswitch_data_82e
    .packed-switch 0x1
        :pswitch_5ce
        :pswitch_5ff
        :pswitch_5ff
    .end packed-switch
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 12
    .parameter "localPersonID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 3778
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider$PersonMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 3779
    return-void
.end method
