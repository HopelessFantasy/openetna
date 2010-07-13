.class final Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;
.super Landroid/widget/BaseAdapter;
.source "RingsExtended.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angryredplanet/android/rings_extended/RingsExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrigIntent:Landroid/content/Intent;

.field private mRealListStart:I

.field final synthetic this$0:Lcom/angryredplanet/android/rings_extended/RingsExtended;


# direct methods
.method public constructor <init>(Lcom/angryredplanet/android/rings_extended/RingsExtended;Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/ComponentName;)V
    .registers 11
    .parameter
    .parameter "context"
    .parameter
    .parameter "intent"
    .parameter "origIntent"
    .parameter "excludeOrigIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, initialItems:Ljava/util/List;,"Ljava/util/List<Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    iput-object p1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->this$0:Lcom/angryredplanet/android/rings_extended/RingsExtended;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 112
    iput v3, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mRealListStart:I

    .line 125
    iput-object p2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mInitialItems:Ljava/util/List;

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mIntent:Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    if-eqz p5, :cond_61

    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mOrigIntent:Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mOrigIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mOrigIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    :goto_31
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mInflater:Landroid/view/LayoutInflater;

    .line 139
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mIntent:Landroid/content/Intent;

    invoke-static {p2, v1, v2}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    .line 141
    if-eqz p5, :cond_60

    .line 142
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mOrigIntent:Landroid/content/Intent;

    invoke-static {p2, v1, p6}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, orig:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_60

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mRealListStart:I

    .line 146
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    .line 150
    .end local v0           #orig:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_60
    return-void

    .line 135
    :cond_61
    iput-object v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mOrigIntent:Landroid/content/Intent;

    goto :goto_31
.end method

.method private final bindTextViews(Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .parameter "vh"
    .parameter "txt1"
    .parameter "txt2"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 244
    if-nez p3, :cond_19

    .line 245
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textSingle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textSingle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :goto_18
    return-void

    .line 250
    :cond_19
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble2:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textSingle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method

.method private final bindView(Landroid/view/View;ILcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;)V
    .registers 12
    .parameter "view"
    .parameter "position"
    .parameter "inf"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;

    .line 260
    .local v0, vh:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;
    iget-object v1, p3, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;->name:Ljava/lang/CharSequence;

    iget-object v2, p3, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;->subtitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->bindTextViews(Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p3, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3e

    .line 262
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 270
    :goto_25
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->this$0:Lcom/angryredplanet/android/rings_extended/RingsExtended;

    invoke-static {v1}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->access$100(Lcom/angryredplanet/android/rings_extended/RingsExtended;)J

    move-result-wide v1

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-nez v1, :cond_5c

    .line 271
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->more:Landroid/widget/ImageView;

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :goto_3d
    return-void

    .line 266
    :cond_3e
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 268
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    int-to-long v2, p2

    iget-object v4, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->this$0:Lcom/angryredplanet/android/rings_extended/RingsExtended;

    invoke-static {v4}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->access$000(Lcom/angryredplanet/android/rings_extended/RingsExtended;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5a

    const/4 v2, 0x1

    :goto_56
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_25

    :cond_5a
    move v2, v6

    goto :goto_56

    .line 274
    :cond_5c
    iget-object v1, v0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3d
.end method

.method private final bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V
    .registers 9
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v3, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->this$0:Lcom/angryredplanet/android/rings_extended/RingsExtended;

    invoke-virtual {v3}, Lcom/angryredplanet/android/rings_extended/RingsExtended;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 230
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;

    .line 232
    .local v2, vh:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 233
    .local v0, label:Ljava/lang/CharSequence;
    if-nez v0, :cond_17

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 234
    :cond_17
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->bindTextViews(Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 235
    iget-object v3, v2, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v3, v2, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v3, v2, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 238
    iget-object v3, v2, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->more:Landroid/widget/ImageView;

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v3, v2, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    return-void
.end method

.method private final getIntentStartIndex()I
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mInitialItems:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mInitialItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->getIntentStartIndex()I

    move-result v0

    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 196
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 201
    if-nez p2, :cond_66

    .line 202
    iget-object v3, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, view:Landroid/view/View;
    new-instance v1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;-><init>(Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;)V

    .line 204
    .local v1, vh:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;
    const/high16 v3, 0x7f05

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 205
    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 206
    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textSingle:Landroid/widget/TextView;

    .line 207
    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble1:Landroid/widget/TextView;

    .line 208
    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->textDouble2:Landroid/widget/TextView;

    .line 209
    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;->more:Landroid/widget/ImageView;

    .line 210
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    .end local v1           #vh:Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter$ViewHolder;
    :goto_54
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->getIntentStartIndex()I

    move-result v0

    .line 215
    .local v0, intentStart:I
    if-ge p1, v0, :cond_68

    .line 216
    iget-object v3, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mInitialItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;

    invoke-direct {p0, v2, p1, v3}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->bindView(Landroid/view/View;ILcom/angryredplanet/android/rings_extended/RingsExtended$ItemInfo;)V

    .line 220
    :goto_65
    return-object v2

    .line 212
    .end local v0           #intentStart:I
    .end local v2           #view:Landroid/view/View;
    :cond_66
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_54

    .line 218
    .restart local v0       #intentStart:I
    :cond_68
    iget-object v3, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    sub-int v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->bindView(Landroid/view/View;Landroid/content/pm/ResolveInfo;)V

    goto :goto_65
.end method

.method public initialItemForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->getIntentStartIndex()I

    move-result v0

    if-lt p1, v0, :cond_8

    .line 154
    const/4 v0, -0x1

    .line 156
    :goto_7
    return v0

    :cond_8
    move v0, p1

    goto :goto_7
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .registers 7
    .parameter "position"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->getIntentStartIndex()I

    move-result v2

    sub-int/2addr p1, v2

    .line 175
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_b

    if-gez p1, :cond_d

    .line 176
    :cond_b
    const/4 v2, 0x0

    .line 184
    .end local p0
    :goto_c
    return-object v2

    .line 179
    .restart local p0
    :cond_d
    new-instance v1, Landroid/content/Intent;

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mRealListStart:I

    if-lt p1, v2, :cond_32

    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mIntent:Landroid/content/Intent;

    :goto_15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 181
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v1

    .line 184
    goto :goto_c

    .line 179
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p0
    :cond_32
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mOrigIntent:Landroid/content/Intent;

    goto :goto_15
.end method

.method public isOrigIntentPosition(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->getIntentStartIndex()I

    move-result v0

    sub-int/2addr p1, v0

    .line 161
    if-ltz p1, :cond_d

    iget v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mRealListStart:I

    if-ge p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter "position"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->getIntentStartIndex()I

    move-result v0

    sub-int/2addr p1, v0

    .line 166
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_b

    if-gez p1, :cond_d

    .line 167
    :cond_b
    const/4 v0, 0x0

    .line 170
    .end local p0
    :goto_c
    return-object v0

    .restart local p0
    :cond_d
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/RingsExtended$Adapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    goto :goto_c
.end method
