.class Lcom/lge/homecube/UserFolderInfo;
.super Lcom/lge/homecube/FolderInfo;
.source "UserFolderInfo.java"


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/homecube/FolderInfo;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/UserFolderInfo;->contents:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/homecube/UserFolderInfo;->itemType:I

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lcom/lge/homecube/ApplicationInfo;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/homecube/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/lge/homecube/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 57
    const-string v0, "title"

    iget-object v1, p0, Lcom/lge/homecube/UserFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public remove(Lcom/lge/homecube/ApplicationInfo;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/homecube/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
