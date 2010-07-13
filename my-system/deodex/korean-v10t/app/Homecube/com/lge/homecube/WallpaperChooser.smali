.class public Lcom/lge/homecube/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/WallpaperChooser$ImageAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_IDS:[Ljava/lang/Integer;

.field private static final THUMB_IDS:[Ljava/lang/Integer;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mGallery:Landroid/widget/Gallery;

.field private mImageView:Landroid/widget/ImageView;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWallpaperSet:Z

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f0200a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0200a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0200a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0200a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f020094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0200ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f020092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f020090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f02009d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/homecube/WallpaperChooser;->THUMB_IDS:[Ljava/lang/Integer;

    .line 63
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f0200a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0200a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02009a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0200a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02009f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f020093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0200aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f020091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f02008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f02009c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/homecube/WallpaperChooser;->IMAGE_IDS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/lge/homecube/WallpaperChooser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/homecube/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findWallpapers()V
    .registers 13

    .prologue
    const-string v11, "drawable"

    .line 116
    new-instance v9, Ljava/util/ArrayList;

    sget-object v10, Lcom/lge/homecube/WallpaperChooser;->THUMB_IDS:[Ljava/lang/Integer;

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/lge/homecube/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 117
    iget-object v9, p0, Lcom/lge/homecube/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    sget-object v10, Lcom/lge/homecube/WallpaperChooser;->THUMB_IDS:[Ljava/lang/Integer;

    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 119
    new-instance v9, Ljava/util/ArrayList;

    sget-object v10, Lcom/lge/homecube/WallpaperChooser;->IMAGE_IDS:[Ljava/lang/Integer;

    array-length v10, v10

    add-int/lit8 v10, v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/lge/homecube/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 120
    iget-object v9, p0, Lcom/lge/homecube/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    sget-object v10, Lcom/lge/homecube/WallpaperChooser;->IMAGE_IDS:[Ljava/lang/Integer;

    invoke-static {v9, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p0}, Lcom/lge/homecube/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 123
    .local v7, resources:Landroid/content/res/Resources;
    const/high16 v9, 0x7f08

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, extras:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/homecube/WallpaperChooser;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, packageName:Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3d
    if-ge v3, v4, :cond_79

    aget-object v1, v0, v3

    .line 127
    .local v1, extra:Ljava/lang/String;
    const-string v9, "drawable"

    invoke-virtual {v7, v1, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, res:I
    if-eqz v6, :cond_76

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_small"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-virtual {v7, v9, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 132
    .local v8, thumbRes:I
    if-eqz v8, :cond_76

    .line 133
    iget-object v9, p0, Lcom/lge/homecube/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v9, p0, Lcom/lge/homecube/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v8           #thumbRes:I
    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 138
    .end local v1           #extra:Ljava/lang/String;
    .end local v6           #res:I
    :cond_79
    return-void
.end method

.method private selectWallpaper(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 168
    iget-boolean v2, p0, Lcom/lge/homecube/WallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v2, :cond_5

    .line 181
    :goto_4
    return-void

    .line 172
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/homecube/WallpaperChooser;->mIsWallpaperSet:Z

    .line 174
    :try_start_8
    invoke-virtual {p0}, Lcom/lge/homecube/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/homecube/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 175
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/lge/homecube/WallpaperChooser;->setWallpaper(Ljava/io/InputStream;)V

    .line 176
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/lge/homecube/WallpaperChooser;->setResult(I)V

    .line 177
    invoke-virtual {p0}, Lcom/lge/homecube/WallpaperChooser;->finish()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_27

    goto :goto_4

    .line 178
    .end local v1           #stream:Ljava/io/InputStream;
    :catch_27
    move-exception v2

    move-object v0, v2

    .line 179
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CubeHome"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lge/homecube/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/homecube/WallpaperChooser;->selectWallpaper(I)V

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/homecube/WallpaperChooser;->requestWindowFeature(I)Z

    .line 96
    invoke-direct {p0}, Lcom/lge/homecube/WallpaperChooser;->findWallpapers()V

    .line 98
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/lge/homecube/WallpaperChooser;->setContentView(I)V

    .line 100
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 101
    iget-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 102
    iget-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    const v1, 0x7f050034

    invoke-virtual {p0, v1}, Lcom/lge/homecube/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 105
    iget-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/lge/homecube/WallpaperChooser$ImageAdapter;

    invoke-direct {v2, p0, p0}, Lcom/lge/homecube/WallpaperChooser$ImageAdapter;-><init>(Lcom/lge/homecube/WallpaperChooser;Lcom/lge/homecube/WallpaperChooser;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 107
    iget-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v3}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 109
    const v1, 0x7f050035

    invoke-virtual {p0, v1}, Lcom/lge/homecube/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f050033

    invoke-virtual {p0, v1}, Lcom/lge/homecube/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/homecube/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 113
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 147
    iget-object v2, p0, Lcom/lge/homecube/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 148
    .local v2, view:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lge/homecube/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/lge/homecube/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/lge/homecube/WallpaperChooser;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v3, p0, Lcom/lge/homecube/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_25

    .line 153
    iget-object v3, p0, Lcom/lge/homecube/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    :cond_25
    iput-object v0, p0, Lcom/lge/homecube/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 158
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 159
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 160
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 184
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/WallpaperChooser;->mIsWallpaperSet:Z

    .line 144
    return-void
.end method
