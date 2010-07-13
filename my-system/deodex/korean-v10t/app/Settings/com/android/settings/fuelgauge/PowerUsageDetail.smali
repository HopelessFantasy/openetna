.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Activity;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageDetail$1;,
        Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    }
.end annotation


# static fields
.field public static final ACTION_APP_DETAILS:I = 0x5

.field public static final ACTION_BLUETOOTH_SETTINGS:I = 0x3

.field public static final ACTION_DISPLAY_SETTINGS:I = 0x1

.field public static final ACTION_SECURITY_SETTINGS:I = 0x6

.field public static final ACTION_WIFI_SETTINGS:I = 0x2

.field public static final ACTION_WIRELESS_SETTINGS:I = 0x4

.field private static final DEBUG:Z = true

.field public static final EXTRA_DETAIL_TYPES:Ljava/lang/String; = "types"

.field public static final EXTRA_DETAIL_VALUES:Ljava/lang/String; = "values"

.field public static final EXTRA_DRAIN_TYPE:Ljava/lang/String; = "drainType"

.field public static final EXTRA_GAUGE:Ljava/lang/String; = "gauge"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "iconId"

.field public static final EXTRA_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final EXTRA_NO_COVERAGE:Ljava/lang/String; = "noCoverage"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_USAGE_DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_USAGE_SINCE:Ljava/lang/String; = "since"

.field private static final TAG:Ljava/lang/String; = "PowerUsageDetail"

.field public static final USAGE_SINCE_RESET:I = 0x2

.field public static final USAGE_SINCE_UNPLUGGED:I = 0x1

