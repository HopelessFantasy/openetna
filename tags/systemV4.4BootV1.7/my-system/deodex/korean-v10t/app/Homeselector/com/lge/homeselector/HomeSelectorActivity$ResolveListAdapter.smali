.class final Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homeselector/HomeSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/homeselector/HomeSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/lge/homeselector/HomeSelectorActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 150
    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x10040

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_b4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, N:I
    if-lez v6, :cond_b4

    .line 156
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 158
    .local v4, r0:Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x1

    .local v7, i:I
    :goto_37
    if-ge v7, v6, :cond_56

    .line 159
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    iget v0, v4, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v9, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v2, :cond_4b

    iget-boolean v0, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v9, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v2, :cond_53

    .line 168
    :cond_4b
    :goto_4b
    if-ge v7, v6, :cond_53

    .line 169
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    add-int/lit8 v6, v6, -0x1

    goto :goto_4b

    .line 158
    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 174
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_56
    const/4 v0, 0x1

    if-le v6, v0, :cond_65

    .line 175
    new-instance v8, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 177
    .local v8, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    .end local v8           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 183
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 184
    .restart local v4       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 185
    .local v2, start:I
    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 186
    .local v5, r0Label:Ljava/lang/CharSequence;
    const/4 v7, 0x1

    :goto_7d
    if-ge v7, v6, :cond_ad

    .line 187
    if-nez v5, :cond_85

    .line 188
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 190
    :cond_85
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 191
    .restart local v9       #ri:Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 192
    .local v10, riLabel:Ljava/lang/CharSequence;
    if-nez v10, :cond_99

    .line 193
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 195
    :cond_99
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 186
    :goto_9f
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 198
    :cond_a2
    const/4 v0, 0x1

    sub-int v3, v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 199
    move-object v4, v9

    .line 200
    move-object v5, v10

    .line 201
    move v2, v7

    goto :goto_9f

    .line 205
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    .end local v10           #riLabel:Ljava/lang/CharSequence;
    :cond_ad
    const/4 v0, 0x1

    sub-int v3, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 207
    .end local v2           #start:I
    .end local v4           #r0:Landroid/content/pm/ResolveInfo;
    .end local v5           #r0Label:Ljava/lang/CharSequence;
    .end local v6           #N:I
    .end local v7           #i:I
    :cond_b4
    return-void
.end method

.method static synthetic access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;)V
    .registers 13
    .parameter "view"
    .parameter "info"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 303
    const v6, 0x7f070003

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 304
    .local v3, radiotext:Landroid/widget/CheckedTextView;
    const v6, 0x7f070001

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 305
    .local v4, text1:Landroid/widget/TextView;
    const v6, 0x7f070002

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 306
    .local v5, text2:Landroid/widget/TextView;
    const/high16 v6, 0x7f07

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 307
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v6, p2, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    sget-object v6, Lcom/lge/homeselector/HomeSelectorActivity;->mOpCode:Ljava/lang/String;

    const-string v7, "ORG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 311
    iget-object v6, p2, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.lge.homecube"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    iget-object v6, p2, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.launcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 313
    :cond_59
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    const v6, 0x7f050006

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 323
    :goto_62
    iget-object v6, p2, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v7, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    invoke-static {v7}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v2, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v6, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    invoke-static {v6}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p2, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2, v7}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 331
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9f

    .line 332
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 336
    :goto_96
    return-void

    .line 318
    .end local v1           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_97
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_62

    .line 321
    :cond_9b
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_62

    .line 335
    .restart local v1       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v2       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_9f
    invoke-virtual {v3, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_96
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .registers 25
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "ro"
    .parameter "roLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v14, p3, p2

    add-int/lit8 v11, v14, 0x1

    .line 213
    .local v11, num:I
    const/4 v14, 0x1

    if-ne v11, v14, :cond_26

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v14, v0

    new-instance v15, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;-><init>(Lcom/lge/homeselector/HomeSelectorActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_25
    return-void

    .line 217
    :cond_26
    const/4 v13, 0x0

    .line 218
    .local v13, usePkg:Z
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v14, v0

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 219
    .local v12, startApp:Ljava/lang/CharSequence;
    if-nez v12, :cond_3e

    .line 220
    const/4 v13, 0x1

    .line 222
    :cond_3e
    if-nez v13, :cond_75

    .line 224
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 226
    .local v6, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v7, p2, 0x1

    .local v7, j:I
    :goto_4a
    move v0, v7

    move/from16 v1, p3

    if-gt v0, v1, :cond_72

    .line 228
    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 229
    .local v9, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 230
    .local v8, jApp:Ljava/lang/CharSequence;
    if-eqz v8, :cond_71

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b0

    .line 231
    :cond_71
    const/4 v13, 0x1

    .line 238
    .end local v8           #jApp:Ljava/lang/CharSequence;
    .end local v9           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_72
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 240
    .end local v6           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7           #j:I
    :cond_75
    move/from16 v10, p2

    .local v10, k:I
    :goto_77
    move v0, v10

    move/from16 v1, p3

    if-gt v0, v1, :cond_25

    .line 241
    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 242
    .local v5, add:Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_b6

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v14, v0

    new-instance v15, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    move-object/from16 v16, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    move-object/from16 v3, p5

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;-><init>(Lcom/lge/homeselector/HomeSelectorActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :goto_ad
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    .line 234
    .end local v5           #add:Landroid/content/pm/ResolveInfo;
    .end local v10           #k:I
    .restart local v6       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v7       #j:I
    .restart local v8       #jApp:Ljava/lang/CharSequence;
    .restart local v9       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_b0
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 248
    .end local v6           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7           #j:I
    .end local v8           #jApp:Ljava/lang/CharSequence;
    .end local v9           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v5       #add:Landroid/content/pm/ResolveInfo;
    .restart local v10       #k:I
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v14, v0

    new-instance v15, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    move-object/from16 v16, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->this$0:Lcom/lge/homeselector/HomeSelectorActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lge/homeselector/HomeSelectorActivity;->access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    move-object/from16 v3, p5

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;-><init>(Lcom/lge/homeselector/HomeSelectorActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ad
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 286
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 292
    if-nez p2, :cond_17

    .line 293
    iget-object v1, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, view:Landroid/view/View;
    :goto_b
    iget-object v1, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;)V

    .line 299
    return-object v0

    .line 296
    .end local v0           #view:Landroid/view/View;
    :cond_17
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_b
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .registers 7
    .parameter "position"

    .prologue
    .line 264
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v2, :cond_6

    .line 265
    const/4 v2, 0x0

    .line 274
    .end local p0
    :goto_5
    return-object v2

    .line 268
    .restart local p0
    :cond_6
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 269
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 272
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v1

    .line 274
    goto :goto_5
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter "position"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 257
    const/4 v0, 0x0

    .line 260
    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_5
.end method
