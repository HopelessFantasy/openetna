.class public Lcom/lge/sns/profile/ui/ProfileDetailView;
.super Landroid/app/Activity;
.source "ProfileDetailView.java"


# static fields
.field static final BRITH_DT_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final RC_PROFILE_UPDATE:I = 0x7d3

.field private static dateFormat:Ljava/text/DateFormat;

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private FEMALE:Ljava/lang/String;

.field private MALE:Ljava/lang/String;

.field private categolies:[I

.field private isMyProfile:Z

.field private final itemSelection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private profile:Lcom/lge/sns/profile/Profile;

.field private profileStatusUpdate:Ljava/lang/Runnable;

.field statusLayout:Landroid/view/ViewGroup;

.field private statusUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileDetailView;->snsManager:Lcom/lge/sns/SnsManager;

    .line 39
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileDetailView;->dateFormat:Ljava/text/DateFormat;

    .line 233
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd hh:mm:ss z yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileDetailView;->BRITH_DT_FORMAT:Ljava/text/SimpleDateFormat;

    .line 235
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileDetailView;->BRITH_DT_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 236
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    .line 42
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->isMyProfile:Z

    .line 43
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->statusUpdate:Z

    .line 47
    const-string v0, "M"

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->MALE:Ljava/lang/String;

    .line 48
    const-string v0, "F"

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->FEMALE:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    .line 174
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileDetailView$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileDetailView$1;-><init>(Lcom/lge/sns/profile/ui/ProfileDetailView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profileStatusUpdate:Ljava/lang/Runnable;

    return-void

    .line 54
    nop

    :array_32
    .array-data 0x4
        0xa4t 0x0t 0x5t 0x7ft
        0xaft 0x0t 0x5t 0x7ft
        0xb0t 0x0t 0x5t 0x7ft
        0xb1t 0x0t 0x5t 0x7ft
        0xb2t 0x0t 0x5t 0x7ft
        0xb3t 0x0t 0x5t 0x7ft
        0xb4t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/ProfileDetailView;)Lcom/lge/sns/profile/Profile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/DateFormat;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileDetailView;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method private addButtonView()V
    .registers 3

    .prologue
    .line 252
    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 254
    .local v0, updateButton:Landroid/widget/Button;
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->confirmMyProfile()Z

    move-result v1

    if-nez v1, :cond_14

    .line 255
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    :cond_14
    new-instance v1, Lcom/lge/sns/profile/ui/ProfileDetailView$2;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/ProfileDetailView$2;-><init>(Lcom/lge/sns/profile/ui/ProfileDetailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    return-void
.end method

.method private categoriesAdd(Ljava/lang/String;Ljava/lang/String;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "detailTitle"
    .parameter "content"
    .parameter "textViewResourceId"
    .parameter "parent"

    .prologue
    .line 130
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 131
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v1, p3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 133
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    .local v2, titleView:Landroid/widget/TextView;
    const v4, 0x7f0800b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    .local v0, contentView:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 141
    return-object v3
.end method

.method private confirmMyProfile()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->isMyProfile:Z

    return v0
.end method

.method private formatBrithday(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "birthDateTime"

    .prologue
    .line 239
    :try_start_0
    sget-object v3, Lcom/lge/sns/profile/ui/ProfileDetailView;->BRITH_DT_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 240
    .local v0, d:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 241
    .local v1, dateFormatter:Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v3

    .line 243
    .end local v0           #d:Ljava/util/Date;
    .end local v1           #dateFormatter:Ljava/text/DateFormat;
    :goto_e
    return-object v3

    .line 242
    :catch_f
    move-exception v3

    move-object v2, v3

    .local v2, e:Ljava/text/ParseException;
    move-object v3, p1

    .line 243
    goto :goto_e
.end method

.method private getAccountIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "snsId"

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, srcName:Ljava/lang/String;
    :try_start_18
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 304
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_32

    move-result-object v0

    .line 309
    .end local v1           #is:Ljava/io/InputStream;
    :goto_24
    if-nez v0, :cond_31

    .line 310
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 312
    :cond_31
    return-object v0

    .line 305
    :catch_32
    move-exception v3

    goto :goto_24
.end method

.method private getProfile()Lcom/lge/sns/profile/Profile;
    .registers 7

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, dataUri:Landroid/net/Uri;
    sget-object v4, Lcom/lge/sns/profile/ui/ProfileDetailView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 148
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const/4 v3, 0x0

    .line 151
    .local v3, profileLocal:Lcom/lge/sns/profile/Profile;
    invoke-interface {v2, v0}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Landroid/net/Uri;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_31

    .line 153
    sget-object v4, Lcom/lge/sns/profile/ui/ProfileDetailView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, myUid:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->isMyProfile:Z

    .line 155
    invoke-direct {p0, v3}, Lcom/lge/sns/profile/ui/ProfileDetailView;->initHashMap(Lcom/lge/sns/profile/Profile;)V

    .line 159
    .end local v1           #myUid:Ljava/lang/String;
    :goto_30
    return-object v3

    .line 157
    :cond_31
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->isMyProfile:Z

    goto :goto_30
.end method

.method private initHashMap(Lcom/lge/sns/profile/Profile;)V
    .registers 6
    .parameter "profileData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getBirthDateTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 215
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getBirthDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->formatBrithday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_1d
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->MALE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 221
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0500ad

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getHometown()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getInterests()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getMusic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getPolitics()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getActivities()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void

    .line 217
    :cond_98
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 222
    :cond_ab
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->FEMALE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 223
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0500ae

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3d
.end method

.method private profileImageView()V
    .registers 6

    .prologue
    .line 269
    const v3, 0x7f08009e

    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 271
    .local v2, profileImage:Landroid/widget/ImageView;
    sget-object v3, Lcom/lge/sns/profile/ui/ProfileDetailView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v3, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    .line 272
    .local v1, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    .local v0, photo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_25

    .line 276
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    :goto_24
    return-void

    .line 279
    :cond_25
    const v3, 0x7f020091

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_24
.end method

.method private profileStatusAddView()V
    .registers 13

    .prologue
    const/16 v9, 0x8

    .line 86
    const v7, 0x7f0800ae

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->statusLayout:Landroid/view/ViewGroup;

    .line 88
    const v7, 0x7f0800a6

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 89
    .local v5, profileStatus:Landroid/widget/TextView;
    const v7, 0x7f0800a7

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 90
    .local v6, statusPublished:Landroid/widget/TextView;
    const v7, 0x7f0800aa

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 91
    .local v4, mobileNumber:Landroid/widget/TextView;
    const v7, 0x7f0800ad

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, emailView:Landroid/widget/TextView;
    const v7, 0x7f0800a8

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 94
    .local v3, mobileLayout:Landroid/widget/LinearLayout;
    const v7, 0x7f0800ab

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    .local v0, emailLayout:Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f0

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_f0

    .line 97
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_60
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_f8

    .line 103
    sget-object v7, Lcom/lge/sns/profile/ui/ProfileDetailView;->dateFormat:Ljava/text/DateFormat;

    iget-object v8, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v8}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_77
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fd

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_fd

    .line 109
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_94
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_101

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_101

    .line 115
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_b1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b2
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    array-length v7, v7

    if-ge v2, v7, :cond_105

    .line 121
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v8, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    aget v8, v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_ed

    .line 122
    iget-object v8, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->statusLayout:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    aget v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->itemSelection:Ljava/util/Map;

    iget-object v10, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->categolies:[I

    aget v10, v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const v10, 0x7f03003a

    iget-object v11, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->statusLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v9, v7, v10, v11}, Lcom/lge/sns/profile/ui/ProfileDetailView;->categoriesAdd(Ljava/lang/String;Ljava/lang/String;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    :cond_ed
    add-int/lit8 v2, v2, 0x1

    goto :goto_b2

    .line 99
    .end local v2           #i:I
    :cond_f0
    const v7, 0x7f050088

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_60

    .line 105
    :cond_f8
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_77

    .line 111
    :cond_fd
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_94

    .line 117
    :cond_101
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b1

    .line 127
    .restart local v2       #i:I
    :cond_105
    return-void
.end method

.method private snsImageInfo()V
    .registers 4

    .prologue
    .line 286
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 287
    .local v0, sns_image:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    .local v1, sns_name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3d

    .line 290
    :cond_26
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_2f
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getAccountIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    return-void

    .line 292
    :cond_3d
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 165
    packed-switch p1, :pswitch_data_1c

    .line 173
    :cond_9
    :goto_9
    return-void

    .line 167
    :pswitch_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->statusUpdate:Z

    .line 168
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getProfile()Lcom/lge/sns/profile/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    .line 169
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profileStatusUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 165
    nop

    :pswitch_data_1c
    .packed-switch 0x7d3
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x7

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileDetailView;->requestWindowFeature(I)Z

    .line 70
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 73
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getProfile()Lcom/lge/sns/profile/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    .line 74
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v0, :cond_2e

    .line 75
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->snsImageInfo()V

    .line 76
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->profileImageView()V

    .line 77
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->profileStatusAddView()V

    .line 78
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->addButtonView()V

    .line 83
    :goto_2d
    return-void

    .line 80
    :cond_2e
    const v0, 0x7f05008c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->finish()V

    goto :goto_2d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    if-ne p1, v4, :cond_16

    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->statusUpdate:Z

    if-eqz v1, :cond_16

    .line 200
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->finish()V

    move v1, v3

    .line 210
    .end local v0           #intent:Landroid/content/Intent;
    :goto_15
    return v1

    .line 204
    :cond_16
    if-ne p1, v4, :cond_28

    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/ProfileDetailView;->statusUpdate:Z

    if-nez v1, :cond_28

    .line 205
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 206
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->setResult(ILandroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileDetailView;->finish()V

    move v1, v3

    .line 208
    goto :goto_15

    .end local v0           #intent:Landroid/content/Intent;
    :cond_28
    move v1, v2

    .line 210
    goto :goto_15
.end method
