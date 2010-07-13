.class public Lcom/android/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MenuHelper$MenuCallback;,
        Lcom/android/camera/MenuHelper$MenuInvoker;,
        Lcom/android/camera/MenuHelper$MenuItemsResult;
    }
.end annotation


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final GENERIC_ITEM:I = 0x1

.field public static final IMAGE_MODE_ITEM:I = 0x4

.field public static final IMAGE_SAVING_ITEM:I = 0x2

.field public static final INCLUDE_ALL:I = -0x1

.field public static final INCLUDE_CROP_MENU:I = 0x8

.field public static final INCLUDE_DELETE_MENU:I = 0x10

.field public static final INCLUDE_DETAILS_MENU:I = 0x40

.field public static final INCLUDE_ROTATE_MENU:I = 0x20

.field public static final INCLUDE_SET_MENU:I = 0x4

.field public static final INCLUDE_SHARE_MENU:I = 0x2

.field public static final INCLUDE_VIEWPLAY_MENU:I = 0x1

.field public static final MENU_CAPTURE_PICTURE:I = 0x1

.field public static final MENU_CAPTURE_VIDEO:I = 0x2

.field public static final MENU_IMAGE_CROP:I = 0x12

.field public static final MENU_IMAGE_ROTATE:I = 0x13

.field public static final MENU_IMAGE_ROTATE_LEFT:I = 0x14

.field public static final MENU_IMAGE_ROTATE_RIGHT:I = 0x15

.field public static final MENU_IMAGE_SET:I = 0xe

.field public static final MENU_IMAGE_SET_CONTACT:I = 0x10

.field public static final MENU_IMAGE_SET_MYFAVE:I = 0x11

.field public static final MENU_IMAGE_SET_WALLPAPER:I = 0xf

.field public static final MENU_IMAGE_SHARE:I = 0xa

.field public static final MENU_IMAGE_TOSS:I = 0x16

.field public static final MENU_ITEM_MAX:I = 0x5

.field public static final MENU_SWITCH_CAMERA_MODE:I = 0x0

.field public static final MENU_VIDEO_PLAY:I = 0x17

.field public static final MENU_VIDEO_SHARE:I = 0x18

.field public static final MENU_VIDEO_TOSS:I = 0x1b

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final RESULT_COMMON_MENU_CROP:I = 0x1ea

.field private static final SHARE_FILE_LENGTH_LIMIT:J = 0x300000L

.field private static final TAG:Ljava/lang/String; = "MenuHelper"

.field public static final VIDEO_MODE_ITEM:I = 0x5

.field public static final VIDEO_SAVING_ITEM:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/camera/MenuHelper;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method static addCaptureMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V
    .registers 2
    .parameter "menu"
    .parameter "activity"

    .prologue
    .line 650
    invoke-static {p0, p1}, Lcom/android/camera/MenuHelper;->addCapturePictureMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V

    .line 651
    invoke-static {p0, p1}, Lcom/android/camera/MenuHelper;->addCaptureVideoMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V

    .line 652
    return-void
.end method

