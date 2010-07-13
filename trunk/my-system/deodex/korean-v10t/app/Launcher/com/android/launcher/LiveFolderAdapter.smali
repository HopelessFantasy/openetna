.class Lcom/android/launcher/LiveFolderAdapter;
.super Landroid/widget/CursorAdapter;
.source "LiveFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/LiveFolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCustomIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsList:Z

.field private final mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/LiveFolderInfo;Landroid/database/Cursor;)V
    .registers 7
    .parameter "launcher"
    .parameter "info"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1, p3, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    .line 50
    iget v0, p2, Lcom/android/launcher/LiveFolderInfo;->displayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    move v0, v2

    :goto_18
    iput-boolean v0, p0, Lcom/android/launcher/LiveFolderAdapter;->mIsList:Z

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-object p1, p0, Lcom/android/launcher/LiveFolderAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    .line 54
    iget-object v0, p0, Lcom/android/launcher/LiveFolderAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->startManagingCursor(Landroid/database/Cursor;)V

    .line 55
    return-void

    .line 50
    :cond_2c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/launcher/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .parameter "context"
    .parameter "cursor"
    .parameter "holder"

    .prologue
    const/4 v9, -0x1

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 132
    .local v1, data:[B
    iget v8, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    if-eq v8, v9, :cond_d

    .line 133
    iget v8, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 136
    :cond_d
    if-eqz v1, :cond_49

    .line 137
    iget-object v8, p0, Lcom/android/launcher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    iget-wide v9, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 138
    .local v5, reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v5, :cond_25

    .line 139
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 142
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_25
    if-nez v2, :cond_48

    .line 143
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/launcher/FastBitmapDrawable;

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/launcher/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/launcher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/android/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/launcher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    iget-wide v9, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_48
    :goto_48
    return-object v2

    .line 147
    :cond_49
    iget v8, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    if-eq v8, v9, :cond_48

    iget v8, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    if-eq v8, v9, :cond_48

    .line 148
    iget v8, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, resource:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 150
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_48

    .line 152
    :try_start_61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 153
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    iget v8, p3, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 155
    .local v7, resources:Landroid/content/res/Resources;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 157
    .local v3, id:I
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher/LiveFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 158
    iget-object v8, p0, Lcom/android/launcher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_84} :catch_85

    goto :goto_48

    .line 159
    .end local v3           #id:I
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v7           #resources:Landroid/content/res/Resources;
    :catch_85
    move-exception v8

    goto :goto_48
.end method

.method static query(Landroid/content/Context;Lcom/android/launcher/LiveFolderInfo;)Landroid/database/Cursor;
    .registers 8
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher/LiveFolderInfo;->uri:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;

    .line 92
    .local v2, holder:Lcom/android/launcher/LiveFolderAdapter$ViewHolder;
    iget v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->idIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->id:J

    .line 93
    invoke-direct {p0, p2, p3, v2}, Lcom/android/launcher/LiveFolderAdapter;->loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/launcher/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 95
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget v5, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->nameIndex:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-boolean v4, p0, Lcom/android/launcher/LiveFolderAdapter;->mIsList:Z

    if-nez v4, :cond_3e

    .line 98
    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v3, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_2c
    iget v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    if-eq v4, v9, :cond_77

    .line 119
    :try_start_30
    iget v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;
    :try_end_3d
    .catch Ljava/net/URISyntaxException; {:try_start_30 .. :try_end_3d} :catch_7a

    .line 126
    :goto_3d
    return-void

    .line 100
    :cond_3e
    if-eqz v3, :cond_67

    move v1, v10

    .line 101
    .local v1, hasIcon:Z
    :goto_41
    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_69

    move v5, v6

    :goto_46
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    if-eqz v1, :cond_50

    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_50
    iget v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    if-eq v4, v9, :cond_71

    .line 105
    iget v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_6b

    .line 107
    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .end local v0           #description:Ljava/lang/String;
    .end local v1           #hasIcon:Z
    :cond_67
    move v1, v6

    .line 100
    goto :goto_41

    .restart local v1       #hasIcon:Z
    :cond_69
    move v5, v7

    .line 101
    goto :goto_46

    .line 110
    .restart local v0       #description:Ljava/lang/String;
    :cond_6b
    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 113
    .end local v0           #description:Ljava/lang/String;
    :cond_71
    iget-object v4, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 124
    .end local v1           #hasIcon:Z
    :cond_77
    iput-boolean v10, v2, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    goto :goto_3d

    .line 120
    :catch_7a
    move-exception v4

    goto :goto_3d
.end method

.method cleanup()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-object v5, p0, Lcom/android/launcher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 170
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_b

    .line 172
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1b
    iget-object v5, p0, Lcom/android/launcher/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 174
    iget-object v5, p0, Lcom/android/launcher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 175
    .local v4, icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 176
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2a

    .line 177
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_2a

    .line 180
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_42
    iget-object v5, p0, Lcom/android/launcher/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_55

    .line 185
    :try_start_4d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_56

    .line 187
    iget-object v5, p0, Lcom/android/launcher/LiveFolderAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5, v0}, Lcom/android/launcher/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 190
    :cond_55
    return-void

    .line 187
    :catchall_56
    move-exception v5

    iget-object v6, p0, Lcom/android/launcher/LiveFolderAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6, v0}, Lcom/android/launcher/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    throw v5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 64
    new-instance v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;-><init>()V

    .line 66
    .local v0, holder:Lcom/android/launcher/LiveFolderAdapter$ViewHolder;
    iget-boolean v2, p0, Lcom/android/launcher/LiveFolderAdapter;->mIsList:Z

    if-nez v2, :cond_5a

    .line 67
    iget-object v2, p0, Lcom/android/launcher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    .end local p0
    .local v1, view:Landroid/view/View;
    :goto_13
    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 76
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->idIndex:I

    .line 77
    const-string v2, "name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->nameIndex:I

    .line 78
    const-string v2, "description"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    .line 79
    const-string v2, "intent"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->intentIndex:I

    .line 80
    const-string v2, "icon_bitmap"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    .line 81
    const-string v2, "icon_resource"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    .line 82
    const-string v2, "icon_package"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    return-object v1

    .line 69
    .end local v1           #view:Landroid/view/View;
    .restart local p0
    :cond_5a
    iget-object v2, p0, Lcom/android/launcher/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    .restart local v1       #view:Landroid/view/View;
    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_13
.end method
