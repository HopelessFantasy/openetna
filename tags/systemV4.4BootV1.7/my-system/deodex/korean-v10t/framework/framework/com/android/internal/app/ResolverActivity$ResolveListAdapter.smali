.class final Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
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
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_5b

    const/16 v2, 0x40

    :goto_2a
    or-int/2addr v1, v2

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_be

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, N:I
    if-lez v6, :cond_be

    .line 218
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 219
    .local v4, r0:Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x1

    .local v7, i:I
    :goto_3f
    if-ge v7, v6, :cond_60

    .line 220
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 227
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    iget v0, v4, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v9, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v2, :cond_53

    iget-boolean v0, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v9, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v2, :cond_5d

    .line 229
    :cond_53
    :goto_53
    if-ge v7, v6, :cond_5d

    .line 230
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    add-int/lit8 v6, v6, -0x1

    goto :goto_53

    .line 211
    .end local v1           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #r0:Landroid/content/pm/ResolveInfo;
    .end local v6           #N:I
    .end local v7           #i:I
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5b
    const/4 v2, 0x0

    goto :goto_2a

    .line 219
    .restart local v1       #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #r0:Landroid/content/pm/ResolveInfo;
    .restart local v6       #N:I
    .restart local v7       #i:I
    .restart local v9       #ri:Landroid/content/pm/ResolveInfo;
    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 235
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_60
    const/4 v0, 0x1

    if-le v6, v0, :cond_6f

    .line 236
    new-instance v8, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 238
    .local v8, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    .end local v8           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_6f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 243
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 244
    .restart local v4       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 245
    .local v2, start:I
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 246
    .local v5, r0Label:Ljava/lang/CharSequence;
    const/4 v7, 0x1

    :goto_87
    if-ge v7, v6, :cond_b7

    .line 247
    if-nez v5, :cond_8f

    .line 248
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 250
    :cond_8f
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 251
    .restart local v9       #ri:Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 252
    .local v10, riLabel:Ljava/lang/CharSequence;
    if-nez v10, :cond_a3

    .line 253
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 255
    :cond_a3
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 246
    :goto_a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_87

    .line 258
    :cond_ac
    const/4 v0, 0x1

    sub-int v3, v7, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 259
    move-object v4, v9

    .line 260
    move-object v5, v10

    .line 261
    move v2, v7

    goto :goto_a9

    .line 264
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    .end local v10           #riLabel:Ljava/lang/CharSequence;
    :cond_b7
    const/4 v0, 0x1

    sub-int v3, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 266
    .end local v2           #start:I
    .end local v4           #r0:Landroid/content/pm/ResolveInfo;
    .end local v5           #r0Label:Ljava/lang/CharSequence;
    .end local v6           #N:I
    .end local v7           #i:I
    :cond_be
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .registers 8
    .parameter "view"
    .parameter "info"

    .prologue
    .line 361
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 362
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 363
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 364
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3d

    .line 366
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :goto_2d
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    return-void

    .line 369
    :cond_3d
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
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
    .line 271
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v14, p3, p2

    add-int/lit8 v11, v14, 0x1

    .line 272
    .local v11, num:I
    const/4 v14, 0x1

    if-ne v11, v14, :cond_26

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v14, v0

    new-instance v15, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_25
    return-void

    .line 276
    :cond_26
    const/4 v13, 0x0

    .line 277
    .local v13, usePkg:Z
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v14, v0

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 278
    .local v12, startApp:Ljava/lang/CharSequence;
    if-nez v12, :cond_3e

    .line 279
    const/4 v13, 0x1

    .line 281
    :cond_3e
    if-nez v13, :cond_75

    .line 283
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 285
    .local v6, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v7, p2, 0x1

    .local v7, j:I
    :goto_4a
    move v0, v7

    move/from16 v1, p3

    if-gt v0, v1, :cond_72

    .line 287
    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 288
    .local v9, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 289
    .local v8, jApp:Ljava/lang/CharSequence;
    if-eqz v8, :cond_71

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b0

    .line 290
    :cond_71
    const/4 v13, 0x1

    .line 297
    .end local v8           #jApp:Ljava/lang/CharSequence;
    .end local v9           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_72
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 299
    .end local v6           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7           #j:I
    :cond_75
    move/from16 v10, p2

    .local v10, k:I
    :goto_77
    move v0, v10

    move/from16 v1, p3

    if-gt v0, v1, :cond_25

    .line 300
    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 301
    .local v5, add:Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_b6

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v14, v0

    new-instance v15, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :goto_ad
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    .line 293
    .end local v5           #add:Landroid/content/pm/ResolveInfo;
    .end local v10           #k:I
    .restart local v6       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v7       #j:I
    .restart local v8       #jApp:Ljava/lang/CharSequence;
    .restart local v9       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_b0
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 307
    .end local v6           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v7           #j:I
    .end local v8           #jApp:Ljava/lang/CharSequence;
    .end local v9           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v5       #add:Landroid/content/pm/ResolveInfo;
    .restart local v10       #k:I
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v14, v0

    new-instance v15, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v16, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    move-object/from16 v3, p5

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ad
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

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
    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 345
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 350
    if-nez p2, :cond_18

    .line 351
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109004a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, view:Landroid/view/View;
    :goto_c
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 357
    return-object v0

    .line 354
    .end local v0           #view:Landroid/view/View;
    :cond_18
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_c
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .registers 7
    .parameter "position"

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v2, :cond_6

    .line 324
    const/4 v2, 0x0

    .line 333
    .end local p0
    :goto_5
    return-object v2

    .line 327
    .restart local p0
    :cond_6
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 328
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 331
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v1

    .line 333
    goto :goto_5
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .registers 3
    .parameter "position"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 316
    const/4 v0, 0x0

    .line 319
    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_5
.end method
