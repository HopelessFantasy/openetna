.class Lcom/android/launcher/LiveFolderInfo;
.super Lcom/android/launcher/FolderInfo;
.source "LiveFolderInfo.java"


# instance fields
.field baseIntent:Landroid/content/Intent;

.field displayMode:I

.field filtered:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/launcher/FolderInfo;-><init>()V

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/LiveFolderInfo;->itemType:I

    .line 58
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/launcher/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 63
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/launcher/LiveFolderInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_29

    .line 66
    const-string v0, "intent"

    iget-object v1, p0, Lcom/android/launcher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_29
    const-string v0, "iconType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v0, "displayMode"

    iget v1, p0, Lcom/android/launcher/LiveFolderInfo;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_53

    .line 71
    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/android/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/android/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_53
    return-void
.end method
