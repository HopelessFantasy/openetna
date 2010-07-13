.class public Lcom/android/packageinstaller/InstallAppDone;
.super Landroid/app/Activity;
.source "InstallAppDone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private installFlag:Z

.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mDoneButton:Landroid/widget/Button;

.field private mLaunchButton:Landroid/widget/Button;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mPkgURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "InstallAppDone"

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppDone;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallAppDone;->localLOGV:Z

    return-void
.end method


# virtual methods
.method public initView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 64
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/InstallAppDone;->requestWindowFeature(I)Z

    .line 65
    const v5, 0x7f050005

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/InstallAppDone;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, unknown:Ljava/lang/String;
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/InstallAppDone;->setContentView(I)V

    .line 68
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/high16 v6, 0x7f06

    invoke-static {p0, v5, v6}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;I)Landroid/view/View;

    .line 69
    const v5, 0x7f06000a

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/InstallAppDone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, centerText:Landroid/widget/TextView;
    const v5, 0x7f06000c

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/InstallAppDone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mDoneButton:Landroid/widget/Button;

    .line 71
    const v5, 0x7f06000b

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/InstallAppDone;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchButton:Landroid/widget/Button;

    .line 74
    iget-boolean v5, p0, Lcom/android/packageinstaller/InstallAppDone;->installFlag:Z

    if-eqz v5, :cond_87

    .line 75
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    const/high16 v2, 0x7f02

    .line 77
    .local v2, centerTextDrawableId:I
    const v3, 0x7f050007

    .line 79
    .local v3, centerTextLabel:I
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppDone;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppDone;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchIntent:Landroid/content/Intent;

    .line 81
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v5, :cond_81

    .line 82
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :goto_5e
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppDone;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, centerTextDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/InstallAppDone;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void

    .line 84
    .end local v1           #centerTextDrawable:Landroid/graphics/drawable/Drawable;
    :cond_81
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5e

    .line 87
    .end local v2           #centerTextDrawableId:I
    .end local v3           #centerTextLabel:I
    :cond_87
    const v2, 0x108016f

    .line 88
    .restart local v2       #centerTextDrawableId:I
    const v3, 0x7f050009

    .line 89
    .restart local v3       #centerTextLabel:I
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchButton:Landroid/widget/Button;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppDone;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_22

    .line 102
    const-string v0, "InstallAppDone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished installing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppDone;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppDone;->finish()V

    .line 108
    :cond_21
    :goto_21
    return-void

    .line 104
    :cond_22
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_21

    .line 105
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppDone;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallAppDone;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppDone;->finish()V

    goto :goto_21
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppDone;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppDone;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppDone;->mPkgURI:Landroid/net/Uri;

    .line 58
    const-string v1, "com.android.packageinstaller.installStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/packageinstaller/InstallAppDone;->installFlag:Z

    .line 59
    iget-boolean v1, p0, Lcom/android/packageinstaller/InstallAppDone;->localLOGV:Z

    if-eqz v1, :cond_3e

    const-string v1, "InstallAppDone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/packageinstaller/InstallAppDone;->installFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3e
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppDone;->initView()V

    .line 61
    return-void
.end method
