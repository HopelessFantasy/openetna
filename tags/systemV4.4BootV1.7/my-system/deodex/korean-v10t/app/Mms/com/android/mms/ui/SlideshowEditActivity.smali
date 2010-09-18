.class public Lcom/android/mms/ui/SlideshowEditActivity;
.super Landroid/app/ListActivity;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MENU_ADD_SLIDE:I = 0x3

.field private static final MENU_DISCARD_SLIDESHOW:I = 0x4

.field private static final MENU_MOVE_DOWN:I = 0x1

.field private static final MENU_MOVE_UP:I = 0x0

.field private static final MENU_REMOVE_SLIDE:I = 0x2

.field private static final MESSAGE_URI:Ljava/lang/String; = "message_uri"

.field private static final REQUEST_CODE_EDIT_SLIDE:I = 0x6

.field private static final SLIDE_INDEX:Ljava/lang/String; = "slide_index"

.field private static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "SlideshowEditActivity"


# instance fields
.field private mDirty:Z

.field private mList:Landroid/widget/ListView;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mState:Landroid/os/Bundle;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 74
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 376
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowEditActivity$1;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    return p1
.end method

.method private addNewSlide()V
    .registers 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 298
    :goto_1f
    return-void

    .line 295
    :cond_20
    const v0, 0x7f07005d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f
.end method

.method private cleanupSlideshowModel()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_e

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 198
    :cond_e
    return-void
.end method

.method private createAddSlideItem()Landroid/view/View;
    .registers 6

    .prologue
    .line 113
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/LayoutInflater;

    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, v:Landroid/view/View;
    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x7f070030

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 120
    const v3, 0x7f090070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 121
    .restart local v1       #text:Landroid/widget/TextView;
    const v3, 0x7f070031

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 125
    .local v0, image:Landroid/widget/ImageView;
    const v3, 0x7f02000e

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    return-object v2
.end method

.method private initSlideList()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 204
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 205
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    const v1, 0x7f030023

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    return-void
.end method

.method private openSlide(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    const-string v1, "slide_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 284
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 303
    if-eq p2, v2, :cond_4

    .line 328
    :goto_3
    return-void

    .line 307
    :cond_4
    packed-switch p1, :pswitch_data_32

    goto :goto_3

    .line 309
    :pswitch_8
    monitor-enter p0

    .line 310
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    .line 311
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1f

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(I)V

    .line 314
    if-eqz p3, :cond_22

    const-string v1, "done"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 315
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_3

    .line 311
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 320
    :cond_22
    :try_start_22
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V
    :try_end_25
    .catch Lcom/google/android/mms/MmsException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_3

    .line 321
    :catch_26
    move-exception v0

    .line 322
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideshowEditActivity"

    const-string v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_3

    .line 307
    :pswitch_data_32
    .packed-switch 0x6
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const-string v3, "SlideshowEditActivity"

    .line 82
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->createAddSlideItem()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 87
    if-eqz p1, :cond_1e

    .line 89
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 92
    :cond_1e
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v1, :cond_3f

    .line 93
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "message_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    .line 98
    :goto_30
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_4a

    .line 99
    const-string v1, "SlideshowEditActivity"

    const-string v1, "Cannot startup activity, null Uri."

    invoke-static {v3, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    .line 110
    :goto_3e
    return-void

    .line 95
    :cond_3f
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    goto :goto_30

    .line 105
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V
    :try_end_4d
    .catch Lcom/google/android/mms/MmsException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3e

    .line 106
    :catch_4e
    move-exception v0

    .line 107
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "SlideshowEditActivity"

    const-string v1, "Failed to initialize the slide-list."

    invoke-static {v3, v1, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_3e
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 190
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p3, v0, :cond_c

    .line 133
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    .line 137
    :goto_b
    return-void

    .line 135
    :cond_c
    invoke-direct {p0, p3}, Lcom/android/mms/ui/SlideshowEditActivity;->openSlide(I)V

    goto :goto_b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 244
    .local v0, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 276
    :cond_e
    :goto_e
    return v3

    .line 246
    :pswitch_f
    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 247
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    sub-int v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_e

    .line 253
    :pswitch_2b
    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_e

    .line 254
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 255
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 256
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_e

    .line 260
    :pswitch_48
    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_e

    .line 266
    :pswitch_5d
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    goto :goto_e

    .line 270
    :pswitch_61
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 271
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 272
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_e

    .line 244
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_f
        :pswitch_2b
        :pswitch_48
        :pswitch_5d
        :pswitch_61
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 173
    monitor-enter p0

    .line 174
    :try_start_4
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3b

    if-eqz v2, :cond_1c

    .line 176
    :try_start_8
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 177
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 178
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_3b
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_1c} :catch_1e

    .line 183
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit p0

    .line 184
    return-void

    .line 179
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 180
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SlideshowEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 183
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catchall_3b
    move-exception v2

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const v7, 0x7f070030

    const v6, 0x7f020015

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 215
    .local v0, position:I
    if-ltz v0, :cond_66

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-eq v0, v1, :cond_66

    .line 217
    if-lez v0, :cond_2c

    .line 218
    const v1, 0x7f07002d

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02001c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 221
    :cond_2c
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_42

    .line 222
    const v1, 0x7f07002e

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02001b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 226
    :cond_42
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 228
    const/4 v1, 0x2

    const v2, 0x7f07002f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 234
    :goto_57
    const/4 v1, 0x4

    const v2, 0x7f070032

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020019

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    return v4

    .line 231
    :cond_66
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_57
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "slide_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 146
    :cond_15
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1f

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "slide_index"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    :cond_1f
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_30

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "message_uri"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_30
    const-string v0, "SlideshowEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    return-void
.end method