.method static addCapturePictureMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V
    .registers 5
    .parameter "menu"
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 614
    const/4 v0, 0x0

    const v1, 0x7f09001c

    invoke-interface {p0, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/MenuHelper$13;

    invoke-direct {v1, p1}, Lcom/android/camera/MenuHelper$13;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 629
    return-void
.end method

.method static addCaptureVideoMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V
    .registers 5
    .parameter "menu"
    .parameter "activity"

    .prologue
    const/4 v2, 0x2

    .line 632
    const/4 v0, 0x0

    const v1, 0x7f09001d

    invoke-interface {p0, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/MenuHelper$14;

    invoke-direct {v1, p1}, Lcom/android/camera/MenuHelper$14;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 647
    return-void
.end method

.method static addFlipOrientation(Landroid/view/Menu;Landroid/app/Activity;Landroid/content/SharedPreferences;)Landroid/view/MenuItem;
    .registers 7
    .parameter "menu"
    .parameter "activity"
    .parameter "prefs"

    .prologue
    .line 657
    const/high16 v0, 0x3

    const/16 v1, 0x130

    const/16 v2, 0x29

    const v3, 0x7f090014

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/MenuHelper$15;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/MenuHelper$15;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080035

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method static addImageMenuItems(Landroid/view/Menu;IZLandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/camera/MenuHelper$MenuInvoker;)Lcom/android/camera/MenuHelper$MenuItemsResult;
    .registers 13
    .parameter "menu"
    .parameter "inclusions"
    .parameter "isImage"
    .parameter "activity"
    .parameter "handler"
    .parameter "onDelete"
    .parameter "onInvoke"

    .prologue
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, requiresWriteAccessItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, requiresNoDrmAccessItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    if-eqz p2, :cond_68

    and-int/lit8 p4, p1, 0x20

    if-eqz p4, :cond_68

    .line 157
    .end local p4
    const/4 p4, 0x2

    const/16 v2, 0x13

    const/16 v3, 0x28

    const v4, 0x7f090018

    invoke-interface {p0, p4, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p4

    const v2, 0x108004d

    invoke-interface {p4, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object p4

    .line 163
    .local p4, rotateSubmenu:Landroid/view/SubMenu;
    invoke-interface {p4}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    if-eqz p4, :cond_68

    .line 165
    const/4 v2, 0x0

    const/16 v3, 0x14

    const/16 v4, 0x32

    const v5, 0x7f090019

    invoke-interface {p4, v2, v3, v4, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/camera/MenuHelper$1;

    invoke-direct {v3, p6}, Lcom/android/camera/MenuHelper$1;-><init>(Lcom/android/camera/MenuHelper$MenuInvoker;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v2, 0x0

    const/16 v3, 0x15

    const/16 v4, 0x3c

    const v5, 0x7f09001a

    invoke-interface {p4, v2, v3, v4, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    .end local p4           #rotateSubmenu:Landroid/view/SubMenu;
    new-instance v2, Lcom/android/camera/MenuHelper$2;

    invoke-direct {v2, p6}, Lcom/android/camera/MenuHelper$2;-><init>(Lcom/android/camera/MenuHelper$MenuInvoker;)V

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p4

    const/16 v2, 0x72

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_68
    if-eqz p2, :cond_8c

    and-int/lit8 p4, p1, 0x8

    if-eqz p4, :cond_8c

    .line 194
    const/4 p4, 0x2

    const/16 v2, 0x12

    const/16 v3, 0x49

    const v4, 0x7f09002a

    invoke-interface {p0, p4, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    new-instance v2, Lcom/android/camera/MenuHelper$3;

    invoke-direct {v2, p6, p3}, Lcom/android/camera/MenuHelper$3;-><init>(Lcom/android/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p4

    .line 212
    .local p4, autoCrop:Landroid/view/MenuItem;
    const v2, 0x108003a

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local p4           #autoCrop:Landroid/view/MenuItem;
    :cond_8c
    if-eqz p2, :cond_ac

    and-int/lit8 p4, p1, 0x4

    if-eqz p4, :cond_ac

    .line 217
    const/4 p4, 0x2

    const/16 v2, 0xe

    const/16 v3, 0x4b

    const v4, 0x7f090026

    invoke-interface {p0, p4, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    .line 218
    .local p4, setMenu:Landroid/view/MenuItem;
    const v2, 0x1080051

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 220
    new-instance v2, Lcom/android/camera/MenuHelper$4;

    invoke-direct {v2, p6, p3}, Lcom/android/camera/MenuHelper$4;-><init>(Lcom/android/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 240
    .end local p4           #setMenu:Landroid/view/MenuItem;
    :cond_ac
    and-int/lit8 p4, p1, 0x2

    if-eqz p4, :cond_cf

    .line 243
    const/4 p4, 0x2

    const/16 v2, 0xa

    const/16 v3, 0xa

    const v4, 0x7f090025

    invoke-interface {p0, p4, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    new-instance v2, Lcom/android/camera/MenuHelper$5;

    invoke-direct {v2, p6, p2, p3}, Lcom/android/camera/MenuHelper$5;-><init>(Lcom/android/camera/MenuHelper$MenuInvoker;ZLandroid/app/Activity;)V

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p4

    .line 277
    .local p4, item1:Landroid/view/MenuItem;
    const v2, 0x1080052

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 278
    move-object p4, p4

    .line 279
    .local p4, item:Landroid/view/MenuItem;
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local p4           #item:Landroid/view/MenuItem;
    :cond_cf
    and-int/lit8 p4, p1, 0x10

    if-eqz p4, :cond_f7

    .line 283
    const/4 p4, 0x2

    const/16 v2, 0x16

    const/16 v3, 0x46

    const v4, 0x7f090023

    invoke-interface {p0, p4, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    .line 284
    .local p4, deleteItem:Landroid/view/MenuItem;
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v2, Lcom/android/camera/MenuHelper$6;

    invoke-direct {v2, p3, p5, p2}, Lcom/android/camera/MenuHelper$6;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p4

    .end local p4           #deleteItem:Landroid/view/MenuItem;
    const/16 p5, 0x64

    invoke-interface {p4, p5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .end local p5
    move-result-object p4

    const p5, 0x108003c

    invoke-interface {p4, p5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 295
    :cond_f7
    and-int/lit8 p4, p1, 0x40

    if-eqz p4, :cond_115

    .line 296
    const/4 p4, 0x0

    const/4 p5, 0x0

    const/16 v2, 0x50

    const v3, 0x7f090017

    invoke-interface {p0, p4, p5, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    new-instance p5, Lcom/android/camera/MenuHelper$7;

    invoke-direct {p5, p6, p3, p2}, Lcom/android/camera/MenuHelper$7;-><init>(Lcom/android/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Z)V

    invoke-interface {p4, p5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p4

    .line 454
    .local p4, detailsMenu:Landroid/view/MenuItem;
    const p5, 0x7f020045

    invoke-interface {p4, p5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    .end local p4           #detailsMenu:Landroid/view/MenuItem;
    :cond_115
    if-nez p2, :cond_12e

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_12e

    .line 458
    .end local p1
    const/4 p1, 0x3

    const/16 p2, 0x17

    const/4 p4, 0x0

    const p5, 0x7f09002e

    invoke-interface {p0, p1, p2, p4, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .end local p2
    move-result-object p0

    .end local p0
    new-instance p1, Lcom/android/camera/MenuHelper$8;

    invoke-direct {p1, p6, p3}, Lcom/android/camera/MenuHelper$8;-><init>(Lcom/android/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 473
    :cond_12e
    new-instance p0, Lcom/android/camera/MenuHelper$9;

    invoke-direct {p0, v1, v0}, Lcom/android/camera/MenuHelper$9;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method static addSwitchModeMenuItem(Landroid/view/Menu;Landroid/app/Activity;Z)V
    .registers 9
    .parameter "menu"
    .parameter "activity"
    .parameter "switchToVideo"

    .prologue
    const/4 v5, 0x0

    .line 553
    if-eqz p2, :cond_22

    const/4 v4, 0x4

    move v0, v4

    .line 554
    .local v0, group:I
    :goto_5
    if-eqz p2, :cond_25

    const v4, 0x7f090008

    move v3, v4

    .line 556
    .local v3, labelId:I
    :goto_b
    if-eqz p2, :cond_2a

    const v4, 0x7f02003f

    move v1, v4

    .line 558
    .local v1, iconId:I
    :goto_11
    invoke-interface {p0, v0, v5, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/android/camera/MenuHelper$12;

    invoke-direct {v5, p2, p1}, Lcom/android/camera/MenuHelper$12;-><init>(ZLandroid/app/Activity;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 571
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 572
    return-void

    .line 553
    .end local v0           #group:I
    .end local v1           #iconId:I
    .end local v2           #item:Landroid/view/MenuItem;
    .end local v3           #labelId:I
    :cond_22
    const/4 v4, 0x5

    move v0, v4

    goto :goto_5

    .line 554
    .restart local v0       #group:I
    :cond_25
    const v4, 0x7f090009

    move v3, v4

    goto :goto_b

    .line 556
    .restart local v3       #labelId:I
    :cond_2a
    const v4, 0x1080037

    move v1, v4

    goto :goto_11
.end method

.method public static calculatePicturesRemaining()I
    .registers 6

    .prologue
    .line 736
    :try_start_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v4

    if-nez v4, :cond_8

    .line 737
    const/4 v4, -0x1

    .line 748
    :goto_7
    return v4

    .line 739
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 741
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_27

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const v5, 0x48c35000

    div-float v1, v4, v5

    .line 742
    .local v1, remaining:F
    float-to-int v4, v1

    goto :goto_7

    .line 744
    .end local v1           #remaining:F
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    :catch_27
    move-exception v4

    move-object v0, v4

    .line 748
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, -0x2

    goto :goto_7
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 110
    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 114
    :cond_5
    :goto_5
    return-void

    .line 111
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/android/camera/ImageManager$IImage;)V
    .registers 4
    .parameter "activity"
    .parameter "onDelete"
    .parameter "image"

    .prologue
    .line 512
    if-eqz p2, :cond_9

    .line 513
    invoke-static {p2}, Lcom/android/camera/ImageManager;->isImage(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 515
    :cond_9
    return-void
.end method

.method private static deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .registers 7
    .parameter "activity"
    .parameter "onDelete"
    .parameter "isPhoto"

    .prologue
    .line 518
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_gallery_confirm_delete_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 520
    .local v0, confirm:Z
    const/4 v0, 0x0

    .line 522
    if-nez v0, :cond_14

    .line 523
    if-eqz p1, :cond_13

    .line 524
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 528
    :cond_13
    :goto_13
    return-void

    .line 526
    :cond_14
    invoke-static {p0, p1, p2}, Lcom/android/camera/MenuHelper;->displayDeleteDialog(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    goto :goto_13
.end method

.method static deletePhoto(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "activity"
    .parameter "onDelete"

    .prologue
    .line 504
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 505
    return-void
.end method

.method static deleteVideo(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "activity"
    .parameter "onDelete"

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 509
    return-void
.end method

.method public static displayDeleteDialog(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .registers 6
    .parameter "activity"
    .parameter "onDelete"
    .parameter "isPhoto"

    .prologue
    .line 532
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 534
    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 535
    if-eqz p2, :cond_36

    const v1, 0x7f090021

    :goto_16
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 537
    const v1, 0x104000a

    new-instance v2, Lcom/android/camera/MenuHelper$10;

    invoke-direct {v2, p1}, Lcom/android/camera/MenuHelper$10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/camera/MenuHelper$11;

    invoke-direct {v2}, Lcom/android/camera/MenuHelper$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 549
    return-void

    .line 535
    :cond_36
    const v1, 0x7f090022

    goto :goto_16
.end method

.method public static enableShareMenuItem(Landroid/view/Menu;Z)V
    .registers 4
    .parameter "menu"
    .parameter "enabled"

    .prologue
    .line 138
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 139
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_e

    .line 140
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 143
    :cond_e
    return-void
.end method

.method public static formatDuration(Landroid/app/Activity;I)Ljava/lang/String;
    .registers 13
    .parameter "activity"
    .parameter "durationMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 696
    div-int/lit16 v0, p1, 0x3e8

    .line 697
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 698
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 699
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 701
    .local v4, s:I
    if-nez v2, :cond_30

    .line 702
    const v5, 0x7f090094

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, durationValue:Ljava/lang/String;
    :goto_2f
    return-object v1

    .line 705
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_30
    const v5, 0x7f090095

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_2f
.end method

.method public static getImageFileSize(Lcom/android/camera/ImageManager$IImage;)J
    .registers 5
    .parameter "image"

    .prologue
    const-wide/16 v2, -0x1

    .line 117
    invoke-interface {p0}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v0

    .line 118
    .local v0, data:Ljava/io/InputStream;
    if-nez v0, :cond_9

    .line 124
    :goto_8
    return-wide v2

    .line 120
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_12

    move-result v2

    int-to-long v2, v2

    .line 124
    invoke-static {v0}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8

    .line 121
    :catch_12
    move-exception v1

    .line 124
    .local v1, ex:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_8

    .end local v1           #ex:Ljava/io/IOException;
    :catchall_17
    move-exception v2

    invoke-static {v0}, Lcom/android/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method static gotoCameraImageGallery(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 585
    const v0, 0x7f090006

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 586
    return-void
.end method

.method static gotoCameraVideoGallery(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 589
    const v0, 0x7f090007

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 591
    return-void
.end method

.method private static gotoGallery(Landroid/app/Activity;II)V
    .registers 9
    .parameter "activity"
    .parameter "windowTitleId"
    .parameter "mediaTypes"

    .prologue
    .line 594
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "bucketId"

    sget-object v5, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 596
    .local v2, target:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 597
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 598
    const-string v3, "windowTitle"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v3, "mediaTypes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    :try_start_2c
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 611
    :goto_2f
    return-void

    .line 608
    :catch_30
    move-exception v0

    .line 609
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MenuHelper"

    const-string v4, "Could not start gallery activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method static gotoStillImageCapture(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 575
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 578
    :try_start_c
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_f} :catch_10

    .line 582
    :goto_f
    return-void

    .line 579
    :catch_10
    move-exception v0

    .line 580
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuHelper"

    const-string v3, "Could not start still image capture activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public static isMMSUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 132
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "activity"
    .parameter "prefs"

    .prologue
    .line 679
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/MenuHelper;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V

    .line 680
    return-void
.end method

.method private static requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V
    .registers 3
    .parameter "activity"
    .parameter "prefs"
    .parameter "ignoreIntentExtra"

    .prologue
    .line 687
    return-void
.end method

.method static setFlipOrientationEnabled(Landroid/app/Activity;Landroid/view/MenuItem;)V
    .registers 5
    .parameter "activity"
    .parameter "flipItem"

    .prologue
    const/4 v2, 0x1

    .line 691
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 692
    .local v0, keyboard:I
    if-eq v0, v2, :cond_12

    move v1, v2

    :goto_e
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 693
    return-void

    .line 692
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static showStorageToast(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 712
    invoke-static {}, Lcom/android/camera/MenuHelper;->calculatePicturesRemaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/camera/MenuHelper;->showStorageToast(Landroid/app/Activity;I)V

    .line 713
    return-void
.end method

.method public static showStorageToast(Landroid/app/Activity;I)V
    .registers 5
    .parameter "activity"
    .parameter "remaining"

    .prologue
    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, noStorageText:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_27

    .line 719
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, state:Ljava/lang/String;
    const-string v2, "checking"

    if-ne v1, v2, :cond_1f

    .line 721
    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    .end local v1           #state:Ljava/lang/String;
    :cond_13
    :goto_13
    if-eqz v0, :cond_1e

    .line 730
    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 732
    :cond_1e
    return-void

    .line 723
    .restart local v1       #state:Ljava/lang/String;
    :cond_1f
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 725
    .end local v1           #state:Ljava/lang/String;
    :cond_27
    const/4 v2, 0x1

    if-ge p1, v2, :cond_13

    .line 726
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
