.class public Lcom/android/packageinstaller/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# static fields
.field public static final INTENT_ATTR_APPLICATION_INFO:Ljava/lang/String; = "com.android.packageinstaller.applicationInfo"

.field public static final INTENT_ATTR_INSTALL_STATUS:Ljava/lang/String; = "com.android.packageinstaller.installStatus"

.field public static final INTENT_ATTR_PACKAGE_NAME:Ljava/lang/String; = "com.android.packageinstaller.PackageName"

.field public static final INTENT_ATTR_PERMISSIONS_LIST:Ljava/lang/String; = "com.android.packageinstaller.PermissionsList"

.field public static final PREFIX:Ljava/lang/String; = "com.android.packageinstaller."


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationInfo(Landroid/net/Uri;)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .parameter "packageURI"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 64
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_1f

    .line 65
    const/4 v5, 0x0

    .line 67
    :goto_1e
    return-object v5

    :cond_1f
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1e
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .registers 6
    .parameter "packageURI"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 78
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 79
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    return-object v4
.end method

.method public static initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;I)Landroid/view/View;
    .registers 9
    .parameter "pContext"
    .parameter "appInfo"
    .parameter "snippetId"

    .prologue
    .line 94
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, appSnippet:Landroid/view/View;
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 96
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 97
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 98
    .local v2, label:Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    const v5, 0x7f060001

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    const v5, 0x7f060002

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-object v0
.end method

.method public static initSnippetForNewApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;ILandroid/net/Uri;)Landroid/view/View;
    .registers 13
    .parameter "pContext"
    .parameter "appInfo"
    .parameter "snippetId"
    .parameter "packageURI"

    .prologue
    .line 116
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, appSnippet:Landroid/view/View;
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, archiveFilePath:Ljava/lang/String;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 119
    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 120
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 121
    .local v2, assmgr:Landroid/content/res/AssetManager;
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 122
    new-instance v7, Landroid/content/res/Resources;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v6, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 123
    .local v7, res:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 127
    .local v5, label:Ljava/lang/CharSequence;
    :try_start_1f
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_24} :catch_45

    move-result-object v5

    .line 131
    :goto_25
    const/4 v4, 0x0

    .line 135
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    :try_start_26
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_2b} :catch_4a

    move-result-object v4

    .line 139
    :goto_2c
    const v8, 0x7f060001

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    const v8, 0x7f060002

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-object v0

    .line 128
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    :catch_45
    move-exception v8

    move-object v3, v8

    .line 129
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_25

    .line 136
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    :catch_4a
    move-exception v8

    move-object v3, v8

    .line 137
    .restart local v3       #e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2c
.end method

.method public static isPackageAlreadyInstalled(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, installedList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 148
    .local v2, installedListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-ge v0, v2, :cond_24

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 150
    .local v3, tmp:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 151
    const/4 v4, 0x1

    .line 155
    .end local v3           #tmp:Landroid/content/pm/PackageInfo;
    :goto_20
    return v4

    .line 148
    .restart local v3       #tmp:Landroid/content/pm/PackageInfo;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 155
    .end local v3           #tmp:Landroid/content/pm/PackageInfo;
    :cond_24
    const/4 v4, 0x0

    goto :goto_20
.end method
