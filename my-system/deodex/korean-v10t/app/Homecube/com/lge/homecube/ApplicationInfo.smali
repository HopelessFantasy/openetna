.class Lcom/lge/homecube/ApplicationInfo;
.super Lcom/lge/homecube/ItemInfo;
.source "ApplicationInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field GroupNum:I

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
    .line 69
    invoke-direct {p0}, Lcom/lge/homecube/ItemInfo;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/homecube/ApplicationInfo;->itemType:I

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/lge/homecube/ApplicationInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/lge/homecube/ItemInfo;-><init>(Lcom/lge/homecube/ItemInfo;)V

    .line 75
    iget-object v0, p1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 80
    iget-object v0, p1, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_2f

    .line 81
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 82
    iget-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 85
    :cond_2f
    iget-object v0, p1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-boolean v0, p1, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    iput-boolean v0, p0, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    .line 87
    iget-boolean v0, p1, Lcom/lge/homecube/ApplicationInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/lge/homecube/ApplicationInfo;->customIcon:Z

    .line 90
    iget v0, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    iput v0, p0, Lcom/lge/homecube/ApplicationInfo;->GroupNum:I

    .line 91
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "arg0"

    .prologue
    .line 156
    iget v0, p0, Lcom/lge/homecube/ApplicationInfo;->position:I

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    .end local p1
    iget v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-le v0, v1, :cond_a

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method onAddToAllAppsDatabase(Landroid/content/ContentValues;)V
    .registers 6
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/lge/homecube/ItemInfo;->onAddToAllAppsDatabase(Landroid/content/ContentValues;)V

    .line 138
    iget-object v2, p0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 139
    .local v0, titleStr:Ljava/lang/String;
    :goto_f
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 142
    .local v1, uri:Ljava/lang/String;
    :goto_1f
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_25
    move-object v0, v3

    .line 138
    goto :goto_f

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_27
    move-object v1, v3

    .line 141
    goto :goto_1f
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 8
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    const-string v5, "iconType"

    .line 110
    invoke-super {p0, p1}, Lcom/lge/homecube/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 112
    iget-object v3, p0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 113
    .local v1, titleStr:Ljava/lang/String;
    :goto_11
    const-string v3, "title"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 116
    .local v2, uri:Ljava/lang/String;
    :goto_21
    const-string v3, "intent"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-boolean v3, p0, Lcom/lge/homecube/ApplicationInfo;->customIcon:Z

    if-eqz v3, :cond_44

    .line 119
    const-string v3, "iconType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object p0, p0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .end local p0
    check-cast p0, Lcom/lge/homecube/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/lge/homecube/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/lge/homecube/ApplicationInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 131
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3f
    :goto_3f
    return-void

    .end local v1           #titleStr:Ljava/lang/String;
    .end local v2           #uri:Ljava/lang/String;
    .restart local p0
    :cond_40
    move-object v1, v4

    .line 112
    goto :goto_11

    .restart local v1       #titleStr:Ljava/lang/String;
    :cond_42
    move-object v2, v4

    .line 115
    goto :goto_21

    .line 124
    .restart local v2       #uri:Ljava/lang/String;
    :cond_44
    const-string v3, "iconType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v3, p0, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_3f

    .line 127
    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .registers 5
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/homecube/ApplicationInfo;->itemType:I

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
