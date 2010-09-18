.class public Lcom/android/settings/ActivityPicker$PickAdapter$Item;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker$PickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field protected static sResizer:Lcom/android/settings/ActivityPicker$IconResizer;


# instance fields
.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .registers 6
    .parameter "context"
    .parameter "pm"
    .parameter "resolveInfo"

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 233
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_17

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_17

    .line 234
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 237
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getResizer(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$IconResizer;

    move-result-object v0

    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ActivityPicker$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 239
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    .line 240
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "context"
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getResizer(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$IconResizer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/ActivityPicker$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 225
    return-void
.end method


# virtual methods
.method getIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5
    .parameter "baseIntent"

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 251
    iget-object v1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1d

    .line 253
    iget-object v1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    :cond_1d
    :goto_1d
    return-object v0

    .line 257
    :cond_1e
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_1d
.end method

.method protected getResizer(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$IconResizer;
    .registers 3
    .parameter "context"

    .prologue
    .line 207
    sget-object v0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings/ActivityPicker$IconResizer;

    if-nez v0, :cond_b

    .line 208
    new-instance v0, Lcom/android/settings/ActivityPicker$IconResizer;

    invoke-direct {v0, p1}, Lcom/android/settings/ActivityPicker$IconResizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings/ActivityPicker$IconResizer;

    .line 210
    :cond_b
    sget-object v0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings/ActivityPicker$IconResizer;

    return-object v0
.end method
