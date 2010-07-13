.class public Lcom/android/packageinstaller/InstallAppConfirmation;
.super Landroid/app/Activity;
.source "InstallAppConfirmation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mOk:Landroid/widget/Button;

.field private mPkgURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-string v0, "InstallAppConfirmation"

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->localLOGV:Z

    return-void
.end method


# virtual methods
.method public initView()V
    .registers 12

    .prologue
    .line 69
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->requestWindowFeature(I)Z

    .line 70
    const v8, 0x7f050005

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, unknown:Ljava/lang/String;
    const v8, 0x7f050003

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, desc:Ljava/lang/String;
    if-nez v1, :cond_15

    .line 74
    move-object v1, v7

    .line 76
    :cond_15
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 77
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030001

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mContentView:Landroid/view/View;

    .line 78
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/high16 v9, 0x7f06

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mPkgURI:Landroid/net/Uri;

    invoke-static {p0, v8, v9, v10}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;ILandroid/net/Uri;)Landroid/view/View;

    .line 81
    if-eqz v1, :cond_43

    .line 82
    const v8, 0x7f060005

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_43
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mContentView:Landroid/view/View;

    const v9, 0x7f060004

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 88
    .local v4, permsView:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 89
    .local v3, permVisible:Z
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mPkgURI:Landroid/net/Uri;

    invoke-static {v8}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 90
    .local v5, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_77

    .line 91
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    invoke-direct {v0, p0, v5}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;)V

    .line 92
    .local v0, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v8

    if-lez v8, :cond_77

    .line 93
    const/4 v3, 0x1

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    const v8, 0x7f060006

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 97
    .local v6, securityList:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    .end local v0           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v6           #securityList:Landroid/widget/LinearLayout;
    :cond_77
    if-nez v3, :cond_7e

    .line 101
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :cond_7e
    const v8, 0x7f060007

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mOk:Landroid/widget/Button;

    .line 104
    const v8, 0x7f060009

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/InstallAppConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mCancel:Landroid/widget/Button;

    .line 105
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mOk:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v8, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mCancel:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, result:I
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mOk:Landroid/widget/Button;

    if-ne p1, v1, :cond_a

    .line 119
    const/4 v0, -0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallAppConfirmation;->setResultAndReturn(I)V

    .line 125
    :cond_9
    :goto_9
    return-void

    .line 121
    :cond_a
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mCancel:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallAppConfirmation;->setResultAndReturn(I)V

    goto :goto_9
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const-string v3, "InstallAppConfirmation"

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppConfirmation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->localLOGV:Z

    if-eqz v1, :cond_25

    const-string v1, "InstallAppConfirmation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_25
    const-string v1, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mPkgURI:Landroid/net/Uri;

    .line 64
    iget-boolean v1, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->localLOGV:Z

    if-eqz v1, :cond_53

    const-string v1, "InstallAppConfirmation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAppInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppConfirmation;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_53
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppConfirmation;->initView()V

    .line 66
    return-void
.end method

.method public setResultAndReturn(I)V
    .registers 4
    .parameter "result"

    .prologue
    const-string v1, "InstallAppConfirmation"

    .line 110
    if-nez p1, :cond_b

    const-string v0, "InstallAppConfirmation"

    const-string v0, "Result has been canceled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_b
    const/4 v0, -0x1

    if-ne p1, v0, :cond_15

    const-string v0, "InstallAppConfirmation"

    const-string v0, "result ok"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppConfirmation;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppConfirmation;->finish()V

    .line 114
    return-void
.end method
