.class public Lcom/android/mms/model/SlideModel;
.super Lcom/android/mms/model/Model;
.source "SlideModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;",
        "Lorg/w3c/dom/events/EventListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SLIDE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SlideModel"


# instance fields
.field private mAudio:Lcom/android/mms/model/MediaModel;

.field private mCanAddAudio:Z

.field private mCanAddImage:Z

.field private mCanAddVideo:Z

.field private mDuration:I

.field private mFill:S

.field private mImage:Lcom/android/mms/model/MediaModel;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/android/mms/model/SlideshowModel;

.field private mSlideSize:I

.field private mText:Lcom/android/mms/model/MediaModel;

.field private mVideo:Lcom/android/mms/model/MediaModel;

.field private mVisible:Z


# direct methods
.method public constructor <init>(ILcom/android/mms/model/SlideshowModel;)V
    .registers 5
    .parameter "duration"
    .parameter "slideshow"

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 83
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 84
    iput-object p2, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 85
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 10
    .parameter "duration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v6, 0x1

    .line 97
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 54
    iput-boolean v6, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 55
    iput-boolean v6, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 56
    iput-boolean v6, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 59
    iput-boolean v6, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 98
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, maxDur:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 103
    .local v3, media:Lcom/android/mms/model/MediaModel;
    :try_start_26
    invoke-direct {p0, v3}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_29} :catch_31

    .line 110
    :goto_29
    :try_start_29
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDuration()I
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_2c} :catch_40

    move-result v4

    .line 111
    .local v4, mediaDur:I
    if-le v4, v2, :cond_1a

    .line 112
    move v2, v4

    goto :goto_1a

    .line 104
    .end local v4           #mediaDur:I
    :catch_31
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v5, "SlideModel"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 119
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    :cond_3c
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 120
    return-void

    .line 114
    .restart local v3       #media:Lcom/android/mms/model/MediaModel;
    :catch_40
    move-exception v5

    goto :goto_1a
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;)V
    .registers 3
    .parameter "slideshow"

    .prologue
    .line 65
    const/16 v0, 0x1388

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;-><init>(ILcom/android/mms/model/SlideshowModel;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;Landroid/content/Context;)V
    .registers 8
    .parameter "slideshow"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 54
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 56
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 59
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MMSSETTINGDB_SLIDEDURATION_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, duration_flexValues:Ljava/lang/String;
    const/16 v0, 0x1388

    .line 73
    .local v0, duration_Val:I
    if-eqz v1, :cond_25

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    :cond_25
    const-string v2, "[FLEX]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration_flexValues :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    mul-int/lit16 v2, v0, 0x3e8

    iput v2, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 79
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 80
    return-void
.end method

.method private internalAdd(Lcom/android/mms/model/MediaModel;)V
    .registers 4
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    if-nez p1, :cond_4

    .line 157
    :cond_3
    :goto_3
    return-void

    .line 128
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 129
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 130
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    goto :goto_3

    .line 131
    :cond_12
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 132
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    if-eqz v0, :cond_26

    .line 133
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 134
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 135
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_3

    .line 137
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 139
    :cond_2c
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 140
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    if-eqz v0, :cond_40

    .line 141
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 142
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 143
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_3

    .line 145
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 147
    :cond_46
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    if-eqz v0, :cond_5c

    .line 149
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 150
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 151
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_3

    .line 154
    :cond_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V
    .registers 9
    .parameter "old"
    .parameter "media"

    .prologue
    .line 160
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 162
    .local v0, addSize:I
    if-nez p1, :cond_30

    .line 163
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_f

    .line 164
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 166
    :cond_f
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 188
    :goto_1a
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 189
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_20

    .line 170
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_30
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v3

    .line 171
    .local v3, removeSize:I
    if-le v0, v3, :cond_5a

    .line 172
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_41

    .line 173
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 175
    :cond_41
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 176
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 184
    :goto_4b
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_1a

    .line 178
    :cond_5a
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_65

    .line 179
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 181
    :cond_65
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 182
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_4b

    .line 191
    .end local v3           #removeSize:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_70
    return-void
.end method

