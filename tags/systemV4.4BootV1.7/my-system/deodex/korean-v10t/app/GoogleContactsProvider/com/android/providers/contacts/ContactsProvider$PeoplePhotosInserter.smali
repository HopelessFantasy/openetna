.class Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;
.super Ljava/lang/Object;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeoplePhotosInserter"
.end annotation


# static fields
.field private static final mDrmPhotosTable:Ljava/lang/String; = "drmphotos"


# instance fields
.field private mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter
    .parameter "db"

    .prologue
    .line 5056
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 5058
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "drmphotos"

    invoke-direct {v0, p2, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 5060
    return-void
.end method


# virtual methods
.method public createPhoto(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 8
    .parameter "db"
    .parameter "personId"

    .prologue
    .line 5063
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5064
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v1, :cond_37

    .line 5065
    const-string v1, "drmphotos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "person="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5066
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 5067
    const-string v1, "person"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5068
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-eqz v1, :cond_37

    .line 5069
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider$PeoplePhotosInserter;->mDrmPhotosInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 5072
    :cond_37
    return-void
.end method