.field private static sDrainTypeDesciptions:[I


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field private mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x58t 0x3t 0x8t 0x7ft
        0x59t 0x3t 0x8t 0x7ft
        0x57t 0x3t 0x8t 0x7ft
        0x5dt 0x3t 0x8t 0x7ft
        0x5ft 0x3t 0x8t 0x7ft
        0x5bt 0x3t 0x8t 0x7ft
        0x62t 0x3t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    return-void
.end method

.method private addControl(III)V
    .registers 11
    .parameter "title"
    .parameter "summary"
    .parameter "action"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 307
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 308
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030028

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 309
    .local v2, item:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 310
    const v5, 0x7f0a0077

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 311
    .local v0, actionButton:Landroid/widget/Button;
    const v5, 0x7f0a0032

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 312
    .local v4, summaryView:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method private createDetails()V
    .registers 16

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 128
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "title"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 129
    const-string v10, "percent"

    invoke-virtual {v6, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 130
    .local v7, percentage:I
    const-string v10, "gauge"

    invoke-virtual {v6, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 131
    .local v2, gaugeValue:I
    const-string v10, "since"

    invoke-virtual {v6, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 132
    const-string v10, "uid"

    invoke-virtual {v6, v10, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 133
    const-string v10, "drainType"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 134
    const-string v10, "noCoverage"

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 135
    const-string v10, "iconPackage"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, iconPackage:Ljava/lang/String;
    const-string v10, "iconId"

    invoke-virtual {v6, v10, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 137
    .local v3, iconId:I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_117

    .line 139
    :try_start_50
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 140
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 141
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_63

    .line 142
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_63} :catch_125

    .line 150
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    :cond_63
    :goto_63
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_71

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_71
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, summary:Ljava/lang/String;
    const v10, 0x7f0a0032

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const-string v10, "types"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 159
    const-string v10, "values"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 161
    const v10, 0x7f0a007a

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    .line 162
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v10, 0x7f0a007b

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "%d%%"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v10, 0x7f0a007c

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 167
    .local v1, gaugeImage:Landroid/widget/ImageView;
    new-instance v10, Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-direct {v10}, Lcom/android/settings/fuelgauge/PercentageBar;-><init>()V

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    .line 168
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    int-to-double v11, v2

    iput-wide v11, v10, Lcom/android/settings/fuelgauge/PercentageBar;->percent:D

    .line 169
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f02

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v10, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const v10, 0x7f0a0033

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 173
    .local v4, iconImage:Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    const v10, 0x7f0a007d

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 176
    const v10, 0x7f0a007e

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    .line 178
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 179
    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 180
    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 181
    return-void

    .line 147
    .end local v1           #gaugeImage:Landroid/widget/ImageView;
    .end local v4           #iconImage:Landroid/widget/ImageView;
    .end local v9           #summary:Ljava/lang/String;
    :cond_117
    if-eqz v3, :cond_63

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_63

    .line 144
    :catch_125
    move-exception v10

    goto/16 :goto_63
.end method

.method private doAction(I)V
    .registers 6
    .parameter "action"

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_56

    .line 211
    :goto_3
    return-void

    .line 190
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 193
    :pswitch_f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 196
    :pswitch_1a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 199
    :pswitch_25
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 202
    :pswitch_30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/InstalledAppDetails;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    const-string v1, "com.android.settings.ApplicationPkgName"

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 208
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 188
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4
        :pswitch_f
        :pswitch_1a
        :pswitch_25
        :pswitch_30
        :pswitch_4a
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .registers 13
    .parameter "uid"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 248
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, packages:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3d

    const/4 v6, 0x0

    :try_start_f
    aget-object v6, v2, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_15} :catch_9b

    move-result-object v6

    move-object v3, v6

    .line 253
    :goto_17
    if-eqz v3, :cond_3f

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v6

    .line 254
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_1c
    if-eqz v0, :cond_43

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_41

    move v1, v9

    .line 256
    .local v1, isSystem:Z
    :goto_25
    const/4 v5, 0x1

    .line 257
    .local v5, removeHeader:Z
    sget-object v6, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_9e

    .line 300
    :cond_33
    :goto_33
    if-eqz v5, :cond_3c

    .line 301
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    :cond_3c
    return-void

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #isSystem:Z
    .end local v5           #removeHeader:Z
    :cond_3d
    move-object v3, v10

    .line 251
    goto :goto_17

    :cond_3f
    move-object v0, v10

    .line 253
    goto :goto_1c

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_41
    move v1, v8

    .line 254
    goto :goto_25

    :cond_43
    move v1, v8

    goto :goto_25

    .line 260
    .restart local v1       #isSystem:Z
    .restart local v5       #removeHeader:Z
    :pswitch_45
    if-eqz v2, :cond_54

    if-nez v1, :cond_54

    .line 261
    const v6, 0x7f080352

    const v7, 0x7f080363

    const/4 v8, 0x5

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 263
    const/4 v5, 0x0

    .line 267
    :cond_54
    iget-boolean v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v6, :cond_33

    .line 268
    const v6, 0x7f0800d9

    const v7, 0x7f080364

    const/4 v8, 0x6

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 270
    const/4 v5, 0x0

    goto :goto_33

    .line 274
    :pswitch_64
    const v6, 0x7f0801a7

    const v7, 0x7f08035c

    invoke-direct {p0, v6, v7, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 277
    const/4 v5, 0x0

    .line 278
    goto :goto_33

    .line 280
    :pswitch_6f
    const v6, 0x7f080144

    const v7, 0x7f08035e

    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 283
    const/4 v5, 0x0

    .line 284
    goto :goto_33

    .line 286
    :pswitch_7b
    const v6, 0x7f0800de

    const v7, 0x7f080360

    const/4 v8, 0x3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 289
    const/4 v5, 0x0

    .line 290
    goto :goto_33

    .line 292
    :pswitch_87
    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024

    cmpl-double v6, v6, v8

    if-lez v6, :cond_33

    .line 293
    const v6, 0x7f0800c2

    const v7, 0x7f08035a

    const/4 v8, 0x4

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 296
    const/4 v5, 0x0

    goto :goto_33

    .line 252
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #isSystem:Z
    .end local v5           #removeHeader:Z
    :catch_9b
    move-exception v6

    goto/16 :goto_17

    .line 257
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_64
        :pswitch_6f
        :pswitch_7b
        :pswitch_87
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 215
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v7, :cond_85

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v7, :cond_85

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v7, v7

    if-ge v0, v7, :cond_85

    .line 218
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v7, v7, v0

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_20

    .line 216
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 219
    :cond_20
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v7, v7, v0

    invoke-virtual {p0, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, label:Ljava/lang/String;
    const/4 v5, 0x0

    .line 221
    .local v5, value:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v7, v7, v0

    packed-switch v7, :pswitch_data_86

    .line 233
    :goto_30
    :pswitch_30
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v7, v7, v0

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    .line 235
    :goto_38
    const v7, 0x7f030029

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 237
    .local v2, item:Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 238
    const v7, 0x7f0a0078

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 239
    .local v4, labelView:Landroid/widget/TextView;
    const v7, 0x7f0a0079

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 240
    .local v6, valueView:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 224
    .end local v2           #item:Landroid/view/ViewGroup;
    .end local v4           #labelView:Landroid/widget/TextView;
    .end local v6           #valueView:Landroid/widget/TextView;
    :pswitch_60
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v7, v7, v0

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->formatBytes(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    .line 225
    goto :goto_38

    .line 227
    :pswitch_69
    const-string v7, "%d%%"

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 228
    goto :goto_38

    .line 230
    :pswitch_82
    iput-boolean v12, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_30

    .line 244
    .end local v0           #i:I
    .end local v3           #label:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_85
    return-void

    .line 221
    :pswitch_data_86
    .packed-switch 0x7f080349
        :pswitch_82
        :pswitch_30
        :pswitch_60
        :pswitch_60
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_69
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .registers 14
    .parameter "uid"

    .prologue
    .line 338
    const/4 v10, 0x1

    if-ge p1, v10, :cond_7

    .line 339
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 374
    :cond_6
    :goto_6
    return-void

    .line 342
    :cond_7
    const v10, 0x7f0a0081

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 343
    .local v8, packagesParent:Landroid/view/ViewGroup;
    if-eqz v8, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 346
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 347
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 348
    .local v1, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 349
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_2e

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_32

    .line 350
    :cond_2e
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_6

    .line 355
    :cond_32
    const/4 v2, 0x0

    .local v2, i:I
    :goto_33
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_6

    .line 357
    :try_start_38
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v10, v10, v2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 358
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 359
    .local v6, label:Ljava/lang/CharSequence;
    move-object v3, v1

    .line 360
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_50

    .line 361
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 363
    :cond_50
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v10, :cond_58

    .line 364
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 366
    :cond_58
    const v10, 0x7f03002b

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 368
    .local v5, item:Landroid/view/ViewGroup;
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 369
    const v10, 0x7f0a0078

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 370
    .local v7, labelView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_75} :catch_78

    .line 355
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #item:Landroid/view/ViewGroup;
    .end local v6           #label:Ljava/lang/CharSequence;
    .end local v7           #labelView:Landroid/widget/TextView;
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 371
    :catch_78
    move-exception v10

    goto :goto_75
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .registers 4

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_5

    .line 335
    :cond_4
    return-void

    .line 330
    :cond_5
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 332
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 333
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private removePackagesSection()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 320
    const v1, 0x7f0a0080

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_e

    .line 321
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_e
    const v1, 0x7f0a0081

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 324
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_1a
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 185
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->setContentView(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 113
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 119
    return-void
.end method
