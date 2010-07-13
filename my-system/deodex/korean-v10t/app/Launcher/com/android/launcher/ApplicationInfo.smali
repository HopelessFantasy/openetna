.class Lcom/android/launcher/ApplicationInfo;
.super Lcom/android/launcher/ItemInfo;
.source "ApplicationInfo.java"


# instance fields
.field customIcon:Z

.field filtered:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/launcher/ItemInfo;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/ApplicationInfo;->itemType:I

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/ApplicationInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/launcher/ItemInfo;-><init>(Lcom/android/launcher/ItemInfo;)V

    .line 69
    iget-object v0, p1, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 71
    iget-object v0, p1, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_2f

    .line 72
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 73
    iget-object v0, p0, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 76
    :cond_2f
    iget-object v0, p1, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-boolean v0, p1, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    iput-boolean v0, p0, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    .line 78
    iget-boolean v0, p1, Lcom/android/launcher/ApplicationInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher/ApplicationInfo;->customIcon:Z

    .line 79
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 9
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "iconType"

    .line 98
    invoke-super {p0, p1}, Lcom/android/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 100
    iget-object v3, p0, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 101
    .local v1, titleStr:Ljava/lang/String;
    :goto_12
    const-string v3, "title"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 104
    .local v2, uri:Ljava/lang/String;
    :goto_22
    const-string v3, "intent"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-boolean v3, p0, Lcom/android/launcher/ApplicationInfo;->customIcon:Z

    if-eqz v3, :cond_45

    .line 107
    const-string v3, "iconType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    iget-object p0, p0, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Lcom/android/launcher/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/android/launcher/ApplicationInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 121
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_40
    :goto_40
    return-void

    .end local v1           #titleStr:Ljava/lang/String;
    .end local v2           #uri:Ljava/lang/String;
    .restart local p0
    :cond_41
    move-object v1, v5

    .line 100
    goto :goto_12

    .restart local v1       #titleStr:Ljava/lang/String;
    :cond_43
    move-object v2, v5

    .line 103
    goto :goto_22

    .line 112
    .restart local v2       #uri:Ljava/lang/String;
    :cond_45
    const-string v3, "iconType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    iget-object v3, p0, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_40

    .line 115
    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .registers 5
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/ApplicationInfo;->itemType:I

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