.method private internalRemove(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 194
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 195
    instance-of v2, p1, Lcom/android/mms/model/TextModel;

    if-eqz v2, :cond_25

    .line 196
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 208
    :cond_10
    :goto_10
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/MediaModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    .line 209
    .local v1, decreaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    .line 212
    check-cast p1, Lcom/android/mms/model/Model;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    move v2, v3

    .line 217
    .end local v1           #decreaseSize:I
    :goto_24
    return v2

    .line 197
    .restart local p1
    :cond_25
    instance-of v2, p1, Lcom/android/mms/model/ImageModel;

    if-eqz v2, :cond_2e

    .line 198
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 199
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_10

    .line 200
    :cond_2e
    instance-of v2, p1, Lcom/android/mms/model/AudioModel;

    if-eqz v2, :cond_37

    .line 201
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 202
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_10

    .line 203
    :cond_37
    instance-of v2, p1, Lcom/android/mms/model/VideoModel;

    if-eqz v2, :cond_10

    .line 204
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 205
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 206
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_10

    .line 217
    :cond_42
    const/4 v2, 0x0

    goto :goto_24
.end method


# virtual methods
.method public add(ILcom/android/mms/model/MediaModel;)V
    .registers 5
    .parameter "location"
    .parameter "object"

    .prologue
    .line 392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->add(ILcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/MediaModel;)Z
    .registers 6
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 290
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_8

    .line 295
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 296
    return v3

    .line 291
    :catch_8
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "SlideModel"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/android/mms/model/MediaModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 397
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 304
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_40

    .line 305
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 306
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    .line 307
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 308
    .local v0, decreaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_10

    .line 329
    .end local v0           #decreaseSize:I
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    :cond_2a
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 331
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 332
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 333
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 334
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 336
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 337
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 338
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 340
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 342
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_40
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .registers 4
    .parameter "decreaseSize"

    .prologue
    .line 264
    if-lez p1, :cond_12

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_12

    .line 265
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 266
    .local v0, size:I
    sub-int/2addr v0, p1

    .line 267
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 269
    .end local v0           #size:I
    :cond_12
    return-void
.end method

.method public decreaseSlideSize(I)V
    .registers 3
    .parameter "decreaseSize"

    .prologue
    .line 246
    if-lez p1, :cond_7

    .line 247
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 249
    :cond_7
    return-void
.end method

.method public get(I)Lcom/android/mms/model/MediaModel;
    .registers 3
    .parameter "location"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/MediaModel;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/android/mms/model/AudioModel;
    .registers 1

    .prologue
    .line 543
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/AudioModel;

    return-object p0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    return v0
.end method

.method public getFill()S
    .registers 2

    .prologue
    .line 455
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    return v0
.end method

.method public getImage()Lcom/android/mms/model/ImageModel;
    .registers 1

    .prologue
    .line 539
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/ImageModel;

    return-object p0
.end method

.method public getSlideSize()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    return v0
.end method

.method public getText()Lcom/android/mms/model/TextModel;
    .registers 1

    .prologue
    .line 535
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/TextModel;

    return-object p0
.end method

.method public getVideo()Lcom/android/mms/model/VideoModel;
    .registers 1

    .prologue
    .line 547
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/VideoModel;

    return-object p0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .registers 7
    .parameter "evt"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "SlideModel"

    .line 491
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilSlideStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 492
    const-string v0, "SlideModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start to play slide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 499
    :cond_2a
    :goto_2a
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 500
    return-void

    .line 494
    :cond_2e
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    if-eq v0, v3, :cond_2a

    .line 495
    const-string v0, "SlideModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop playing slide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    goto :goto_2a
.end method

.method public hasAudio()Z
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasImage()Z
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasVideo()Z
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public increaseMessageSize(I)V
    .registers 4
    .parameter "increaseSize"

    .prologue
    .line 256
    if-lez p1, :cond_12

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_12

    .line 257
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 258
    .local v0, size:I
    add-int/2addr v0, p1

    .line 259
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 261
    .end local v0           #size:I
    :cond_12
    return-void
.end method

.method public increaseSlideSize(I)V
    .registers 3
    .parameter "increaseSize"

    .prologue
    .line 240
    if-lez p1, :cond_7

    .line 241
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 243
    :cond_7
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .registers 5
    .parameter "observer"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 470
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_6

    .line 472
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_16
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/MediaModel;
    .registers 4
    .parameter "location"

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 422
    .local v0, media:Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_14

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 423
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 425
    :cond_14
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->remove(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 361
    if-eqz p1, :cond_18

    instance-of v0, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 364
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 365
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    move v0, v2

    .line 368
    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAudio()Z
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeImage()Z
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeText()Z
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeVideo()Z
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;
    .registers 5
    .parameter "location"
    .parameter "object"

    .prologue
    .line 429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(I)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 231
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 233
    return-void
.end method

.method public setFill(S)V
    .registers 3
    .parameter "fill"

    .prologue
    .line 462
    iput-short p1, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 464
    return-void
.end method

.method public setParent(Lcom/android/mms/model/SlideshowModel;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 253
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 447
    iput-boolean p1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 449
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .registers 4

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 485
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_6

    .line 487
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_16
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .registers 5
    .parameter "observer"

    .prologue
    .line 477
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 478
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_6

    .line 480
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_16
    return-void
.end method

.method public updateDuration(I)V
    .registers 4
    .parameter "duration"

    .prologue
    .line 551
    if-gtz p1, :cond_3

    .line 559
    :cond_2
    :goto_2
    return-void

    .line 555
    :cond_3
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    if-gt p1, v0, :cond_d

    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_2

    .line 557
    :cond_d
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    goto :goto_2
.end method
